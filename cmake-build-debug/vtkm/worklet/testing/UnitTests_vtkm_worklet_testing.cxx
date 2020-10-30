#include <ctype.h>  /* NOLINT */
#include <stdio.h>  /* NOLINT */
#include <stdlib.h> /* NOLINT */
#include <string.h> /* NOLINT */

#if defined(_MSC_VER)
#pragma warning(disable : 4996) /* deprecation */
#endif



/* Forward declare test functions. */
int UnitTestAverageByKey(int, char*[]);
int UnitTestBoundingIntervalHierarchy(int, char*[]);
int UnitTestCellAverage(int, char*[]);
int UnitTestCellDeepCopy(int, char*[]);
int UnitTestCellGradient(int, char*[]);
int UnitTestCellSetConnectivity(int, char*[]);
int UnitTestCellSetDualGraph(int, char*[]);
int UnitTestCellMeasure(int, char*[]);
int UnitTestClipping(int, char*[]);
int UnitTestContour(int, char*[]);
int UnitTestContourTreeUniform(int, char*[]);
int UnitTestContourTreeUniformAugmented(int, char*[]);
int UnitTestCoordinateSystemTransform(int, char*[]);
int UnitTestCosmoTools(int, char*[]);
int UnitTestCrossProduct(int, char*[]);
int UnitTestDescriptiveStatistics(int, char*[]);
int UnitTestDotProduct(int, char*[]);
int UnitTestExternalFaces(int, char*[]);
int UnitTestExtractGeometry(int, char*[]);
int UnitTestExtractPoints(int, char*[]);
int UnitTestExtractStructured(int, char*[]);
int UnitTestFieldHistogram(int, char*[]);
int UnitTestFieldStatistics(int, char*[]);
int UnitTestGraphConnectivity(int, char*[]);
int UnitTestInnerJoin(int, char*[]);
int UnitTestImageConnectivity(int, char*[]);
int UnitTestKdTreeBuildNNS(int, char*[]);
int UnitTestKeys(int, char*[]);
int UnitTestMagnitude(int, char*[]);
int UnitTestMask(int, char*[]);
int UnitTestMaskIndices(int, char*[]);
int UnitTestMaskPoints(int, char*[]);
int UnitTestMaskSelect(int, char*[]);
int UnitTestNormalize(int, char*[]);
int UnitTestNDimsEntropy(int, char*[]);
int UnitTestNDimsHistogram(int, char*[]);
int UnitTestNDimsHistMarginalization(int, char*[]);
int UnitTestOrientNormals(int, char*[]);
int UnitTestParticleAdvection(int, char*[]);
int UnitTestPointElevation(int, char*[]);
int UnitTestPointGradient(int, char*[]);
int UnitTestPointTransform(int, char*[]);
int UnitTestProbe(int, char*[]);
int UnitTestRemoveUnusedPoints(int, char*[]);
int UnitTestScalarsToColors(int, char*[]);
int UnitTestScatterAndMask(int, char*[]);
int UnitTestScatterCounting(int, char*[]);
int UnitTestScatterPermutation(int, char*[]);
int UnitTestSplatKernels(int, char*[]);
int UnitTestSplitSharpEdges(int, char*[]);
int UnitTestScatterAndMaskWithTopology(int, char*[]);
int UnitTestStreamLineUniformGrid(int, char*[]);
int UnitTestStreamSurface(int, char*[]);
int UnitTestSurfaceNormals(int, char*[]);
int UnitTestTemporalAdvection(int, char*[]);
int UnitTestTetrahedralize(int, char*[]);
int UnitTestThreshold(int, char*[]);
int UnitTestThresholdPoints(int, char*[]);
int UnitTestTriangleWinding(int, char*[]);
int UnitTestTriangulate(int, char*[]);
int UnitTestTube(int, char*[]);
int UnitTestWholeCellSetIn(int, char*[]);
int UnitTestWorkletMapField(int, char*[]);
int UnitTestWorkletMapField3d(int, char*[]);
int UnitTestWorkletMapFieldExecArg(int, char*[]);
int UnitTestWorkletMapFieldWholeArray(int, char*[]);
int UnitTestWorkletMapFieldWholeArrayAtomic(int, char*[]);
int UnitTestWorkletMapPointNeighborhood(int, char*[]);
int UnitTestWorkletMapTopologyExplicit(int, char*[]);
int UnitTestWorkletMapTopologyUniform(int, char*[]);
int UnitTestWorkletReduceByKey(int, char*[]);
int UnitTestVertexClustering(int, char*[]);
int UnitTestWarpScalar(int, char*[]);
int UnitTestWarpVector(int, char*[]);
int UnitTestWaveletCompressor(int, char*[]);
int UnitTestZFPCompressor(int, char*[]);


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
    "UnitTestAverageByKey",
    UnitTestAverageByKey
  },
  {
    "UnitTestBoundingIntervalHierarchy",
    UnitTestBoundingIntervalHierarchy
  },
  {
    "UnitTestCellAverage",
    UnitTestCellAverage
  },
  {
    "UnitTestCellDeepCopy",
    UnitTestCellDeepCopy
  },
  {
    "UnitTestCellGradient",
    UnitTestCellGradient
  },
  {
    "UnitTestCellSetConnectivity",
    UnitTestCellSetConnectivity
  },
  {
    "UnitTestCellSetDualGraph",
    UnitTestCellSetDualGraph
  },
  {
    "UnitTestCellMeasure",
    UnitTestCellMeasure
  },
  {
    "UnitTestClipping",
    UnitTestClipping
  },
  {
    "UnitTestContour",
    UnitTestContour
  },
  {
    "UnitTestContourTreeUniform",
    UnitTestContourTreeUniform
  },
  {
    "UnitTestContourTreeUniformAugmented",
    UnitTestContourTreeUniformAugmented
  },
  {
    "UnitTestCoordinateSystemTransform",
    UnitTestCoordinateSystemTransform
  },
  {
    "UnitTestCosmoTools",
    UnitTestCosmoTools
  },
  {
    "UnitTestCrossProduct",
    UnitTestCrossProduct
  },
  {
    "UnitTestDescriptiveStatistics",
    UnitTestDescriptiveStatistics
  },
  {
    "UnitTestDotProduct",
    UnitTestDotProduct
  },
  {
    "UnitTestExternalFaces",
    UnitTestExternalFaces
  },
  {
    "UnitTestExtractGeometry",
    UnitTestExtractGeometry
  },
  {
    "UnitTestExtractPoints",
    UnitTestExtractPoints
  },
  {
    "UnitTestExtractStructured",
    UnitTestExtractStructured
  },
  {
    "UnitTestFieldHistogram",
    UnitTestFieldHistogram
  },
  {
    "UnitTestFieldStatistics",
    UnitTestFieldStatistics
  },
  {
    "UnitTestGraphConnectivity",
    UnitTestGraphConnectivity
  },
  {
    "UnitTestInnerJoin",
    UnitTestInnerJoin
  },
  {
    "UnitTestImageConnectivity",
    UnitTestImageConnectivity
  },
  {
    "UnitTestKdTreeBuildNNS",
    UnitTestKdTreeBuildNNS
  },
  {
    "UnitTestKeys",
    UnitTestKeys
  },
  {
    "UnitTestMagnitude",
    UnitTestMagnitude
  },
  {
    "UnitTestMask",
    UnitTestMask
  },
  {
    "UnitTestMaskIndices",
    UnitTestMaskIndices
  },
  {
    "UnitTestMaskPoints",
    UnitTestMaskPoints
  },
  {
    "UnitTestMaskSelect",
    UnitTestMaskSelect
  },
  {
    "UnitTestNormalize",
    UnitTestNormalize
  },
  {
    "UnitTestNDimsEntropy",
    UnitTestNDimsEntropy
  },
  {
    "UnitTestNDimsHistogram",
    UnitTestNDimsHistogram
  },
  {
    "UnitTestNDimsHistMarginalization",
    UnitTestNDimsHistMarginalization
  },
  {
    "UnitTestOrientNormals",
    UnitTestOrientNormals
  },
  {
    "UnitTestParticleAdvection",
    UnitTestParticleAdvection
  },
  {
    "UnitTestPointElevation",
    UnitTestPointElevation
  },
  {
    "UnitTestPointGradient",
    UnitTestPointGradient
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
    "UnitTestRemoveUnusedPoints",
    UnitTestRemoveUnusedPoints
  },
  {
    "UnitTestScalarsToColors",
    UnitTestScalarsToColors
  },
  {
    "UnitTestScatterAndMask",
    UnitTestScatterAndMask
  },
  {
    "UnitTestScatterCounting",
    UnitTestScatterCounting
  },
  {
    "UnitTestScatterPermutation",
    UnitTestScatterPermutation
  },
  {
    "UnitTestSplatKernels",
    UnitTestSplatKernels
  },
  {
    "UnitTestSplitSharpEdges",
    UnitTestSplitSharpEdges
  },
  {
    "UnitTestScatterAndMaskWithTopology",
    UnitTestScatterAndMaskWithTopology
  },
  {
    "UnitTestStreamLineUniformGrid",
    UnitTestStreamLineUniformGrid
  },
  {
    "UnitTestStreamSurface",
    UnitTestStreamSurface
  },
  {
    "UnitTestSurfaceNormals",
    UnitTestSurfaceNormals
  },
  {
    "UnitTestTemporalAdvection",
    UnitTestTemporalAdvection
  },
  {
    "UnitTestTetrahedralize",
    UnitTestTetrahedralize
  },
  {
    "UnitTestThreshold",
    UnitTestThreshold
  },
  {
    "UnitTestThresholdPoints",
    UnitTestThresholdPoints
  },
  {
    "UnitTestTriangleWinding",
    UnitTestTriangleWinding
  },
  {
    "UnitTestTriangulate",
    UnitTestTriangulate
  },
  {
    "UnitTestTube",
    UnitTestTube
  },
  {
    "UnitTestWholeCellSetIn",
    UnitTestWholeCellSetIn
  },
  {
    "UnitTestWorkletMapField",
    UnitTestWorkletMapField
  },
  {
    "UnitTestWorkletMapField3d",
    UnitTestWorkletMapField3d
  },
  {
    "UnitTestWorkletMapFieldExecArg",
    UnitTestWorkletMapFieldExecArg
  },
  {
    "UnitTestWorkletMapFieldWholeArray",
    UnitTestWorkletMapFieldWholeArray
  },
  {
    "UnitTestWorkletMapFieldWholeArrayAtomic",
    UnitTestWorkletMapFieldWholeArrayAtomic
  },
  {
    "UnitTestWorkletMapPointNeighborhood",
    UnitTestWorkletMapPointNeighborhood
  },
  {
    "UnitTestWorkletMapTopologyExplicit",
    UnitTestWorkletMapTopologyExplicit
  },
  {
    "UnitTestWorkletMapTopologyUniform",
    UnitTestWorkletMapTopologyUniform
  },
  {
    "UnitTestWorkletReduceByKey",
    UnitTestWorkletReduceByKey
  },
  {
    "UnitTestVertexClustering",
    UnitTestVertexClustering
  },
  {
    "UnitTestWarpScalar",
    UnitTestWarpScalar
  },
  {
    "UnitTestWarpVector",
    UnitTestWarpVector
  },
  {
    "UnitTestWaveletCompressor",
    UnitTestWaveletCompressor
  },
  {
    "UnitTestZFPCompressor",
    UnitTestZFPCompressor
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
