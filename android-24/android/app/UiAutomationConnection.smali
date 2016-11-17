.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# static fields
.field private static final INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mInitialFrozenRotation:I

.field private mIsShutdown:Z

.field private final mLock:Ljava/lang/Object;

.field private mOwningUid:I

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mToken:Landroid/os/Binder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    #@3
    .line 61
    const-string/jumbo v0, "window"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 60
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@10
    .line 64
    const-string/jumbo v0, "accessibility"

    #@13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@16
    move-result-object v0

    #@17
    .line 63
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@1d
    .line 67
    const-string/jumbo v0, "package"

    #@20
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    .line 66
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@2a
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@2c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@2f
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@31
    .line 71
    new-instance v0, Landroid/os/Binder;

    #@33
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@36
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    #@38
    .line 73
    const/4 v0, -0x1

    #@39
    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@3b
    .line 56
    return-void
.end method

.method private isConnectedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 330
    const-string/jumbo v3, "accessibility"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 329
    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@a
    move-result-object v1

    #@b
    .line 331
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@d
    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    #@10
    .line 332
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, -0x1

    #@11
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@13
    .line 333
    const/16 v3, 0x10

    #@15
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@17
    .line 334
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@19
    const v4, 0x10012

    #@1c
    or-int/2addr v3, v4

    #@1d
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1f
    .line 337
    const/16 v3, 0xf

    #@21
    invoke-virtual {v0, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    #@24
    .line 344
    :try_start_0
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    #@26
    invoke-interface {v1, v3, p1, v0, p2}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    #@29
    .line 345
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 328
    return-void

    #@2c
    .line 346
    :catch_0
    move-exception v2

    #@2d
    .line 347
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2f
    const-string/jumbo v4, "Error while registering UiTestAutomationService."

    #@32
    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v3
.end method

.method private restoreRotationStateLocked()V
    .locals 3

    #@0
    .prologue
    .line 379
    :try_start_0
    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@2
    const/4 v2, -0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 382
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@7
    iget v2, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@9
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    #@c
    .line 377
    :goto_0
    return-void

    #@d
    .line 386
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@f
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 388
    :catch_0
    move-exception v0

    #@14
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private storeRotationStateLocked()V
    .locals 2

    #@0
    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 370
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@a
    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 365
    :cond_0
    :goto_0
    return-void

    #@11
    .line 372
    :catch_0
    move-exception v0

    #@12
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private throwIfCalledByNotTrustedUidLocked()V
    .locals 3

    #@0
    .prologue
    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 411
    .local v0, "callingUid":I
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@a
    const/16 v2, 0x3e8

    #@c
    if-eq v1, v2, :cond_0

    #@e
    .line 412
    if-eqz v0, :cond_0

    #@10
    .line 413
    new-instance v1, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v2, "Calling from not trusted UID!"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 409
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Not connected!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 403
    :cond_0
    return-void
.end method

.method private throwIfShutdownLocked()V
    .locals 2

    #@0
    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection shutdown!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 397
    :cond_0
    return-void
.end method

.method private unregisterUiTestAutomationServiceLocked()V
    .locals 4

    #@0
    .prologue
    .line 353
    const-string/jumbo v2, "accessibility"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 352
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@a
    move-result-object v0

    #@b
    .line 357
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@d
    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@10
    .line 358
    const/4 v2, 0x0

    #@11
    iput-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 351
    return-void

    #@14
    .line 359
    :catch_0
    move-exception v1

    #@15
    .line 360
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v3, "Error while unregistering UiTestAutomationService"

    #@1a
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v2
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 4

    #@0
    .prologue
    .line 208
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 210
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 211
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 215
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 207
    return-void

    #@18
    .line 208
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 216
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1c
    .line 217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 216
    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-object v5, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 169
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 170
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 171
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v5

    #@d
    .line 173
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v0

    #@11
    .line 174
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v2

    #@15
    .line 176
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@17
    invoke-interface {v4, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    move-result-object v1

    #@1b
    .line 177
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@1d
    .line 178
    const/4 v4, 0x0

    #@1e
    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 178
    return v4

    #@22
    .line 168
    .end local v0    # "callingUserId":I
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@23
    monitor-exit v5

    #@24
    throw v4

    #@25
    .line 180
    .restart local v0    # "callingUserId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "identity":J
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@27
    invoke-interface {v4, v1}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    move-result v4

    #@2b
    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 180
    return v4

    #@2f
    .line 181
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    #@30
    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 181
    throw v4
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 83
    if-nez p1, :cond_0

    #@2
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Client cannot be null!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 86
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 87
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@11
    .line 88
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v2, "Already connected."

    #@1c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 86
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 91
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@29
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    #@2c
    .line 93
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v1

    #@30
    .line 82
    return-void
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 99
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 100
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 101
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 102
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v2, "Already disconnected."

    #@14
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 99
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 105
    :cond_0
    const/4 v0, -0x1

    #@1c
    :try_start_1
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@1e
    .line 106
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    #@21
    .line 107
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 98
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 274
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 275
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 276
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 279
    new-instance v0, Landroid/app/UiAutomationConnection$1;

    #@f
    invoke-direct {v0, p0, p2, p1}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    #@12
    .line 310
    .local v0, "streamReader":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@15
    .line 272
    return-void

    #@16
    .line 273
    .end local v0    # "streamReader":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 5

    #@0
    .prologue
    .line 223
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 225
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 226
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 230
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    #@13
    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    #@16
    .line 231
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 232
    return-object v2

    #@1d
    .line 223
    .end local v0    # "identity":J
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .line 233
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    #@21
    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 233
    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 7
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 188
    iget-object v5, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 189
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@7
    .line 190
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@a
    .line 191
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v5

    #@e
    .line 193
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@11
    move-result v0

    #@12
    .line 194
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@15
    move-result-wide v2

    #@16
    .line 196
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@18
    invoke-interface {v4, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(II)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    move-result-object v1

    #@1c
    .line 197
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@1e
    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 198
    return-object v6

    #@22
    .line 188
    .end local v0    # "callingUserId":I
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@23
    monitor-exit v5

    #@24
    throw v4

    #@25
    .line 200
    .restart local v0    # "callingUserId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "identity":J
    :cond_0
    :try_start_2
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@27
    invoke-interface {v4, v1}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    move-result-object v4

    #@2b
    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 200
    return-object v4

    #@2f
    .line 201
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v4

    #@30
    .line 202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 201
    throw v4
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 243
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 244
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 248
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@13
    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 240
    return-void

    #@1a
    .line 241
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2

    #@1d
    .line 249
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1e
    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 249
    throw v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 113
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 114
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 115
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 116
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 118
    if-eqz p2, :cond_0

    #@f
    const/4 v2, 0x2

    #@10
    .line 120
    .local v2, "mode":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v0

    #@14
    .line 122
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    move-result v3

    #@1c
    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 122
    return v3

    #@20
    .line 113
    .end local v0    # "identity":J
    .end local v2    # "mode":I
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3

    #@23
    .line 119
    :cond_0
    const/4 v2, 0x0

    #@24
    .restart local v2    # "mode":I
    goto :goto_0

    #@25
    .line 123
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    #@26
    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 123
    throw v3
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 259
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 260
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 264
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    #@13
    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 256
    return-void

    #@1a
    .line 257
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2

    #@1d
    .line 265
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1e
    .line 266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@21
    .line 265
    throw v2
.end method

.method public setRotation(I)Z
    .locals 5
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 130
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 131
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 132
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 133
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 137
    .local v0, "identity":J
    const/4 v3, -0x2

    #@12
    if-ne p1, v3, :cond_0

    #@14
    .line 138
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@16
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 142
    :goto_0
    const/4 v3, 0x1

    #@1a
    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 142
    return v3

    #@1e
    .line 130
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 140
    .restart local v0    # "identity":J
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@23
    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    goto :goto_0

    #@27
    .line 143
    :catch_0
    move-exception v2

    #@28
    .line 146
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 148
    const/4 v3, 0x0

    #@2c
    return v3

    #@2d
    .line 145
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@2e
    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 145
    throw v3
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 315
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 316
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 317
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@c
    .line 319
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@f
    .line 320
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    #@12
    .line 321
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 322
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v1

    #@1c
    .line 314
    return-void

    #@1d
    .line 315
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 153
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 154
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 155
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 156
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 160
    .local v0, "identity":J
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-object v2

    #@15
    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 160
    return-object v2

    #@19
    .line 153
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 161
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1d
    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 161
    throw v2
.end method
