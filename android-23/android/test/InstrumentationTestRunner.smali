.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    }
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method static synthetic -get0(Landroid/test/InstrumentationTestRunner;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    #@3
    .line 290
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@a
    .line 173
    return-void
.end method

.method private generateCoverageReport()V
    .locals 17

    #@0
    .prologue
    .line 601
    invoke-direct/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 602
    .local v2, "coverageFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 604
    .local v1, "coverageFile":Ljava/io/File;
    :try_start_0
    const-string/jumbo v12, "com.vladium.emma.rt.RT"

    #@c
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@f
    move-result-object v11

    #@10
    .line 605
    .local v11, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v12, "dumpCoverageData"

    #@13
    const/4 v13, 0x3

    #@14
    new-array v13, v13, [Ljava/lang/Class;

    #@16
    .line 606
    invoke-virtual {v1}, Ljava/io/File;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v14

    #@1a
    const/4 v15, 0x0

    #@1b
    aput-object v14, v13, v15

    #@1d
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1f
    const/4 v15, 0x1

    #@20
    aput-object v14, v13, v15

    #@22
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@24
    const/4 v15, 0x2

    #@25
    aput-object v14, v13, v15

    #@27
    .line 605
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2a
    move-result-object v4

    #@2b
    .line 608
    .local v4, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x3

    #@2c
    new-array v12, v12, [Ljava/lang/Object;

    #@2e
    const/4 v13, 0x0

    #@2f
    aput-object v1, v12, v13

    #@31
    const/4 v13, 0x0

    #@32
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@35
    move-result-object v13

    #@36
    const/4 v14, 0x1

    #@37
    aput-object v13, v12, v14

    #@39
    const/4 v13, 0x0

    #@3a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3d
    move-result-object v13

    #@3e
    const/4 v14, 0x2

    #@3f
    aput-object v13, v12, v14

    #@41
    const/4 v13, 0x0

    #@42
    invoke-virtual {v4, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 611
    move-object/from16 v0, p0

    #@47
    iget-object v12, v0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@49
    const-string/jumbo v13, "coverageFilePath"

    #@4c
    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 613
    move-object/from16 v0, p0

    #@51
    iget-object v12, v0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@53
    .line 614
    const-string/jumbo v13, "stream"

    #@56
    .line 613
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 615
    .local v3, "currentStream":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c
    iget-object v12, v0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@5e
    const-string/jumbo v13, "stream"

    #@61
    .line 616
    const-string/jumbo v14, "%s\nGenerated code coverage data to %s"

    #@64
    const/4 v15, 0x2

    #@65
    new-array v15, v15, [Ljava/lang/Object;

    #@67
    const/16 v16, 0x0

    #@69
    aput-object v3, v15, v16

    #@6b
    .line 617
    const/16 v16, 0x1

    #@6d
    aput-object v2, v15, v16

    #@6f
    .line 616
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v14

    #@73
    .line 615
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    .line 598
    .end local v3    # "currentStream":Ljava/lang/String;
    .end local v4    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    .end local v11    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    #@77
    .line 628
    :catch_0
    move-exception v10

    #@78
    .line 629
    .local v10, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v10}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    #@7d
    goto :goto_0

    #@7e
    .line 626
    .end local v10    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    #@7f
    .line 627
    .local v6, "e":Ljava/lang/IllegalAccessException;
    move-object/from16 v0, p0

    #@81
    invoke-direct {v0, v6}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    #@84
    goto :goto_0

    #@85
    .line 624
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v7

    #@86
    .line 625
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    #@88
    invoke-direct {v0, v7}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    #@8b
    goto :goto_0

    #@8c
    .line 622
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    #@8d
    .line 623
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    move-object/from16 v0, p0

    #@8f
    invoke-direct {v0, v8}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    #@92
    goto :goto_0

    #@93
    .line 620
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v9

    #@94
    .line 621
    .local v9, "e":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    #@96
    invoke-direct {v0, v9}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    #@99
    goto :goto_0

    #@9a
    .line 618
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v5

    #@9b
    .line 619
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v12, "Is emma jar on classpath?"

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v12, v5}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@a3
    goto :goto_0
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 507
    if-nez p1, :cond_0

    #@5
    .line 508
    return-object v6

    #@6
    .line 511
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 512
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 513
    return-object v0

    #@11
    .line 515
    :cond_1
    const-string/jumbo v2, "InstrumentationTestRunner"

    #@14
    const-string/jumbo v3, "Provided annotation value %s is not an Annotation"

    #@17
    const/4 v4, 0x1

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    .line 516
    const/4 v5, 0x0

    #@1b
    aput-object p1, v4, v5

    #@1d
    .line 515
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 522
    .end local v0    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v6

    #@25
    .line 518
    :catch_0
    move-exception v1

    #@26
    .line 519
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "InstrumentationTestRunner"

    #@29
    const-string/jumbo v3, "Could not find class for specified annotation %s"

    #@2c
    new-array v4, v8, [Ljava/lang/Object;

    #@2e
    .line 520
    aput-object p1, v4, v7

    #@30
    .line 519
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 480
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    #@7
    .line 481
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@9
    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@c
    return-object v1

    #@d
    .line 483
    :cond_0
    return-object v1
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 453
    .local v0, "tagString":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 636
    const-string/jumbo v1, "coverage.ec"

    #@22
    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    .line 638
    :cond_0
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    #@2d
    return-object v0
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .param p1, "annotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 493
    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 494
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_0

    #@7
    .line 495
    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@9
    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@c
    invoke-static {v1}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 497
    :cond_0
    return-object v1
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 1
    .param p1, "sizeArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    const-string/jumbo v0, "small"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 462
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    #@b
    return-object v0

    #@c
    .line 463
    :cond_0
    const-string/jumbo v0, "medium"

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 464
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    #@17
    return-object v0

    #@18
    .line 465
    :cond_1
    const-string/jumbo v0, "large"

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 466
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    #@23
    return-object v0

    #@24
    .line 468
    :cond_2
    const/4 v0, 0x0

    #@25
    return-object v0
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 4
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 437
    const/16 v2, 0x23

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 438
    .local v0, "methodSeparatorIndex":I
    const/4 v1, 0x0

    #@8
    .line 440
    .local v1, "testMethodName":Ljava/lang/String;
    if-lez v0, :cond_0

    #@a
    .line 441
    add-int/lit8 v2, v0, 0x1

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 442
    .local v1, "testMethodName":Ljava/lang/String;
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 444
    .end local v1    # "testMethodName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@1b
    .line 436
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 4
    .param p1, "testClassArg"    # Ljava/lang/String;
    .param p2, "testSuiteBuilder"    # Landroid/test/suitebuilder/TestSuiteBuilder;

    #@0
    .prologue
    .line 423
    const-string/jumbo v2, ","

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 424
    .local v1, "testClasses":[Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    array-length v3, v1

    #@9
    :goto_0
    if-ge v2, v3, :cond_0

    #@b
    aget-object v0, v1, v2

    #@d
    .line 425
    .local v0, "testClass":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    #@10
    .line 424
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 422
    .end local v0    # "testClass":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 643
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@6
    .line 642
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Failed to generate emma coverage. "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 648
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "InstrumentationTestRunner"

    #@17
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 649
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@1c
    const-string/jumbo v2, "stream"

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "\nError: "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 646
    return-void
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 408
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@8
    invoke-virtual {v0, p1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@b
    .line 406
    :cond_0
    return-void
.end method

.method public getAllTests()Ljunit/framework/TestSuite;
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 1

    #@0
    .prologue
    .line 448
    new-instance v0, Landroid/test/AndroidTestRunner;

    #@2
    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    #@5
    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 595
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .locals 1

    #@0
    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 304
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 305
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    #@9
    .line 309
    const/4 v13, 0x2

    #@a
    new-array v2, v13, [Ljava/lang/String;

    #@c
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    #@f
    move-result-object v13

    #@10
    invoke-virtual {v13}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    #@13
    move-result-object v13

    #@14
    const/4 v14, 0x0

    #@15
    aput-object v13, v2, v14

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v13

    #@1b
    invoke-virtual {v13}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    #@1e
    move-result-object v13

    #@1f
    const/4 v14, 0x1

    #@20
    aput-object v13, v2, v14

    #@22
    .line 310
    .local v2, "apkPaths":[Ljava/lang/String;
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    #@25
    .line 312
    const/4 v10, 0x0

    #@26
    .line 313
    .local v10, "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v7, 0x0

    #@27
    .line 314
    .local v7, "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v9, 0x0

    #@28
    .line 315
    .local v9, "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v8, 0x0

    #@29
    .line 316
    .local v8, "testClassesArg":Ljava/lang/String;
    const/4 v5, 0x0

    #@2a
    .line 318
    .local v5, "logOnly":Z
    if-eqz p1, :cond_0

    #@2c
    .line 320
    const-string/jumbo v13, "class"

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    .line 321
    .local v8, "testClassesArg":Ljava/lang/String;
    const-string/jumbo v13, "debug"

    #@38
    move-object/from16 v0, p0

    #@3a
    move-object/from16 v1, p1

    #@3c
    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@3f
    move-result v13

    #@40
    move-object/from16 v0, p0

    #@42
    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    #@44
    .line 322
    const-string/jumbo v13, "count"

    #@47
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, p1

    #@4b
    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@4e
    move-result v13

    #@4f
    move-object/from16 v0, p0

    #@51
    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    #@53
    .line 323
    const-string/jumbo v13, "suiteAssignment"

    #@56
    move-object/from16 v0, p0

    #@58
    move-object/from16 v1, p1

    #@5a
    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@5d
    move-result v13

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    #@62
    .line 324
    const-string/jumbo v13, "package"

    #@65
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v13

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    #@6f
    .line 326
    const-string/jumbo v13, "size"

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v13

    #@78
    .line 325
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    #@7d
    move-result-object v10

    #@7e
    .line 328
    .local v10, "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const-string/jumbo v13, "annotation"

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v13

    #@87
    .line 327
    move-object/from16 v0, p0

    #@89
    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    #@8c
    move-result-object v7

    #@8d
    .line 330
    .local v7, "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const-string/jumbo v13, "notAnnotation"

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v13

    #@96
    .line 329
    move-object/from16 v0, p0

    #@98
    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    #@9b
    move-result-object v9

    #@9c
    .line 332
    .local v9, "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const-string/jumbo v13, "log"

    #@9f
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, p1

    #@a3
    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@a6
    move-result v5

    #@a7
    .line 333
    .local v5, "logOnly":Z
    const-string/jumbo v13, "coverage"

    #@aa
    move-object/from16 v0, p0

    #@ac
    move-object/from16 v1, p1

    #@ae
    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    #@b1
    move-result v13

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    #@b6
    .line 334
    const-string/jumbo v13, "coverageFile"

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v13

    #@bf
    move-object/from16 v0, p0

    #@c1
    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    #@c3
    .line 337
    :try_start_0
    const-string/jumbo v13, "delay_msec"

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@cb
    move-result-object v3

    #@cc
    .line 338
    .local v3, "delay":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@ce
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d1
    move-result-object v13

    #@d2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d5
    move-result v13

    #@d6
    move-object/from16 v0, p0

    #@d8
    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@da
    .line 344
    .end local v3    # "delay":Ljava/lang/Object;
    .end local v5    # "logOnly":Z
    .end local v7    # "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .end local v8    # "testClassesArg":Ljava/lang/String;
    .end local v9    # "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .end local v10    # "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :cond_0
    :goto_0
    new-instance v12, Landroid/test/suitebuilder/TestSuiteBuilder;

    #@dc
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getClass()Ljava/lang/Class;

    #@df
    move-result-object v13

    #@e0
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e3
    move-result-object v13

    #@e4
    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    #@e7
    move-result-object v14

    #@e8
    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@eb
    move-result-object v14

    #@ec
    .line 344
    invoke-direct {v12, v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@ef
    .line 347
    .local v12, "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v10, :cond_1

    #@f1
    .line 348
    const/4 v13, 0x1

    #@f2
    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    #@f4
    const/4 v14, 0x0

    #@f5
    aput-object v10, v13, v14

    #@f7
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@fa
    .line 350
    :cond_1
    if-eqz v7, :cond_2

    #@fc
    .line 351
    const/4 v13, 0x1

    #@fd
    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    #@ff
    const/4 v14, 0x0

    #@100
    aput-object v7, v13, v14

    #@102
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@105
    .line 353
    :cond_2
    if-eqz v9, :cond_3

    #@107
    .line 354
    const/4 v13, 0x1

    #@108
    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    #@10a
    const/4 v14, 0x0

    #@10b
    aput-object v9, v13, v14

    #@10d
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@110
    .line 357
    :cond_3
    if-nez v8, :cond_6

    #@112
    .line 358
    move-object/from16 v0, p0

    #@114
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    #@116
    if-eqz v13, :cond_4

    #@118
    .line 359
    const/4 v13, 0x1

    #@119
    new-array v13, v13, [Ljava/lang/String;

    #@11b
    move-object/from16 v0, p0

    #@11d
    iget-object v14, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    #@11f
    const/4 v15, 0x0

    #@120
    aput-object v14, v13, v15

    #@122
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@125
    .line 374
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    #@128
    move-result-object v13

    #@129
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@12c
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    #@12f
    move-result-object v13

    #@130
    move-object/from16 v0, p0

    #@132
    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@134
    .line 377
    move-object/from16 v0, p0

    #@136
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@138
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    #@13b
    move-result-object v14

    #@13c
    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    #@13f
    .line 378
    move-object/from16 v0, p0

    #@141
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@143
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v13, v0}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    #@148
    .line 379
    move-object/from16 v0, p0

    #@14a
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@14c
    invoke-virtual {v13, v5}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    #@14f
    .line 380
    move-object/from16 v0, p0

    #@151
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@153
    invoke-virtual {v12}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    #@156
    move-result-object v14

    #@157
    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    #@15a
    .line 381
    move-object/from16 v0, p0

    #@15c
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@15e
    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    #@161
    move-result-object v13

    #@162
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@165
    move-result v13

    #@166
    move-object/from16 v0, p0

    #@168
    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    #@16a
    .line 382
    move-object/from16 v0, p0

    #@16c
    iget-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    #@16e
    if-eqz v13, :cond_7

    #@170
    .line 383
    move-object/from16 v0, p0

    #@172
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@174
    new-instance v14, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-direct {v14, v0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    #@17b
    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@17e
    .line 390
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->start()V

    #@181
    .line 303
    return-void

    #@182
    .line 339
    .end local v12    # "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    .restart local v5    # "logOnly":Z
    .restart local v7    # "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .restart local v8    # "testClassesArg":Ljava/lang/String;
    .restart local v9    # "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .restart local v10    # "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :catch_0
    move-exception v4

    #@183
    .line 340
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v13, "InstrumentationTestRunner"

    #@186
    const-string/jumbo v14, "Invalid delay_msec parameter"

    #@189
    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18c
    goto/16 :goto_0

    #@18e
    .line 361
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "logOnly":Z
    .end local v7    # "testAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .end local v8    # "testClassesArg":Ljava/lang/String;
    .end local v9    # "testNotAnnotationPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .end local v10    # "testSizePredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    .restart local v12    # "testSuiteBuilder":Landroid/test/suitebuilder/TestSuiteBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    #@191
    move-result-object v11

    #@192
    .line 362
    .local v11, "testSuite":Ljunit/framework/TestSuite;
    if-eqz v11, :cond_5

    #@194
    .line 363
    invoke-virtual {v12, v11}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@197
    goto :goto_1

    #@198
    .line 367
    :cond_5
    const/4 v13, 0x1

    #@199
    new-array v13, v13, [Ljava/lang/String;

    #@19b
    const-string/jumbo v14, ""

    #@19e
    const/4 v15, 0x0

    #@19f
    aput-object v14, v13, v15

    #@1a1
    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@1a4
    goto :goto_1

    #@1a5
    .line 371
    .end local v11    # "testSuite":Ljunit/framework/TestSuite;
    :cond_6
    move-object/from16 v0, p0

    #@1a7
    invoke-direct {v0, v8, v12}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    #@1aa
    goto/16 :goto_1

    #@1ac
    .line 385
    :cond_7
    new-instance v6, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    invoke-direct {v6, v0, v13}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    #@1b7
    .line 386
    .local v6, "resultPrinter":Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
    move-object/from16 v0, p0

    #@1b9
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@1bb
    new-instance v14, Landroid/test/TestPrinter;

    #@1bd
    const-string/jumbo v15, "TestRunner"

    #@1c0
    const/16 v16, 0x0

    #@1c2
    invoke-direct/range {v14 .. v16}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    #@1c5
    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@1c8
    .line 387
    move-object/from16 v0, p0

    #@1ca
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@1cc
    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@1cf
    .line 388
    move-object/from16 v0, p0

    #@1d1
    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@1d3
    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    #@1d6
    goto :goto_2
.end method

.method public onStart()V
    .locals 15

    #@0
    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    #@3
    .line 538
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 539
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@9
    const-string/jumbo v9, "id"

    #@c
    const-string/jumbo v10, "InstrumentationTestRunner"

    #@f
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 540
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@14
    const-string/jumbo v9, "numtests"

    #@17
    iget v10, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    #@19
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1c
    .line 541
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@1e
    const/4 v9, -0x1

    #@1f
    invoke-virtual {p0, v9, v8}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    #@22
    .line 535
    :goto_0
    return-void

    #@23
    .line 543
    :cond_0
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    #@25
    if-eqz v8, :cond_1

    #@27
    .line 544
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    #@2a
    .line 547
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2c
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@2f
    .line 548
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    #@31
    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@34
    .line 550
    .local v7, "writer":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    #@36
    invoke-direct {v1, p0, v7}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    #@39
    .line 552
    .local v1, "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@3b
    invoke-virtual {v8, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@3e
    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@41
    move-result-wide v4

    #@42
    .line 555
    .local v4, "startTime":J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@44
    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->runTest()V

    #@47
    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4a
    move-result-wide v8

    #@4b
    sub-long v2, v8, v4

    #@4d
    .line 558
    .local v2, "runTime":J
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@4f
    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v1, v8, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printResult(Ljunit/framework/TestResult;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 565
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@58
    const-string/jumbo v9, "stream"

    #@5b
    .line 566
    const-string/jumbo v10, "\nTest results for %s=%s"

    #@5e
    const/4 v11, 0x2

    #@5f
    new-array v11, v11, [Ljava/lang/Object;

    #@61
    .line 567
    iget-object v12, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@63
    invoke-virtual {v12}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    #@66
    move-result-object v12

    #@67
    const/4 v13, 0x0

    #@68
    aput-object v12, v11, v13

    #@6a
    .line 568
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@6d
    move-result-object v12

    #@6e
    const/4 v13, 0x1

    #@6f
    aput-object v12, v11, v13

    #@71
    .line 566
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v10

    #@75
    .line 565
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 570
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    #@7a
    if-eqz v8, :cond_2

    #@7c
    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    #@7f
    .line 573
    :cond_2
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    #@82
    .line 575
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@84
    const/4 v9, -0x1

    #@85
    invoke-virtual {p0, v9, v8}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    #@88
    goto :goto_0

    #@89
    .line 559
    .end local v1    # "resultPrinter":Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v2    # "runTime":J
    .end local v4    # "startTime":J
    :catch_0
    move-exception v6

    #@8a
    .line 561
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v8, "Test run aborted due to unexpected exception: %s"

    #@8d
    const/4 v9, 0x1

    #@8e
    new-array v9, v9, [Ljava/lang/Object;

    #@90
    .line 562
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@93
    move-result-object v10

    #@94
    const/4 v11, 0x0

    #@95
    aput-object v10, v9, v11

    #@97
    .line 561
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9e
    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a1
    .line 565
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@a3
    const-string/jumbo v9, "stream"

    #@a6
    .line 566
    const-string/jumbo v10, "\nTest results for %s=%s"

    #@a9
    const/4 v11, 0x2

    #@aa
    new-array v11, v11, [Ljava/lang/Object;

    #@ac
    .line 567
    iget-object v12, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@ae
    invoke-virtual {v12}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    const/4 v13, 0x0

    #@b3
    aput-object v12, v11, v13

    #@b5
    .line 568
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@b8
    move-result-object v12

    #@b9
    const/4 v13, 0x1

    #@ba
    aput-object v12, v11, v13

    #@bc
    .line 566
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bf
    move-result-object v10

    #@c0
    .line 565
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c3
    .line 570
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    #@c5
    if-eqz v8, :cond_3

    #@c7
    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    #@ca
    .line 573
    :cond_3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    #@cd
    .line 575
    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@cf
    const/4 v9, -0x1

    #@d0
    invoke-virtual {p0, v9, v8}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    #@d3
    goto/16 :goto_0

    #@d5
    .line 564
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    #@d6
    .line 565
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@d8
    const-string/jumbo v10, "stream"

    #@db
    .line 566
    const-string/jumbo v11, "\nTest results for %s=%s"

    #@de
    const/4 v12, 0x2

    #@df
    new-array v12, v12, [Ljava/lang/Object;

    #@e1
    .line 567
    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    #@e3
    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    #@e6
    move-result-object v13

    #@e7
    const/4 v14, 0x0

    #@e8
    aput-object v13, v12, v14

    #@ea
    .line 568
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@ed
    move-result-object v13

    #@ee
    const/4 v14, 0x1

    #@ef
    aput-object v13, v12, v14

    #@f1
    .line 566
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f4
    move-result-object v11

    #@f5
    .line 565
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f8
    .line 570
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    #@fa
    if-eqz v9, :cond_4

    #@fc
    .line 571
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    #@ff
    .line 573
    :cond_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    #@102
    .line 575
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    #@104
    const/4 v10, -0x1

    #@105
    invoke-virtual {p0, v10, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    #@108
    .line 564
    throw v8
.end method

.method prepareLooper()V
    .locals 0

    #@0
    .prologue
    .line 531
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 530
    return-void
.end method
