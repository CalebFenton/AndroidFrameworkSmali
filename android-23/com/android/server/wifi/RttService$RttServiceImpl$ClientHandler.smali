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
    .line 46
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    .line 47
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 53
    const-string/jumbo v7, "RttService"

    #@4
    new-instance v8, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v9, "ClientHandler got"

    #@c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 55
    iget v7, p1, Landroid/os/Message;->what:I

    #@1d
    packed-switch v7, :pswitch_data_0

    #@20
    .line 84
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@22
    invoke-static {v7}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@25
    move-result-object v7

    #@26
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@28
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@2e
    .line 85
    .local v3, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-nez v3, :cond_3

    #@30
    .line 86
    const-string/jumbo v6, "RttService"

    #@33
    new-instance v7, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v8, "Could not find client info for message "

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 87
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@4e
    const-string/jumbo v7, "Could not find listener"

    #@51
    const/4 v8, -0x3

    #@52
    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@55
    .line 88
    return-void

    #@56
    .line 58
    .end local v3    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@58
    if-nez v6, :cond_0

    #@5a
    .line 59
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    #@5e
    .line 60
    .local v1, "c":Lcom/android/internal/util/AsyncChannel;
    const-string/jumbo v6, "RttService"

    #@61
    new-instance v7, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v8, "New client listening to asynchronous messages: "

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    .line 61
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6f
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 62
    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@7c
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@7e
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@80
    invoke-direct {v2, v6, v1, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    #@83
    .line 63
    .local v2, "cInfo":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@85
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@88
    move-result-object v6

    #@89
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8b
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 67
    .end local v1    # "c":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "cInfo":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :goto_0
    return-void

    #@8f
    .line 65
    :cond_0
    const-string/jumbo v6, "RttService"

    #@92
    new-instance v7, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v8, "Client connection failure, error="

    #@9a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v7

    #@a8
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    goto :goto_0

    #@ac
    .line 69
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@ae
    const/4 v7, 0x2

    #@af
    if-ne v6, v7, :cond_2

    #@b1
    .line 70
    const-string/jumbo v6, "RttService"

    #@b4
    const-string/jumbo v7, "Send failed, client connection lost"

    #@b7
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 74
    :goto_1
    const-string/jumbo v6, "RttService"

    #@bd
    new-instance v7, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v8, "closing client "

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v7

    #@d3
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 75
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@d8
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@db
    move-result-object v6

    #@dc
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@de
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    move-result-object v3

    #@e2
    check-cast v3, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@e4
    .line 76
    .restart local v3    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-eqz v3, :cond_1

    #@e6
    invoke-virtual {v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V

    #@e9
    .line 77
    :cond_1
    return-void

    #@ea
    .line 72
    .end local v3    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_2
    const-string/jumbo v6, "RttService"

    #@ed
    new-instance v7, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v8, "Client connection lost with reason: "

    #@f5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v7

    #@f9
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@fb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    goto :goto_1

    #@107
    .line 79
    :pswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@109
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@10c
    .line 80
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@10e
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get1(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;

    #@111
    move-result-object v6

    #@112
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@114
    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@117
    .line 81
    return-void

    #@118
    .line 92
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .restart local v3    # "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_3
    const v7, 0x27200

    #@11b
    .line 93
    const v8, 0x27201

    #@11e
    .line 91
    filled-new-array {v7, v8}, [I

    #@121
    move-result-object v5

    #@122
    .line 96
    .local v5, "validCommands":[I
    array-length v7, v5

    #@123
    :goto_2
    if-ge v6, v7, :cond_5

    #@125
    aget v4, v5, v6

    #@127
    .line 97
    .local v4, "cmd":I
    iget v8, p1, Landroid/os/Message;->what:I

    #@129
    if-ne v4, v8, :cond_4

    #@12b
    .line 98
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@12d
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@130
    move-result-object v6

    #@131
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@134
    move-result-object v7

    #@135
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(Landroid/os/Message;)V

    #@138
    .line 99
    return-void

    #@139
    .line 96
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@13b
    goto :goto_2

    #@13c
    .line 103
    .end local v4    # "cmd":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@13e
    const-string/jumbo v7, "Invalid request"

    #@141
    const/4 v8, -0x4

    #@142
    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@145
    .line 51
    return-void

    #@146
    .line 55
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
