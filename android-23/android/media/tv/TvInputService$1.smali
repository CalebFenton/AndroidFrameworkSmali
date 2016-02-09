.class Landroid/media/tv/TvInputService$1;
.super Landroid/media/tv/ITvInputService$Stub;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p3, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    if-nez p1, :cond_0

    #@2
    .line 126
    const-string/jumbo v1, "TvInputService"

    #@5
    const-string/jumbo v2, "Creating session without input channel"

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 128
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 129
    return-void

    #@e
    .line 131
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@11
    move-result-object v0

    #@12
    .line 132
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    .line 133
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16
    .line 134
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@18
    .line 135
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@1a
    invoke-static {v1}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 124
    return-void
.end method

.method public notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 139
    return-void
.end method

.method public notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 145
    return-void
.end method

.method public notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

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
    .line 151
    return-void
.end method

.method public notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

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
    .line 157
    return-void
.end method

.method public registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    #@0
    .prologue
    .line 110
    if-eqz p1, :cond_0

    #@2
    .line 111
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@4
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@b
    .line 109
    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    #@0
    .prologue
    .line 117
    if-eqz p1, :cond_0

    #@2
    .line 118
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@4
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@b
    .line 116
    :cond_0
    return-void
.end method
