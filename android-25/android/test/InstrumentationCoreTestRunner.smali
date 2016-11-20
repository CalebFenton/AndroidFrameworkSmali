.class public Landroid/test/InstrumentationCoreTestRunner;
.super Landroid/test/InstrumentationTestRunner;
.source "InstrumentationCoreTestRunner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentationCoreTestRunner"


# instance fields
.field private singleTest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    #@6
    .line 45
    return-void
.end method


# virtual methods
.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 2

    #@0
    .prologue
    .line 81
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "runner":Landroid/test/AndroidTestRunner;
    new-instance v1, Landroid/test/InstrumentationCoreTestRunner$1;

    #@6
    invoke-direct {v1, p0}, Landroid/test/InstrumentationCoreTestRunner$1;-><init>(Landroid/test/InstrumentationCoreTestRunner;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@c
    .line 188
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/test/InstrumentationCoreTestRunner;->getTargetContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 64
    .local v0, "cacheDir":Ljava/io/File;
    const-string/jumbo v2, "user.language"

    #@b
    const-string/jumbo v3, "en"

    #@e
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    .line 65
    const-string/jumbo v2, "user.region"

    #@14
    const-string/jumbo v3, "US"

    #@17
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    .line 67
    const-string/jumbo v2, "java.home"

    #@1d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    .line 68
    const-string/jumbo v2, "user.home"

    #@27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    .line 69
    const-string/jumbo v2, "java.io.tmpdir"

    #@31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    .line 71
    if-eqz p1, :cond_0

    #@3a
    .line 72
    const-string/jumbo v2, "class"

    #@3d
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 73
    .local v1, "classArg":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@43
    const-string/jumbo v2, "#"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@49
    move-result v2

    #@4a
    :goto_0
    iput-boolean v2, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    #@4c
    .line 76
    .end local v1    # "classArg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/test/InstrumentationTestRunner;->onCreate(Landroid/os/Bundle;)V

    #@4f
    .line 59
    return-void

    #@50
    .line 73
    .restart local v1    # "classArg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@51
    goto :goto_0
.end method
