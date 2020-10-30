#include <ctype.h>  /* NOLINT */
#include <stdio.h>  /* NOLINT */
#include <stdlib.h> /* NOLINT */
#include <string.h> /* NOLINT */

#if defined(_MSC_VER)
#pragma warning(disable : 4996) /* deprecation */
#endif



/* Forward declare test functions. */
int UnitTestCellAverageFilter(int, char*[]);
int UnitTestCellMeasuresFilter(int, char*[]);
int UnitTestCellSetConnectivityFilter(int, char*[]);
int UnitTestCleanGrid(int, char*[]);
int UnitTestClipWithFieldFilter(int, char*[]);
int UnitTestClipWithImplicitFunctionFilter(int, char*[]);
int UnitTestContourFilter(int, char*[]);
int UnitTestContourFilterNormals(int, char*[]);
int UnitTestContourTreeUniformFilter(int, char*[]);
int UnitTestContourTreeUniformAugmentedFilter(int, char*[]);
int UnitTestCoordinateSystemTransform(int, char*[]);
int UnitTestCrossProductFilter(int, char*[]);
int UnitTestDotProductFilter(int, char*[]);
int UnitTestEntropyFilter(int, char*[]);
int UnitTestExternalFacesFilter(int, char*[]);
int UnitTestExtractGeometryFilter(int, char*[]);
int UnitTestExtractPointsFilter(int, char*[]);
int UnitTestExtractStructuredFilter(int, char*[]);
int UnitTestFieldMetadata(int, char*[]);
int UnitTestFieldSelection(int, char*[]);
int UnitTestFieldToColors(int, char*[]);
int UnitTestGradientExplicit(int, char*[]);
int UnitTestGradientUniform(int, char*[]);
int UnitTestGhostCellClassify(int, char*[]);
int UnitTestGhostCellRemove(int, char*[]);
int UnitTestHistogramFilter(int, char*[]);
int UnitTestImageConnectivityFilter(int, char*[]);
int UnitTestImageMedianFilter(int, char*[]);
int UnitTestLagrangianFilter(int, char*[]);
int UnitTestLagrangianStructuresFilter(int, char*[]);
int UnitTestMapFieldMergeAverage(int, char*[]);
int UnitTestMapFieldPermutation(int, char*[]);
int UnitTestMaskFilter(int, char*[]);
int UnitTestMaskPointsFilter(int, char*[]);
int UnitTestMeshQualityFilter(int, char*[]);
int UnitTestNDEntropyFilter(int, char*[]);
int UnitTestNDHistogramFilter(int, char*[]);
int UnitTestParticleAdvectionFilter(int, char*[]);
int UnitTestPartitionedDataSetFilters(int, char*[]);
int UnitTestPartitionedDataSetHistogramFilter(int, char*[]);
int UnitTestPointAverageFilter(int, char*[]);
int UnitTestPointElevationFilter(int, char*[]);
int UnitTestPointTransform(int, char*[]);
int UnitTestProbe(int, char*[]);
int UnitTestSplitSharpEdgesFilter(int, char*[]);
int UnitTestStreamlineFilter(int, char*[]);
int UnitTestStreamSurfaceFilter(int, char*[]);
int UnitTestSurfaceNormalsFilter(int, char*[]);
int UnitTestTetrahedralizeFilter(int, char*[]);
int UnitTestThresholdFilter(int, char*[]);
int UnitTestThresholdPointsFilter(int, char*[]);
int UnitTestTriangulateFilter(int, char*[]);
int UnitTestTubeFilter(int, char*[]);
int UnitTestVectorMagnitudeFilter(int, char*[]);
int UnitTestVertexClusteringFilter(int, char*[]);
int UnitTestWarpScalarFilter(int, char*[]);
int UnitTestWarpVectorFilter(int, char*[]);
int UnitTestZFP(int, char*[]);


#ifdef __cplusplus
#  define CM_CAST(TYPE, EXPR) static_cast<TYPE>(EXPR)
#  if __cplusplus >= 201103L
#    define CM_NULL nullptr
#  else
#    define CM_NULL NULL
#  endif
#else
#  define CM_CAST(TYPE, EXPR) (TYPE)(EXPR)
#  define CM_NULL NULL
#endif

/* Create map.  */

typedef int (*MainFuncPointer)(int, char* []); /* NOLINT */
typedef struct /* NOLINT */
{
  const char* name;
  MainFuncPointer func;
} functionMapEntry;

