//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
#ifndef vtk_m_cont_DataSetBuilderUniform_h
#define vtk_m_cont_DataSetBuilderUniform_h

#include <vtkm/cont/CoordinateSystemFP16.h>
#include <vtkm/cont/DataSet.h>

namespace vtkm
{
namespace cont
{

class VTKM_CONT_EXPORT DataSetBuilderUniform
{
  using VecType = vtkm::Vec3f_16;

public:
  VTKM_CONT
  DataSetBuilderUniform();

  //1D uniform grid
  template <typename T>
  VTKM_CONT static vtkm::cont::DataSet Create(const vtkm::Id& dimension,
                                              const T& origin,
                                              const T& spacing,
                                              const std::string& coordNm = "coords")
  {
    return DataSetBuilderUniform::CreateDataSet(
      vtkm::Id3(dimension, 1, 1),
      VecType(origin, 0, 0),
      VecType(spacing, 1, 1),
      coordNm);
  }

  VTKM_CONT
  static vtkm::cont::DataSet Create(const vtkm::Id& dimension,
                                    const std::string& coordNm = "coords");

  //2D uniform grids.
  template <typename T>
  VTKM_CONT static vtkm::cont::DataSet Create(const vtkm::Id2& dimensions,
                                              const vtkm::Vec<T, 2>& origin,
                                              const vtkm::Vec<T, 2>& spacing,
                                              const std::string& coordNm = "coords")
  {
    return DataSetBuilderUniform::CreateDataSet(vtkm::Id3(dimensions[0], dimensions[1], 1),
                                                VecType(origin[0],
                                                        origin[1],
                                                        0),
                                                VecType(spacing[0],
                                                        spacing[1],
                                                        1),
                                                coordNm);
  }

  VTKM_CONT
  static vtkm::cont::DataSet Create(const vtkm::Id2& dimensions,
                                    const std::string& coordNm = "coords");

  //3D uniform grids.
  template <typename T>
  VTKM_CONT static vtkm::cont::DataSet Create(const vtkm::Id3& dimensions,
                                              const vtkm::Vec<T, 3>& origin,
                                              const vtkm::Vec<T, 3>& spacing,
                                              const std::string& coordNm = "coords")
  {
    return DataSetBuilderUniform::CreateDataSet(
      vtkm::Id3(dimensions[0], dimensions[1], dimensions[2]),
      VecType(origin[0],
      		origin[1],
              	origin[2]),
      VecType(spacing[0],
              spacing[1],
              spacing[2]),
      coordNm);
  }

  VTKM_CONT
  static vtkm::cont::DataSet Create(const vtkm::Id3& dimensions,
                                    const std::string& coordNm = "coords");

private:
  VTKM_CONT
  static vtkm::cont::DataSet CreateDataSet(const vtkm::Id3& dimensions,
                                           const vtkm::Vec3f_16& origin,
                                           const vtkm::Vec3f_16& spacing,
                                           const std::string& coordNm);
};

} // namespace cont
} // namespace vtkm

#endif //vtk_m_cont_DataSetBuilderUniform_h
