//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
#ifndef vtk_m_cont_ArrayHandleVirtualCoordinatesFP16_h
#define vtk_m_cont_ArrayHandleVirtualCoordinatesFP16_h

#include <vtkm/cont/ArrayHandleVirtual.h>

#include <vtkm/cont/ArrayHandleCartesianProduct.h>
#include <vtkm/cont/ArrayHandleCast.h>
#include <vtkm/cont/ArrayHandleUniformPointCoordinatesFP16.h>

#include <vtkm/cont/ErrorBadType.h>
#include <vtkm/cont/Logging.h>

#include <memory>
#include <type_traits>

#ifdef VTKM_NO_DEPRECATED_VIRTUAL
#error "ArrayHandleVirtualCoordiantesFP16 is removed. Do not include ArrayHandleVirtualCoordinatesFP16.h"
#endif

namespace vtkm
{
namespace cont
{

VTKM_DEPRECATED_SUPPRESS_BEGIN

/// ArrayHandleVirtualCoordinatesFP16 is a specialization of ArrayHandle.
class VTKM_ALWAYS_EXPORT VTKM_DEPRECATED(1.6, "Virtual ArrayHandles are being phased out.")
  ArrayHandleVirtualCoordinatesFP16 final : public vtkm::cont::ArrayHandleVirtual<vtkm::Vec3f_16>
{
public:
  VTKM_ARRAY_HANDLE_SUBCLASS_NT(ArrayHandleVirtualCoordinatesFP16,
                                (vtkm::cont::ArrayHandleVirtual<vtkm::Vec3f_16>));

  template <typename T, typename S>
  explicit ArrayHandleVirtualCoordinatesFP16(const vtkm::cont::ArrayHandle<T, S>& ah)
    : vtkm::cont::ArrayHandleVirtual<vtkm::Vec3f_16>(vtkm::cont::make_ArrayHandleCast<ValueType>(ah))
  {
  }
};

template <typename Functor, typename... Args>
void CastAndCall(const vtkm::cont::ArrayHandleVirtualCoordinatesFP16& coords,
                 Functor&& f,
                 Args&&... args)
{
  using HandleType = ArrayHandleUniformPointCoordinatesFP16;
  if (coords.IsType<HandleType>())
  {
    HandleType uniform = coords.Cast<HandleType>();
    f(uniform, std::forward<Args>(args)...);
  }
  else
  {
    f(coords, std::forward<Args>(args)...);
  }
}


template <>
struct SerializableTypeString<vtkm::cont::ArrayHandleVirtualCoordinatesFP16>
{
  static VTKM_CONT const std::string Get() { return "AH_VirtualCoordinatesFP16"; }
};

VTKM_DEPRECATED_SUPPRESS_END

} // namespace cont
} // namespace vtkm

//=============================================================================
// Specializations of serialization related classes
/// @cond SERIALIZATION
namespace mangled_diy_namespace
{

VTKM_DEPRECATED_SUPPRESS_BEGIN

template <>
struct Serialization<vtkm::cont::ArrayHandleVirtualCoordinatesFP16>
{
private:
  using Type = vtkm::cont::ArrayHandleVirtualCoordinatesFP16;
  using BaseType = vtkm::cont::ArrayHandle<typename Type::ValueType, typename Type::StorageTag>;

  using BasicCoordsType = vtkm::cont::ArrayHandle<vtkm::Vec3f_16>;
  using RectilinearCoordsArrayType =
    vtkm::cont::ArrayHandleCartesianProduct<vtkm::cont::ArrayHandle<vtkm::Float16>,
                                            vtkm::cont::ArrayHandle<vtkm::Float16>,
                                            vtkm::cont::ArrayHandle<vtkm::Float16>>;

public:
  static VTKM_CONT void save(BinaryBuffer& bb, const BaseType& baseObj)
  {
    Type obj(baseObj);
    const vtkm::cont::internal::detail::StorageVirtual* storage =
      obj.GetStorage().GetStorageVirtual();
    if (obj.IsType<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>())
    {
      using HandleType = vtkm::cont::ArrayHandleUniformPointCoordinatesFP16;
      using T = typename HandleType::ValueType;
      using S = typename HandleType::StorageTag;
      auto array = storage->Cast<vtkm::cont::internal::detail::StorageVirtualImpl<T, S>>();
      vtkmdiy::save(bb, vtkm::cont::SerializableTypeString<HandleType>::Get());
      vtkmdiy::save(bb, array->GetHandle());
    }
    else if (obj.IsType<RectilinearCoordsArrayType>())
    {
      using HandleType = RectilinearCoordsArrayType;
      using T = typename HandleType::ValueType;
      using S = typename HandleType::StorageTag;
      auto array = storage->Cast<vtkm::cont::internal::detail::StorageVirtualImpl<T, S>>();
      vtkmdiy::save(bb, vtkm::cont::SerializableTypeString<HandleType>::Get());
      vtkmdiy::save(bb, array->GetHandle());
    }
    else
    {
      using HandleType = BasicCoordsType;
      using T = typename HandleType::ValueType;
      using S = typename HandleType::StorageTag;
      HandleType array;
      if (obj.IsType<BasicCoordsType>())
      {
        // If the object actually is a BasicCoordsType, just save it.
        array =
          storage->Cast<vtkm::cont::internal::detail::StorageVirtualImpl<T, S>>()->GetHandle();
      }
      else
      {
        // Give up and deep copy data.
        vtkm::Id size = obj.GetNumberOfValues();
        array.Allocate(size);
        auto src = obj.ReadPortal();
        auto dest = array.WritePortal();
        for (vtkm::IdComponent index = 0; index < size; ++index)
        {
          dest.Set(index, src.Get(index));
        }
      }
      vtkmdiy::save(bb, vtkm::cont::SerializableTypeString<BasicCoordsType>::Get());
      vtkmdiy::save(bb, array);
    }
  }

  static VTKM_CONT void load(BinaryBuffer& bb, BaseType& obj)
  {
    std::string typeString;
    vtkmdiy::load(bb, typeString);

    if (typeString ==
        vtkm::cont::SerializableTypeString<vtkm::cont::ArrayHandleUniformPointCoordinatesFP16>::Get())
    {
      vtkm::cont::ArrayHandleUniformPointCoordinatesFP16 array;
      vtkmdiy::load(bb, array);
      obj = vtkm::cont::ArrayHandleVirtualCoordinatesFP16(array);
    }
    else if (typeString == vtkm::cont::SerializableTypeString<RectilinearCoordsArrayType>::Get())
    {
      RectilinearCoordsArrayType array;
      vtkmdiy::load(bb, array);
      obj = vtkm::cont::ArrayHandleVirtualCoordinatesFP16(array);
    }
    else if (typeString == vtkm::cont::SerializableTypeString<BasicCoordsType>::Get())
    {
      BasicCoordsType array;
      vtkmdiy::load(bb, array);
      obj = vtkm::cont::ArrayHandleVirtualCoordinatesFP16(array);
    }
    else
    {
      throw vtkm::cont::ErrorBadType(
        "Error deserializing ArrayHandleVirtualCoordinatesFP16. TypeString: " + typeString);
    }
  }
};

VTKM_DEPRECATED_SUPPRESS_END

} // diy
/// @endcond SERIALIZATION

#endif // vtk_m_cont_ArrayHandleVirtualCoordinatesFP16_h
