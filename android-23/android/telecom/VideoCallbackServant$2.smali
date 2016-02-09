.class Landroid/telecom/VideoCallbackServant$2;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallbackServant;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 147
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@c
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x4

    #@11
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 144
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 153
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 138
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 139
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@8
    .line 140
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@a
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x3

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 136
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 159
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 132
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@8
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x2

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 129
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 114
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 122
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@6
    .line 123
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@8
    .line 124
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    .line 125
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    #@c
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->-get1(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 120
    return-void
.end method
