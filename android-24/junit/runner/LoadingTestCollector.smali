.class public Ljunit/runner/LoadingTestCollector;
.super Ljunit/runner/ClassPathTestCollector;
.source "LoadingTestCollector.java"


# instance fields
.field fLoader:Ljunit/runner/TestCaseClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljunit/runner/ClassPathTestCollector;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljunit/runner/TestCaseClassLoader;

    #@5
    invoke-direct {v0}, Ljunit/runner/TestCaseClassLoader;-><init>()V

    #@8
    iput-object v0, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    #@a
    .line 17
    return-void
.end method


# virtual methods
.method classFromFile(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "classFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 37
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    #@6
    invoke-virtual {v1, v0}, Ljunit/runner/TestCaseClassLoader;->isExcluded(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 38
    iget-object v1, p0, Ljunit/runner/LoadingTestCollector;->fLoader:Ljunit/runner/TestCaseClassLoader;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v1, v0, v2}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 39
    :cond_0
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method hasPublicConstructor(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "testClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 63
    :try_start_0
    invoke-static {p1}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 67
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 64
    :catch_0
    move-exception v0

    #@6
    .line 65
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method hasSuiteMethod(Ljava/lang/Class;)Z
    .locals 4
    .param p1, "testClass"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 54
    :try_start_0
    const-string/jumbo v1, "suite"

    #@4
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Ljava/lang/Class;

    #@7
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 58
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 55
    :catch_0
    move-exception v0

    #@d
    .line 56
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

.method isTestClass(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "testClass"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 43
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasSuiteMethod(Ljava/lang/Class;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 44
    return v1

    #@8
    .line 45
    :cond_0
    const-class v0, Ljunit/framework/Test;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    #@13
    move-result v0

    #@14
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@17
    move-result v0

    #@18
    .line 45
    if-eqz v0, :cond_1

    #@1a
    .line 47
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->hasPublicConstructor(Ljava/lang/Class;)Z

    #@1d
    move-result v0

    #@1e
    .line 45
    if-eqz v0, :cond_1

    #@20
    .line 48
    return v1

    #@21
    .line 49
    :cond_1
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .locals 5
    .param p1, "classFileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 23
    :try_start_0
    const-string/jumbo v4, ".class"

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 24
    invoke-virtual {p0, p1}, Ljunit/runner/LoadingTestCollector;->classFromFile(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    .line 25
    .local v2, "testClass":Ljava/lang/Class;
    if-eqz v2, :cond_0

    #@10
    invoke-virtual {p0, v2}, Ljunit/runner/LoadingTestCollector;->isTestClass(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    move-result v3

    #@14
    :cond_0
    return v3

    #@15
    .line 28
    .end local v2    # "testClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    #@16
    .line 32
    :cond_1
    :goto_0
    return v3

    #@17
    .line 30
    :catch_1
    move-exception v1

    #@18
    .local v1, "notFatal":Ljava/lang/NoClassDefFoundError;
    goto :goto_0
.end method
