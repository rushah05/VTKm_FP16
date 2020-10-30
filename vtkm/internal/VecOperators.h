//============================================================================
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//============================================================================
////////////////////////// **** DO NOT EDIT THIS FILE!!! ****
// This file is automatically generated by VecOperators.h.in
// clang-format off
#ifndef vtk_m_internal_VecOperators_h
#define vtk_m_internal_VecOperators_h

#include <vtkm/internal/Configure.h>

namespace vtkm {

#if (!(defined(VTKM_CUDA) && (__CUDACC_VER_MAJOR__ < 8)))
#if (defined(VTKM_GCC) || defined(VTKM_CLANG))
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunknown-pragmas"
#pragma GCC diagnostic ignored "-Wpragmas"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wfloat-conversion"
#endif // gcc || clang
#endif // not using cuda < 8

#if defined(VTKM_MSVC)
#pragma warning(push)
#pragma warning(disable : 4244)
#endif


// operator- unary overloads for generic and specific sizes {{{
template <typename T, vtkm::IdComponent Size>
inline VTKM_EXEC_CONT
typename std::enable_if<(std::is_floating_point<T>::value || std::is_signed<T>::value),
                        vtkm::Vec<T, Size>>::type
operator-(vtkm::Vec<T, Size> x)
{
  for(int i=0; i < Size; ++i)
  {
      x[i] = -x[i];
  }
  return x;
}

template <typename T>
inline VTKM_EXEC_CONT
typename std::enable_if<(std::is_floating_point<T>::value || std::is_signed<T>::value),
                        vtkm::Vec<T, 1>>::type
operator-(const vtkm::Vec<T, 1>& x)
{
    return vtkm::Vec<T, 1>(-x[0]);
}

template <typename T>
inline VTKM_EXEC_CONT
typename std::enable_if<(std::is_floating_point<T>::value || std::is_signed<T>::value),
                        vtkm::Vec<T, 2>>::type
operator-(const vtkm::Vec<T, 2>& x)
{
    return vtkm::Vec<T, 2>(-x[0], -x[1]);
}

template <typename T>
inline VTKM_EXEC_CONT
typename std::enable_if<(std::is_floating_point<T>::value || std::is_signed<T>::value),
                        vtkm::Vec<T, 3>>::type
operator-(const vtkm::Vec<T, 3>& x)
{
    return vtkm::Vec<T, 3>(-x[0], -x[1], -x[2]);
}

template <typename T>
inline VTKM_EXEC_CONT
typename std::enable_if<(std::is_floating_point<T>::value || std::is_signed<T>::value),
                        vtkm::Vec<T, 4>>::type
operator-(const vtkm::Vec<T, 4>& x)
{
    return vtkm::Vec<T, 4>(-x[0], -x[1], -x[2], -x[3]);
}


//}}}

// operator+ overloads for generic vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    vtkm::Vec<T, Size> a, const vtkm::Vec<T, Size>& b
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] + b[i];
  }
  return a;
}

// Vec_Scalar for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    vtkm::Vec<T, Size> a, T scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] + scalar;
  }
  return a;
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    vtkm::Vec<T, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] + scalar;
  }
  return a;
}

template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    vtkm::Vec<T, Size> a, vtkm::Float16 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] + scalar;
  }
  return a;
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator+(
    vtkm::Vec<vtkm::Float64, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] + scalar;
  }
  return a;
}

// Scalar_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    T scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar + a[i];
  }
  return a;
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator+(
    vtkm::Float64 scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar + a[i];
  }
  return a;
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator+(
    vtkm::Float64 scalar, vtkm::Vec<vtkm::Float64, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar + a[i];
  }
  return a;
}

//}}}
// operator* overloads for generic vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator*(
    vtkm::Vec<T, Size> a, const vtkm::Vec<T, Size>& b
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] * b[i];
  }
  return a;
}

// Vec_Scalar for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator*(
    vtkm::Vec<T, Size> a, T scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] * scalar;
  }
  return a;
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator*(
    vtkm::Vec<T, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] * scalar;
  }
  return a;
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator*(
    vtkm::Vec<vtkm::Float64, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] * scalar;
  }
  return a;
}

// Scalar_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator*(
    T scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar * a[i];
  }
  return a;
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator*(
    vtkm::Float64 scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar * a[i];
  }
  return a;
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator*(
    vtkm::Float64 scalar, vtkm::Vec<vtkm::Float64, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar * a[i];
  }
  return a;
}

