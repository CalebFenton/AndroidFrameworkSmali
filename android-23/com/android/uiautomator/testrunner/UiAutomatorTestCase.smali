.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.super Ljunit/framework/TestCase;
.source "UiAutomatorTestCase.java"


# static fields
.field private static final DISABLE_IME:Ljava/lang/String; = "disable_ime"

.field private static final DUMMY_IME_PACKAGE:Ljava/lang/String; = "com.android.testing.dummyime"


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mParams:Landroid/os/Bundle;

.field private mShouldDisableIme:Z

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    #@6
    .line 40
    return-void
.end method

.method private restoreActiveIme()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    return-void
.end method

.method private setDummyIme()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 126
    const-string/jumbo v5, "input_method"

    #@4
    .line 125
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v5

    #@8
    invoke-static {v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    #@b
    move-result-object v1

    #@c
    .line 127
    .local v1, "im":Lcom/android/internal/view/IInputMethodManager;
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;

    #@f
    move-result-object v4

    #@10
    .line 128
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    #@11
    .line 129
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .end local v0    # "id":Ljava/lang/String;
    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@21
    .line 130
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v5, "com.android.testing.dummyime"

    #@24
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 131
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .local v0, "id":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 134
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    if-nez v0, :cond_2

    #@39
    .line 135
    new-instance v5, Ljava/lang/RuntimeException;

    #@3b
    .line 136
    const-string/jumbo v6, "Required testing fixture missing: IME package (%s)"

    #@3e
    .line 135
    const/4 v7, 0x1

    #@3f
    new-array v7, v7, [Ljava/lang/Object;

    #@41
    .line 136
    const-string/jumbo v8, "com.android.testing.dummyime"

    #@44
    const/4 v9, 0x0

    #@45
    aput-object v8, v7, v9

    #@47
    .line 135
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v5

    #@4f
    .line 138
    :cond_2
    invoke-interface {v1, v7, v0}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@52
    .line 124
    return-void
.end method


# virtual methods
.method public getAutomationSupport()Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@2
    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getUiDevice()Lcom/android/uiautomator/core/UiDevice;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    #@2
    return-object v0
.end method

.method setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V
    .locals 0
    .param p1, "automationSupport"    # Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    #@2
    .line 111
    return-void
.end method

.method setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    #@2
    .line 107
    return-void
.end method

.method setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V
    .locals 0
    .param p1, "uiDevice"    # Lcom/android/uiautomator/core/UiDevice;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    #@2
    .line 99
    return-void
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    #@3
    .line 52
    const-string/jumbo v0, "true"

    #@6
    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mParams:Landroid/os/Bundle;

    #@8
    const-string/jumbo v2, "disable_ime"

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    #@15
    .line 53
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 54
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setDummyIme()V

    #@1c
    .line 50
    :cond_0
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "ms"    # J

    #@0
    .prologue
    .line 121
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    #@3
    .line 120
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
    .line 60
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->mShouldDisableIme:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->restoreActiveIme()V

    #@7
    .line 63
    :cond_0
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    #@a
    .line 59
    return-void
.end method