static functionMapEntry cmakeGeneratedFunctionMapEntries[] = {
    {
    "UnitTestCellAverageFilter",
    UnitTestCellAverageFilter
  },
  {
    "UnitTestCellMeasuresFilter",
    UnitTestCellMeasuresFilter
  },
  {
    "UnitTestCellSetConnectivityFilter",
    UnitTestCellSetConnectivityFilter
  },
  {
    "UnitTestCleanGrid",
    UnitTestCleanGrid
  },
  {
    "UnitTestClipWithFieldFilter",
    UnitTestClipWithFieldFilter
  },
  {
    "UnitTestClipWithImplicitFunctionFilter",
    UnitTestClipWithImplicitFunctionFilter
  },
  {
    "UnitTestContourFilter",
    UnitTestContourFilter
  },
  {
    "UnitTestContourFilterNormals",
    UnitTestContourFilterNormals
  },
  {
    "UnitTestContourTreeUniformFilter",
    UnitTestContourTreeUniformFilter
  },
  {
    "UnitTestContourTreeUniformAugmentedFilter",
    UnitTestContourTreeUniformAugmentedFilter
  },
  {
    "UnitTestCoordinateSystemTransform",
    UnitTestCoordinateSystemTransform
  },
  {
    "UnitTestCrossProductFilter",
    UnitTestCrossProductFilter
  },
  {
    "UnitTestDotProductFilter",
    UnitTestDotProductFilter
  },
  {
    "UnitTestEntropyFilter",
    UnitTestEntropyFilter
  },
  {
    "UnitTestExternalFacesFilter",
    UnitTestExternalFacesFilter
  },
  {
    "UnitTestExtractGeometryFilter",
    UnitTestExtractGeometryFilter
  },
  {
    "UnitTestExtractPointsFilter",
    UnitTestExtractPointsFilter
  },
  {
    "UnitTestExtractStructuredFilter",
    UnitTestExtractStructuredFilter
  },
  {
    "UnitTestFieldMetadata",
    UnitTestFieldMetadata
  },
  {
    "UnitTestFieldSelection",
    UnitTestFieldSelection
  },
  {
    "UnitTestFieldToColors",
    UnitTestFieldToColors
  },
  {
    "UnitTestGradientExplicit",
    UnitTestGradientExplicit
  },
  {
    "UnitTestGradientUniform",
    UnitTestGradientUniform
  },
  {
    "UnitTestGhostCellClassify",
    UnitTestGhostCellClassify
  },
  {
    "UnitTestGhostCellRemove",
    UnitTestGhostCellRemove
  },
  {
    "UnitTestHistogramFilter",
    UnitTestHistogramFilter
  },
  {
    "UnitTestImageConnectivityFilter",
    UnitTestImageConnectivityFilter
  },
  {
    "UnitTestImageMedianFilter",
    UnitTestImageMedianFilter
  },
  {
    "UnitTestLagrangianFilter",
    UnitTestLagrangianFilter
  },
  {
    "UnitTestLagrangianStructuresFilter",
    UnitTestLagrangianStructuresFilter
  },
  {
    "UnitTestMapFieldMergeAverage",
    UnitTestMapFieldMergeAverage
  },
  {
    "UnitTestMapFieldPermutation",
    UnitTestMapFieldPermutation
  },
  {
    "UnitTestMaskFilter",
    UnitTestMaskFilter
  },
  {
    "UnitTestMaskPointsFilter",
    UnitTestMaskPointsFilter
  },
  {
    "UnitTestMeshQualityFilter",
    UnitTestMeshQualityFilter
  },
  {
    "UnitTestNDEntropyFilter",
    UnitTestNDEntropyFilter
  },
  {
    "UnitTestNDHistogramFilter",
    UnitTestNDHistogramFilter
  },
  {
    "UnitTestParticleAdvectionFilter",
    UnitTestParticleAdvectionFilter
  },
  {
    "UnitTestPartitionedDataSetFilters",
    UnitTestPartitionedDataSetFilters
  },
  {
    "UnitTestPartitionedDataSetHistogramFilter",
    UnitTestPartitionedDataSetHistogramFilter
  },
  {
    "UnitTestPointAverageFilter",
    UnitTestPointAverageFilter
  },
  {
    "UnitTestPointElevationFilter",
    UnitTestPointElevationFilter
  },
  {
    "UnitTestPointTransform",
    UnitTestPointTransform
  },
  {
    "UnitTestProbe",
    UnitTestProbe
  },
  {
    "UnitTestSplitSharpEdgesFilter",
    UnitTestSplitSharpEdgesFilter
  },
  {
    "UnitTestStreamlineFilter",
    UnitTestStreamlineFilter
  },
  {
    "UnitTestStreamSurfaceFilter",
    UnitTestStreamSurfaceFilter
  },
  {
    "UnitTestSurfaceNormalsFilter",
    UnitTestSurfaceNormalsFilter
  },
  {
    "UnitTestTetrahedralizeFilter",
    UnitTestTetrahedralizeFilter
  },
  {
    "UnitTestThresholdFilter",
    UnitTestThresholdFilter
  },
  {
    "UnitTestThresholdPointsFilter",
    UnitTestThresholdPointsFilter
  },
  {
    "UnitTestTriangulateFilter",
    UnitTestTriangulateFilter
  },
  {
    "UnitTestTubeFilter",
    UnitTestTubeFilter
  },
  {
    "UnitTestVectorMagnitudeFilter",
    UnitTestVectorMagnitudeFilter
  },
  {
    "UnitTestVertexClusteringFilter",
    UnitTestVertexClusteringFilter
  },
  {
    "UnitTestWarpScalarFilter",
    UnitTestWarpScalarFilter
  },
  {
    "UnitTestWarpVectorFilter",
    UnitTestWarpVectorFilter
  },
  {
    "UnitTestZFP",
    UnitTestZFP
  },

  { CM_NULL, CM_NULL } /* NOLINT */
};

