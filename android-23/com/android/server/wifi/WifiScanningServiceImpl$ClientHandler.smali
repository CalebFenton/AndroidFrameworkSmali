.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@2
    .line 127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 135
    iget v7, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v7, :pswitch_data_0

    #@6
    .line 165
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@8
    iget v8, p1, Landroid/os/Message;->sendingUid:I

    #@a
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 172
    iget v7, p1, Landroid/os/Message;->what:I

    #@f
    const v8, 0x27004

    #@12
    if-ne v7, v8, :cond_3

    #@14
    .line 173
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@16
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@19
    move-result-object v6

    #@1a
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    #@21
    .line 174
    return-void

    #@22
    .line 138
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@24
    if-eqz v6, :cond_0

    #@26
    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "Client connection failure, error="

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@3f
    .line 141
    :cond_0
    return-void

    #@40
    .line 143
    :pswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@42
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@45
    .line 144
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@47
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    #@4a
    move-result-object v6

    #@4b
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4d
    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@50
    .line 146
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@52
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@54
    iget v7, p1, Landroid/os/Message;->sendingUid:I

    #@56
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@58
    invoke-direct {v1, v6, v7, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    #@5b
    .line 147
    .local v1, "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@5d
    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@5f
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@61
    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    .line 148
    return-void

    #@65
    .line 150
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v1    # "cInfo":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@67
    const/4 v7, 0x2

    #@68
    if-ne v6, v7, :cond_1

    #@6a
    .line 151
    const-string/jumbo v6, "Send failed, client connection lost"

    #@6d
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@70
    .line 156
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@72
    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@74
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@76
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v2

    #@7a
    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@7c
    .line 157
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-eqz v2, :cond_2

    #@7e
    .line 159
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    #@81
    .line 161
    :cond_2
    return-void

    #@82
    .line 166
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :catch_0
    move-exception v4

    #@83
    .line 167
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v7, "failed to authorize app: "

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@9a
    .line 168
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@9c
    const-string/jumbo v7, "Not authorized"

    #@9f
    const/4 v8, -0x4

    #@a0
    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@a3
    .line 169
    return-void

    #@a4
    .line 176
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@a6
    iget-object v7, v7, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@a8
    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@aa
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v2

    #@ae
    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@b0
    .line 177
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    if-nez v2, :cond_4

    #@b2
    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v7, "Could not find client info for message "

    #@ba
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v6

    #@c8
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@cb
    .line 179
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@cd
    const-string/jumbo v7, "Could not find listener"

    #@d0
    const/4 v8, -0x2

    #@d1
    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@d4
    .line 180
    return-void

    #@d5
    .line 183
    :cond_4
    const/16 v7, 0xa

    #@d7
    new-array v5, v7, [I

    #@d9
    .local v5, "validCommands":[I
    fill-array-data v5, :array_0

    #@dc
    .line 195
    array-length v7, v5

    #@dd
    :goto_0
    if-ge v6, v7, :cond_6

    #@df
    aget v3, v5, v6

    #@e1
    .line 196
    .local v3, "cmd":I
    iget v8, p1, Landroid/os/Message;->what:I

    #@e3
    if-ne v3, v8, :cond_5

    #@e5
    .line 197
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@e7
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@ea
    move-result-object v6

    #@eb
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@ee
    move-result-object v7

    #@ef
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(Landroid/os/Message;)V

    #@f2
    .line 198
    return-void

    #@f3
    .line 195
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@f5
    goto :goto_0

    #@f6
    .line 202
    .end local v3    # "cmd":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@f8
    const-string/jumbo v7, "Invalid request"

    #@fb
    const/4 v8, -0x3

    #@fc
    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@ff
    .line 131
    return-void

    #@100
    .line 135
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@10e
    .line 183
    :array_0
    .array-data 4
        0x27000
        0x27002
        0x27003
        0x27015
        0x27016
        0x27006
        0x27007
        0x2700d
        0x2700b
        0x2700c
    .end array-data
.end method
