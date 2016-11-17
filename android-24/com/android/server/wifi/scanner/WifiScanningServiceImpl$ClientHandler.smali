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
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v7, 0x11002

    #@3
    .line 135
    iget v4, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v4, :pswitch_data_0

    #@8
    .line 177
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@a
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    #@c
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 186
    iget v4, p1, Landroid/os/Message;->what:I

    #@11
    const v5, 0x27004

    #@14
    if-ne v4, v5, :cond_3

    #@16
    .line 187
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@18
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@23
    .line 188
    return-void

    #@24
    .line 137
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@26
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@29
    move-result-object v4

    #@2a
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2c
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@32
    .line 138
    .local v2, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v2, :cond_0

    #@34
    .line 139
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "duplicate client connection: "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    iget v6, p1, Landroid/os/Message;->sendingUid:I

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@4f
    .line 140
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@52
    move-result-object v4

    #@53
    .line 141
    const/4 v5, 0x3

    #@54
    .line 140
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@57
    .line 142
    return-void

    #@58
    .line 145
    :cond_0
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@5a
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@5d
    .line 146
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5f
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    #@62
    move-result-object v4

    #@63
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@65
    invoke-virtual {v0, v4, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@68
    .line 148
    new-instance v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@6a
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@6c
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    #@6e
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@70
    invoke-direct {v2, v4, v5, v6, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    #@73
    .line 149
    .restart local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->register()V

    #@76
    .line 152
    const/4 v4, 0x0

    #@77
    .line 151
    invoke-virtual {v0, p1, v7, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@7a
    .line 155
    return-void

    #@7b
    .line 158
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@7d
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@80
    move-result-object v4

    #@81
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@83
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@89
    .line 159
    .restart local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v2, :cond_1

    #@8b
    .line 160
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@92
    .line 162
    :cond_1
    return-void

    #@93
    .line 165
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@95
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@98
    move-result-object v4

    #@99
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9b
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    move-result-object v2

    #@9f
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    #@a1
    .line 166
    .restart local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v2, :cond_2

    #@a3
    .line 170
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->cleanup()V

    #@a6
    .line 172
    :cond_2
    return-void

    #@a7
    .line 178
    .end local v2    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :catch_0
    move-exception v3

    #@a8
    .line 179
    .local v3, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@aa
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v6, "failed to authorize app: "

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@c1
    .line 180
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@c3
    const-string/jumbo v5, "Not authorized"

    #@c6
    const/4 v6, -0x4

    #@c7
    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@ca
    .line 181
    return-void

    #@cb
    .line 191
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@cd
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@d0
    move-result-object v4

    #@d1
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@d3
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    move-result-object v1

    #@d7
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@d9
    .line 192
    .local v1, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    if-nez v1, :cond_4

    #@db
    .line 193
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@dd
    new-instance v5, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v6, "Could not find client info for message "

    #@e5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@eb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v5

    #@f3
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@f6
    .line 194
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@f8
    const-string/jumbo v5, "Could not find listener"

    #@fb
    const/4 v6, -0x2

    #@fc
    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@ff
    .line 195
    return-void

    #@100
    .line 198
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    #@102
    packed-switch v4, :pswitch_data_1

    #@105
    .line 219
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@107
    const-string/jumbo v5, "Invalid request"

    #@10a
    const/4 v6, -0x3

    #@10b
    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@10e
    .line 134
    :goto_0
    return-void

    #@10f
    .line 203
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@111
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@114
    move-result-object v4

    #@115
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@118
    move-result-object v5

    #@119
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@11c
    goto :goto_0

    #@11d
    .line 207
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@11f
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@122
    move-result-object v4

    #@123
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@12a
    goto :goto_0

    #@12b
    .line 211
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@12d
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@130
    move-result-object v4

    #@131
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(Landroid/os/Message;)V

    #@138
    goto :goto_0

    #@139
    .line 216
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@13b
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get15(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@13e
    move-result-object v4

    #@13f
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@142
    move-result-object v5

    #@143
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(Landroid/os/Message;)V

    #@146
    goto :goto_0

    #@147
    .line 135
    nop

    #@148
    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@154
    .line 198
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
    .end packed-switch
.end method
