.class public Landroid/test/InstrumentationCoreTestRunner;
.super Landroid/test/InstrumentationTestRunner;
.source "InstrumentationCoreTestRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstrumentationCoreTestRunner"


# instance fields
.field private singleTest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    #@6
    .line 50
    return-void
.end method


# virtual methods
.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 2

    #@0
    .prologue
    .line 86
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "runner":Landroid/test/AndroidTestRunner;
    new-instance v1, Landroid/test/InstrumentationCoreTestRunner$1;

    #@6
    invoke-direct {v1, p0}, Landroid/test/InstrumentationCoreTestRunner$1;-><init>(Landroid/test/InstrumentationCoreTestRunner;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    #@c
    .line 193
    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .locals 5
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
    .line 199
    invoke-super {p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 201
    .local v1, "builderRequirements":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;>;"
    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@6
    const-class v4, Ldalvik/annotation/BrokenTest;

    #@8
    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@b
    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@e
    move-result-object v0

    #@f
    .line 202
    .local v0, "brokenTestPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 203
    iget-boolean v3, p0, Landroid/test/InstrumentationCoreTestRunner;->singleTest:Z

    #@14
    if-nez v3, :cond_0

    #@16
    .line 205
    new-instance v3, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@18
    const-class v4, Ldalvik/annotation/SideEffect;

    #@1a
    invoke-direct {v3, v4}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@1d
    invoke-static {v3}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@20
    move-result-object v2

    #@21
    .line 206
    .local v2, "sideEffectPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    .line 208
    .end local v2    # "sideEffectPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/test/InstrumentationCoreTestRunner;->getTargetContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 69
    .local v0, "cacheDir":Ljava/io/File;
    const-string/jumbo v2, "user.language"

    #@b
    const-string/jumbo v3, "en"

    #@e
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    .line 70
    const-string/jumbo v2, "user.region"

    #@14
    const-string/jumbo v3, "US"

    #@17
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    .line 72
    const-string/jumbo v2, "java.home"

    #@1d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    .line 73
    const-string/jumbo v2, "user.home"

    #@27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    .line 74
    const-string/jumbo v2, "java.io.tmpdir"

    #@31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    .line 76
    if-eqz p1, :cond_0

    #@3a
    .line 77
    const-string/jumbo v2, "class"

    #@3d
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 78
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
    .line 81
    .end local v1    # "classArg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/test/InstrumentationTestRunner;->onCreate(Landroid/os/Bundle;)V

    #@4f
    .line 64
    return-void

    #@50
    .line 78
    .restart local v1    # "classArg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@51
    goto :goto_0
.end method
