.class Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 165
    return-void
.end method

.method private replyFailed(Landroid/os/Message;II)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "why"    # I

    #@0
    .prologue
    .line 260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 261
    .local v1, "reply":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    #@6
    .line 262
    iput p3, v1, Landroid/os/Message;->arg1:I

    #@8
    .line 264
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@a
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 259
    :goto_0
    return-void

    #@e
    .line 265
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v8, 0x25001

    #@3
    const/16 v7, 0x8

    #@5
    .line 171
    iget v3, p1, Landroid/os/Message;->what:I

    #@7
    sparse-switch v3, :sswitch_data_0

    #@a
    .line 253
    const-string/jumbo v3, "WifiService"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "ClientHandler.handleMessage ignoring msg="

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 170
    :goto_0
    return-void

    #@25
    .line 173
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@27
    if-nez v3, :cond_0

    #@29
    .line 174
    const-string/jumbo v3, "WifiService"

    #@2c
    const-string/jumbo v4, "New client listening to asynchronous messages"

    #@2f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 177
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@34
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@3a
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    #@3d
    goto :goto_0

    #@3e
    .line 179
    :cond_0
    const-string/jumbo v3, "WifiService"

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "Client connection failure, error="

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    goto :goto_0

    #@5b
    .line 184
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@5d
    const/4 v4, 0x2

    #@5e
    if-ne v3, v4, :cond_1

    #@60
    .line 185
    const-string/jumbo v3, "WifiService"

    #@63
    const-string/jumbo v4, "Send failed, client connection lost"

    #@66
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 189
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@6b
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    #@6e
    move-result-object v3

    #@6f
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@71
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    #@74
    goto :goto_0

    #@75
    .line 187
    :cond_1
    const-string/jumbo v3, "WifiService"

    #@78
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v5, "Client connection lost with reason: "

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    goto :goto_1

    #@92
    .line 193
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@94
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@97
    .line 194
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@99
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    #@9c
    move-result-object v3

    #@9d
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9f
    invoke-virtual {v0, v3, p0, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@a2
    goto :goto_0

    #@a3
    .line 200
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a5
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@a7
    .line 201
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@a9
    .line 202
    .local v2, "networkId":I
    iget v3, p1, Landroid/os/Message;->what:I

    #@ab
    const v4, 0x25007

    #@ae
    if-ne v3, v4, :cond_2

    #@b0
    .line 203
    const-string/jumbo v3, "WiFiServiceImpl "

    #@b3
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v5, "SAVE nid="

    #@bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    .line 205
    const-string/jumbo v5, " uid="

    #@ca
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    .line 205
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    #@d0
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 206
    const-string/jumbo v5, " name="

    #@d7
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 207
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@dd
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    #@e0
    move-result-object v5

    #@e1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e4
    move-result-object v5

    #@e5
    iget v6, p1, Landroid/os/Message;->sendingUid:I

    #@e7
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v4

    #@f3
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 209
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    #@f8
    if-ne v3, v8, :cond_3

    #@fa
    .line 210
    const-string/jumbo v3, "WiFiServiceImpl "

    #@fd
    new-instance v4, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v5, "CONNECT  nid="

    #@105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v4

    #@109
    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10c
    move-result-object v5

    #@10d
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v4

    #@111
    .line 212
    const-string/jumbo v5, " uid="

    #@114
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v4

    #@118
    .line 212
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    #@11a
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    .line 213
    const-string/jumbo v5, " name="

    #@121
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v4

    #@125
    .line 214
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@127
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12e
    move-result-object v5

    #@12f
    iget v6, p1, Landroid/os/Message;->sendingUid:I

    #@131
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@134
    move-result-object v5

    #@135
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v4

    #@139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v4

    #@13d
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    .line 217
    :cond_3
    if-eqz v1, :cond_4

    #@142
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@145
    move-result v3

    #@146
    if-eqz v3, :cond_4

    #@148
    .line 218
    const-string/jumbo v3, "WifiService"

    #@14b
    new-instance v4, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v5, "Connect with config"

    #@153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v4

    #@157
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v4

    #@15b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v4

    #@15f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@162
    .line 219
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@164
    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@166
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@169
    move-result-object v4

    #@16a
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@16d
    goto/16 :goto_0

    #@16f
    .line 220
    :cond_4
    if-nez v1, :cond_5

    #@171
    .line 221
    const/4 v3, -0x1

    #@172
    if-eq v2, v3, :cond_5

    #@174
    .line 222
    const-string/jumbo v3, "WifiService"

    #@177
    new-instance v4, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v5, "Connect with networkId"

    #@17f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v4

    #@183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v4

    #@187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v4

    #@18b
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18e
    .line 223
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@190
    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@192
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@195
    move-result-object v4

    #@196
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@199
    goto/16 :goto_0

    #@19b
    .line 225
    :cond_5
    const-string/jumbo v3, "WifiService"

    #@19e
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a3
    const-string/jumbo v5, "ClientHandler.handleMessage ignoring invalid msg="

    #@1a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v4

    #@1aa
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v4

    #@1ae
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v4

    #@1b2
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b5
    .line 226
    iget v3, p1, Landroid/os/Message;->what:I

    #@1b7
    if-ne v3, v8, :cond_6

    #@1b9
    .line 227
    const v3, 0x25002

    #@1bc
    invoke-direct {p0, p1, v3, v7}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    #@1bf
    goto/16 :goto_0

    #@1c1
    .line 230
    :cond_6
    const v3, 0x25008

    #@1c4
    invoke-direct {p0, p1, v3, v7}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    #@1c7
    goto/16 :goto_0

    #@1c9
    .line 237
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networkId":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1cb
    iget v4, p1, Landroid/os/Message;->sendingUid:I

    #@1cd
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl;I)Z

    #@1d0
    move-result v3

    #@1d1
    if-eqz v3, :cond_7

    #@1d3
    .line 238
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1d5
    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1d7
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1da
    move-result-object v4

    #@1db
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@1de
    goto/16 :goto_0

    #@1e0
    .line 240
    :cond_7
    const-string/jumbo v3, "WifiService"

    #@1e3
    const-string/jumbo v4, "Forget is not authorized for user"

    #@1e6
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e9
    .line 241
    const v3, 0x25005

    #@1ec
    .line 242
    const/16 v4, 0x9

    #@1ee
    .line 241
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    #@1f1
    goto/16 :goto_0

    #@1f3
    .line 249
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1f5
    iget-object v3, v3, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1f7
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1fa
    move-result-object v4

    #@1fb
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    #@1fe
    goto/16 :goto_0

    #@200
    .line 171
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_4
        0x25007 -> :sswitch_3
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_5
        0x25011 -> :sswitch_5
        0x25014 -> :sswitch_5
    .end sparse-switch
.end method
