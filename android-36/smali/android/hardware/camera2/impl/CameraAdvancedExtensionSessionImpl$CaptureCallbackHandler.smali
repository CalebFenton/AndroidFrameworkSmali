.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 951
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 952
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    .line 953
    return-void
.end method


# virtual methods
.method public whitelist onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 11
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 959
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    .line 960
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 961
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v4

    .line 962
    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v4, v4, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v4, v4, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 961
    invoke-interface {v2, v3, p4, p5, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureBufferLost(IJI)V

    .line 963
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_2f

    .line 964
    :cond_2a
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 969
    :goto_2f
    goto :goto_36

    .line 966
    :catch_30
    move-exception v1

    .line 967
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify lost capture buffer, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 976
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 977
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 978
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V

    .line 979
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_23

    .line 980
    :cond_1e
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 985
    :goto_23
    goto :goto_2a

    .line 982
    :catch_24
    move-exception v1

    .line 983
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture result, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 992
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_44

    .line 993
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 994
    .local v1, "requestId":Ljava/lang/Integer;
    new-instance v2, Landroid/hardware/camera2/extension/CaptureFailure;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/CaptureFailure;-><init>()V

    .line 996
    .local v2, "captureFailure":Landroid/hardware/camera2/extension/CaptureFailure;
    iput-object p2, v2, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    .line 997
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    .line 998
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    .line 999
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    .line 1000
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    .line 1001
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    iput-boolean v3, v2, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    .line 1002
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v2}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V

    .line 1003
    .end local v1    # "requestId":Ljava/lang/Integer;
    .end local v2    # "captureFailure":Landroid/hardware/camera2/extension/CaptureFailure;
    goto :goto_49

    .line 1004
    :cond_44
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    .line 1009
    :goto_49
    goto :goto_50

    .line 1006
    :catch_4a
    move-exception v1

    .line 1007
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture failure, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public whitelist onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 9
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 1016
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 1017
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1018
    .local v1, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V

    .line 1019
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_23

    .line 1020
    :cond_1e
    const-string v1, "Invalid capture request tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 1025
    :goto_23
    goto :goto_2a

    .line 1022
    :catch_24
    move-exception v1

    .line 1023
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to notify capture partial result, extension service doesn\'t respond!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 6
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1031
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {v0, p2}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceAborted(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1035
    goto :goto_e

    .line 1032
    :catch_6
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed to notify aborted sequence, extension service doesn\'t respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1042
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-interface {v0, p2, p3, p4}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureSequenceCompleted(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1046
    goto :goto_e

    .line 1043
    :catch_6
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Failed to notify sequence complete, extension service doesn\'t respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 15
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1053
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    :try_start_2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 1054
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1055
    .local v0, "requestId":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;->mCallback:Landroid/hardware/camera2/extension/IRequestCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_27

    move-wide v6, p3

    move-wide v4, p5

    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .local v4, "frameNumber":J
    .local v6, "timestamp":J
    :try_start_18
    invoke-interface/range {v2 .. v7}, Landroid/hardware/camera2/extension/IRequestCallback;->onCaptureStarted(IJJ)V

    .line 1056
    .end local v0    # "requestId":Ljava/lang/Integer;
    goto :goto_23

    .line 1057
    .end local v4    # "frameNumber":J
    .end local v6    # "timestamp":J
    .restart local p3    # "timestamp":J
    .restart local p5    # "frameNumber":J
    :cond_1c
    move-wide v6, p3

    move-wide v4, p5

    .end local p3    # "timestamp":J
    .end local p5    # "frameNumber":J
    .restart local v4    # "frameNumber":J
    .restart local v6    # "timestamp":J
    const-string p3, "Invalid capture request tag!"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24

    .line 1062
    :goto_23
    goto :goto_30

    .line 1059
    :catch_24
    move-exception v0

    move-object p3, v0

    goto :goto_2b

    .end local v4    # "frameNumber":J
    .end local v6    # "timestamp":J
    .restart local p3    # "timestamp":J
    .restart local p5    # "frameNumber":J
    :catch_27
    move-exception v0

    move-wide v6, p3

    move-wide v4, p5

    move-object p3, v0

    .line 1060
    .end local p5    # "frameNumber":J
    .restart local v4    # "frameNumber":J
    .restart local v6    # "timestamp":J
    .local p3, "e":Landroid/os/RemoteException;
    :goto_2b
    const-string p4, "Failed to notify capture started, extension service doesn\'t respond!"

    invoke-static {v1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local p3    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method
