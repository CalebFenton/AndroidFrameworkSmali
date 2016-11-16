.class public Landroid/test/suitebuilder/TestSuiteBuilder;
.super Ljava/lang/Object;
.source "TestSuiteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentClassname:Ljava/lang/String;

.field private final predicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private rootSuite:Ljunit/framework/TestSuite;

.field private suiteForCurrentClass:Ljunit/framework/TestSuite;

.field private suiteName:Ljava/lang/String;

.field private testCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final testGrouping:Landroid/test/suitebuilder/TestGrouping;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@b
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Landroid/test/suitebuilder/TestGrouping;

    #@5
    sget-object v1, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    #@7
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping;-><init>(Ljava/util/Comparator;)V

    #@a
    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@c
    .line 46
    new-instance v0, Ljava/util/HashSet;

    #@e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11
    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    #@13
    .line 66
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    #@15
    .line 67
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@17
    invoke-virtual {v0, p2}, Landroid/test/suitebuilder/TestGrouping;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@1a
    .line 68
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    #@20
    .line 69
    const/4 v0, 0x1

    #@21
    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    #@23
    sget-object v1, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v1, v0, v2

    #@28
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@2b
    .line 65
    return-void
.end method

.method private addSuiteIfNecessary(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentClassname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 270
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    #@a
    .line 271
    new-instance v0, Ljunit/framework/TestSuite;

    #@c
    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    #@11
    .line 272
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    #@13
    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    #@15
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@18
    .line 268
    :cond_0
    return-void
.end method

.method private addTest(Landroid/test/suitebuilder/TestMethod;)V
    .locals 2
    .param p1, "testMethod"    # Landroid/test/suitebuilder/TestMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClassname()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    #@7
    .line 260
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    #@9
    invoke-virtual {p1}, Landroid/test/suitebuilder/TestMethod;->createTest()Ljunit/framework/TestCase;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@10
    .line 258
    return-void
.end method

.method private addTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addSuiteIfNecessary(Ljava/lang/String;)V

    #@b
    .line 265
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteForCurrentClass:Ljunit/framework/TestSuite;

    #@d
    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@10
    .line 263
    return-void
.end method

.method private static parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    const/16 v0, 0x2e

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z
    .locals 3
    .param p1, "test"    # Landroid/test/suitebuilder/TestMethod;

    #@0
    .prologue
    .line 250
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "predicate$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/util/Predicate;

    #@12
    .line 251
    .local v0, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v0, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 252
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 255
    .end local v0    # "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :cond_1
    const/4 v2, 0x1

    #@1b
    return v2
.end method


# virtual methods
.method public addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p1, "predicates":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->predicates:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 123
    return-object p0
.end method

.method public final varargs addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;)",
            "Landroid/test/suitebuilder/TestSuiteBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    .local p1, "predicates":[Lcom/android/internal/util/Predicate;, "[Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 219
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@8
    .line 220
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 3
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 76
    new-instance v0, Landroid/test/AndroidTestRunner;

    #@2
    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    #@5
    .line 77
    .local v0, "atr":Landroid/test/AndroidTestRunner;
    invoke-virtual {v0, p3}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    #@8
    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/test/AndroidTestRunner;->setTestClassName(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 80
    iget-object v1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    #@d
    invoke-virtual {v0}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@14
    .line 81
    return-object p0
.end method

.method public addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 3
    .param p1, "testSuite"    # Ljunit/framework/TestSuite;

    #@0
    .prologue
    .line 86
    const/4 v2, 0x1

    #@1
    invoke-static {p1, v2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "testCase$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljunit/framework/TestCase;

    #@15
    .line 87
    .local v0, "testCase":Ljunit/framework/TestCase;
    iget-object v2, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    #@17
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 89
    .end local v0    # "testCase":Ljunit/framework/TestCase;
    :cond_0
    return-object p0
.end method

.method public final build()Ljunit/framework/TestSuite;
    .locals 8

    #@0
    .prologue
    .line 175
    new-instance v6, Ljunit/framework/TestSuite;

    #@2
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    #@5
    move-result-object v7

    #@6
    invoke-direct {v6, v7}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    #@9
    iput-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    #@b
    .line 178
    const/4 v6, 0x0

    #@c
    iput-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->currentClassname:Ljava/lang/String;

    #@e
    .line 180
    :try_start_0
    iget-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@10
    invoke-virtual {v6}, Landroid/test/suitebuilder/TestGrouping;->getTests()Ljava/util/List;

    #@13
    move-result-object v6

    #@14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    .local v3, "test$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/test/suitebuilder/TestMethod;

    #@24
    .line 181
    .local v2, "test":Landroid/test/suitebuilder/TestMethod;
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    .line 182
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Landroid/test/suitebuilder/TestMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    goto :goto_0

    #@2e
    .line 192
    .end local v2    # "test":Landroid/test/suitebuilder/TestMethod;
    .end local v3    # "test$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@2f
    .line 193
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v6, "TestSuiteBuilder"

    #@32
    const-string/jumbo v7, "Failed to create test."

    #@35
    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 194
    new-instance v1, Ljunit/framework/TestSuite;

    #@3a
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestSuiteBuilder;->getSuiteName()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-direct {v1, v6}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    #@41
    .line 195
    .local v1, "suite":Ljunit/framework/TestSuite;
    new-instance v6, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;

    #@43
    invoke-direct {v6, v0}, Landroid/test/suitebuilder/TestSuiteBuilder$FailedToCreateTests;-><init>(Ljava/lang/Exception;)V

    #@46
    invoke-virtual {v1, v6}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@49
    .line 196
    return-object v1

    #@4a
    .line 185
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "suite":Ljunit/framework/TestSuite;
    .restart local v3    # "test$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    #@4c
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@4f
    move-result v6

    #@50
    if-lez v6, :cond_3

    #@52
    .line 186
    iget-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testCases:Ljava/util/List;

    #@54
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v5

    #@58
    .local v5, "testCase$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_3

    #@5e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v4

    #@62
    check-cast v4, Ljunit/framework/TestCase;

    #@64
    .line 187
    .local v4, "testCase":Ljunit/framework/TestCase;
    new-instance v6, Landroid/test/suitebuilder/TestMethod;

    #@66
    invoke-direct {v6, v4}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljunit/framework/TestCase;)V

    #@69
    invoke-direct {p0, v6}, Landroid/test/suitebuilder/TestSuiteBuilder;->satisfiesAllPredicates(Landroid/test/suitebuilder/TestMethod;)Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_2

    #@6f
    .line 188
    invoke-direct {p0, v4}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTest(Ljunit/framework/Test;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@72
    goto :goto_1

    #@73
    .line 198
    .end local v4    # "testCase":Ljunit/framework/TestCase;
    .end local v5    # "testCase$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->rootSuite:Ljunit/framework/TestSuite;

    #@75
    return-object v6
.end method

.method public varargs excludePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@2
    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->removePackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;

    #@5
    .line 112
    return-object p0
.end method

.method protected getSuiteName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getTestGrouping()Landroid/test/suitebuilder/TestGrouping;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@2
    return-object v0
.end method

.method public final includeAllPackagesUnderHere()Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 8

    #@0
    .prologue
    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v4

    #@8
    .line 135
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    #@9
    .line 136
    .local v0, "callingClassName":Ljava/lang/String;
    const-class v6, Landroid/test/suitebuilder/TestSuiteBuilder;

    #@b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    .line 140
    .local v5, "thisClassName":Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@11
    if-ge v2, v6, :cond_0

    #@13
    .line 141
    aget-object v1, v4, v2

    #@15
    .line 142
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 143
    const-string/jumbo v6, "includeAllPackagesUnderHere"

    #@22
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    .line 142
    if-eqz v6, :cond_1

    #@2c
    .line 146
    add-int/lit8 v6, v2, 0x1

    #@2e
    aget-object v6, v4, v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 151
    .end local v0    # "callingClassName":Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {v0}, Landroid/test/suitebuilder/TestSuiteBuilder;->parsePackageNameFromClassName(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 152
    .local v3, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    #@39
    new-array v6, v6, [Ljava/lang/String;

    #@3b
    const/4 v7, 0x0

    #@3c
    aput-object v3, v6, v7

    #@3e
    invoke-virtual {p0, v6}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@41
    move-result-object v6

    #@42
    return-object v6

    #@43
    .line 140
    .end local v3    # "packageName":Ljava/lang/String;
    .restart local v0    # "callingClassName":Ljava/lang/String;
    .restart local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0
.end method

.method public varargs includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->testGrouping:Landroid/test/suitebuilder/TestGrouping;

    #@2
    invoke-virtual {v0, p1}, Landroid/test/suitebuilder/TestGrouping;->addPackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;

    #@5
    .line 101
    return-object p0
.end method

.method public named(Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;
    .locals 0
    .param p1, "newSuiteName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Landroid/test/suitebuilder/TestSuiteBuilder;->suiteName:Ljava/lang/String;

    #@2
    .line 166
    return-object p0
.end method
