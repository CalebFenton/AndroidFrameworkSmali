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
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method private constructor <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 114
    return-void

    #@9
    .line 116
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@b
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x5

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 112
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 123
    return-void

    #@9
    .line 125
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@b
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x6

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 121
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 94
    return-void

    #@9
    .line 96
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@c
    move-result-object v0

    #@d
    .line 97
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13
    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@19
    .line 99
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@1b
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x4

    #@20
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@27
    .line 92
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 105
    return-void

    #@9
    .line 107
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@b
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x7

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 103
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 85
    return-void

    #@9
    .line 87
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@b
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x3

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1b
    .line 83
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 61
    return-void

    #@9
    .line 63
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@b
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 59
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 72
    return-void

    #@9
    .line 74
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@c
    move-result-object v0

    #@d
    .line 75
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13
    .line 76
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@15
    .line 77
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@17
    .line 78
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@19
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@25
    .line 70
    return-void
.end method
