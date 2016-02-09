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

.field private final mToken:Landroid/os/Binder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    #@3
    .line 58
    const-string/jumbo v0, "window"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 57
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@10
    .line 61
    const-string/jumbo v0, "accessibility"

    #@13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@16
    move-result-object v0

    #@17
    .line 60
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@1d
    .line 63
    new-instance v0, Ljava/lang/Object;

    #@1f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@22
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@24
    .line 65
    new-instance v0, Landroid/os/Binder;

    #@26
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@29
    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    #@2b
    .line 67
    const/4 v0, -0x1

    #@2c
    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@2e
    .line 53
    return-void
.end method

.method private isConnectedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 351
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

.method private registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@0
    .prologue
    .line 288
    const-string/jumbo v3, "accessibility"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 287
    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@a
    move-result-object v1

    #@b
    .line 289
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@d
    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    #@10
    .line 290
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, -0x1

    #@11
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@13
    .line 291
    const/16 v3, 0x10

    #@15
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@17
    .line 292
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@19
    or-int/lit8 v3, v3, 0x12

    #@1b
    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1d
    .line 294
    const/16 v3, 0xf

    #@1f
    invoke-virtual {v0, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    #@22
    .line 301
    :try_start_0
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    #@24
    invoke-interface {v1, v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@27
    .line 302
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 286
    return-void

    #@2a
    .line 303
    :catch_0
    move-exception v2

    #@2b
    .line 304
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2d
    const-string/jumbo v4, "Error while registering UiTestAutomationService."

    #@30
    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method private restoreRotationStateLocked()V
    .locals 3

    #@0
    .prologue
    .line 336
    :try_start_0
    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@2
    const/4 v2, -0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 339
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@7
    iget v2, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    #@9
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    #@c
    .line 334
    :goto_0
    return-void

    #@d
    .line 343
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@f
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 345
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
    .line 324
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 327
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
    .line 322
    :cond_0
    :goto_0
    return-void

    #@11
    .line 329
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
    .line 367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 368
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
    .line 369
    if-eqz v0, :cond_0

    #@10
    .line 370
    new-instance v1, Ljava/lang/SecurityException;

    #@12
    const-string/jumbo v2, "Calling from not trusted UID!"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 366
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Not connected!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 360
    :cond_0
    return-void
.end method

.method private throwIfShutdownLocked()V
    .locals 2

    #@0
    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection shutdown!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 354
    :cond_0
    return-void
.end method

.method private unregisterUiTestAutomationServiceLocked()V
    .locals 4

    #@0
    .prologue
    .line 310
    const-string/jumbo v2, "accessibility"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 309
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    #@a
    move-result-object v0

    #@b
    .line 314
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@d
    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@10
    .line 315
    const/4 v2, 0x0

    #@11
    iput-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 308
    return-void

    #@14
    .line 316
    :catch_0
    move-exception v1

    #@15
    .line 317
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
    .line 199
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 201
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 202
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 206
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 198
    return-void

    #@18
    .line 199
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 207
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1c
    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 207
    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 162
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 163
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 164
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 168
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@13
    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    move-result-object v2

    #@17
    .line 169
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    #@19
    .line 170
    const/4 v3, 0x0

    #@1a
    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 170
    return v3

    #@1e
    .line 161
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 172
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@23
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    move-result v3

    #@27
    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 172
    return v3

    #@2b
    .line 173
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    #@2c
    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 173
    throw v3
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@0
    .prologue
    .line 76
    if-nez p1, :cond_0

    #@2
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Client cannot be null!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 79
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 80
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@11
    .line 81
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 82
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
    .line 79
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 84
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@29
    .line 85
    invoke-direct {p0, p1}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@2c
    .line 86
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v1

    #@30
    .line 75
    return-void
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 92
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 93
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 94
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 95
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 96
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
    .line 92
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0

    #@1b
    .line 98
    :cond_0
    const/4 v0, -0x1

    #@1c
    :try_start_1
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    #@1e
    .line 99
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    #@21
    .line 100
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 91
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
    .line 232
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 233
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 234
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 235
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v2

    #@d
    .line 238
    new-instance v0, Landroid/app/UiAutomationConnection$1;

    #@f
    invoke-direct {v0, p0, p2, p1}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    #@12
    .line 269
    .local v0, "streamReader":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@15
    .line 231
    return-void

    #@16
    .line 232
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
    .line 214
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 215
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 216
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 217
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 221
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    #@13
    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    #@16
    .line 222
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 223
    return-object v2

    #@1d
    .line 214
    .end local v0    # "identity":J
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .line 224
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    #@21
    .line 225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 224
    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 180
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 181
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@7
    .line 182
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@a
    .line 183
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v4

    #@e
    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v0

    #@12
    .line 187
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    #@14
    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    move-result-object v2

    #@18
    .line 188
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    #@1a
    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 189
    return-object v5

    #@1e
    .line 180
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 191
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@23
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    move-result-object v3

    #@27
    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 191
    return-object v3

    #@2b
    .line 192
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    #@2c
    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 192
    throw v3
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 106
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 108
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 109
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 111
    if-eqz p2, :cond_0

    #@f
    const/4 v2, 0x2

    #@10
    .line 113
    .local v2, "mode":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v0

    #@14
    .line 115
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
    .line 117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 115
    return v3

    #@20
    .line 106
    .end local v0    # "identity":J
    .end local v2    # "mode":I
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3

    #@23
    .line 112
    :cond_0
    const/4 v2, 0x0

    #@24
    .restart local v2    # "mode":I
    goto :goto_0

    #@25
    .line 116
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    #@26
    .line 117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 116
    throw v3
.end method

.method public setRotation(I)Z
    .locals 5
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 123
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 124
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 125
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 126
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 130
    .local v0, "identity":J
    const/4 v3, -0x2

    #@12
    if-ne p1, v3, :cond_0

    #@14
    .line 131
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    #@16
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 135
    :goto_0
    const/4 v3, 0x1

    #@1a
    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 135
    return v3

    #@1e
    .line 123
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .line 133
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
    .line 136
    :catch_0
    move-exception v2

    #@28
    .line 139
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 141
    const/4 v3, 0x0

    #@2c
    return v3

    #@2d
    .line 138
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    #@2e
    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 138
    throw v3
.end method

.method public shutdown()V
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 275
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 276
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@c
    .line 278
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@f
    .line 279
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    #@12
    .line 280
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 281
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v1

    #@1c
    .line 273
    return-void

    #@1d
    .line 274
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
    .line 146
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 147
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    #@6
    .line 148
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    #@9
    .line 149
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v3

    #@d
    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@10
    move-result-wide v0

    #@11
    .line 153
    .local v0, "identity":J
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    move-result-object v2

    #@15
    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 153
    return-object v2

    #@19
    .line 146
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 154
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    #@1d
    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 154
    throw v2
.end method
