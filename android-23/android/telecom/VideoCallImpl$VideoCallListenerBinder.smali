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
    .line 97
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x5

    #@b
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 96
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 102
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10
    .line 86
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@12
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x4

    #@17
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1e
    .line 82
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 90
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x3

    #@b
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 76
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
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
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
    .line 67
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 68
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 69
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c
    .line 70
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@e
    .line 71
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    #@10
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x2

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 66
    return-void
.end method
