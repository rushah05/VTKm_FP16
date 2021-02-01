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

namespace vtkm
{
namespace cont
{

ArrayHandleUniformPointCoordinatesFP16::ArrayHandleUniformPointCoordinatesFP16(vtkm::Id3 dimensions,
                                                                       ValueType origin,
                                                                       ValueType spacing)
  : Superclass(internal::PortalToArrayHandleImplicitBuffers(
      vtkm::internal::ArrayPortalUniformPointCoordinatesFP16(dimensions, origin, spacing)))
{
}

ArrayHandleUniformPointCoordinatesFP16::~ArrayHandleUniformPointCoordinatesFP16() = default;

vtkm::Id3 ArrayHandleUniformPointCoordinatesFP16::GetDimensions() const
{
  return this->ReadPortal().GetDimensions();
}

vtkm::Vec3f_16 ArrayHandleUniformPointCoordinatesFP16::GetOrigin() const
{
  return this->ReadPortal().GetOrigin();
}

vtkm::Vec3f_16 ArrayHandleUniformPointCoordinatesFP16::GetSpacing() const
{
  return this->ReadPortal().GetSpacing();
}

namespace internal
{

vtkm::cont::ArrayHandleStride<vtkm::Float16>
ArrayExtractComponentImpl<vtkm::cont::StorageTagUniformPointsFP16>::operator()(
  const vtkm::cont::ArrayHandleUniformPointCoordinatesFP16& src,
  vtkm::IdComponent componentIndex,
  vtkm::CopyFlag allowCopy) const
{
  if (allowCopy != vtkm::CopyFlag::On)
  {
    throw vtkm::cont::ErrorBadValue(
      "Cannot extract component of ArrayHandleUniformPointCoordinatesFP16 without copying. "
      "(However, the whole array does not need to be copied.)");
  }

  vtkm::Id3 dims = src.GetDimensions();
  vtkm::Vec3f_16 origin = src.GetOrigin();
  vtkm::Vec3f_16 spacing = src.GetSpacing();

  // A "slow" way to create the data, but the array is probably short. It would probably take
  // longer to schedule something on a device. (Can change that later if use cases change.)
  vtkm::cont::ArrayHandleBasic<vtkm::Float16> componentArray;
  componentArray.Allocate(dims[componentIndex]);
  auto portal = componentArray.WritePortal();
/*  for (vtkm::Id i = 0; i < dims[componentIndex]; ++i)
  {
    portal.Set(i, origin[componentIndex] + (i * spacing[componentIndex]));
  }
*/
  switch (componentIndex)
  {
    case 0:
      return vtkm::cont::ArrayHandleStride<vtkm::Float16>(
        componentArray, src.GetNumberOfValues(), 1, 0, dims[0], 1);
    case 1:
      return vtkm::cont::ArrayHandleStride<vtkm::Float16>(
        componentArray, src.GetNumberOfValues(), 1, 0, dims[1], dims[0]);
    case 2:
      return vtkm::cont::ArrayHandleStride<vtkm::Float16>(
        componentArray, src.GetNumberOfValues(), 1, 0, 0, dims[0] * dims[1]);
    default:
      throw vtkm::cont::ErrorBadValue("Bad index given to ArrayExtractComponent.");
  }
}

} // namespace internal

}
} // namespace vtkm::cont
