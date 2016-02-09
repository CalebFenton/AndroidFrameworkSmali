.class public Lcom/android/uiautomator/core/UiAutomationShellWrapper;
.super Ljava/lang/Object;
.source "UiAutomationShellWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;
    }
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomatorHandlerThread"


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mUiAutomation:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    #@5
    const-string/jumbo v1, "UiAutomatorHandlerThread"

    #@8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@d
    .line 17
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    #@0
    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Already connected!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@16
    .line 30
    new-instance v0, Landroid/app/UiAutomation;

    #@18
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@1a
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1d
    move-result-object v1

    #@1e
    .line 31
    new-instance v2, Landroid/app/UiAutomationConnection;

    #@20
    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    #@23
    .line 30
    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    #@26
    iput-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@28
    .line 32
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@2a
    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    #@2d
    .line 25
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Already disconnected!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@13
    invoke-virtual {v0}, Landroid/app/UiAutomation;->disconnect()V

    #@16
    .line 67
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    #@18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@1b
    .line 62
    return-void
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    return-object v0
.end method

.method public setCompressedLayoutHierarchy(Z)V
    .locals 2
    .param p1, "compressed"    # Z

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v1}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz p1, :cond_0

    #@8
    .line 77
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@a
    and-int/lit8 v1, v1, -0x3

    #@c
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@e
    .line 80
    :goto_0
    iget-object v1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->mUiAutomation:Landroid/app/UiAutomation;

    #@10
    invoke-virtual {v1, v0}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@13
    .line 74
    return-void

    #@14
    .line 79
    :cond_0
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    or-int/lit8 v1, v1, 0x2

    #@18
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1a
    goto :goto_0
.end method

.method public setRunAsMonkey(Z)V
    .locals 4
    .param p1, "isSet"    # Z

    #@0
    .prologue
    .line 47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 48
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    #@6
    .line 49
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v3, "Can\'t manage monkey status; is the system running?"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 52
    :cond_0
    if-eqz p1, :cond_1

    #@11
    .line 53
    :try_start_0
    new-instance v2, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;-><init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;)V

    #@17
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    #@1a
    .line 46
    :goto_0
    return-void

    #@1b
    .line 55
    :cond_1
    const/4 v2, 0x0

    #@1c
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 57
    :catch_0
    move-exception v1

    #@21
    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@23
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v2
.end method
