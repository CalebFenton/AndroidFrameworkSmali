.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1230
    iput-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@2
    .line 1231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1230
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1235
    const-string/jumbo v2, "RttManager"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "RTT manager get message: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    iget v4, p1, Landroid/os/Message;->what:I

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1236
    iget v2, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v2, :pswitch_data_0

    #@22
    .line 1248
    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@24
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@26
    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    .line 1249
    .local v1, "listener":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@2c
    .line 1250
    const-string/jumbo v2, "RttManager"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "invalid listener key = "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1251
    return-void

    #@49
    .line 1238
    .end local v1    # "listener":Ljava/lang/Object;
    :pswitch_1
    return-void

    #@4a
    .line 1240
    :pswitch_2
    const-string/jumbo v2, "RttManager"

    #@4d
    const-string/jumbo v3, "Channel connection lost"

    #@50
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1243
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@55
    invoke-static {v2, v5}, Landroid/net/wifi/RttManager;->-set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@58
    .line 1244
    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    #@5f
    .line 1245
    return-void

    #@60
    .line 1253
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "RttManager"

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "listener key = "

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    .line 1256
    iget v2, p1, Landroid/os/Message;->what:I

    #@7e
    packed-switch v2, :pswitch_data_1

    #@81
    .line 1280
    :pswitch_3
    return-void

    #@82
    .line 1259
    :pswitch_4
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    #@85
    .line 1260
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@87
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@89
    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    #@8c
    .line 1234
    .end local v1    # "listener":Ljava/lang/Object;
    :goto_0
    return-void

    #@8d
    .line 1263
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    #@90
    .line 1264
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@92
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@94
    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    #@97
    goto :goto_0

    #@98
    .line 1267
    :pswitch_6
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    #@9a
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    #@9d
    .line 1268
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@9f
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@a1
    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    #@a4
    goto :goto_0

    #@a5
    .line 1271
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a7
    check-cast v0, Landroid/net/wifi/RttManager$ResponderConfig;

    #@a9
    .line 1272
    .local v0, "config":Landroid/net/wifi/RttManager$ResponderConfig;
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    #@ab
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnabled(Landroid/net/wifi/RttManager$ResponderConfig;)V

    #@ae
    goto :goto_0

    #@af
    .line 1275
    .end local v0    # "config":Landroid/net/wifi/RttManager$ResponderConfig;
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v1, Landroid/net/wifi/RttManager$ResponderCallback;

    #@b1
    .end local v1    # "listener":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@b3
    invoke-virtual {v1, v2}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnableFailure(I)V

    #@b6
    .line 1276
    iget-object v2, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    #@b8
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@ba
    invoke-static {v2, v3}, Landroid/net/wifi/RttManager;->-wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    #@bd
    goto :goto_0

    #@be
    .line 1236
    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@c8
    .line 1256
    :pswitch_data_1
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 1291
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    #@3
    .line 1292
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5
    check-cast v0, Landroid/os/Bundle;

    #@7
    .line 1293
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    #@9
    .end local p1    # "listener":Ljava/lang/Object;
    iget v2, p2, Landroid/os/Message;->arg1:I

    #@b
    const-string/jumbo v3, "android.net.wifi.RttManager.Description"

    #@e
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {p1, v2, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    #@15
    .line 1290
    return-void
.end method

.method reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 1285
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    #@3
    .line 1286
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5
    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@7
    .line 1287
    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    #@9
    .end local p1    # "listener":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@b
    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    #@e
    .line 1284
    return-void
.end method
