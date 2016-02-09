.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
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
    .line 1886
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 1885
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1891
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@4
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-wrap0(I)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 1892
    .local v1, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    #@a
    sparse-switch v3, :sswitch_data_0

    #@d
    .line 1890
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    #@e
    .line 1894
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@10
    if-nez v3, :cond_1

    #@12
    .line 1895
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get1()Lcom/android/internal/util/AsyncChannel;

    #@15
    move-result-object v3

    #@16
    const v4, 0x11001

    #@19
    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@1c
    .line 1902
    :goto_1
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get3()Ljava/util/concurrent/CountDownLatch;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@23
    goto :goto_0

    #@24
    .line 1897
    :cond_1
    const-string/jumbo v3, "WifiManager"

    #@27
    const-string/jumbo v4, "Failed to set up channel connection"

    #@2a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1900
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->-set1(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@30
    goto :goto_1

    #@31
    .line 1908
    :sswitch_2
    const-string/jumbo v3, "WifiManager"

    #@34
    const-string/jumbo v4, "Channel connection lost"

    #@37
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1911
    invoke-static {v5}, Landroid/net/wifi/WifiManager;->-set1(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@3d
    .line 1912
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    #@44
    goto :goto_0

    #@45
    .line 1919
    :sswitch_3
    if-eqz v1, :cond_0

    #@47
    .line 1920
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    #@49
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@4b
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 1928
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    #@51
    .line 1929
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    #@53
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    #@56
    goto :goto_0

    #@57
    .line 1933
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    #@59
    .line 1934
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v2, Landroid/net/wifi/WpsResult;

    #@5d
    .local v2, "result":Landroid/net/wifi/WpsResult;
    move-object v3, v1

    #@5e
    .line 1935
    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    #@60
    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@62
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    #@65
    .line 1937
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get5()Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    monitor-enter v4

    #@6a
    .line 1938
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get4()Landroid/util/SparseArray;

    #@6d
    move-result-object v3

    #@6e
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@70
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    monitor-exit v4

    #@74
    goto :goto_0

    #@75
    .line 1937
    :catchall_0
    move-exception v3

    #@76
    monitor-exit v4

    #@77
    throw v3

    #@78
    .line 1943
    .end local v2    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    #@7a
    .line 1944
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@7c
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    #@7f
    goto :goto_0

    #@80
    .line 1948
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    #@82
    .line 1949
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@84
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@86
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    #@89
    goto :goto_0

    #@8a
    .line 1953
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    #@8c
    .line 1954
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@8e
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    #@91
    goto/16 :goto_0

    #@93
    .line 1958
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    #@95
    .line 1959
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@97
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@99
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    #@9c
    goto/16 :goto_0

    #@9e
    .line 1963
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_a
    if-eqz v1, :cond_0

    #@a0
    .line 1964
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a2
    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    #@a4
    .line 1965
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_2

    #@a6
    .line 1966
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@a8
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    #@aa
    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    #@ac
    add-int/2addr v3, v4

    #@ad
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 1968
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_2
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@b4
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v4}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1972
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b
    if-eqz v1, :cond_0

    #@bb
    .line 1973
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@bd
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@bf
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 1892
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_9
        0x25010 -> :sswitch_8
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_a
        0x25016 -> :sswitch_b
    .end sparse-switch
.end method
