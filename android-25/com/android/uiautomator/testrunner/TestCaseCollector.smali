.class public Lcom/android/uiautomator/testrunner/TestCaseCollector;
.super Ljava/lang/Object;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;
    }
.end annotation


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "filter"    # Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    #@5
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    #@c
    .line 40
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    #@e
    .line 37
    return-void
.end method

.method private error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    .locals 2
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;-><init>(Lcom/android/uiautomator/testrunner/TestCaseCollector;Ljava/lang/String;)V

    #@5
    .line 129
    .local v0, "warning":Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setName(Ljava/lang/String;)V

    #@c
    .line 130
    return-object v0
.end method


# virtual methods
.method protected addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    #@2
    invoke-interface {v3, p1}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/Class;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 107
    new-instance v3, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v4, "Test class must be derived from UiAutomatorTestCase"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljunit/framework/TestCase;

    #@17
    .line 111
    .local v2, "testCase":Ljunit/framework/TestCase;
    invoke-virtual {v2, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    #@1a
    .line 112
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    #@1c
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 105
    .end local v2    # "testCase":Ljunit/framework/TestCase;
    :goto_0
    return-void

    #@20
    .line 116
    :catch_0
    move-exception v0

    #@21
    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "IllegalAccessException: could not instantiate test class. Class: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {p0, p1, v4}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_0

    #@43
    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@44
    .line 114
    .local v1, "e":Ljava/lang/InstantiationException;
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "InstantiationException: could not instantiate test class. Class: "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 115
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-direct {p0, p1, v4}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@61
    move-result-object v4

    #@62
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@65
    goto :goto_0
.end method

.method public addTestClass(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    const/16 v2, 0x23

    #@2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 67
    .local v0, "hashPos":I
    const/4 v1, 0x0

    #@7
    .line 68
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, -0x1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 69
    add-int/lit8 v2, v0, 0x1

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 70
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    #@11
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object p1

    #@15
    .line 72
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 65
    return-void
.end method

.method public addTestClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v3, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    #@2
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 85
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    #@8
    .line 86
    invoke-virtual {p0, v0, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    #@b
    .line 83
    :cond_0
    return-void

    #@c
    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@f
    move-result-object v2

    #@10
    .line 89
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    #@11
    array-length v4, v2

    #@12
    :goto_0
    if-ge v3, v4, :cond_0

    #@14
    aget-object v1, v2, v3

    #@16
    .line 90
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    #@18
    invoke-interface {v5, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/reflect/Method;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 91
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {p0, v0, v5}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    #@25
    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0
.end method

.method public addTestClasses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "className$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 53
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;)V

    #@13
    goto :goto_0

    #@14
    .line 51
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getTestCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
