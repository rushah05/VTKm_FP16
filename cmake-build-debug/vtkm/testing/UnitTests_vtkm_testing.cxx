#include <ctype.h>  /* NOLINT */
#include <stdio.h>  /* NOLINT */
#include <stdlib.h> /* NOLINT */
#include <string.h> /* NOLINT */

#if defined(_MSC_VER)
#pragma warning(disable : 4996) /* deprecation */
#endif



/* Forward declare test functions. */
int UnitTestBinaryPredicates(int, char*[]);
int UnitTestBinaryOperators(int, char*[]);
int UnitTestBounds(int, char*[]);
int UnitTestCellShape(int, char*[]);
int UnitTestDeprecated(int, char*[]);
int UnitTestExceptions(int, char*[]);
int UnitTestHash(int, char*[]);
int UnitTestList(int, char*[]);
int UnitTestListTag(int, char*[]);
int UnitTestMatrix(int, char*[]);
int UnitTestNewtonsMethod(int, char*[]);
int UnitTestNoAssert(int, char*[]);
int UnitTestPair(int, char*[]);
int UnitTestRange(int, char*[]);
int UnitTestTesting(int, char*[]);
int UnitTestTransform3D(int, char*[]);
int UnitTestTuple(int, char*[]);
int UnitTestTypeList(int, char*[]);
int UnitTestTypeListTag(int, char*[]);
int UnitTestTypes(int, char*[]);
int UnitTestTypeTraits(int, char*[]);
int UnitTestUnaryPredicates(int, char*[]);
int UnitTestVecAxisAlignedPointCoordinates(int, char*[]);
int UnitTestVecFromPortal(int, char*[]);
int UnitTestVecFromPortalPermute(int, char*[]);
int UnitTestVectorAnalysis(int, char*[]);
int UnitTestVecTraits(int, char*[]);
int UnitTestVecVariable(int, char*[]);


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
    "UnitTestBinaryPredicates",
    UnitTestBinaryPredicates
  },
  {
    "UnitTestBinaryOperators",
    UnitTestBinaryOperators
  },
  {
    "UnitTestBounds",
    UnitTestBounds
  },
  {
    "UnitTestCellShape",
    UnitTestCellShape
  },
  {
    "UnitTestDeprecated",
    UnitTestDeprecated
  },
  {
    "UnitTestExceptions",
    UnitTestExceptions
  },
  {
    "UnitTestHash",
    UnitTestHash
  },
  {
    "UnitTestList",
    UnitTestList
  },
  {
    "UnitTestListTag",
    UnitTestListTag
  },
  {
    "UnitTestMatrix",
    UnitTestMatrix
  },
  {
    "UnitTestNewtonsMethod",
    UnitTestNewtonsMethod
  },
  {
    "UnitTestNoAssert",
    UnitTestNoAssert
  },
  {
    "UnitTestPair",
    UnitTestPair
  },
  {
    "UnitTestRange",
    UnitTestRange
  },
  {
    "UnitTestTesting",
    UnitTestTesting
  },
  {
    "UnitTestTransform3D",
    UnitTestTransform3D
  },
  {
    "UnitTestTuple",
    UnitTestTuple
  },
  {
    "UnitTestTypeList",
    UnitTestTypeList
  },
  {
    "UnitTestTypeListTag",
    UnitTestTypeListTag
  },
  {
    "UnitTestTypes",
    UnitTestTypes
  },
  {
    "UnitTestTypeTraits",
    UnitTestTypeTraits
  },
  {
    "UnitTestUnaryPredicates",
    UnitTestUnaryPredicates
  },
  {
    "UnitTestVecAxisAlignedPointCoordinates",
    UnitTestVecAxisAlignedPointCoordinates
  },
  {
    "UnitTestVecFromPortal",
    UnitTestVecFromPortal
  },
  {
    "UnitTestVecFromPortalPermute",
    UnitTestVecFromPortalPermute
  },
  {
    "UnitTestVectorAnalysis",
    UnitTestVectorAnalysis
  },
  {
    "UnitTestVecTraits",
    UnitTestVecTraits
  },
  {
    "UnitTestVecVariable",
    UnitTestVecVariable
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
