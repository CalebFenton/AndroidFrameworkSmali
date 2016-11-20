.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v6, 0x11002

    #@3
    const/4 v5, 0x3

    #@4
    const/4 v4, 0x0

    #@5
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 178
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@c
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    #@e
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    #@13
    const v1, 0x27004

    #@16
    if-ne v0, v1, :cond_3

    #@18
    .line 188
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1a
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@25
    .line 189
    return-void

    #@26
    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@28
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v8

    #@32
    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@34
    .line 138
    .local v8, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_0

    #@36
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "duplicate client connection: "

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget v3, p1, Landroid/os/Message;->sendingUid:I

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v3, ", messenger="

    #@4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 140
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@53
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@5e
    .line 141
    invoke-static {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@65
    .line 143
    return-void

    #@66
    .line 146
    :cond_0
    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    #@68
    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@6b
    .line 147
    .local v7, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@6d
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    #@70
    move-result-object v0

    #@71
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@73
    invoke-virtual {v7, v0, p0, v1}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@76
    .line 149
    new-instance v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@78
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@7a
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    #@7c
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@7e
    invoke-direct {v8, v0, v1, v3, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    #@81
    .line 150
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    invoke-virtual {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->register()V

    #@84
    .line 153
    const/4 v0, 0x0

    #@85
    .line 152
    invoke-virtual {v7, p1, v6, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@88
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@8a
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v3, "client connected: "

    #@92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@a1
    .line 156
    return-void

    #@a2
    .line 159
    .end local v7    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@a4
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@a7
    move-result-object v0

    #@a8
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@aa
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v8

    #@ae
    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@b0
    .line 160
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_1

    #@b2
    .line 161
    invoke-static {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@b5
    move-result-object v0

    #@b6
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@b9
    .line 163
    :cond_1
    return-void

    #@ba
    .line 166
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@bc
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@bf
    move-result-object v0

    #@c0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@c2
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    move-result-object v8

    #@c6
    check-cast v8, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@c8
    .line 167
    .restart local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v8, :cond_2

    #@ca
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@cc
    const/4 v1, 0x2

    #@cd
    if-eq v0, v1, :cond_2

    #@cf
    .line 168
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@d1
    if-eq v0, v5, :cond_2

    #@d3
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@d5
    new-instance v1, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v3, "client disconnected: "

    #@dd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v1

    #@e5
    const-string/jumbo v3, ", reason: "

    #@e8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@ee
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@f9
    .line 171
    invoke-virtual {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->cleanup()V

    #@fc
    .line 173
    :cond_2
    return-void

    #@fd
    .line 179
    .end local v8    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :catch_0
    move-exception v9

    #@fe
    .line 180
    .local v9, "e":Ljava/lang/SecurityException;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@100
    new-instance v1, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v3, "failed to authorize app: "

    #@108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@117
    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@119
    const-string/jumbo v1, "Not authorized"

    #@11c
    const/4 v3, -0x4

    #@11d
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@120
    .line 182
    return-void

    #@121
    .line 192
    .end local v9    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@123
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@126
    move-result-object v0

    #@127
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@129
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    move-result-object v2

    #@12d
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@12f
    .line 193
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    if-nez v2, :cond_4

    #@131
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@133
    new-instance v1, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v3, "Could not find client info for message "

    #@13b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v1

    #@145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v1

    #@149
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@14c
    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@14e
    const-string/jumbo v1, "Could not find listener"

    #@151
    const/4 v3, -0x2

    #@152
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@155
    .line 196
    return-void

    #@156
    .line 199
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    #@158
    packed-switch v0, :pswitch_data_1

    #@15b
    .line 229
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@15d
    const-string/jumbo v1, "Invalid request"

    #@160
    const/4 v3, -0x3

    #@161
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@164
    .line 134
    :goto_0
    return-void

    #@165
    .line 204
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@167
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@16a
    move-result-object v0

    #@16b
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@16e
    move-result-object v1

    #@16f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@172
    goto :goto_0

    #@173
    .line 208
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@175
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@178
    move-result-object v0

    #@179
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@17c
    move-result-object v1

    #@17d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@180
    goto :goto_0

    #@181
    .line 212
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@183
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get15(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@186
    move-result-object v0

    #@187
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@18e
    goto :goto_0

    #@18f
    .line 217
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@191
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@194
    move-result-object v0

    #@195
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@198
    move-result-object v1

    #@199
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(Landroid/os/Message;)V

    #@19c
    goto :goto_0

    #@19d
    .line 220
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@19f
    const-string/jumbo v1, "registerScanListener"

    #@1a2
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@1a4
    move-object v5, v4

    #@1a5
    move-object v6, v4

    #@1a6
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@1a9
    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1ab
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@1ae
    move-result-object v0

    #@1af
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@1b1
    invoke-virtual {v0, v2, v1, v4, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@1b4
    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1b6
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@1b9
    goto :goto_0

    #@1ba
    .line 225
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1bc
    const-string/jumbo v1, "deregisterScanListener"

    #@1bf
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@1c1
    move-object v5, v4

    #@1c2
    move-object v6, v4

    #@1c3
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@1c6
    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1c8
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@1cb
    move-result-object v0

    #@1cc
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@1ce
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@1d1
    goto :goto_0

    #@1d2
    .line 135
    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@1de
    .line 199
    :pswitch_data_1
    .packed-switch 0x27002
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
