.class public Landroid/test/suitebuilder/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# instance fields
.field private final enclosingClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private final enclosingClassname:Ljava/lang/String;

.field private final testMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p2, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    #@5
    .line 42
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@b
    .line 43
    iput-object p1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@d
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p2, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestCase;)V
    .locals 2
    .param p1, "testCase"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    .line 47
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@b
    .line 46
    return-void
.end method

.method private instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .locals 8
    .param p1, "testCaseClass"    # Ljava/lang/Class;
    .param p2, "testName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    #@4
    move-result-object v1

    #@5
    .line 81
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v4, v1

    #@6
    if-nez v4, :cond_0

    #@8
    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@b
    move-result-object v4

    #@c
    invoke-direct {p0, v4, p2}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 84
    :cond_0
    array-length v6, v1

    #@12
    move v4, v5

    #@13
    :goto_0
    if-ge v4, v6, :cond_3

    #@15
    aget-object v0, v1, v4

    #@17
    .line 85
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    .line 86
    .local v2, "params":[Ljava/lang/Class;
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestMethod;->noargsConstructor([Ljava/lang/Class;)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    .line 87
    new-array v4, v5, [Ljava/lang/Object;

    #@23
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljunit/framework/TestCase;

    #@29
    .line 90
    .local v3, "test":Ljunit/framework/TestCase;
    invoke-virtual {v3, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    #@2c
    .line 91
    return-object v3

    #@2d
    .line 92
    .end local v3    # "test":Ljunit/framework/TestCase;
    :cond_1
    invoke-direct {p0, v2}, Landroid/test/suitebuilder/TestMethod;->singleStringConstructor([Ljava/lang/Class;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_2

    #@33
    .line 93
    const/4 v4, 0x1

    #@34
    new-array v4, v4, [Ljava/lang/Object;

    #@36
    .line 94
    aput-object p2, v4, v5

    #@38
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljunit/framework/TestCase;

    #@3e
    return-object v4

    #@3f
    .line 84
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@41
    goto :goto_0

    #@42
    .line 98
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "params":[Ljava/lang/Class;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    #@44
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, "Unable to locate a constructor for "

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 99
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v4
.end method

.method private noargsConstructor([Ljava/lang/Class;)Z
    .locals 2
    .param p1, "params"    # [Ljava/lang/Class;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 107
    array-length v1, p1

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :cond_0
    return v0
.end method

.method private singleStringConstructor([Ljava/lang/Class;)Z
    .locals 3
    .param p1, "params"    # [Ljava/lang/Class;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    array-length v1, p1

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    aget-object v0, p1, v0

    #@7
    const-class v1, Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :cond_0
    return v0
.end method


# virtual methods
.method public createTest()Ljunit/framework/TestCase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    #@2
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@4
    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/TestMethod;->instantiateTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 112
    if-ne p0, p1, :cond_0

    #@4
    .line 113
    return v4

    #@5
    .line 115
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 116
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 119
    check-cast v0, Landroid/test/suitebuilder/TestMethod;

    #@15
    .line 121
    .local v0, "that":Landroid/test/suitebuilder/TestMethod;
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@17
    if-eqz v1, :cond_5

    #@19
    .line 122
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@1b
    iget-object v2, v0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_6

    #@23
    .line 126
    :cond_3
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_7

    #@27
    .line 127
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@29
    iget-object v2, v0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_8

    #@31
    .line 131
    :cond_4
    return v4

    #@32
    .line 123
    :cond_5
    iget-object v1, v0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@34
    if-eqz v1, :cond_3

    #@36
    .line 124
    :cond_6
    return v3

    #@37
    .line 128
    :cond_7
    iget-object v1, v0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 129
    :cond_8
    return v3
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getEnclosingClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Landroid/test/suitebuilder/TestMethod;->getName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    new-array v3, v3, [Ljava/lang/Class;

    #@b
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 61
    :catch_0
    move-exception v0

    #@15
    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public getEnclosingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getEnclosingClassname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 137
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 138
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    #@c
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@15
    move-result v1

    #@16
    :goto_1
    add-int v0, v2, v1

    #@18
    .line 139
    return v0

    #@19
    .line 137
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "result":I
    goto :goto_0

    #@1b
    .line 138
    :cond_1
    const/4 v1, 0x0

    #@1c
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->enclosingClassname:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "."

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/test/suitebuilder/TestMethod;->testMethodName:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
