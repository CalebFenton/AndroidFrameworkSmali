.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    .param p2, "l"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 267
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@2
    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 267
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide v12, 0xffffffffL

    #@5
    .line 274
    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v8, :pswitch_data_0

    #@a
    .line 304
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@c
    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v10, "Unknown callback message "

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    iget v10, p1, Landroid/os/Message;->what:I

    #@1a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    .line 304
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 307
    :catch_0
    move-exception v0

    #@27
    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/IllegalStateException;

    #@29
    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v10, "Received remote exception during camera callback "

    #@31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    iget v10, p1, Landroid/os/Message;->what:I

    #@37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    .line 308
    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v8

    #@43
    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@45
    .line 277
    .local v1, "errorCode":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@49
    .line 278
    .local v4, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@4b
    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@4e
    move-result-object v8

    #@4f
    invoke-interface {v8, v1, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@52
    .line 272
    .end local v1    # "errorCode":I
    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    #@53
    .line 282
    :pswitch_1
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@55
    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@58
    move-result-object v8

    #@59
    invoke-interface {v8}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    #@5c
    goto :goto_0

    #@5d
    .line 285
    :pswitch_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@5f
    int-to-long v8, v8

    #@60
    and-long v6, v8, v12

    #@62
    .line 286
    .local v6, "timestamp":J
    const/16 v8, 0x20

    #@64
    shl-long v8, v6, v8

    #@66
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@68
    int-to-long v10, v10

    #@69
    and-long/2addr v10, v12

    #@6a
    or-long v6, v8, v10

    #@6c
    .line 287
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6e
    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@70
    .line 288
    .restart local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@72
    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@75
    move-result-object v8

    #@76
    invoke-interface {v8, v4, v6, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    #@79
    goto :goto_0

    #@7a
    .line 292
    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v6    # "timestamp":J
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7c
    check-cast v3, [Ljava/lang/Object;

    #@7e
    .line 293
    .local v3, "resultArray":[Ljava/lang/Object;
    const/4 v8, 0x0

    #@7f
    aget-object v2, v3, v8

    #@81
    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@83
    .line 294
    .local v2, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v8, 0x1

    #@84
    aget-object v4, v3, v8

    #@86
    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@88
    .line 295
    .restart local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@8a
    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@8d
    move-result-object v8

    #@8e
    invoke-interface {v8, v2, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@91
    goto :goto_0

    #@92
    .line 299
    .end local v2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "resultArray":[Ljava/lang/Object;
    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@94
    .line 300
    .local v5, "streamId":I
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@96
    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@99
    move-result-object v8

    #@9a
    invoke-interface {v8, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    goto :goto_0

    #@9e
    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