static const int NumTests = CM_CAST(int,
  sizeof(cmakeGeneratedFunctionMapEntries) / sizeof(functionMapEntry)) - 1;

/* Allocate and create a lowercased copy of string
   (note that it has to be free'd manually) */
static char* lowercase(const char* string)
{
  char *new_string, *p;
  size_t stringSize;

  stringSize = CM_CAST(size_t, strlen(string) + 1);
  new_string = CM_CAST(char*, malloc(sizeof(char) * stringSize));

  if (new_string == CM_NULL) { /* NOLINT */
    return CM_NULL;            /* NOLINT */
  }
  strcpy(new_string, string);  /* NOLINT */
  for (p = new_string; *p != 0; ++p) {
    *p = CM_CAST(char, tolower(*p));
  }
  return new_string;
}

int main(int ac, char* av[])
{
  int i, testNum = 0, partial_match;
  char *arg;
  int testToRun = -1;

  

  /* If no test name was given */
  /* process command line with user function.  */
  if (ac < 2) {
    /* Ask for a test.  */
    printf("Available tests:\n");
    for (i = 0; i < NumTests; ++i) {
      printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
    }
    printf("To run a test, enter the test number: ");
    fflush(stdout);
    if (scanf("%d", &testNum) != 1) {
      printf("Couldn't parse that input as a number\n");
      return -1;
    }
    if (testNum >= NumTests) {
      printf("%3d is an invalid test number.\n", testNum);
      return -1;
    }
    testToRun = testNum;
    ac--;
    av++;
  }
  partial_match = 0;
  arg = CM_NULL; /* NOLINT */
  /* If partial match is requested.  */
  if (testToRun == -1 && ac > 1) {
    partial_match = (strcmp(av[1], "-R") == 0) ? 1 : 0;
  }
  if (partial_match != 0 && ac < 3) {
    printf("-R needs an additional parameter.\n");
    return -1;
  }
  if (testToRun == -1) {
    arg = lowercase(av[1 + partial_match]);
  }
  for (i = 0; i < NumTests && testToRun == -1; ++i) {
    char *test_name = lowercase(cmakeGeneratedFunctionMapEntries[i].name);
    if (partial_match != 0 && strstr(test_name, arg) != CM_NULL) { /* NOLINT */
      testToRun = i;
      ac -= 2;
      av += 2;
    } else if (partial_match == 0 && strcmp(test_name, arg) == 0) {
      testToRun = i;
      ac--;
      av++;
    }
    free(test_name);
  }
  free(arg);
  if (testToRun != -1) {
    int result;

    if (testToRun < 0 || testToRun >= NumTests) {
      printf("testToRun was modified by TestDriver code to an invalid value: "
             "%3d.\n",
             testNum);
      return -1;
    }
    result = (*cmakeGeneratedFunctionMapEntries[testToRun].func)(ac, av);

    return result;
  }

  /* Nothing was run, display the test names.  */
  printf("Available tests:\n");
  for (i = 0; i < NumTests; ++i) {
    printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
  }
  printf("Failed: %s is an invalid test name.\n", av[1]);

  return -1;
}
