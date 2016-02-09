.class Landroid/media/tv/TvInputService$HardwareSession$1;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$HardwareSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$HardwareSession;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$HardwareSession;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$HardwareSession;

    #@0
    .prologue
    .line 1496
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@2
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1499
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@3
    invoke-static {v1, p1}, Landroid/media/tv/TvInputService$HardwareSession;->-set0(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    #@6
    .line 1500
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@9
    move-result-object v0

    #@a
    .line 1501
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz p1, :cond_0

    #@c
    .line 1502
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@e
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@10
    .line 1503
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@12
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get2(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;

    #@15
    move-result-object v1

    #@16
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@18
    .line 1504
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@1a
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get3(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@20
    .line 1505
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->getToken()Landroid/os/IBinder;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@26
    .line 1507
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@28
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 1506
    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p1, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;)V

    #@33
    .line 1515
    :goto_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@35
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get4(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;

    #@38
    move-result-object v1

    #@39
    const/4 v2, 0x2

    #@3a
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@41
    .line 1498
    return-void

    #@42
    .line 1509
    :cond_0
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@44
    .line 1510
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@46
    .line 1511
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@48
    invoke-static {v1}, Landroid/media/tv/TvInputService$HardwareSession;->-get3(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@4e
    .line 1512
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@50
    .line 1513
    iget-object v1, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@52
    invoke-virtual {v1}, Landroid/media/tv/TvInputService$HardwareSession;->onRelease()V

    #@55
    goto :goto_0
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 1
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 1521
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->-get0(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    .line 1522
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@a
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoAvailable()V

    #@d
    .line 1520
    :cond_0
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 1
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1529
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputService$HardwareSession;->-get0(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;

    #@5
    move-result-object v0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    .line 1530
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession$1;->this$1:Landroid/media/tv/TvInputService$HardwareSession;

    #@a
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputService$HardwareSession;->onHardwareVideoUnavailable(I)V

    #@d
    .line 1528
    :cond_0
    return-void
.end method
