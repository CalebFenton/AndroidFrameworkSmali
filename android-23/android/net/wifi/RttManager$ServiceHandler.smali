.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1035
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 1034
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1039
    const-string/jumbo v1, "RttManager"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "RTT manager get message: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget v3, p1, Landroid/os/Message;->what:I

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1040
    iget v1, p1, Landroid/os/Message;->what:I

    #@1f
    packed-switch v1, :pswitch_data_0

    #@22
    .line 1063
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@24
    invoke-static {v1}, Landroid/net/wifi/RttManager;->-wrap0(I)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .line 1064
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@2a
    .line 1065
    const-string/jumbo v1, "RttManager"

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "invalid listener key = "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 1066
    return-void

    #@47
    .line 1042
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@49
    if-nez v1, :cond_0

    #@4b
    .line 1043
    invoke-static {}, Landroid/net/wifi/RttManager;->-get0()Lcom/android/internal/util/AsyncChannel;

    #@4e
    move-result-object v1

    #@4f
    const v2, 0x11001

    #@52
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@55
    .line 1050
    :goto_0
    invoke-static {}, Landroid/net/wifi/RttManager;->-get1()Ljava/util/concurrent/CountDownLatch;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5c
    .line 1051
    return-void

    #@5d
    .line 1045
    :cond_0
    const-string/jumbo v1, "RttManager"

    #@60
    const-string/jumbo v2, "Failed to set up channel connection"

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 1048
    invoke-static {v4}, Landroid/net/wifi/RttManager;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@69
    goto :goto_0

    #@6a
    .line 1053
    :pswitch_2
    return-void

    #@6b
    .line 1055
    :pswitch_3
    const-string/jumbo v1, "RttManager"

    #@6e
    const-string/jumbo v2, "Channel connection lost"

    #@71
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 1058
    invoke-static {v4}, Landroid/net/wifi/RttManager;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@77
    .line 1059
    invoke-virtual {p0}, Landroid/net/wifi/RttManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    #@7e
    .line 1060
    return-void

    #@7f
    .line 1068
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "RttManager"

    #@82
    new-instance v2, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v3, "listener key = "

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 1071
    iget v1, p1, Landroid/os/Message;->what:I

    #@9d
    packed-switch v1, :pswitch_data_1

    #@a0
    .line 1086
    const-string/jumbo v1, "RttManager"

    #@a3
    new-instance v2, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v3, "Ignoring message "

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    iget v3, p1, Landroid/os/Message;->what:I

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 1087
    return-void

    #@bd
    .line 1074
    :pswitch_4
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    #@c0
    .line 1075
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@c2
    invoke-static {v1}, Landroid/net/wifi/RttManager;->-wrap1(I)Ljava/lang/Object;

    #@c5
    .line 1038
    .end local v0    # "listener":Ljava/lang/Object;
    :goto_1
    return-void

    #@c6
    .line 1078
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    #@c9
    .line 1079
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@cb
    invoke-static {v1}, Landroid/net/wifi/RttManager;->-wrap1(I)Ljava/lang/Object;

    #@ce
    goto :goto_1

    #@cf
    .line 1082
    :pswitch_6
    check-cast v0, Landroid/net/wifi/RttManager$RttListener;

    #@d1
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    #@d4
    .line 1083
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@d6
    invoke-static {v1}, Landroid/net/wifi/RttManager;->-wrap1(I)Ljava/lang/Object;

    #@d9
    goto :goto_1

    #@da
    .line 1040
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@e8
    .line 1071
    :pswitch_data_1
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_6
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
    .line 1098
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    #@3
    .line 1099
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5
    check-cast v0, Landroid/os/Bundle;

    #@7
    .line 1100
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
    .line 1097
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
    .line 1092
    check-cast v1, Landroid/net/wifi/RttManager$RttListener;

    #@3
    .line 1093
    .local v1, "rttListener":Landroid/net/wifi/RttManager$RttListener;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5
    check-cast v0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    #@7
    .line 1094
    .local v0, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    #@9
    .end local p1    # "listener":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    #@b
    invoke-interface {p1, v2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    #@e
    .line 1091
    return-void
.end method
