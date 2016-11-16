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
    .line 111
    iput-object p1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p2, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    if-nez p1, :cond_0

    #@2
    .line 145
    return-void

    #@3
    .line 147
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@6
    move-result-object v0

    #@7
    .line 148
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@9
    .line 149
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@b
    .line 150
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@d
    invoke-static {v1}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x3

    #@12
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 143
    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p3, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    if-nez p1, :cond_0

    #@2
    .line 130
    const-string/jumbo v1, "TvInputService"

    #@5
    const-string/jumbo v2, "Creating session without input channel"

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 132
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 133
    return-void

    #@e
    .line 135
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@11
    move-result-object v0

    #@12
    .line 136
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    .line 137
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16
    .line 138
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@18
    .line 139
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
    .line 128
    return-void
.end method

.method public notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 156
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
    .line 155
    return-void
.end method

.method public notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 162
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
    .line 161
    return-void
.end method

.method public notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 168
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
    .line 167
    return-void
.end method

.method public notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 173
    return-void
.end method

.method public registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    #@0
    .prologue
    .line 114
    if-eqz p1, :cond_0

    #@2
    .line 115
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@4
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@b
    .line 113
    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    #@0
    .prologue
    .line 121
    if-eqz p1, :cond_0

    #@2
    .line 122
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    #@4
    invoke-static {v0}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@b
    .line 120
    :cond_0
    return-void
.end method
