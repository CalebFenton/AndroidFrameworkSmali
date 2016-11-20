.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;
.super Ljava/lang/Object;
.source "UiAutomatorTestCaseFilter.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public accept(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    array-length v1, v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "test"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    .line 32
    if-eqz v1, :cond_0

    #@15
    .line 34
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "void"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 32
    :cond_0
    return v0
.end method
