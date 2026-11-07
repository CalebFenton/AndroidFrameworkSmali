.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
.super Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestProcessor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1137
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist abortCaptures()V
    .registers 4

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_5} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_1d

    .line 1223
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1224
    monitor-exit v0

    return-void

    .line 1227
    :cond_f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1228
    monitor-exit v0

    goto :goto_2e

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    :try_start_1c
    throw v1
    :try_end_1d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1c .. :try_end_1d} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 1231
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    :catch_1d
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Capture session closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1229
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_26
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed during capture abort!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2e
    nop

    .line 1234
    :goto_2f
    return-void
.end method

.method public blacklist setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V
    .registers 9
    .param p1, "outputConfigId"    # Landroid/hardware/camera2/extension/OutputConfigId;
    .param p2, "imageProcessor"    # Landroid/hardware/camera2/extension/IImageProcessorImpl;

    .line 1141
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1143
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 1144
    .local v1, "reader":Landroid/media/ImageReader;
    const/4 v2, 0x0

    .line 1145
    .local v2, "physicalCameraId":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1146
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v3

    .line 1147
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v3, v3, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    .line 1148
    .end local v2    # "physicalCameraId":Ljava/lang/String;
    .local v3, "physicalCameraId":Ljava/lang/String;
    new-instance v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;

    iget v4, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, p2, v3, v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;-><init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl-IA;)V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_7e

    .line 1151
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .restart local v2    # "physicalCameraId":Ljava/lang/String;
    :cond_5e
    const-string v3, "CameraAdvancedExtensionSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera output configuration for ImageReader with  config Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v1    # "reader":Landroid/media/ImageReader;
    .end local v2    # "physicalCameraId":Ljava/lang/String;
    :goto_7e
    goto :goto_9f

    .line 1155
    :cond_7f
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageReader with output config id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_9f
    monitor-exit v0

    .line 1159
    return-void

    .line 1158
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_5 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public blacklist setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 10
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;

    .line 1197
    const/4 v0, -0x1

    .line 1199
    .local v0, "seqId":I
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_6} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_42

    .line 1200
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1201
    monitor-exit v1

    return v0

    .line 1204
    :cond_10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1206
    .local v2, "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {v3, v4, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V

    .line 1207
    .local v3, "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v2, v5, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v4

    move v0, v4

    .line 1209
    .end local v2    # "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    monitor-exit v1

    goto :goto_53

    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .end local p1    # "request":Landroid/hardware/camera2/extension/Request;
    .end local p2    # "callback":Landroid/hardware/camera2/extension/IRequestCallback;
    :try_start_41
    throw v2
    :try_end_42
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_41 .. :try_end_42} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_42} :catch_42

    .line 1212
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .restart local p1    # "request":Landroid/hardware/camera2/extension/Request;
    .restart local p2    # "callback":Landroid/hardware/camera2/extension/IRequestCallback;
    :catch_42
    move-exception v1

    .line 1213
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Capture session closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 1210
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_4b
    move-exception v1

    .line 1211
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to enable repeating request!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_53
    nop

    .line 1216
    :goto_54
    return v0
.end method

.method public blacklist stopRepeating()V
    .registers 4

    .line 1239
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_5} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_1d

    .line 1240
    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1241
    monitor-exit v0

    return-void

    .line 1244
    :cond_f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1245
    monitor-exit v0

    goto :goto_2e

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    :try_start_1c
    throw v1
    :try_end_1d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1c .. :try_end_1d} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 1248
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    :catch_1d
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Capture session closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 1246
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_26
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed during repeating capture stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2e
    nop

    .line 1251
    :goto_2f
    return-void
.end method

.method public blacklist submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 5
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v0, "captureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/Request;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I

    move-result v1

    return v1
.end method

.method public blacklist submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 11
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/Request;",
            ">;",
            "Landroid/hardware/camera2/extension/IRequestCallback;",
            ")I"
        }
    .end annotation

    .line 1170
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v0, -0x1

    .line 1172
    .local v0, "seqId":I
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_6} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_5c

    .line 1173
    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1174
    monitor-exit v1

    return v0

    .line 1177
    :cond_10
    new-instance v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {v2, v3, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V

    .line 1178
    .local v2, "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .local v3, "captureRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/Request;

    .line 1180
    .local v5, "request":Landroid/hardware/camera2/extension/Request;
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v6, v5, v7}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    nop

    .end local v5    # "request":Landroid/hardware/camera2/extension/Request;
    goto :goto_20

    .line 1183
    :cond_41
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v3, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v4

    move v0, v4

    .line 1185
    .end local v2    # "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    .end local v3    # "captureRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    monitor-exit v1

    goto :goto_6d

    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    .end local p2    # "callback":Landroid/hardware/camera2/extension/IRequestCallback;
    :try_start_5b
    throw v2
    :try_end_5c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5b .. :try_end_5c} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 1188
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    .restart local p2    # "callback":Landroid/hardware/camera2/extension/IRequestCallback;
    :catch_5c
    move-exception v1

    .line 1189
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Capture session closed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1186
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_65
    move-exception v1

    .line 1187
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to submit capture requests!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_6d
    nop

    .line 1192
    :goto_6e
    return v0
.end method
