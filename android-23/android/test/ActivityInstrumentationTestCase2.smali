.class public abstract Landroid/test/ActivityInstrumentationTestCase2;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mActivityIntent:Landroid/content/Intent;

.field mInitialTouchMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    #@6
    .line 51
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    #@9
    .line 74
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    #@b
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Landroid/test/ActivityInstrumentationTestCase2;-><init>(Ljava/lang/Class;)V

    #@3
    .line 63
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 97
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    #@4
    move-result-object v0

    #@5
    .line 98
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_0

    #@7
    .line 100
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    #@a
    move-result-object v2

    #@b
    iget-boolean v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    #@d
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    #@10
    .line 101
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 103
    .local v1, "targetPackage":Ljava/lang/String;
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 104
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    #@22
    invoke-virtual {p0, v1, v2, v4}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    #@25
    move-result-object v0

    #@26
    .line 108
    :goto_0
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    #@29
    .line 110
    .end local v1    # "targetPackage":Ljava/lang/String;
    :cond_0
    return-object v0

    #@2a
    .line 106
    .restart local v1    # "targetPackage":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    #@2c
    iget-object v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    #@2e
    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    #@31
    move-result-object v0

    #@32
    goto :goto_0
.end method

.method protected runTest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getName()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    const/4 v2, 0x0

    #@9
    check-cast v2, [Ljava/lang/Class;

    #@b
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v1

    #@f
    .line 186
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v2, Landroid/test/UiThreadTest;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 187
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 192
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/test/ActivityTestCase;->runTest()V

    #@1d
    .line 183
    return-void

    #@1e
    .line 189
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setActivityInitialTouchMode(Z)V
    .locals 0
    .param p1, "initialTouchMode"    # Z

    #@0
    .prologue
    .line 149
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-boolean p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    #@2
    .line 148
    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 132
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    #@2
    .line 131
    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    #@3
    .line 156
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    #@6
    .line 157
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    #@9
    .line 153
    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase2;, "Landroid/test/ActivityInstrumentationTestCase2<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 163
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    #@4
    move-result-object v0

    #@5
    .line 164
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    #@7
    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@a
    .line 166
    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    #@d
    .line 172
    :cond_0
    const-class v1, Landroid/test/ActivityInstrumentationTestCase2;

    #@f
    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->scrubClass(Ljava/lang/Class;)V

    #@12
    .line 174
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    #@15
    .line 161
    return-void
.end method
