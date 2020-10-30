#ifndef vtk_m_TypesHalf
#define vtk_m_TypesHalf

// half support on GPU
#include "cuda_fp16.h"

// half support on CPU
#include "Half.h"

#ifndef  VTKM_CUDA
#include <cmath>
#include <limits.h>
#include <math.h>
#include <stdlib.h>
#endif

#include <iostream>

#define cudaF2H __float2half
#define cudaH2F __half2float 

#define hostF2H half_float::half_cast<half_float::half, std::round_to_nearest>
#define hostH2F half_float::half_cast<float,            std::round_to_nearest>

namespace ph {

struct TypesHalf {
private:
  half data;
public:
  VTKM_EXEC_CONT
  TypesHalf() {
    data = cudaF2H(0.0f);
  }

  VTKM_EXEC_CONT
  TypesHalf(half h) {
    data = h;
  }

  VTKM_EXEC_CONT
  TypesHalf(float f) {
    data = cudaF2H(f);
  }

  /* Copy constructor */
  VTKM_EXEC_CONT
  TypesHalf(const TypesHalf &ph) {
    data = ph.get();
  }

  VTKM_EXEC_CONT
  half get() const {
    return data;
  }

  VTKM_EXEC_CONT
  half get() {
    return const_cast<const TypesHalf*>(this)->get();
  }

  VTKM_EXEC_CONT
  void set(TypesHalf ph) {
    data = ph.get();
  }

  VTKM_EXEC_CONT
  float to_float() const {
    return cudaH2F(data);
  }


 VTKM_EXEC_CONT
  TypesHalf operator + (TypesHalf& h){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hadd(h.get(), data));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) + hostF2H(cudaH2F(h.get())) ));
#endif
 }


 VTKM_EXEC_CONT
  TypesHalf operator + (const TypesHalf& h){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hadd(h.get(), data));
#else
   {
   	return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) + hostF2H(cudaH2F(h.get())) ));
   }
#endif
 }

 VTKM_EXEC_CONT
  TypesHalf operator + (const TypesHalf& h) const{
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hadd(h.get(), data));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) + hostF2H(cudaH2F(h.get())) ));
#endif
 }
 

 VTKM_EXEC_CONT
 TypesHalf operator - (TypesHalf& h){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hsub(data, h.get()));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) - hostF2H(cudaH2F(h.get())) ));
#endif
 }


  VTKM_EXEC_CONT
 TypesHalf operator - (const TypesHalf& h) const{
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hsub(data, h.get()));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) - hostF2H(cudaH2F(h.get())) ));
#endif
 }

 VTKM_EXEC_CONT
 TypesHalf operator * (TypesHalf& h){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hmul(data, h.get()));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) * hostF2H(cudaH2F(h.get())) ));
#endif
 }

 VTKM_EXEC_CONT
 TypesHalf operator * (const TypesHalf& h) const{
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hmul(data, h.get()));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) * hostF2H(cudaH2F(h.get())) ));
#endif
 }

VTKM_EXEC_CONT
 TypesHalf operator / (TypesHalf& h){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hdiv(data, h.get()));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) / hostF2H(cudaH2F(h.get())) ));
#endif
 }

 VTKM_EXEC_CONT
  TypesHalf operator / (const TypesHalf& h) const{
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hdiv(h.get(), data));
#else
   return TypesHalf(hostH2F( hostF2H(cudaH2F(data)) / hostF2H(cudaH2F(h.get())) ));
#endif
 }


VTKM_EXEC_CONT
 TypesHalf operator - (){
#ifdef  __CUDA_ARCH__
   return TypesHalf(__hneg(data));
#else
   return TypesHalf(hostH2F(-hostF2H(cudaH2F(data))));
#endif
 }

VTKM_EXEC_CONT
 TypesHalf& operator=(float rhs) {
   data = cudaF2H(rhs);
   return *this;
 }

 VTKM_EXEC_CONT
 TypesHalf& operator=(TypesHalf ph) {
   data = ph.get();
   return *this;
 }


};

 VTKM_CONT
 static inline std::ostream& operator<<(std::ostream& os, const TypesHalf& ph)
 {
     os << ph.to_float();
     return os;
 }

 VTKM_CONT
 static inline void print_half(const TypesHalf& ph)
 {
   std::cout << ph.to_float();
 }

}

#endif //vtk_m_TypesHalf


