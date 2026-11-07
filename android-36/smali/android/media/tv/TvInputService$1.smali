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
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 204
    if-nez p1, :cond_3

    .line 205
    return-void

    .line 207
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 208
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 209
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 210
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 9
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "cb"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "tvAppAttributionSource"    # Landroid/content/AttributionSource;

    .line 185
    if-nez p1, :cond_9

    .line 186
    const-string v0, "TvInputService"

    const-string v1, "Creating session without input channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_9
    if-nez p2, :cond_c

    .line 189
    return-void

    .line 191
    :cond_c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 192
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 193
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 194
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 195
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 196
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public blacklist getAvailableExtensionInterfaceNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    .line 218
    invoke-virtual {v0}, Landroid/media/tv/TvInputService;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "extensionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tifExtensionStandardization()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 220
    nop

    .line 221
    invoke-static {}, Landroid/media/tv/TvInputServiceExtensionManager;->getStandardExtensionInterfaceNames()Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_14
    return-object v0
.end method

.method public blacklist getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tifExtensionStandardization()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 230
    if-eqz p1, :cond_1d

    .line 231
    invoke-static {p1}, Landroid/media/tv/TvInputServiceExtensionManager;->checkIsStandardizedInterfaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 232
    invoke-static {p1, v0}, Landroid/media/tv/TvInputServiceExtensionManager;->checkIsStandardizedIBinder(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 234
    return-object v0

    .line 237
    :cond_1b
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_1d
    return-object v0
.end method

.method public blacklist getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputService;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 4
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 251
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void
.end method

.method public blacklist notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 4
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 257
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void
.end method

.method public blacklist notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 263
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public blacklist notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 269
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    return-void
.end method

.method public blacklist notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 275
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    .line 170
    if-eqz p1, :cond_b

    .line 171
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 173
    :cond_b
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/tv/ITvInputServiceCallback;

    .line 177
    if-eqz p1, :cond_b

    .line 178
    iget-object v0, p0, Landroid/media/tv/TvInputService$1;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 180
    :cond_b
    return-void
.end method