//}}}
// operator- overloads for generic vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator-(
    vtkm::Vec<T, Size> a, const vtkm::Vec<T, Size>& b
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] - b[i];
  }
  return a;
}

// Vec_Scalar for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator-(
    vtkm::Vec<T, Size> a, T scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] - scalar;
  }
  return a;
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator-(
    vtkm::Vec<T, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] - scalar;
  }
  return a;
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator-(
    vtkm::Vec<vtkm::Float64, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] - scalar;
  }
  return a;
}

// Scalar_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator-(
    T scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar - a[i];
  }
  return a;
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator-(
    vtkm::Float64 scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar - a[i];
  }
  return a;
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator-(
    vtkm::Float64 scalar, vtkm::Vec<vtkm::Float64, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar - a[i];
  }
  return a;
}

//}}}
// operator/ overloads for generic vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator/(
    vtkm::Vec<T, Size> a, const vtkm::Vec<T, Size>& b
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] / b[i];
  }
  return a;
}

// Vec_Scalar for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator/(
    vtkm::Vec<T, Size> a, T scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] / scalar;
  }
  return a;
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator/(
    vtkm::Vec<T, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] / scalar;
  }
  return a;
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator/(
    vtkm::Vec<vtkm::Float64, Size> a, vtkm::Float64 scalar
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = a[i] / scalar;
  }
  return a;
}

// Scalar_Vec for ['T', 'T']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator/(
    T scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar / a[i];
  }
  return a;
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T, IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<T, Size> operator/(
    vtkm::Float64 scalar, vtkm::Vec<T, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar / a[i];
  }
  return a;
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
template <IdComponent Size>
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, Size> operator/(
    vtkm::Float64 scalar, vtkm::Vec<vtkm::Float64, Size> a
)
{
  for (int i = 0; i < Size; ++i)
  {
    a[i] = scalar / a[i];
  }
  return a;
}

//}}}

