//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
#ifndef vtk_m_filter_ZFPCompressor3D_hxx
#define vtk_m_filter_ZFPCompressor3D_hxx

#include <vtkm/cont/CellSetStructured.h>
#include <vtkm/cont/DynamicCellSet.h>
#include <vtkm/cont/ErrorFilterExecution.h>

namespace vtkm
{
namespace filter
{

namespace
{

template <typename CellSetList>
bool IsCellSet3DStructured(const vtkm::cont::DynamicCellSetBase<CellSetList>& cellset)
{
  if (cellset.template IsType<vtkm::cont::CellSetStructured<3>>())
  {
    return true;
  }
  return false;
}
} // anonymous namespace

//-----------------------------------------------------------------------------
inline VTKM_CONT ZFPCompressor3D::ZFPCompressor3D()
  : vtkm::filter::FilterField<ZFPCompressor3D>()
  , rate(0)
{
}


//-----------------------------------------------------------------------------
template <typename T, typename StorageType, typename DerivedPolicy>
inline VTKM_CONT vtkm::cont::DataSet ZFPCompressor3D::DoExecute(
  const vtkm::cont::DataSet& input,
  const vtkm::cont::ArrayHandle<T, StorageType>& field,
  const vtkm::filter::FieldMetadata&,
  const vtkm::filter::PolicyBase<DerivedPolicy>&)
{
  vtkm::cont::CellSetStructured<3> cellSet;
  input.GetCellSet().CopyTo(cellSet);
  vtkm::Id3 pointDimensions = cellSet.GetPointDimensions();


  auto compressed = compressor.Compress(field, rate, pointDimensions);

  vtkm::cont::DataSet dataset;
  dataset.SetCellSet(cellSet);
  dataset.AddField(vtkm::cont::make_FieldPoint("compressed", compressed));

  return dataset;
}
}
} // namespace vtkm::filter
#endif
