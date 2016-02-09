.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method static synthetic -wrap0(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    .locals 0
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    #@3
    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .locals 1
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    #@4
    .line 204
    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;IZ)V
    .locals 8
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 209
    const/4 v2, 0x0

    #@2
    .line 211
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    #@3
    .line 214
    .end local v2    # "exception":Ljava/lang/Throwable;
    .local v4, "runCount":I
    :cond_0
    const/4 v5, 0x0

    #@4
    :try_start_0
    check-cast v5, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 215
    const/4 v2, 0x0

    #@a
    .line 223
    .restart local v2    # "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    #@c
    .line 225
    if-eqz p3, :cond_1

    #@e
    .line 226
    new-instance v3, Landroid/os/Bundle;

    #@10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@13
    .line 227
    .local v3, "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    #@16
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@19
    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    #@20
    .line 231
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :cond_1
    :goto_0
    if-ge v4, p2, :cond_2

    #@22
    if-nez p3, :cond_0

    #@24
    if-nez v2, :cond_0

    #@26
    .line 233
    :cond_2
    if-eqz v2, :cond_4

    #@28
    .line 234
    throw v2

    #@29
    .line 219
    :catch_0
    move-exception v0

    #@2a
    .line 220
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 221
    move-object v2, v0

    #@2e
    .line 223
    .local v2, "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    #@30
    .line 225
    if-eqz p3, :cond_1

    #@32
    .line 226
    new-instance v3, Landroid/os/Bundle;

    #@34
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@37
    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    #@3a
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3d
    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    #@44
    goto :goto_0

    #@45
    .line 216
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    #@46
    .line 217
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    #@49
    .line 218
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    move-result-object v2

    #@4d
    .line 223
    .restart local v2    # "exception":Ljava/lang/Throwable;
    add-int/lit8 v4, v4, 0x1

    #@4f
    .line 225
    if-eqz p3, :cond_1

    #@51
    .line 226
    new-instance v3, Landroid/os/Bundle;

    #@53
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@56
    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v5, "currentiterations"

    #@59
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5c
    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    #@63
    goto :goto_0

    #@64
    .line 222
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "iterations":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    #@65
    .line 223
    add-int/lit8 v4, v4, 0x1

    #@67
    .line 225
    if-eqz p3, :cond_3

    #@69
    .line 226
    new-instance v3, Landroid/os/Bundle;

    #@6b
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@6e
    .line 227
    .restart local v3    # "iterations":Landroid/os/Bundle;
    const-string/jumbo v6, "currentiterations"

    #@71
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@74
    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6, v7, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    #@7b
    .line 222
    .end local v3    # "iterations":Landroid/os/Bundle;
    :cond_3
    throw v5

    #@7c
    .line 208
    :cond_4
    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    #@3
    .line 60
    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    .line 46
    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 94
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    #@a
    .line 95
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@d
    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7
    .line 118
    const/high16 v1, 0x10000000

    #@9
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@c
    .line 119
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    #@13
    move-result-object v0

    #@14
    .line 120
    .local v0, "activity":Landroid/app/Activity;, "TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@1b
    .line 121
    return-object v0
.end method

