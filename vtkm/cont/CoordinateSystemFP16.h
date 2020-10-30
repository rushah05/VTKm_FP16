//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
#ifndef vtk_m_cont_CoordinateSystemFP16_h
#define vtk_m_cont_CoordinateSystemFP16_h

#include <vtkm/Bounds.h>
#include <vtkm/Deprecated.h>

#include <vtkm/cont/ArrayHandleCast.h>
#include <vtkm/cont/CastAndCall.h>
#include <vtkm/cont/Field.h>

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
#include <vtkm/cont/ArrayHandleVirtualCoordinatesFP16.h>
#endif

namespace vtkm
{
namespace cont
{

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
namespace detail
{

// CoordinateSystemFP16::GetData used to return an ArrayHandleVirtualCoordinatesFP16.
// That behavior is deprecated, and CoordianteSystem::GetData now returns a
// VariantArrayHandle similar (although slightly different than) its superclass.
// This wrapper class supports the old deprecated behavior until it is no longer
// supported. Once the behavior is removed (probably when
// ArrayHandleVirtualCoordinatesFP16 is removed), then this class should be removed.
class VTKM_ALWAYS_EXPORT CoordDataDepWrapperFP16
  : public vtkm::cont::VariantArrayHandleBase<vtkm::TypeListFieldVec3_FP16>
{
  using Superclass = vtkm::cont::VariantArrayHandleBase<vtkm::TypeListFieldVec3_FP16>;

  VTKM_DEPRECATED_SUPPRESS_BEGIN
  VTKM_CONT_EXPORT VTKM_CONT vtkm::cont::ArrayHandleVirtualCoordinatesFP16 ToArray() const;
  VTKM_DEPRECATED_SUPPRESS_END

public:
  using Superclass::Superclass;

  // Make the return also behave as ArrayHandleVirtualCoordiantes
  VTKM_DEPRECATED_SUPPRESS_BEGIN

  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
  operator vtkm::cont::ArrayHandleVirtualCoordinatesFP16() const
  {
    return this->ToArray();
  }

  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
  operator vtkm::cont::ArrayHandle<vtkm::Vec3f_16, vtkm::cont::StorageTagVirtual>() const
  {
    return this->ToArray();
  }

  using ValueType VTKM_DEPRECATED(1.6,
                                  "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.") =
    vtkm::Vec3f_16;

  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
    ArrayHandleVirtualCoordinatesFP16::ReadPortalType ReadPortal() const
  {
    return this->ToArray().ReadPortal();
  }

  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
    ArrayHandleVirtualCoordinatesFP16::WritePortalType WritePortal() const
  {
    return this->ToArray().WritePortal();
  }

  template <typename Device>
  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
    typename ArrayHandleVirtualCoordinatesFP16::ExecutionTypes<Device>::PortalConst
    PrepareForInput(Device device, vtkm::cont::Token& token) const
  {
    return this->ToArray().PrepareForInput(device, token);
  }

  template <typename Device>
  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
    typename ArrayHandleVirtualCoordinatesFP16::ExecutionTypes<Device>::Portal
    PrepareForInPlace(Device device, vtkm::cont::Token& token) const
  {
    return this->ToArray().PrepareForInPlace(device, token);
  }

  template <typename Device>
  VTKM_CONT VTKM_DEPRECATED(1.6, "CoordinateSystemFP16::GetData() now returns a VariantArrayHandle.")
    typename ArrayHandleVirtualCoordinatesFP16::ExecutionTypes<Device>::Portal
    PrepareForOutput(vtkm::Id numberOfValues, Device device, vtkm::cont::Token& token) const
  {
    return this->ToArray().PrepareForOutput(numberOfValues, device, token);
  }

  VTKM_DEPRECATED_SUPPRESS_END
};

} // namespace detail

VTKM_DEPRECATED_SUPPRESS_BEGIN
VTKM_CONT VTKM_DEPRECATED(
  1.6,
  "CoordinateSystemFP16::GetData() now returns a "
  "VariantArrayHandle.") inline void printSummary_ArrayHandle(const detail::CoordDataDepWrapperFP16&
                                                                array,
                                                              std::ostream& out,
                                                              bool full = false)
{
  vtkm::cont::ArrayHandleVirtualCoordinatesFP16 coordArray = array;
  vtkm::cont::printSummary_ArrayHandle(coordArray, out, full);
}
VTKM_DEPRECATED_SUPPRESS_END
#endif //VTKM_NO_DEPRECATED_VIRTUAL

class VTKM_CONT_EXPORT CoordinateSystemFP16 : public vtkm::cont::Field
{
  using Superclass = vtkm::cont::Field;
  using CoordinatesTypeList = vtkm::List<vtkm::Vec3f_16>;

public:
  VTKM_CONT
  CoordinateSystemFP16();

