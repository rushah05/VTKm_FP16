//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
#ifndef vtk_m_cont_ArrayHandleUniformPointCoordinatesFP16_h
#define vtk_m_cont_ArrayHandleUniformPointCoordinatesFP16_h

#include <vtkm/cont/ArrayExtractComponent.h>
#include <vtkm/cont/ArrayHandleImplicit.h>
#include <vtkm/internal/ArrayPortalUniformPointCoordinatesFP16.h>

namespace vtkm
{
namespace cont
{

struct VTKM_ALWAYS_EXPORT StorageTagUniformPointsFP16
{
};

namespace internal
{

using StorageTagUniformPointsFP16Superclass =
  vtkm::cont::StorageTagImplicit<vtkm::internal::ArrayPortalUniformPointCoordinatesFP16>;

template <>
struct Storage<vtkm::Vec3f_16, vtkm::cont::StorageTagUniformPointsFP16>
  : Storage<vtkm::Vec3f_16, StorageTagUniformPointsFP16Superclass>
{
};

} // namespace internal

/// ArrayHandleUniformPointCoordinatesFP16 is a specialization of ArrayHandle. It
/// contains the information necessary to compute the point coordinates in a
/// uniform orthogonal grid (extent, origin, and spacing) and implicitly
/// computes these coordinates in its array portal.
///
class VTKM_CONT_EXPORT ArrayHandleUniformPointCoordinatesFP16
  : public vtkm::cont::ArrayHandle<vtkm::Vec3f_16, vtkm::cont::StorageTagUniformPointsFP16>
{
public:
  VTKM_ARRAY_HANDLE_SUBCLASS_NT(
    ArrayHandleUniformPointCoordinatesFP16,
    (vtkm::cont::ArrayHandle<vtkm::Vec3f_16, vtkm::cont::StorageTagUniformPointsFP16>));

private:
  using StorageType = vtkm::cont::internal::Storage<ValueType, StorageTag>;

public:
  VTKM_CONT
  ArrayHandleUniformPointCoordinatesFP16(vtkm::Id3 dimensions,
                                     ValueType origin = ValueType(0.0f, 0.0f, 0.0f),
                                     ValueType spacing = ValueType(1.0f, 1.0f, 1.0f));

  /// Implemented so that it is defined exclusively in the control environment.
  /// If there is a separate device for the execution environment (for example,
  /// with CUDA), then the automatically generated destructor could be
  /// created for all devices, and it would not be valid for all devices.
  ///
  ~ArrayHandleUniformPointCoordinatesFP16();

  VTKM_CONT vtkm::Id3 GetDimensions() const;
  VTKM_CONT vtkm::Vec3f_16 GetOrigin() const;
  VTKM_CONT vtkm::Vec3f_16 GetSpacing() const;
};

namespace internal
{

template <>
struct VTKM_CONT_EXPORT ArrayExtractComponentImpl<vtkm::cont::StorageTagUniformPointsFP16>
{
  vtkm::cont::ArrayHandleStride<vtkm::Float16> operator()(
    const vtkm::cont::ArrayHandleUniformPointCoordinatesFP16& src,
    vtkm::IdComponent componentIndex,
    vtkm::CopyFlag allowCopy) const;
};

} // namespace internal

}
} // namespace vtkm::cont

//=============================================================================
// Specializations of serialization related classes
/// @cond SERIALIZATION
namespace vtkm
{
namespace cont
{

template <>
struct SerializableTypeString<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>
{
  static VTKM_CONT const std::string Get() { return "AH_UniformPointCoordinates"; }
};

template <>
struct SerializableTypeString<
  vtkm::cont::ArrayHandle<vtkm::Vec3f_16, vtkm::cont::StorageTagUniformPointsFP16>>
  : SerializableTypeString<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>
{
};
}
} // vtkm::cont

namespace mangled_diy_namespace
{

template <>
struct Serialization<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>
{
private:
  using Type = vtkm::cont::ArrayHandleUniformPointCoordinatesFP16;
  using BaseType = vtkm::cont::ArrayHandle<typename Type::ValueType, typename Type::StorageTag>;

public:
  static VTKM_CONT void save(BinaryBuffer& bb, const BaseType& obj)
  {
   /* auto portal = obj.ReadPortal();
    vtkmdiy::save(bb, portal.GetDimensions());
    vtkmdiy::save(bb, portal.GetOrigin());
    vtkmdiy::save(bb, portal.GetSpacing());
  */
  }

  static VTKM_CONT void load(BinaryBuffer& bb, BaseType& obj)
  {
/*    vtkm::Id3 dims;
    typename BaseType::ValueType origin, spacing;

    vtkmdiy::load(bb, dims);
    vtkmdiy::load(bb, origin);
    vtkmdiy::load(bb, spacing);/
    obj = vtkm::cont::ArrayHandleUniformPointCoordinatesFP16(dims, origin, spacing);
*/
  }
};

template <>
struct Serialization<vtkm::cont::ArrayHandle<vtkm::Vec3f_16, vtkm::cont::StorageTagUniformPointsFP16>>
  : Serialization<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>
{
};

} // diy
/// @endcond SERIALIZATION

#endif //vtk_+m_cont_ArrayHandleUniformPointCoordinatesFP16_h
