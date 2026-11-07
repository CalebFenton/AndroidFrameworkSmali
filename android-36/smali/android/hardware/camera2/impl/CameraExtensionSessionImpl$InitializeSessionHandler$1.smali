.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;)V
    .registers 2
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1049
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 1052
    const/4 v1, 0x1

    .line 1053
    .local v1, "status":Z
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1054
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mcompileInitialRequestList(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1055
    .local v2, "initialRequestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v3, "CameraExtensionSessionImpl"

    if-nez v0, :cond_32

    .line 1057
    :try_start_11
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v5, v5, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v6, v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v0, v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetInitialCaptureRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    :try_end_29
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_31

    .line 1060
    :catch_2a
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to initialize the initial capture request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v1, 0x0

    .line 1065
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_31
    goto :goto_61

    .line 1068
    :cond_32
    :try_start_32
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v4, v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v4

    new-instance v5, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v6, v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v7, v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v0, v4, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_59
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_32 .. :try_end_59} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_59} :catch_5a

    .line 1076
    goto :goto_61

    .line 1071
    :catch_5a
    move-exception v0

    .line 1072
    .local v0, "e":Landroid/util/AndroidException;
    const-string v4, "Failed to initialize internal repeating request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, 0x0

    .line 1080
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_61
    if-nez v1, :cond_6a

    .line 1081
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler$1;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1083
    :cond_6a
    return-void
.end method
