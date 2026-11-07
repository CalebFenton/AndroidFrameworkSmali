.class Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientStateCallback"
.end annotation


# instance fields
.field private final blacklist mClientExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 4
    .param p2, "clientExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "clientStateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 343
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 344
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 345
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/impl/CameraDeviceImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onClientSharedAccessPriorityChanged(Landroid/hardware/camera2/CameraDevice;Z)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "primaryClient"    # Z

    .line 370
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-nez v0, :cond_7

    .line 371
    return-void

    .line 373
    :cond_7
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 348
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public whitelist onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 393
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public whitelist onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 403
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method public whitelist onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 383
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public whitelist onOpenedInSharedMode(Landroid/hardware/camera2/CameraDevice;Z)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "primaryClient"    # Z

    .line 357
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    if-nez v0, :cond_7

    .line 358
    return-void

    .line 360
    :cond_7
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method
