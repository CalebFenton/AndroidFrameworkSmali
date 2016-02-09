.class public abstract Ljunit/framework/TestCase;
.super Ljunit/framework/Assert;
.source "TestCase.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field private fName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    #@3
    .line 87
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@6
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@5
    .line 92
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected createResult()Ljunit/framework/TestResult;
    .locals 1

    #@0
    .prologue
    .line 107
    new-instance v0, Ljunit/framework/TestResult;

    #@2
    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    #@5
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public run()Ljunit/framework/TestResult;
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Ljunit/framework/TestCase;->createResult()Ljunit/framework/TestResult;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, v0}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    #@7
    .line 118
    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 124
    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V

    #@3
    .line 123
    return-void
.end method

.method public runBare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    .line 132
    .local v0, "exception":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljunit/framework/TestCase;->setUp()V

    #@4
    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestCase;->runTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 140
    :try_start_1
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@a
    .line 145
    .end local v0    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@c
    throw v0

    #@d
    .line 141
    .restart local v0    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    #@e
    .line 142
    .end local v0    # "exception":Ljava/lang/Throwable;
    .local v2, "tearingDown":Ljava/lang/Throwable;
    :goto_1
    move-object v0, v2

    #@f
    .local v0, "exception":Ljava/lang/Throwable;
    goto :goto_0

    #@10
    .line 135
    .end local v2    # "tearingDown":Ljava/lang/Throwable;
    .local v0, "exception":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@11
    .line 136
    .local v1, "running":Ljava/lang/Throwable;
    move-object v0, v1

    #@12
    .line 140
    .local v0, "exception":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@15
    goto :goto_0

    #@16
    .line 141
    :catch_2
    move-exception v2

    #@17
    .line 142
    .restart local v2    # "tearingDown":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    #@19
    goto :goto_1

    #@1a
    .line 138
    .end local v1    # "running":Ljava/lang/Throwable;
    .end local v2    # "tearingDown":Ljava/lang/Throwable;
    .local v0, "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    #@1b
    .line 140
    :try_start_3
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    #@1e
    .line 138
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_2
    throw v3

    #@1f
    .line 141
    .restart local v0    # "exception":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    #@20
    .line 142
    .restart local v2    # "tearingDown":Ljava/lang/Throwable;
    move-object v0, v2

    #@21
    .local v0, "exception":Ljava/lang/Throwable;
    goto :goto_2

    #@22
    .line 130
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v2    # "tearingDown":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method protected runTest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    const-string/jumbo v4, "TestCase.fName cannot be null"

    #@3
    iget-object v5, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@5
    invoke-static {v4, v5}, Ljunit/framework/TestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 153
    const/4 v3, 0x0

    #@9
    .line 159
    .local v3, "runMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestCase;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v5

    #@d
    iget-object v6, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@f
    const/4 v4, 0x0

    #@10
    check-cast v4, [Ljava/lang/Class;

    #@12
    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    .line 163
    .end local v3    # "runMethod":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    #@19
    move-result v4

    #@1a
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_0

    #@20
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "Method \""

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "\" should be public"

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v4}, Ljunit/framework/TestCase;->fail(Ljava/lang/String;)V

    #@40
    .line 168
    :cond_0
    const/4 v4, 0x0

    #@41
    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    #@43
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    .line 151
    return-void

    #@47
    .line 160
    .restart local v3    # "runMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@48
    .line 161
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Method \""

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    iget-object v5, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v5, "\" not found"

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v4}, Ljunit/framework/TestCase;->fail(Ljava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 174
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "runMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    #@6a
    .line 175
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    #@6d
    .line 176
    throw v0

    #@6e
    .line 170
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    #@6f
    .line 171
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    #@72
    .line 172
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@75
    move-result-object v4

    #@76
    throw v4
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 210
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    #@2
    .line 209
    return-void
.end method

.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "("

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Ljunit/framework/TestCase;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, ")"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
