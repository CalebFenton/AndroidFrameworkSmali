.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;
    }
.end annotation


# instance fields
.field private final blacklist mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private blacklist mCaptureFailed:Z

.field private blacklist mCapturePendingMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mCaptureRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

.field private blacklist mCaptureStageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$94RP8M5BeeD2tY2bX7IawP7tYn8(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$checkAndFireBurstProcessing$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$O2WFJhPkDn-Kpf8nK9_SJ_e8Adk(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$checkAndFireBurstProcessing$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QgCyHZPBBUQev55g6yzrucfJKfA(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$onCaptureCompleted$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_AeydUpWipTfeo26SvY8jB7KrOI(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$notifyCaptureFailed$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aP6kNtVcDgaIZ4LxWX7k6DdArJk(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$onCaptureSequenceAborted$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nBKX7na_XYASGXFkQVqzC_reJVY(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$onCaptureStarted$1(J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pn4VM_JrenLHLJBZmerw8dIIov0(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$onCaptureSequenceCompleted$3(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureStageMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireBurstProcessing(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->checkAndFireBurstProcessing()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/util/HashMap;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .registers 8
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbacks"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p6, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;",
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;",
            ")V"
        }
    .end annotation

    .line 1121
    .local p5, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 1109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    .line 1111
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    .line 1114
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    .line 1116
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1122
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1123
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1124
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1125
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    .line 1126
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1127
    return-void
.end method

.method private blacklist checkAndFireBurstProcessing()V
    .registers 9

    .line 1277
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_d7

    .line 1278
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    .line 1279
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1278
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1280
    .local v1, "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2e

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_2d

    goto :goto_2e

    .line 1283
    .end local v1    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_2d
    goto :goto_18

    .line 1281
    .restart local v1    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_2e
    :goto_2e
    return-void

    .line 1285
    .end local v1    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_2f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1286
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1287
    const/4 v0, 0x1

    .line 1288
    .local v0, "processStatus":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 1289
    .local v1, "jpegQuality":Ljava/lang/Byte;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1290
    .local v2, "jpegOrientation":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;

    move-result-object v3

    .line 1293
    .local v3, "captureList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    :try_start_54
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmClientPostviewSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;

    move-result-object v5

    .line 1294
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v4

    .line 1295
    .local v4, "isPostviewRequested":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-interface {v5, v3, v6, v4}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6b} :catch_6c

    .line 1301
    .end local v4    # "isPostviewRequested":Z
    goto :goto_75

    .line 1297
    :catch_6c
    move-exception v4

    .line 1298
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "CameraExtensionSessionImpl"

    const-string v6, "Failed to process multi-frame request! Extension service does not respond!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const/4 v0, 0x0

    .line 1303
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CaptureBundle;

    .line 1304
    .local v5, "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    iget-object v6, v5, Landroid/hardware/camera2/extension/CaptureBundle;->captureImage:Landroid/hardware/camera2/extension/ParcelImage;

    iget-object v6, v6, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1305
    .end local v5    # "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    goto :goto_79

    .line 1306
    :cond_8d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1307
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1308
    .local v5, "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1309
    .end local v5    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    goto :goto_9a

    .line 1310
    :cond_ae
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1314
    .local v4, "ident":J
    if-eqz v0, :cond_c4

    .line 1315
    :try_start_b9
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_ce

    .line 1318
    :cond_c4
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ce
    .catchall {:try_start_b9 .. :try_end_ce} :catchall_d2

    .line 1322
    :goto_ce
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    goto :goto_d7

    .line 1322
    :catchall_d2
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw v6

    .line 1325
    .end local v0    # "processStatus":Z
    .end local v1    # "jpegQuality":Ljava/lang/Byte;
    .end local v2    # "jpegOrientation":Ljava/lang/Integer;
    .end local v3    # "captureList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    .end local v4    # "ident":J
    :cond_d7
    :goto_d7
    return-void
.end method

.method private synthetic blacklist lambda$checkAndFireBurstProcessing$5()V
    .registers 4

    .line 1315
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$checkAndFireBurstProcessing$6()V
    .registers 4

    .line 1318
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyCaptureFailed$0()V
    .registers 4

    .line 1136
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$4()V
    .registers 4

    .line 1258
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1259
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1258
    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$2(I)V
    .registers 4
    .param p1, "sequenceId"    # I

    .line 1204
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$3(I)V
    .registers 4
    .param p1, "sequenceId"    # I

    .line 1218
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1219
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    .line 1218
    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$1(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 1172
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method private blacklist notifyCaptureFailed()V
    .registers 6

    .line 1130
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    if-nez v0, :cond_46

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    .line 1133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1135
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_41

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    nop

    .line 1142
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1143
    .local v3, "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_3a

    .line 1144
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 1146
    .end local v3    # "captureStage":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_3a
    goto :goto_23

    .line 1147
    :cond_3b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_46

    .line 1139
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    throw v2

    .line 1149
    .end local v0    # "ident":J
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public whitelist onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 1188
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    .line 1189
    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 14
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1230
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CameraExtensionSessionImpl"

    if-nez v0, :cond_10

    .line 1231
    const-string v0, "Unexpected still capture request received!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void

    .line 1235
    :cond_10
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    .line 1237
    .local v2, "stageId":Ljava/lang/Integer;
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    .line 1238
    .local v3, "timestamp":Ljava/lang/Long;
    if-eqz v3, :cond_c8

    .line 1239
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-nez v0, :cond_43

    .line 1240
    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1241
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;I)V

    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1243
    :cond_43
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 1244
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_7e

    .line 1245
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    .line 1246
    .local v0, "img":Landroid/media/Image;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1247
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->checkAndFireBurstProcessing()V

    .line 1249
    .end local v0    # "img":Landroid/media/Image;
    goto :goto_cd

    .line 1250
    :cond_7e
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v1, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v5, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1251
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v6, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 1254
    :cond_98
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1257
    .local v4, "ident":J
    :try_start_a1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1262
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v0, :cond_be

    .line 1263
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1264
    invoke-static {v1, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    .line 1263
    invoke-virtual {v0, v6, v7, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_be
    .catchall {:try_start_a1 .. :try_end_be} :catchall_c3

    .line 1267
    :cond_be
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    nop

    .line 1269
    .end local v4    # "ident":J
    goto :goto_cd

    .line 1267
    .restart local v4    # "ident":J
    :catchall_c3
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v0

    .line 1271
    .end local v4    # "ident":J
    :cond_c8
    const-string v0, "Capture result without valid sensor timestamp!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_cd
    return-void
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 1195
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    .line 1196
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 7
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1203
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    nop

    .line 1209
    return-void

    .line 1207
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    throw v2
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1217
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    nop

    .line 1224
    return-void

    .line 1222
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    throw v2
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 12
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "initialCallback":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    if-nez v2, :cond_1c

    .line 1160
    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    .line 1161
    const/4 v0, 0x1

    goto :goto_25

    .line 1162
    :cond_1c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    if-nez v2, :cond_25

    .line 1164
    const/4 v0, 0x1

    .line 1166
    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_53

    .line 1168
    if-eqz v0, :cond_3f

    .line 1169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1171
    .local v1, "ident":J
    :try_start_2c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p3, p4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    .line 1175
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    goto :goto_3f

    .line 1175
    :catchall_3a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    throw v3

    .line 1179
    .end local v1    # "ident":J
    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    if-eqz v1, :cond_52

    .line 1180
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    .line 1182
    :cond_52
    return-void

    .line 1166
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method
