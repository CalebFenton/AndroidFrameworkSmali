.class public Landroid/test/TestCaseUtil;
.super Ljava/lang/Object;
.source "TestCaseUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createTestSuite(Ljava/lang/Class;)Ljunit/framework/TestSuite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)",
            "Ljunit/framework/TestSuite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/Test;>;"
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 158
    invoke-static {p0, v2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    #@8
    move-result-object v0

    #@9
    .line 160
    .local v0, "test":Ljunit/framework/Test;
    if-nez v0, :cond_0

    #@b
    .line 161
    new-instance v2, Ljunit/framework/TestSuite;

    #@d
    invoke-direct {v2, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@10
    return-object v2

    #@11
    .line 163
    :cond_0
    const-class v2, Ljunit/framework/TestCase;

    #@13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 164
    new-instance v1, Ljunit/framework/TestSuite;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    #@2a
    .line 165
    .local v1, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v1, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    #@2d
    .line 166
    return-object v1

    #@2e
    .line 169
    .end local v1    # "testSuite":Ljunit/framework/TestSuite;
    :cond_1
    check-cast v0, Ljunit/framework/TestSuite;

    #@30
    .end local v0    # "test":Ljunit/framework/Test;
    return-object v0
.end method

.method public static getTestAtIndex(Ljunit/framework/TestSuite;I)Ljunit/framework/Test;
    .locals 4
    .param p0, "testSuite"    # Ljunit/framework/TestSuite;
    .param p1, "position"    # I

    #@0
    .prologue
    .line 143
    const/4 v1, 0x0

    #@1
    .line 144
    .local v1, "index":I
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    #@4
    move-result-object v0

    #@5
    .line 145
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljunit/framework/Test;

    #@11
    .line 147
    .local v2, "test":Ljunit/framework/Test;
    if-ne v1, p1, :cond_0

    #@13
    .line 148
    return-object v2

    #@14
    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 152
    .end local v2    # "test":Ljunit/framework/Test;
    :cond_1
    const/4 v3, 0x0

    #@18
    return-object v3
.end method

.method public static getTestCaseNames(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 5
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-static {p0, p1}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 46
    .local v3, "tests":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@7
    move-result-object v2

    #@8
    .line 47
    .local v2, "testCaseNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "aTest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljunit/framework/Test;

    #@18
    .line 48
    .local v0, "aTest":Ljunit/framework/Test;
    invoke-static {v0}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    goto :goto_0

    #@20
    .line 50
    .end local v0    # "aTest":Ljunit/framework/Test;
    :cond_0
    return-object v2
.end method

.method public static getTestName(Ljunit/framework/Test;)Ljava/lang/String;
    .locals 5
    .param p0, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 124
    instance-of v4, p0, Ljunit/framework/TestCase;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v2, p0

    #@5
    .line 125
    check-cast v2, Ljunit/framework/TestCase;

    #@7
    .line 126
    .local v2, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v2}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 127
    .end local v2    # "testCase":Ljunit/framework/TestCase;
    :cond_0
    instance-of v4, p0, Ljunit/framework/TestSuite;

    #@e
    if-eqz v4, :cond_2

    #@10
    move-object v3, p0

    #@11
    .line 128
    check-cast v3, Ljunit/framework/TestSuite;

    #@13
    .line 129
    .local v3, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v3}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 130
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@19
    .line 131
    const-string/jumbo v4, "."

    #@1c
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    .line 132
    .local v0, "index":I
    const/4 v4, -0x1

    #@21
    if-le v0, v4, :cond_1

    #@23
    .line 133
    add-int/lit8 v4, v0, 0x1

    #@25
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    return-object v4

    #@2a
    .line 135
    :cond_1
    return-object v1

    #@2b
    .line 139
    .end local v0    # "index":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "testSuite":Ljunit/framework/TestSuite;
    :cond_2
    const-string/jumbo v4, ""

    #@2e
    return-object v4
.end method

.method public static getTests(Ljunit/framework/Test;Z)Ljava/util/List;
    .locals 1
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    invoke-static {p0, p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;
    .locals 6
    .param p0, "test"    # Ljunit/framework/Test;
    .param p1, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/util/List",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p2, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    .line 60
    .local v2, "testCases":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/Test;>;"
    if-eqz p0, :cond_4

    #@6
    .line 62
    const/4 v4, 0x0

    #@7
    .line 68
    .local v4, "workingTest":Ljunit/framework/Test;
    instance-of v5, p0, Ljunit/framework/TestCase;

    #@9
    if-eqz v5, :cond_0

    #@b
    move-object v5, p0

    #@c
    .line 69
    check-cast v5, Ljunit/framework/TestCase;

    #@e
    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    if-nez v5, :cond_0

    #@14
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v5

    #@18
    invoke-static {v5, p2}, Landroid/test/TestCaseUtil;->invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;

    #@1b
    move-result-object v4

    #@1c
    .line 73
    .end local v4    # "workingTest":Ljunit/framework/Test;
    :cond_0
    if-nez v4, :cond_1

    #@1e
    .line 74
    move-object v4, p0

    #@1f
    .line 77
    :cond_1
    instance-of v5, v4, Ljunit/framework/TestSuite;

    #@21
    if-eqz v5, :cond_3

    #@23
    move-object v3, v4

    #@24
    .line 78
    check-cast v3, Ljunit/framework/TestSuite;

    #@26
    .line 79
    .local v3, "testSuite":Ljunit/framework/TestSuite;
    invoke-virtual {v3}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    #@29
    move-result-object v1

    #@2a
    .line 80
    .local v1, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_4

    #@30
    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljunit/framework/Test;

    #@36
    .line 82
    .local v0, "childTest":Ljunit/framework/Test;
    if-eqz p1, :cond_2

    #@38
    .line 83
    invoke-static {v0, p1, p2}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;ZLjava/util/Set;)Ljava/util/List;

    #@3b
    move-result-object v5

    #@3c
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3f
    goto :goto_0

    #@40
    .line 85
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 89
    .end local v0    # "childTest":Ljunit/framework/Test;
    .end local v1    # "enumeration":Ljava/util/Enumeration;
    .end local v3    # "testSuite":Ljunit/framework/TestSuite;
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    .line 92
    :cond_4
    return-object v2
.end method

.method private static invokeSuiteMethodIfPossible(Ljava/lang/Class;Ljava/util/Set;)Ljunit/framework/Test;
    .locals 7
    .param p0, "testClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v6, 0x0

    #@1
    .line 99
    :try_start_0
    const-string/jumbo v4, "suite"

    #@4
    const/4 v5, 0x0

    #@5
    new-array v5, v5, [Ljava/lang/Class;

    #@7
    .line 98
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v3

    #@b
    .line 106
    .local v3, "suiteMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    #@e
    move-result v4

    #@f
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 107
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 120
    .end local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v6

    #@1c
    .line 108
    .restart local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 110
    const/4 v4, 0x0

    #@20
    :try_start_1
    check-cast v4, [Ljava/lang/Object;

    #@22
    const/4 v5, 0x0

    #@23
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljunit/framework/Test;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    return-object v4

    #@2a
    .line 117
    .end local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@2b
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    #@2c
    .line 111
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    #@2d
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    #@2e
    .line 113
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    #@2f
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method
