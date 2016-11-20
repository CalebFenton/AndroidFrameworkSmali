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
    .line 288
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@2
    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 295
    :try_start_0
    move-object/from16 v0, p1

    #@2
    iget v12, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v12, :pswitch_data_0

    #@7
    .line 331
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@9
    .line 332
    new-instance v13, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v14, "Unknown callback message "

    #@11
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v13

    #@15
    move-object/from16 v0, p1

    #@17
    iget v14, v0, Landroid/os/Message;->what:I

    #@19
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v13

    #@1d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v13

    #@21
    .line 331
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 334
    :catch_0
    move-exception v2

    #@26
    .line 335
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v12, Ljava/lang/IllegalStateException;

    #@28
    .line 336
    new-instance v13, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v14, "Received remote exception during camera callback "

    #@30
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v13

    #@34
    move-object/from16 v0, p1

    #@36
    iget v14, v0, Landroid/os/Message;->what:I

    #@38
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v13

    #@3c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v13

    #@40
    .line 335
    invoke-direct {v12, v13, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    throw v12

    #@44
    .line 297
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    #@46
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@48
    .line 298
    .local v3, "errorCode":I
    move-object/from16 v0, p1

    #@4a
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    check-cast v8, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@4e
    .line 299
    .local v8, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    #@50
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@52
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@55
    move-result-object v12

    #@56
    invoke-interface {v12, v3, v8}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@59
    .line 293
    .end local v3    # "errorCode":I
    .end local v8    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    #@5a
    .line 303
    :pswitch_1
    move-object/from16 v0, p0

    #@5c
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@5e
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@61
    move-result-object v12

    #@62
    invoke-interface {v12}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    #@65
    goto :goto_0

    #@66
    .line 306
    :pswitch_2
    move-object/from16 v0, p1

    #@68
    iget v12, v0, Landroid/os/Message;->arg2:I

    #@6a
    int-to-long v12, v12

    #@6b
    const-wide v14, 0xffffffffL

    #@70
    and-long v10, v12, v14

    #@72
    .line 307
    .local v10, "timestamp":J
    const/16 v12, 0x20

    #@74
    shl-long v12, v10, v12

    #@76
    move-object/from16 v0, p1

    #@78
    iget v14, v0, Landroid/os/Message;->arg1:I

    #@7a
    int-to-long v14, v14

    #@7b
    const-wide v16, 0xffffffffL

    #@80
    and-long v14, v14, v16

    #@82
    or-long v10, v12, v14

    #@84
    .line 308
    move-object/from16 v0, p1

    #@86
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v8, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@8a
    .line 309
    .restart local v8    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    #@8c
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@8e
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@91
    move-result-object v12

    #@92
    invoke-interface {v12, v8, v10, v11}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    #@95
    goto :goto_0

    #@96
    .line 313
    .end local v8    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v10    # "timestamp":J
    :pswitch_3
    move-object/from16 v0, p1

    #@98
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9a
    check-cast v7, [Ljava/lang/Object;

    #@9c
    .line 314
    .local v7, "resultArray":[Ljava/lang/Object;
    const/4 v12, 0x0

    #@9d
    aget-object v6, v7, v12

    #@9f
    check-cast v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@a1
    .line 315
    .local v6, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v12, 0x1

    #@a2
    aget-object v8, v7, v12

    #@a4
    check-cast v8, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@a6
    .line 316
    .restart local v8    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    #@a8
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@aa
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@ad
    move-result-object v12

    #@ae
    invoke-interface {v12, v6, v8}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@b1
    goto :goto_0

    #@b2
    .line 320
    .end local v6    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v7    # "resultArray":[Ljava/lang/Object;
    .end local v8    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_4
    move-object/from16 v0, p1

    #@b4
    iget v9, v0, Landroid/os/Message;->arg1:I

    #@b6
    .line 321
    .local v9, "streamId":I
    move-object/from16 v0, p0

    #@b8
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@ba
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@bd
    move-result-object v12

    #@be
    invoke-interface {v12, v9}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V

    #@c1
    goto :goto_0

    #@c2
    .line 325
    .end local v9    # "streamId":I
    :pswitch_5
    move-object/from16 v0, p1

    #@c4
    iget v12, v0, Landroid/os/Message;->arg2:I

    #@c6
    int-to-long v12, v12

    #@c7
    const-wide v14, 0xffffffffL

    #@cc
    and-long v4, v12, v14

    #@ce
    .line 326
    .local v4, "lastFrameNumber":J
    const/16 v12, 0x20

    #@d0
    shl-long v12, v4, v12

    #@d2
    move-object/from16 v0, p1

    #@d4
    iget v14, v0, Landroid/os/Message;->arg1:I

    #@d6
    int-to-long v14, v14

    #@d7
    const-wide v16, 0xffffffffL

    #@dc
    and-long v14, v14, v16

    #@de
    or-long v4, v12, v14

    #@e0
    .line 327
    move-object/from16 v0, p0

    #@e2
    iget-object v12, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    #@e4
    invoke-static {v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@e7
    move-result-object v12

    #@e8
    invoke-interface {v12, v4, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@eb
    goto/16 :goto_0

    #@ed
    .line 295
    nop

    #@ee
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
