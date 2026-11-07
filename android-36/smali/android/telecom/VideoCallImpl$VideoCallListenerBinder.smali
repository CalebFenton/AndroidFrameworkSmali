.class final Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallListenerBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/VideoCallImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o changeCallDataUsage(J)V
    .registers 6
    .param p1, "dataUsage"    # J

    .line 125
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 126
    return-void

    .line 128
    :cond_9
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public greylist-max-o changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 4
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 134
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 135
    return-void

    .line 137
    :cond_9
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public greylist-max-o changePeerDimensions(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 105
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 106
    return-void

    .line 108
    :cond_9
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 109
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method

.method public greylist-max-o changeVideoQuality(I)V
    .registers 5
    .param p1, "videoQuality"    # I

    .line 116
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 117
    return-void

    .line 119
    :cond_9
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void
.end method

.method public greylist-max-o handleCallSessionEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 96
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 97
    return-void

    .line 99
    :cond_9
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public greylist-max-o receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 72
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 73
    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method

.method public greylist-max-o receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 83
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 84
    return-void

    .line 86
    :cond_9
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 87
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 88
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 89
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-void
.end method
