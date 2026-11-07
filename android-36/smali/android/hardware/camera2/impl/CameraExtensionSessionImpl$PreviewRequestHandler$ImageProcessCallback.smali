.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method public static synthetic blacklist $r8$lambda$soYvPztBkvNsfauYMW9hoB2kKEY(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->lambda$onImageAvailable$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wV0ds9rPZ9KWK2NXeLOIN4sEvOs(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->lambda$onImageAvailable$1()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1998
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImageAvailable$0()V
    .registers 4

    .line 2070
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onImageAvailable$1()V
    .registers 4

    .line 2074
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 12
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 2011
    const-string v0, "Failed to detach image!"

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0xa

    if-lt v1, v3, :cond_37

    .line 2015
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v5

    .line 2017
    invoke-static {v4, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mcalculatePruneThreshold(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/util/LongSparseArray;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v4

    .line 2015
    invoke-static {v1, v3, v4, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 2021
    :cond_37
    const-string v1, "CameraExtensionSessionImpl"

    if-nez p2, :cond_41

    .line 2022
    const-string v0, "Invalid preview buffer!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-void

    .line 2027
    :cond_41
    :try_start_41
    invoke-virtual {p1, p2}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_44} :catch_fe
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_e9

    .line 2047
    nop

    .line 2049
    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 2050
    .local v2, "timestamp":J
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 2051
    .local v0, "idx":I
    if-ltz v0, :cond_d9

    .line 2052
    const/4 v4, 0x1

    .line 2053
    .local v4, "processStatus":Z
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v5

    .line 2055
    .local v5, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :try_start_5a
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v7

    .line 2056
    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCaptureResultHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    move-result-object v8

    .line 2055
    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_7b} :catch_7e
    .catchall {:try_start_5a .. :try_end_7b} :catchall_7c

    .line 2062
    goto :goto_86

    :catchall_7c
    move-exception v1

    goto :goto_d0

    .line 2057
    :catch_7e
    move-exception v6

    .line 2058
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    .line 2059
    :try_start_80
    const-string v7, "Extension service does not respond during processing, dropping frame!"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_7c

    .line 2062
    nop

    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_86
    iget-object v1, v5, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 2063
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 2064
    nop

    .line 2065
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v0, v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 2066
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientNotificationsEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 2067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2069
    .local v6, "ident":J
    if-eqz v4, :cond_b8

    .line 2070
    :try_start_a9
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c6

    .line 2074
    :cond_b8
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c6
    .catchall {:try_start_a9 .. :try_end_c6} :catchall_ca

    .line 2079
    :goto_c6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    goto :goto_cf

    .line 2079
    :catchall_ca
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    throw v1

    .line 2082
    .end local v4    # "processStatus":Z
    .end local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    .end local v6    # "ident":J
    :cond_cf
    :goto_cf
    goto :goto_e8

    .line 2062
    .restart local v4    # "processStatus":Z
    .restart local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :goto_d0
    iget-object v6, v5, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 2063
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 2064
    throw v1

    .line 2083
    .end local v4    # "processStatus":Z
    .end local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :cond_d9
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2085
    :goto_e8
    return-void

    .line 2032
    .end local v0    # "idx":I
    .end local v2    # "timestamp":J
    :catch_e9
    move-exception v2

    .line 2038
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 2044
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 2046
    return-void

    .line 2041
    :cond_fd
    throw v2

    .line 2028
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_fe
    move-exception v2

    .line 2029
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 2031
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 2002
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 2006
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2007
    return-void
.end method
