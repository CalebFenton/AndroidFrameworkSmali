.class final Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraExtensionManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;
    }
.end annotation


# static fields
.field private static final blacklist FALLBACK_PACKAGE_NAME:I = 0x1040275

.field private static final blacklist FALLBACK_SERVICE_NAME:I = 0x1040276

.field private static final blacklist GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

.field private static final blacklist PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.android.cameraextensions"

.field private static final blacklist PROXY_SERVICE_NAME:Ljava/lang/String; = "com.android.cameraextensions.CameraExtensionsProxyService"

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionManagerGlobal"


# instance fields
.field private final blacklist PROXY_SERVICE_DELAY_MS:I

.field private blacklist mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

.field private blacklist mIsFallbackEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPermissionForFallbackEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPermissionForFallbackEnabled(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mPermissionForFallbackEnabled:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 268
    new-instance v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    .line 271
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->PROXY_SERVICE_DELAY_MS:I

    .line 272
    new-instance v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mPermissionForFallbackEnabled:Z

    .line 274
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mIsFallbackEnabled:Z

    .line 277
    return-void
.end method

.method private blacklist connectToProxyLocked(Landroid/content/Context;IZ)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "extension"    # I
    .param p3, "useFallback"    # Z

    .line 293
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v0

    if-nez v0, :cond_db

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.cameraextensions"

    const-string v2, "com.android.cameraextensions.CameraExtensionsProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v1, "ro.vendor.camera.extensions.package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "vendorProxyPackage":Ljava/lang/String;
    const-string/jumbo v2, "ro.vendor.camera.extensions.service"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "vendorProxyService":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "CameraExtensionManagerGlobal"

    if-nez v3, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :cond_5f
    if-eqz p3, :cond_b5

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040275

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040276

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "serviceName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosing the fallback software implementation package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosing the fallback software implementation service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mIsFallbackEnabled:Z

    .line 326
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_b5
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics-IA;)V

    .line 327
    .local v3, "initFuture":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    new-instance v5, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;

    invoke-direct {v5, p0, p2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;ILandroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;)V

    .line 352
    .local v5, "connection":Landroid/content/ServiceConnection;
    const v6, 0x40000049    # 2.0000174f

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v6, v7, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 355
    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v6, p2, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setConnection(ILandroid/content/ServiceConnection;)V

    .line 358
    :try_start_cd
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v3, v7, v8, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    :try_end_d4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_cd .. :try_end_d4} :catch_d5

    .line 361
    goto :goto_db

    .line 359
    :catch_d5
    move-exception v6

    .line 360
    .local v6, "e":Ljava/util/concurrent/TimeoutException;
    const-string v7, "Timed out while initializing proxy service!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "vendorProxyPackage":Ljava/lang/String;
    .end local v2    # "vendorProxyService":Ljava/lang/String;
    .end local v3    # "initFuture":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    .end local v5    # "connection":Landroid/content/ServiceConnection;
    .end local v6    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_db
    :goto_db
    return-void
.end method

.method public static blacklist get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .registers 1

    .line 280
    sget-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-object v0
.end method

