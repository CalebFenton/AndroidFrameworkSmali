.class Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;
.super Landroid/os/Handler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateMachineHandler"
.end annotation


# instance fields
.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    .line 279
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 280
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@c
    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@e
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@14
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    #@1b
    .line 278
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 304
    const-string/jumbo v0, "WifiService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "WifiStateMachineHandler.handleMessage ignoring msg="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 285
    :goto_0
    return-void

    #@21
    .line 288
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@23
    if-nez v0, :cond_0

    #@25
    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@27
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@29
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@2c
    goto :goto_0

    #@2d
    .line 291
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "WifiStateMachine connection failure, error="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 292
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@4b
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@4e
    goto :goto_0

    #@4f
    .line 297
    :sswitch_1
    const-string/jumbo v0, "WifiService"

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "WifiStateMachine channel lost, msg.arg1 ="

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 298
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@6d
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@70
    .line 300
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    #@72
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@74
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    #@77
    move-result-object v1

    #@78
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@7a
    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7c
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    #@83
    goto :goto_0

    #@84
    .line 286
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