  VTKM_CONT CoordinateSystemFP16(std::string name, const vtkm::cont::VariantArrayHandleCommon& data);

  template <typename T, typename Storage>
  VTKM_CONT CoordinateSystemFP16(std::string name, const ArrayHandle<T, Storage>& data)
    : Superclass(name, Association::POINTS, data)
  {
  }

  /// This constructor of coordinate system sets up a regular grid of points.
  ///
  VTKM_CONT
  CoordinateSystemFP16(std::string name,
                   vtkm::Id3 dimensions,
                   vtkm::Vec3f_16 origin = vtkm::Vec3f_16(0.0f, 0.0f, 0.0f),
                   vtkm::Vec3f_16 spacing = vtkm::Vec3f_16(1.0f, 1.0f, 1.0f));

  VTKM_CONT
  vtkm::Id GetNumberOfPoints() const { return this->GetNumberOfValues(); }

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
  VTKM_CONT detail::CoordDataDepWrapperFP16 GetData() const;
#else
  VTKM_CONT vtkm::cont::VariantArrayHandleBase<vtkm::TypeListFieldVec3_FP16> GetData() const;
#endif

private:
  /*
#ifdef VTKM_USE_DOUBLE_PRECISION
  using FloatNonDefault = vtkm::Float;
#else
  using FloatNonDefault = vtkm::Float64;
#endif
  using Vec3f_nd = vtkm::Vec<FloatNonDefault, 3>;
*/
  struct StorageToArrayDefault
  {
    template <typename S>
    using IsInvalid = vtkm::cont::internal::IsInvalidArrayHandle<vtkm::Vec3f_16, S>;

    template <typename S>
    using Transform = vtkm::cont::ArrayHandle<vtkm::Vec3f_16, S>;
  };

 /* struct StorageToArrayNonDefault
  {
    template <typename S>
    using IsInvalid = vtkm::cont::internal::IsInvalidArrayHandle<Vec3f_nd, S>;

    template <typename S>
    using Transform =
      vtkm::cont::ArrayHandleCast<vtkm::Vec3f_16, vtkm::cont::ArrayHandle<Vec3f_nd, S>>;
  };
*/
 /* using ArraysFloatDefault = vtkm::ListTransform<
    vtkm::ListRemoveIf<VTKM_DEFAULT_STORAGE_LIST, StorageToArrayDefault::IsInvalid>,
    StorageToArrayDefault::Transform>;
  using ArraysFloatNonDefault = vtkm::ListTransform<
    vtkm::ListRemoveIf<VTKM_DEFAULT_STORAGE_LIST, StorageToArrayNonDefault::IsInvalid>,
    StorageToArrayNonDefault::Transform>;
*/
public:
  /*using MultiplexerArrayType = //
    vtkm::cont::ArrayHandleMultiplexerFromList<
      vtkm::ListAppend<ArraysFloatDefault, ArraysFloatNonDefault>>;

  /// \brief Returns the data for the coordinate system as an `ArrayHandleMultiplexer`.
  ///
  /// This array will handle all potential types supported by CoordinateSystemFP16, so all types can be
  /// handled with one compile pass. However, using this precludes specialization for special
  /// arrays such as `ArrayHandleUniformPointCoordinates` that could have optimized code paths
  ///
  VTKM_CONT MultiplexerArrayType GetDataAsMultiplexer() const;

  VTKM_CONT
  void GetRange(vtkm::Range* range) const
  {
    this->Superclass::GetRange(range, CoordinatesTypeList());
  }

  VTKM_CONT
  vtkm::Vec<vtkm::Range, 3> GetRange() const
  {
    vtkm::Vec<vtkm::Range, 3> range;
    this->GetRange(&range[0]);
    return range;
  }

  VTKM_CONT
  vtkm::cont::ArrayHandle<vtkm::Range> GetRangeAsArrayHandle() const
  {
    return this->Superclass::GetRange(CoordinatesTypeList());
  }

  VTKM_CONT
  vtkm::Bounds GetBounds() const
  {
    vtkm::Range ranges[3];
    this->GetRange(ranges);
    return vtkm::Bounds(ranges[0], ranges[1], ranges[2]);
  }
*/
  virtual void PrintSummary(std::ostream& out) const override;

