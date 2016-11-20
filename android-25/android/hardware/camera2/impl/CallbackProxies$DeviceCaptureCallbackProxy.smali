.class public Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCaptureCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;-><init>()V

    #@3
    .line 96
    const-string/jumbo v0, "dispatchTarget must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    #@c
    .line 97
    .restart local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@e
    const-class v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    #@10
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@15
    .line 95
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureCompleted"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 120
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureFailed"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 126
    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCapturePartial"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 108
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureProgressed"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 114
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureSequenceAborted"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 138
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureSequenceCompleted"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x2

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 132
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onCaptureStarted"

    #@5
    const/4 v2, 0x4

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 102
    return-void
.end method