.method private blacklist releaseProxyConnectionLocked(Landroid/content/Context;I)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "extension"    # I

    .line 284
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 285
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setConnection(ILandroid/content/ServiceConnection;)V

    .line 287
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p2, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setProxy(ILandroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V

    .line 288
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->resetConnectionCount(I)V

    .line 290
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist areAdvancedExtensionsSupported(I)Z
    .registers 3
    .param p1, "extension"    # I

    .line 533
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    return v0
.end method

.method public blacklist initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 4
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 564
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    .line 565
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v1

    monitor-exit v0

    .line 564
    return-object v1

    .line 567
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 569
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .registers 4
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 552
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    .line 553
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1

    monitor-exit v0

    .line 552
    return-object v1

    .line 555
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 557
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 4
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 540
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    .line 541
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v1

    monitor-exit v0

    .line 540
    return-object v1

    .line 543
    :cond_17
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 545
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V
    .registers 6
    .param p1, "cb"    # Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    .param p2, "extension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    .line 508
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->isSessionInitialized()Z

    move-result v1

    if-nez v1, :cond_23

    .line 509
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 510
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setSessionInitialized(Z)V

    goto :goto_26

    .line 512
    :cond_23
    invoke-interface {p1}, Landroid/hardware/camera2/extension/IInitializeSessionCallback;->onFailure()V

    .line 514
    :goto_26
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "extension"    # I
    .param p4, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    .line 455
    .local p5, "characteristicsMapNative":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;>;"
    const-string/jumbo v0, "ro.camerax.extensions.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 457
    const-string v0, "CameraExtensionManagerGlobal"

    const-string v2, "Disabled camera extension property!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v1

    .line 461
    :cond_12
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClientHelper(Landroid/content/Context;Landroid/os/IBinder;IZ)Z

    move-result v0

    .line 464
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 465
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "camera_extensions_fallback"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, "userEnabled":I
    const/4 v4, 0x1

    .line 469
    .local v4, "vendorImpl":Z
    if-eqz v0, :cond_32

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v5, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v5

    if-eqz v5, :cond_32

    if-ne v2, v3, :cond_32

    .line 474
    invoke-static {p4, p3, p5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v4

    .line 478
    :cond_32
    if-nez v4, :cond_3b

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    .line 480
    invoke-virtual {p0, p1, p2, p3, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClientHelper(Landroid/content/Context;Landroid/os/IBinder;IZ)Z

    move-result v0

    .line 483
    :cond_3b
    return v0
.end method

.method public blacklist registerClientHelper(Landroid/content/Context;Landroid/os/IBinder;IZ)Z
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "extension"    # I
    .param p4, "useFallback"    # Z

    .line 412
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "ret":Z
    :try_start_4
    invoke-direct {p0, p1, p3, p4}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->connectToProxyLocked(Landroid/content/Context;IZ)V

    .line 415
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v2

    if-nez v2, :cond_12

    .line 416
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 418
    :cond_12
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->incrementConnectionCount(I)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_67

    .line 421
    :try_start_17
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->registerClient(Landroid/os/IBinder;)Z

    move-result v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23
    .catchall {:try_start_17 .. :try_end_21} :catchall_67

    move v1, v2

    .line 425
    goto :goto_2b

    .line 422
    :catch_23
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v3, "CameraExtensionManagerGlobal"

    const-string v4, "Failed to initialize extension! Extension service does  not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2b
    if-nez v1, :cond_32

    .line 427
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->decrementConnectionCount(I)V

    .line 430
    :cond_32
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnectionCount(I)I

    move-result v2

    if-gtz v2, :cond_3d

    .line 431
    invoke-direct {p0, p1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseProxyConnectionLocked(Landroid/content/Context;I)V

    .line 434
    :cond_3d
    if-eqz v1, :cond_65

    if-eqz p4, :cond_65

    iget-boolean v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mIsFallbackEnabled:Z
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_67

    if-eqz v2, :cond_65

    .line 436
    :try_start_45
    new-instance v2, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;

    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/content/Context;)V

    .line 437
    .local v2, "cb":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;
    invoke-virtual {p0, v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V

    .line 438
    iget-boolean v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mPermissionForFallbackEnabled:Z
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_56
    .catchall {:try_start_45 .. :try_end_4f} :catchall_54

    move v1, v3

    .line 444
    .end local v2    # "cb":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;
    :goto_50
    :try_start_50
    invoke-virtual {p0, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession(I)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_67

    .line 445
    goto :goto_65

    .line 444
    :catchall_54
    move-exception v2

    goto :goto_60

    .line 439
    :catch_56
    move-exception v2

    .line 440
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_57
    const-string v3, "CameraExtensionManagerGlobal"

    const-string v4, "Failed to initialize extension. Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    .line 442
    const/4 v1, 0x0

    goto :goto_50

    .line 444
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_60
    :try_start_60
    invoke-virtual {p0, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession(I)V

    .line 445
    nop

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "extension":I
    .end local p4    # "useFallback":Z
    throw v2

    .line 448
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "extension":I
    .restart local p4    # "useFallback":Z
    :cond_65
    :goto_65
    monitor-exit v0

    return v1

    .line 449
    .end local v1    # "ret":Z
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_67

    throw v1
.end method

.method public blacklist releaseSession(I)V
    .registers 6
    .param p1, "extension"    # I

    .line 518
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    if-eqz v1, :cond_25

    .line 521
    :try_start_b
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->releaseSession()V

    .line 522
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setSessionInitialized(Z)V

    .line 523
    iput-boolean v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mPermissionForFallbackEnabled:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_1d
    .catchall {:try_start_b .. :try_end_1c} :catchall_27

    .line 527
    goto :goto_25

    .line 524
    :catch_1d
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to release session! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "extension"    # I

    .line 487
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_51

    if-eqz v1, :cond_4f

    .line 490
    :try_start_b
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->unregisterClient(Landroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_27
    .catchall {:try_start_b .. :try_end_14} :catchall_25

    .line 495
    :try_start_14
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->decrementConnectionCount(I)V

    .line 496
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnectionCount(I)I

    move-result v1

    if-gtz v1, :cond_4f

    .line 497
    :goto_21
    invoke-direct {p0, p1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseProxyConnectionLocked(Landroid/content/Context;I)V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_51

    goto :goto_4f

    .line 495
    :catchall_25
    move-exception v1

    goto :goto_3d

    .line 491
    :catch_27
    move-exception v1

    .line 492
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_28
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to de-initialize extension! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 495
    .end local v1    # "e":Landroid/os/RemoteException;
    :try_start_2f
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->decrementConnectionCount(I)V

    .line 496
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnectionCount(I)I

    move-result v1

    if-gtz v1, :cond_4f

    .line 497
    goto :goto_21

    .line 495
    :goto_3d
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->decrementConnectionCount(I)V

    .line 496
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnectionManager:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-virtual {v2, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getConnectionCount(I)I

    move-result v2

    if-gtz v2, :cond_4d

    .line 497
    invoke-direct {p0, p1, p3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseProxyConnectionLocked(Landroid/content/Context;I)V

    .line 499
    :cond_4d
    nop

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .end local p1    # "ctx":Landroid/content/Context;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "extension":I
    throw v1

    .line 501
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .restart local p1    # "ctx":Landroid/content/Context;
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "extension":I
    :cond_4f
    :goto_4f
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_51

    throw v1
.end method
