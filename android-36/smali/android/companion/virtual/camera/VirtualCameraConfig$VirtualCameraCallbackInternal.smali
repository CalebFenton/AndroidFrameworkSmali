.class Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;
.super Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;
.source "VirtualCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/VirtualCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualCameraCallbackInternal"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$G5xrsp_ixPshRwnV6z1OjyL4tlA(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onProcessCaptureRequest$1(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bs12xP5qQWUTqbrcMADdbfY7s50(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamConfigured$0(ILandroid/view/Surface;III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f8g8VegXFnWv1xrHmNnysbWyQnE(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->lambda$onStreamClosed$2(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/companion/virtual/camera/VirtualCameraCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 342
    invoke-direct {p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;-><init>()V

    .line 343
    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    .line 344
    iput-object p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 345
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/camera/VirtualCameraConfig-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;-><init>(Landroid/companion/virtual/camera/VirtualCameraCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessCaptureRequest$1(IJ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "frameId"    # J

    .line 356
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamClosed$2(I)V
    .registers 3
    .param p1, "streamId"    # I

    .line 361
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamClosed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStreamConfigured$0(ILandroid/view/Surface;III)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I

    .line 350
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mCallback:Landroid/companion/virtual/camera/VirtualCameraCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "streamId":I
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "format":I
    .local v1, "streamId":I
    .local v2, "surface":Landroid/view/Surface;
    .local v3, "width":I
    .local v4, "height":I
    .local v5, "format":I
    invoke-interface/range {v0 .. v5}, Landroid/companion/virtual/camera/VirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    return-void
.end method


# virtual methods
.method public blacklist onProcessCaptureRequest(IJ)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "frameId"    # J

    .line 356
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method public blacklist onStreamClosed(I)V
    .registers 4
    .param p1, "streamId"    # I

    .line 361
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public blacklist onStreamConfigured(ILandroid/view/Surface;III)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I

    .line 350
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "streamId":I
    .end local p2    # "surface":Landroid/view/Surface;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "format":I
    .local v3, "streamId":I
    .local v4, "surface":Landroid/view/Surface;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "format":I
    invoke-direct/range {v1 .. v7}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;ILandroid/view/Surface;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method