.method protected runTest()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 155
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    .line 156
    .local v7, "fName":Ljava/lang/String;
    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@8
    .line 157
    const/4 v9, 0x0

    #@9
    .line 163
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    const/4 v0, 0x0

    #@e
    check-cast v0, [Ljava/lang/Class;

    #@10
    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v9

    #@14
    .line 168
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    #@17
    move-result v0

    #@18
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v1, "Method \""

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "\" should be public"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    #@3c
    .line 172
    :cond_0
    const/4 v10, 0x1

    #@3d
    .line 173
    .local v10, "runCount":I
    const/4 v8, 0x0

    #@3e
    .line 174
    .local v8, "isRepetitive":Z
    const-class v0, Landroid/test/FlakyTest;

    #@40
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 175
    const-class v0, Landroid/test/FlakyTest;

    #@48
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/test/FlakyTest;

    #@4e
    invoke-interface {v0}, Landroid/test/FlakyTest;->tolerance()I

    #@51
    move-result v10

    #@52
    .line 181
    :cond_1
    :goto_1
    const-class v0, Landroid/test/UiThreadTest;

    #@54
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_3

    #@5a
    .line 182
    move v3, v10

    #@5b
    .line 183
    .local v3, "tolerance":I
    move v4, v8

    #@5c
    .line 184
    .local v4, "repetitive":Z
    move-object v2, v9

    #@5d
    .line 185
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    #@5e
    new-array v5, v0, [Ljava/lang/Throwable;

    #@60
    .line 186
    .local v5, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@63
    move-result-object v11

    #@64
    new-instance v0, Landroid/test/InstrumentationTestCase$2;

    #@66
    move-object v1, p0

    #@67
    invoke-direct/range {v0 .. v5}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V

    #@6a
    invoke-virtual {v11, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    #@6d
    .line 195
    aget-object v0, v5, v12

    #@6f
    if-eqz v0, :cond_4

    #@71
    .line 196
    aget-object v0, v5, v12

    #@73
    throw v0

    #@74
    .line 164
    .end local v2    # "testMethod":Ljava/lang/reflect/Method;
    .end local v3    # "tolerance":I
    .end local v4    # "repetitive":Z
    .end local v5    # "exceptions":[Ljava/lang/Throwable;
    .end local v8    # "isRepetitive":Z
    .end local v10    # "runCount":I
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    #@75
    .line 165
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v1, "Method \""

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    const-string/jumbo v1, "\" not found"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    #@93
    goto :goto_0

    #@94
    .line 176
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "isRepetitive":Z
    .restart local v10    # "runCount":I
    :cond_2
    const-class v0, Landroid/test/RepetitiveTest;

    #@96
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_1

    #@9c
    .line 177
    const-class v0, Landroid/test/RepetitiveTest;

    #@9e
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@a1
    move-result-object v0

    #@a2
    check-cast v0, Landroid/test/RepetitiveTest;

    #@a4
    invoke-interface {v0}, Landroid/test/RepetitiveTest;->numIterations()I

    #@a7
    move-result v10

    #@a8
    .line 178
    const/4 v8, 0x1

    #@a9
    goto :goto_1

    #@aa
    .line 199
    :cond_3
    invoke-direct {p0, v9, v10, v8}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    #@ad
    .line 154
    :cond_4
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 134
    const/4 v1, 0x1

    #@2
    new-array v0, v1, [Ljava/lang/Throwable;

    #@4
    .line 135
    .local v0, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@7
    move-result-object v1

    #@8
    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    #@a
    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    #@d
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    #@10
    .line 144
    aget-object v1, v0, v3

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 145
    aget-object v1, v0, v3

    #@16
    throw v1

    #@17
    .line 133
    :cond_0
    return-void
.end method

.method public sendKeys(Ljava/lang/String;)V
    .locals 18
    .param p1, "keysSequence"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    const-string/jumbo v15, " "

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v13

    #@9
    .line 249
    .local v13, "keys":[Ljava/lang/String;
    array-length v1, v13

    #@a
    .line 251
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@d
    move-result-object v7

    #@e
    .line 253
    .local v7, "instrumentation":Landroid/app/Instrumentation;
    const/4 v6, 0x0

    #@f
    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_3

    #@11
    .line 254
    aget-object v9, v13, v6

    #@13
    .line 255
    .local v9, "key":Ljava/lang/String;
    const/16 v15, 0x2a

    #@15
    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v14

    #@19
    .line 259
    .local v14, "repeater":I
    const/4 v15, -0x1

    #@1a
    if-ne v14, v15, :cond_1

    #@1c
    const/4 v12, 0x1

    #@1d
    .line 265
    .local v12, "keyCount":I
    :goto_1
    const/4 v15, -0x1

    #@1e
    if-eq v14, v15, :cond_0

    #@20
    .line 266
    add-int/lit8 v15, v14, 0x1

    #@22
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    .line 269
    :cond_0
    const/4 v8, 0x0

    #@27
    .local v8, "j":I
    :goto_2
    if-ge v8, v12, :cond_2

    #@29
    .line 271
    :try_start_0
    const-class v15, Landroid/view/KeyEvent;

    #@2b
    new-instance v16, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v17, "KEYCODE_"

    #@33
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v16

    #@37
    move-object/from16 v0, v16

    #@39
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v16

    #@3d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v16

    #@41
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@44
    move-result-object v11

    #@45
    .line 272
    .local v11, "keyCodeField":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    #@46
    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    #@49
    move-result v10

    #@4a
    .line 274
    .local v10, "keyCode":I
    :try_start_1
    invoke-virtual {v7, v10}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    #@4d
    .line 269
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 259
    .end local v8    # "j":I
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    .end local v12    # "keyCount":I
    :cond_1
    const/4 v15, 0x0

    #@51
    :try_start_2
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v15

    #@55
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@58
    move-result v12

    #@59
    .restart local v12    # "keyCount":I
    goto :goto_1

    #@5a
    .line 260
    .end local v12    # "keyCount":I
    :catch_0
    move-exception v4

    #@5b
    .line 261
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "ActivityTestCase"

    #@5e
    new-instance v16, Ljava/lang/StringBuilder;

    #@60
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v17, "Invalid repeat count: "

    #@66
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v16

    #@6a
    move-object/from16 v0, v16

    #@6c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v16

    #@70
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v16

    #@74
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 253
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 275
    .restart local v8    # "j":I
    .restart local v10    # "keyCode":I
    .restart local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    .restart local v12    # "keyCount":I
    :catch_1
    move-exception v5

    #@7b
    .local v5, "e":Ljava/lang/SecurityException;
    goto :goto_3

    #@7c
    .line 283
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v10    # "keyCode":I
    .end local v11    # "keyCodeField":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v2

    #@7d
    .line 284
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v15, "ActivityTestCase"

    #@80
    new-instance v16, Ljava/lang/StringBuilder;

    #@82
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v17, "Unknown keycode: KEYCODE_"

    #@88
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v16

    #@8c
    move-object/from16 v0, v16

    #@8e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v16

    #@92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v16

    #@96
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    goto :goto_4

    #@9a
    .line 280
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    #@9b
    .line 281
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v15, "ActivityTestCase"

    #@9e
    new-instance v16, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v17, "Unknown keycode: KEYCODE_"

    #@a6
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v16

    #@aa
    move-object/from16 v0, v16

    #@ac
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v16

    #@b0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v16

    #@b4
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    goto :goto_4

    #@b8
    .line 290
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    .end local v8    # "j":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "keyCount":I
    .end local v14    # "repeater":I
    :cond_3
    invoke-virtual {v7}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@bb
    .line 247
    return-void
.end method

.method public varargs sendKeys([I)V
    .locals 5
    .param p1, "keys"    # [I

    #@0
    .prologue
    .line 300
    array-length v0, p1

    #@1
    .line 301
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@4
    move-result-object v3

    #@5
    .line 303
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@8
    .line 305
    :try_start_0
    aget v4, p1, v2

    #@a
    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 303
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 313
    :cond_0
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@13
    .line 299
    return-void

    #@14
    .line 306
    :catch_0
    move-exception v1

    #@15
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public varargs sendRepeatedKeys([I)V
    .locals 9
    .param p1, "keys"    # [I

    #@0
    .prologue
    .line 324
    array-length v0, p1

    #@1
    .line 325
    .local v0, "count":I
    and-int/lit8 v7, v0, 0x1

    #@3
    const/4 v8, 0x1

    #@4
    if-ne v7, v8, :cond_0

    #@6
    .line 326
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v8, "The size of the keys array must be a multiple of 2"

    #@b
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v7

    #@f
    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@12
    move-result-object v3

    #@13
    .line 332
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@16
    .line 333
    aget v6, p1, v2

    #@18
    .line 334
    .local v6, "keyCount":I
    add-int/lit8 v7, v2, 0x1

    #@1a
    aget v5, p1, v7

    #@1c
    .line 335
    .local v5, "keyCode":I
    const/4 v4, 0x0

    #@1d
    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_1

    #@1f
    .line 337
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 335
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_1

    #@25
    .line 338
    :catch_0
    move-exception v1

    #@26
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_2

    #@27
    .line 332
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 346
    .end local v4    # "j":I
    .end local v5    # "keyCode":I
    .end local v6    # "keyCount":I
    :cond_2
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    #@2d
    .line 323
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 359
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    #@e
    .line 360
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@15
    .line 361
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    #@18
    .line 357
    return-void
.end method
