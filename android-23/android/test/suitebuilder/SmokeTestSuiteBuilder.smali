.class public Landroid/test/suitebuilder/SmokeTestSuiteBuilder;
.super Landroid/test/suitebuilder/TestSuiteBuilder;
.source "SmokeTestSuiteBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/SmokeTestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@b
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@3
    .line 33
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [Lcom/android/internal/util/Predicate;

    #@6
    sget-object v1, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMOKE:Lcom/android/internal/util/Predicate;

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/SmokeTestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    #@e
    .line 31
    return-void
.end method
