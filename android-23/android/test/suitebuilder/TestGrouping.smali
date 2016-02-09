.class public Landroid/test/suitebuilder/TestGrouping;
.super Ljava/lang/Object;
.source "TestGrouping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;,
        Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;,
        Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;,
        Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestGrouping"

.field public static final SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field protected firstIncludedPackage:Ljava/lang/String;

.field testCaseClasses:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;

    #@3
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;-><init>(Landroid/test/suitebuilder/TestGrouping$SortBySimpleName;)V

    #@6
    .line 53
    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_SIMPLE_NAME:Ljava/util/Comparator;

    #@8
    .line 57
    new-instance v0, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;

    #@a
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>(Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;)V

    #@d
    .line 56
    sput-object v0, Landroid/test/suitebuilder/TestGrouping;->SORT_BY_FULLY_QUALIFIED_NAME:Ljava/util/Comparator;

    #@f
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    #@6
    .line 63
    new-instance v0, Ljava/util/TreeSet;

    #@8
    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@b
    iput-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@d
    .line 62
    return-void
.end method

.method private select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 171
    .local v2, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 172
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 173
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 176
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method

.method private selectTestClasses(Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p1, "allClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 163
    .local v2, "testClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    new-instance v3, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v3, v4}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;)V

    #@b
    .line 162
    invoke-direct {p0, p1, v3}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "testClass$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/Class;

    #@1f
    .line 164
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 166
    .end local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v2
.end method

.method private testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    iget-object v2, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    #@2
    invoke-static {v2}, Landroid/test/PackageInfoSources;->forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;

    #@5
    move-result-object v1

    #@6
    .line 154
    .local v1, "source":Landroid/test/ClassPathPackageInfoSource;
    invoke-virtual {v1, p1}, Landroid/test/ClassPathPackageInfoSource;->getPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    #@9
    move-result-object v0

    #@a
    .line 156
    .local v0, "packageInfo":Landroid/test/ClassPathPackageInfo;
    invoke-virtual {v0}, Landroid/test/ClassPathPackageInfo;->getTopLevelClassesRecursive()Ljava/util/Set;

    #@d
    move-result-object v2

    #@e
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestGrouping;->selectTestClasses(Ljava/util/Set;)Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method


# virtual methods
.method public varargs addPackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 116
    const/4 v2, 0x0

    #@1
    array-length v3, p1

    #@2
    :goto_0
    if-ge v2, v3, :cond_2

    #@4
    aget-object v1, p1, v2

    #@6
    .line 117
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    .line 118
    .local v0, "addedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 119
    const-string/jumbo v4, "TestGrouping"

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Invalid Package: \'"

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 120
    const-string/jumbo v6, "\' could not be found or has no tests"

    #@26
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 122
    :cond_0
    iget-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@33
    invoke-interface {v4, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@36
    .line 123
    iget-object v4, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    #@38
    if-nez v4, :cond_1

    #@3a
    .line 124
    iput-object v1, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    #@3c
    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 127
    .end local v0    # "addedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Ljunit/framework/TestCase;>;>;"
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 90
    if-ne p0, p1, :cond_0

    #@3
    .line 91
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 93
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestGrouping;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 94
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 96
    check-cast v0, Landroid/test/suitebuilder/TestGrouping;

    #@15
    .line 97
    .local v0, "other":Landroid/test/suitebuilder/TestGrouping;
    iget-object v1, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@17
    iget-object v2, v0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@19
    invoke-interface {v1, v2}, Ljava/util/SortedSet;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 98
    return v3

    #@20
    .line 100
    :cond_3
    iget-object v1, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@22
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@25
    move-result-object v1

    #@26
    iget-object v2, v0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@28
    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method public getFirstIncludedPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->firstIncludedPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getTestCaseClasses()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@2
    return-object v0
.end method

.method protected getTestMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 82
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v1, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v2}, Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;-><init>(Landroid/test/suitebuilder/TestGrouping$TestMethodPredicate;)V

    #@e
    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestGrouping;->select(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public getTests()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 72
    .local v4, "testMethods":Ljava/util/List;, "Ljava/util/List<Landroid/test/suitebuilder/TestMethod;>;"
    iget-object v5, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "testCase$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Class;

    #@17
    .line 73
    .local v0, "testCase":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/TestGrouping;->getTestMethods(Ljava/lang/Class;)Ljava/util/List;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "testMethod$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/reflect/Method;

    #@2b
    .line 74
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    new-instance v5, Landroid/test/suitebuilder/TestMethod;

    #@2d
    invoke-direct {v5, v2, v0}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    #@30
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 77
    .end local v0    # "testCase":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .end local v2    # "testMethod":Ljava/lang/reflect/Method;
    .end local v3    # "testMethod$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@2
    invoke-interface {v0}, Ljava/util/SortedSet;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public varargs removePackagesRecursive([Ljava/lang/String;)Landroid/test/suitebuilder/TestGrouping;
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 138
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 139
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/test/suitebuilder/TestGrouping;->testCaseClasses:Ljava/util/SortedSet;

    #@8
    invoke-direct {p0, v0}, Landroid/test/suitebuilder/TestGrouping;->testCaseClassesInPackage(Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v3, v4}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    #@f
    .line 138
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 141
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Landroid/test/suitebuilder/TestGrouping;->classLoader:Ljava/lang/ClassLoader;

    #@2
    .line 179
    return-void
.end method