// operator+ overloads for specific vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator+(
    const vtkm::Vec<T, 1>& a, const vtkm::Vec<T, 1>& b
)
{
  return vtkm::Vec<T, 1>(a[0] + b[0]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator+(
    const vtkm::Vec<T, 1>& a, T scalar
)
{
  return vtkm::Vec<T, 1>(a[0] + scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator+(
    const vtkm::Vec<T, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 1>(a[0] + scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator+(
    const vtkm::Vec<vtkm::Float64, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 1>(a[0] + scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator+(
    T scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar + a[0]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar + a[0]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 1>& a
)
{
  return vtkm::Vec<vtkm::Float64, 1>(scalar + a[0]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator+(
    const vtkm::Vec<T, 2>& a, const vtkm::Vec<T, 2>& b
)
{
  return vtkm::Vec<T, 2>(a[0] + b[0], a[1] + b[1]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator+(
    const vtkm::Vec<T, 2>& a, T scalar
)
{
  return vtkm::Vec<T, 2>(a[0] + scalar, a[1] + scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator+(
    const vtkm::Vec<T, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 2>(a[0] + scalar, a[1] + scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator+(
    const vtkm::Vec<vtkm::Float64, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 2>(a[0] + scalar, a[1] + scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator+(
    T scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar + a[0], scalar + a[1]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar + a[0], scalar + a[1]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 2>& a
)
{
  return vtkm::Vec<vtkm::Float64, 2>(scalar + a[0], scalar + a[1]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator+(
    const vtkm::Vec<T, 3>& a, const vtkm::Vec<T, 3>& b
)
{
  return vtkm::Vec<T, 3>(a[0] + b[0], a[1] + b[1], a[2] + b[2]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator+(
    const vtkm::Vec<T, 3>& a, T scalar
)
{
  return vtkm::Vec<T, 3>(a[0] + scalar, a[1] + scalar, a[2] + scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator+(
    const vtkm::Vec<T, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 3>(a[0] + scalar, a[1] + scalar, a[2] + scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator+(
    const vtkm::Vec<vtkm::Float64, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 3>(a[0] + scalar, a[1] + scalar, a[2] + scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator+(
    T scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar + a[0], scalar + a[1], scalar + a[2]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar + a[0], scalar + a[1], scalar + a[2]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 3>& a
)
{
  return vtkm::Vec<vtkm::Float64, 3>(scalar + a[0], scalar + a[1], scalar + a[2]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator+(
    const vtkm::Vec<T, 4>& a, const vtkm::Vec<T, 4>& b
)
{
  return vtkm::Vec<T, 4>(a[0] + b[0], a[1] + b[1], a[2] + b[2], a[3] + b[3]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator+(
    const vtkm::Vec<T, 4>& a, T scalar
)
{
  return vtkm::Vec<T, 4>(a[0] + scalar, a[1] + scalar, a[2] + scalar, a[3] + scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator+(
    const vtkm::Vec<T, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 4>(a[0] + scalar, a[1] + scalar, a[2] + scalar, a[3] + scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator+(
    const vtkm::Vec<vtkm::Float64, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 4>(a[0] + scalar, a[1] + scalar, a[2] + scalar, a[3] + scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator+(
    T scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar + a[0], scalar + a[1], scalar + a[2], scalar + a[3]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar + a[0], scalar + a[1], scalar + a[2], scalar + a[3]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator+(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 4>& a
)
{
  return vtkm::Vec<vtkm::Float64, 4>(scalar + a[0], scalar + a[1], scalar + a[2], scalar + a[3]);
}

//}}}
// operator* overloads for specific vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator*(
    const vtkm::Vec<T, 1>& a, const vtkm::Vec<T, 1>& b
)
{
  return vtkm::Vec<T, 1>(a[0] * b[0]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator*(
    const vtkm::Vec<T, 1>& a, T scalar
)
{
  return vtkm::Vec<T, 1>(a[0] * scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator*(
    const vtkm::Vec<T, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 1>(a[0] * scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator*(
    const vtkm::Vec<vtkm::Float64, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 1>(a[0] * scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator*(
    T scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar * a[0]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar * a[0]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 1>& a
)
{
  return vtkm::Vec<vtkm::Float64, 1>(scalar * a[0]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator*(
    const vtkm::Vec<T, 2>& a, const vtkm::Vec<T, 2>& b
)
{
  return vtkm::Vec<T, 2>(a[0] * b[0], a[1] * b[1]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator*(
    const vtkm::Vec<T, 2>& a, T scalar
)
{
  return vtkm::Vec<T, 2>(a[0] * scalar, a[1] * scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator*(
    const vtkm::Vec<T, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 2>(a[0] * scalar, a[1] * scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator*(
    const vtkm::Vec<vtkm::Float64, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 2>(a[0] * scalar, a[1] * scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator*(
    T scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar * a[0], scalar * a[1]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar * a[0], scalar * a[1]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 2>& a
)
{
  return vtkm::Vec<vtkm::Float64, 2>(scalar * a[0], scalar * a[1]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator*(
    const vtkm::Vec<T, 3>& a, const vtkm::Vec<T, 3>& b
)
{
  return vtkm::Vec<T, 3>(a[0] * b[0], a[1] * b[1], a[2] * b[2]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator*(
    const vtkm::Vec<T, 3>& a, T scalar
)
{
  return vtkm::Vec<T, 3>(a[0] * scalar, a[1] * scalar, a[2] * scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator*(
    const vtkm::Vec<T, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 3>(a[0] * scalar, a[1] * scalar, a[2] * scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator*(
    const vtkm::Vec<vtkm::Float64, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 3>(a[0] * scalar, a[1] * scalar, a[2] * scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator*(
    T scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar * a[0], scalar * a[1], scalar * a[2]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar * a[0], scalar * a[1], scalar * a[2]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 3>& a
)
{
  return vtkm::Vec<vtkm::Float64, 3>(scalar * a[0], scalar * a[1], scalar * a[2]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator*(
    const vtkm::Vec<T, 4>& a, const vtkm::Vec<T, 4>& b
)
{
  return vtkm::Vec<T, 4>(a[0] * b[0], a[1] * b[1], a[2] * b[2], a[3] * b[3]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator*(
    const vtkm::Vec<T, 4>& a, T scalar
)
{
  return vtkm::Vec<T, 4>(a[0] * scalar, a[1] * scalar, a[2] * scalar, a[3] * scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator*(
    const vtkm::Vec<T, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 4>(a[0] * scalar, a[1] * scalar, a[2] * scalar, a[3] * scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator*(
    const vtkm::Vec<vtkm::Float64, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 4>(a[0] * scalar, a[1] * scalar, a[2] * scalar, a[3] * scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator*(
    T scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar * a[0], scalar * a[1], scalar * a[2], scalar * a[3]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar * a[0], scalar * a[1], scalar * a[2], scalar * a[3]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator*(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 4>& a
)
{
  return vtkm::Vec<vtkm::Float64, 4>(scalar * a[0], scalar * a[1], scalar * a[2], scalar * a[3]);
}

//}}}
// operator- overloads for specific vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator-(
    const vtkm::Vec<T, 1>& a, const vtkm::Vec<T, 1>& b
)
{
  return vtkm::Vec<T, 1>(a[0] - b[0]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator-(
    const vtkm::Vec<T, 1>& a, T scalar
)
{
  return vtkm::Vec<T, 1>(a[0] - scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator-(
    const vtkm::Vec<T, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 1>(a[0] - scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator-(
    const vtkm::Vec<vtkm::Float64, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 1>(a[0] - scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator-(
    T scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar - a[0]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar - a[0]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 1>& a
)
{
  return vtkm::Vec<vtkm::Float64, 1>(scalar - a[0]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator-(
    const vtkm::Vec<T, 2>& a, const vtkm::Vec<T, 2>& b
)
{
  return vtkm::Vec<T, 2>(a[0] - b[0], a[1] - b[1]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator-(
    const vtkm::Vec<T, 2>& a, T scalar
)
{
  return vtkm::Vec<T, 2>(a[0] - scalar, a[1] - scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator-(
    const vtkm::Vec<T, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 2>(a[0] - scalar, a[1] - scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator-(
    const vtkm::Vec<vtkm::Float64, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 2>(a[0] - scalar, a[1] - scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator-(
    T scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar - a[0], scalar - a[1]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar - a[0], scalar - a[1]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 2>& a
)
{
  return vtkm::Vec<vtkm::Float64, 2>(scalar - a[0], scalar - a[1]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator-(
    const vtkm::Vec<T, 3>& a, const vtkm::Vec<T, 3>& b
)
{
  return vtkm::Vec<T, 3>(a[0] - b[0], a[1] - b[1], a[2] - b[2]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator-(
    const vtkm::Vec<T, 3>& a, T scalar
)
{
  return vtkm::Vec<T, 3>(a[0] - scalar, a[1] - scalar, a[2] - scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator-(
    const vtkm::Vec<T, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 3>(a[0] - scalar, a[1] - scalar, a[2] - scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator-(
    const vtkm::Vec<vtkm::Float64, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 3>(a[0] - scalar, a[1] - scalar, a[2] - scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator-(
    T scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar - a[0], scalar - a[1], scalar - a[2]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar - a[0], scalar - a[1], scalar - a[2]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 3>& a
)
{
  return vtkm::Vec<vtkm::Float64, 3>(scalar - a[0], scalar - a[1], scalar - a[2]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator-(
    const vtkm::Vec<T, 4>& a, const vtkm::Vec<T, 4>& b
)
{
  return vtkm::Vec<T, 4>(a[0] - b[0], a[1] - b[1], a[2] - b[2], a[3] - b[3]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator-(
    const vtkm::Vec<T, 4>& a, T scalar
)
{
  return vtkm::Vec<T, 4>(a[0] - scalar, a[1] - scalar, a[2] - scalar, a[3] - scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator-(
    const vtkm::Vec<T, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 4>(a[0] - scalar, a[1] - scalar, a[2] - scalar, a[3] - scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator-(
    const vtkm::Vec<vtkm::Float64, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 4>(a[0] - scalar, a[1] - scalar, a[2] - scalar, a[3] - scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator-(
    T scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar - a[0], scalar - a[1], scalar - a[2], scalar - a[3]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar - a[0], scalar - a[1], scalar - a[2], scalar - a[3]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator-(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 4>& a
)
{
  return vtkm::Vec<vtkm::Float64, 4>(scalar - a[0], scalar - a[1], scalar - a[2], scalar - a[3]);
}

//}}}
// operator/ overloads for specific vector sizes -------------------{{{
// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator/(
    const vtkm::Vec<T, 1>& a, const vtkm::Vec<T, 1>& b
)
{
  return vtkm::Vec<T, 1>(a[0] / b[0]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator/(
    const vtkm::Vec<T, 1>& a, T scalar
)
{
  return vtkm::Vec<T, 1>(a[0] / scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator/(
    const vtkm::Vec<T, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 1>(a[0] / scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator/(
    const vtkm::Vec<vtkm::Float64, 1>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 1>(a[0] / scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator/(
    T scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar / a[0]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 1> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<T, 1>& a
)
{
  return vtkm::Vec<T, 1>(scalar / a[0]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 1> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 1>& a
)
{
  return vtkm::Vec<vtkm::Float64, 1>(scalar / a[0]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator/(
    const vtkm::Vec<T, 2>& a, const vtkm::Vec<T, 2>& b
)
{
  return vtkm::Vec<T, 2>(a[0] / b[0], a[1] / b[1]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator/(
    const vtkm::Vec<T, 2>& a, T scalar
)
{
  return vtkm::Vec<T, 2>(a[0] / scalar, a[1] / scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator/(
    const vtkm::Vec<T, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 2>(a[0] / scalar, a[1] / scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator/(
    const vtkm::Vec<vtkm::Float64, 2>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 2>(a[0] / scalar, a[1] / scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator/(
    T scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar / a[0], scalar / a[1]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 2> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<T, 2>& a
)
{
  return vtkm::Vec<T, 2>(scalar / a[0], scalar / a[1]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 2> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 2>& a
)
{
  return vtkm::Vec<vtkm::Float64, 2>(scalar / a[0], scalar / a[1]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator/(
    const vtkm::Vec<T, 3>& a, const vtkm::Vec<T, 3>& b
)
{
  return vtkm::Vec<T, 3>(a[0] / b[0], a[1] / b[1], a[2] / b[2]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator/(
    const vtkm::Vec<T, 3>& a, T scalar
)
{
  return vtkm::Vec<T, 3>(a[0] / scalar, a[1] / scalar, a[2] / scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator/(
    const vtkm::Vec<T, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 3>(a[0] / scalar, a[1] / scalar, a[2] / scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator/(
    const vtkm::Vec<vtkm::Float64, 3>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 3>(a[0] / scalar, a[1] / scalar, a[2] / scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator/(
    T scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar / a[0], scalar / a[1], scalar / a[2]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 3> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<T, 3>& a
)
{
  return vtkm::Vec<T, 3>(scalar / a[0], scalar / a[1], scalar / a[2]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 3> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 3>& a
)
{
  return vtkm::Vec<vtkm::Float64, 3>(scalar / a[0], scalar / a[1], scalar / a[2]);
}

// Vec_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator/(
    const vtkm::Vec<T, 4>& a, const vtkm::Vec<T, 4>& b
)
{
  return vtkm::Vec<T, 4>(a[0] / b[0], a[1] / b[1], a[2] / b[2], a[3] / b[3]);
}

// Vec_Scalar for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator/(
    const vtkm::Vec<T, 4>& a, T scalar
)
{
  return vtkm::Vec<T, 4>(a[0] / scalar, a[1] / scalar, a[2] / scalar, a[3] / scalar);
}

// Vec_Scalar for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator/(
    const vtkm::Vec<T, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<T, 4>(a[0] / scalar, a[1] / scalar, a[2] / scalar, a[3] / scalar);
}

// Vec_Scalar for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator/(
    const vtkm::Vec<vtkm::Float64, 4>& a, vtkm::Float64 scalar
)
{
  return vtkm::Vec<vtkm::Float64, 4>(a[0] / scalar, a[1] / scalar, a[2] / scalar, a[3] / scalar);
}

// Scalar_Vec for ['T', 'T']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator/(
    T scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar / a[0], scalar / a[1], scalar / a[2], scalar / a[3]);
}

// Scalar_Vec for ['T', 'vtkm::Float64']
template <typename T>
inline VTKM_EXEC_CONT vtkm::Vec<T, 4> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<T, 4>& a
)
{
  return vtkm::Vec<T, 4>(scalar / a[0], scalar / a[1], scalar / a[2], scalar / a[3]);
}

// Scalar_Vec for ['vtkm::Float64', 'vtkm::Float64']
inline VTKM_EXEC_CONT vtkm::Vec<vtkm::Float64, 4> operator/(
    vtkm::Float64 scalar, const vtkm::Vec<vtkm::Float64, 4>& a
)
{
  return vtkm::Vec<vtkm::Float64, 4>(scalar / a[0], scalar / a[1], scalar / a[2], scalar / a[3]);
}

//}}}


#if defined(VTKM_MSVC)
#pragma warning(pop)
#endif

#if (defined(VTKM_CUDA) && (__CUDACC_VER_MAJOR__ < 8))
#if (defined(VTKM_GCC) || defined(VTKM_CLANG))
#pragma GCC diagnostic pop
#endif // gcc || clang
#endif // use cuda < 8

}

// clang-format on
#endif //vtk_m_internal_VecOperators_h