  /// Releases any resources being used in the execution environment (that are
  /// not being shared by the control environment).
  VTKM_CONT void ReleaseResourcesExecution() override
  {
    this->Superclass::ReleaseResourcesExecution();
    this->GetData().ReleaseResourcesExecution();
  }
};

template <typename Functor, typename... Args>
void CastAndCall(const vtkm::cont::CoordinateSystemFP16& coords, Functor&& f, Args&&... args)
{
  CastAndCall(coords.GetData(), std::forward<Functor>(f), std::forward<Args>(args)...);
}

template <typename CellSetType, typename Functor, typename... Args>
void CastAndCall(const vtkm::cont::CoordinateSystemFP16& coords, Functor&& f, const CellSetType& cells, Args&&... args)
{
  CastAndCall(coords.GetData(), std::forward<Functor>(f), cells, std::forward<Args>(args)...);
}


template <typename T>
vtkm::cont::CoordinateSystemFP16 make_CoordinateSystemFP16(std::string name,
                                                   const std::vector<T>& data,
                                                   vtkm::CopyFlag copy = vtkm::CopyFlag::Off)
{
  return vtkm::cont::CoordinateSystemFP16(name, vtkm::cont::make_ArrayHandle(data, copy));
}

template <typename T>
vtkm::cont::CoordinateSystemFP16 make_CoordinateSystemFP16(std::string name,
                                                   const T* data,
                                                   vtkm::Id numberOfValues,
                                                   vtkm::CopyFlag copy = vtkm::CopyFlag::Off)
{
  return vtkm::cont::CoordinateSystemFP16(name,
                                      vtkm::cont::make_ArrayHandle(data, numberOfValues, copy));
}

namespace internal
{

template <>
struct DynamicTransformTraits<vtkm::cont::CoordinateSystemFP16>
{
  using DynamicTag = vtkm::cont::internal::DynamicTransformTagCastAndCall;
};

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
template <>
struct DynamicTransformTraits<vtkm::cont::detail::CoordDataDepWrapperFP16>
{
  using DynamicTag = vtkm::cont::internal::DynamicTransformTagCastAndCall;
};
#endif //VTKM_NO_DEPRECATED_VIRTUAL


} // namespace internal
} // namespace cont
} // namespace vtkm

//=============================================================================
// Specializations of serialization related classes
/// @cond SERIALIZATION
namespace mangled_diy_namespace
{

#ifndef VTKM_NO_DEPRECATED_VIRTUAL
template <>
struct Serialization<vtkm::cont::detail::CoordDataDepWrapperFP16>
  : public Serialization<
      vtkm::cont::VariantArrayHandleBase<vtkm::List<vtkm::Vec3f_16>>>
{
};
#endif //VTKM_NO_DEPRECATED_VIRTUAL

template <>
struct Serialization<vtkm::cont::CoordinateSystemFP16>
{
  using CoordinatesTypeList = vtkm::List<vtkm::Vec3f_16>;

  static VTKM_CONT void save(BinaryBuffer& bb, const vtkm::cont::CoordinateSystemFP16& cs)
  {
    vtkmdiy::save(bb, cs.GetName());
    vtkmdiy::save(
      bb, static_cast<vtkm::cont::VariantArrayHandleBase<CoordinatesTypeList>>(cs.GetData()));
  }

  static VTKM_CONT void load(BinaryBuffer& bb, vtkm::cont::CoordinateSystemFP16& cs)
  {
    std::string name;
    vtkmdiy::load(bb, name);
    vtkm::cont::VariantArrayHandleBase<CoordinatesTypeList> data;
    vtkmdiy::load(bb, data);
    cs = vtkm::cont::CoordinateSystemFP16(name, data);
  }
};

} // diy
/// @endcond SERIALIZATION

#endif //vtk_m_cont_CoordinateSystemFP16_h
