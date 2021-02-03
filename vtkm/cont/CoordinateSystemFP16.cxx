//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================

#include <vtkm/cont/ArrayHandleUniformPointCoordinatesFP16.h>
#include <vtkm/cont/CoordinateSystemFP16.h>

namespace vtkm
{
namespace cont
{

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
namespace detail
{

VTKM_DEPRECATED_SUPPRESS_BEGIN
vtkm::cont::ArrayHandleVirtualCoordinatesFP16 CoordDataDepWrapperFP16::ToArray() const
{
  return this->AsArrayHandle<vtkm::cont::ArrayHandleVirtualCoordinatesFP16>();
}
VTKM_DEPRECATED_SUPPRESS_END

} // namespace detail
#endif //VTKM_NO_DEPRECATED_VIRTUAL

VTKM_CONT CoordinateSystemFP16::CoordinateSystemFP16()
  : Superclass()
{
}

VTKM_CONT CoordinateSystemFP16::CoordinateSystemFP16(std::string name,
                                             const vtkm::cont::UnknownArrayHandle& data)
  : Superclass(name, Association::POINTS, data)
{
}

/// This constructor of coordinate system sets up a regular grid of points.
///
VTKM_CONT
CoordinateSystemFP16::CoordinateSystemFP16(std::string name,
                                   vtkm::Id3 dimensions,
                                   vtkm::Vec3f_16 origin,
                                   vtkm::Vec3f_16 spacing)
  : Superclass(name,
               Association::POINTS,
               vtkm::cont::ArrayHandleUniformPointCoordinatesFP16(dimensions, origin, spacing))
{
}

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
VTKM_CONT vtkm::cont::detail::CoordDataDepWrapperFP16 CoordinateSystemFP16::GetData() const
{
  return vtkm::cont::detail::CoordDataDepWrapperFP16(this->Superclass::GetData());
}
#else  //!VTKM_NO_DEPRECATED_VIRTUAL
VTKM_CONT vtkm::cont::UncertainArrayHandle<vtkm::List<vtkm::Vec3f_16>, VTKM_DEFAULT_STORAGE_LIST>
CoordinateSystemFP16::GetData() const
{
  return vtkm::cont::UncertainArrayHandle<vtkm::List<vtkm::Vec3f_16>, VTKM_DEFAULT_STORAGE_LIST>(
    this->Superclass::GetData());
}
#endif //!VTKM_NO_DEPRECATED_VIRTUAL


VTKM_CONT vtkm::cont::CoordinateSystemFP16::MultiplexerArrayType
CoordinateSystemFP16::GetDataAsMultiplexer() const
{
  return this->GetData().AsMultiplexer<MultiplexerArrayType>();
}

VTKM_CONT
void CoordinateSystemFP16::PrintSummary(std::ostream& out) const
{
  out << "    Coordinate System ";
  this->Superclass::PrintSummary(out);
}

template VTKM_CONT_EXPORT CoordinateSystemFP16::CoordinateSystemFP16(
  std::string name,
  const vtkm::cont::ArrayHandle<vtkm::Vec<vtkm::Float16, 3>>&);
template VTKM_CONT_EXPORT CoordinateSystemFP16::CoordinateSystemFP16(
  std::string name,
  const vtkm::cont::ArrayHandle<vtkm::Vec<float, 3>>&);
template VTKM_CONT_EXPORT CoordinateSystemFP16::CoordinateSystemFP16(
  std::string name,
  const vtkm::cont::ArrayHandle<
    vtkm::Vec3f_16,
    vtkm::cont::StorageTagImplicit<vtkm::internal::ArrayPortalUniformPointCoordinatesFP16>>&);

template VTKM_CONT_EXPORT CoordinateSystemFP16::CoordinateSystemFP16(
  std::string name,
  const vtkm::cont::ArrayHandle<
    vtkm::Vec3f_16,
    vtkm::cont::StorageTagCartesianProduct<vtkm::cont::StorageTagBasic,
                                           vtkm::cont::StorageTagBasic,
                                           vtkm::cont::StorageTagBasic>>&);

template VTKM_CONT_EXPORT CoordinateSystemFP16::CoordinateSystemFP16(
  std::string name,
  const vtkm::cont::ArrayHandle<
    vtkm::Vec3f_16,
    typename vtkm::cont::ArrayHandleCompositeVector<
      vtkm::cont::ArrayHandle<vtkm::Float16, vtkm::cont::StorageTagBasic>,
      vtkm::cont::ArrayHandle<vtkm::Float16, vtkm::cont::StorageTagBasic>,
      vtkm::cont::ArrayHandle<vtkm::Float16, vtkm::cont::StorageTagBasic>>::StorageTag>&);

}
} // namespace vtkm::cont
