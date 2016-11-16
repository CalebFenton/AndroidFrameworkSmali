.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 48
    return-void
.end method

.method private getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    #@3
    .line 116
    const-string/jumbo v0, "CMD_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 112
    :pswitch_0
    const-string/jumbo v0, "CMD_OP_ENABLE_RESPONDER"

    #@a
    return-object v0

    #@b
    .line 114
    :pswitch_1
    const-string/jumbo v0, "CMD_OP_DISABLE_RESPONDER"

    #@e
    return-object v0

    #@f
    .line 110
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x27205
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 56
    const-string/jumbo v6, "RttService"

    #@4
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "ClientHandler got"

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    const-string/jumbo v8, " what = "

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    iget v8, p1, Landroid/os/Message;->what:I

    #@1d
    invoke-direct {p0, v8}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->getDescription(I)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 59
    iget v6, p1, Landroid/os/Message;->what:I

    #@2e
    packed-switch v6, :pswitch_data_0

    #@31
    .line 81
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@33
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@36
    move-result-object v6

    #@37
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@39
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@3f
    .line 82
    .local v1, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-nez v1, :cond_2

    #@41
    .line 83
    const-string/jumbo v5, "RttService"

    #@44
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "Could not find client info for message "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 84
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@5f
    const-string/jumbo v6, "Could not find listener"

    #@62
    const/4 v7, -0x3

    #@63
    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@66
    .line 85
    return-void

    #@67
    .line 62
    .end local v1    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@69
    const/4 v6, 0x2

    #@6a
    if-ne v5, v6, :cond_1

    #@6c
    .line 63
    const-string/jumbo v5, "RttService"

    #@6f
    const-string/jumbo v6, "Send failed, client connection lost"

    #@72
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 67
    :goto_0
    const-string/jumbo v5, "RttService"

    #@78
    new-instance v6, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v7, "closing client "

    #@80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 68
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@93
    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@96
    move-result-object v5

    #@97
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@99
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    move-result-object v1

    #@9d
    check-cast v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@9f
    .line 69
    .restart local v1    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-eqz v1, :cond_0

    #@a1
    invoke-virtual {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    #@a4
    .line 70
    :cond_0
    return-void

    #@a5
    .line 65
    .end local v1    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_1
    const-string/jumbo v5, "RttService"

    #@a8
    new-instance v6, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v7, "Client connection lost with reason: "

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@b6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto :goto_0

    #@c2
    .line 72
    :pswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@c4
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@c7
    .line 73
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@c9
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get1(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;

    #@cc
    move-result-object v6

    #@cd
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@cf
    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@d2
    .line 74
    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@d4
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@d6
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@d8
    invoke-direct {v2, v6, v0, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    #@db
    .line 75
    .local v2, "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@dd
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@e0
    move-result-object v6

    #@e1
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@e3
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 76
    const v6, 0x11002

    #@e9
    invoke-virtual {v0, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@ec
    .line 78
    return-void

    #@ed
    .line 87
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    .restart local v1    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@ef
    invoke-virtual {v6, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    #@f2
    move-result v6

    #@f3
    if-nez v6, :cond_3

    #@f5
    .line 88
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@f7
    .line 89
    const-string/jumbo v6, "Client doesn\'t have LOCATION_HARDWARE permission"

    #@fa
    .line 88
    const/4 v7, -0x5

    #@fb
    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@fe
    .line 90
    return-void

    #@ff
    .line 93
    :cond_3
    const v6, 0x27200

    #@102
    .line 94
    const v7, 0x27201

    #@105
    .line 95
    const v8, 0x27205

    #@108
    .line 96
    const v9, 0x27206

    #@10b
    .line 92
    filled-new-array {v6, v7, v8, v9}, [I

    #@10e
    move-result-object v4

    #@10f
    .line 99
    .local v4, "validCommands":[I
    array-length v6, v4

    #@110
    :goto_1
    if-ge v5, v6, :cond_5

    #@112
    aget v3, v4, v5

    #@114
    .line 100
    .local v3, "cmd":I
    iget v7, p1, Landroid/os/Message;->what:I

    #@116
    if-ne v3, v7, :cond_4

    #@118
    .line 101
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@11a
    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@11d
    move-result-object v5

    #@11e
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@121
    move-result-object v6

    #@122
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(Landroid/os/Message;)V

    #@125
    .line 102
    return-void

    #@126
    .line 99
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@128
    goto :goto_1

    #@129
    .line 106
    .end local v3    # "cmd":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@12b
    const-string/jumbo v6, "Invalid request"

    #@12e
    const/4 v7, -0x4

    #@12f
    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@132
    .line 53
    return-void

    #@133
    .line 59
    nop

    #@134
    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
