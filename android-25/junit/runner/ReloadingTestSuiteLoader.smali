.class public Ljunit/runner/ReloadingTestSuiteLoader;
.super Ljava/lang/Object;
.source "ReloadingTestSuiteLoader.java"

# interfaces
.implements Ljunit/runner/TestSuiteLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createLoader()Ljunit/runner/TestCaseClassLoader;
    .locals 1

    #@0
    .prologue
    .line 18
    new-instance v0, Ljunit/runner/TestCaseClassLoader;

    #@2
    invoke-direct {v0}, Ljunit/runner/TestCaseClassLoader;-><init>()V

    #@5
    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 10
    invoke-virtual {p0}, Ljunit/runner/ReloadingTestSuiteLoader;->createLoader()Ljunit/runner/TestCaseClassLoader;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p1, v1}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public reload(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 14
    invoke-virtual {p0}, Ljunit/runner/ReloadingTestSuiteLoader;->createLoader()Ljunit/runner/TestCaseClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
