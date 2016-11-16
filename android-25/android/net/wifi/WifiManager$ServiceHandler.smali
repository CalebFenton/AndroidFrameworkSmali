.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1853
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@2
    .line 1854
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1853
    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1865
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@4
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@6
    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->-wrap0(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1866
    .local v1, "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    #@c
    sparse-switch v3, :sswitch_data_0

    #@f
    .line 1864
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    #@10
    .line 1868
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@12
    if-nez v3, :cond_1

    #@14
    .line 1869
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@16
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get1(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    #@19
    move-result-object v3

    #@1a
    const v4, 0x11001

    #@1d
    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@20
    .line 1876
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@22
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get2(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@29
    goto :goto_0

    #@2a
    .line 1871
    :cond_1
    const-string/jumbo v3, "WifiManager"

    #@2d
    const-string/jumbo v4, "Failed to set up channel connection"

    #@30
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1874
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@35
    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@38
    goto :goto_1

    #@39
    .line 1882
    :sswitch_2
    const-string/jumbo v3, "WifiManager"

    #@3c
    const-string/jumbo v4, "Channel connection lost"

    #@3f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1885
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@44
    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->-set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@47
    .line 1886
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    #@4e
    goto :goto_0

    #@4f
    .line 1893
    :sswitch_3
    if-eqz v1, :cond_0

    #@51
    .line 1894
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    #@53
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@55
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    #@58
    goto :goto_0

    #@59
    .line 1902
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    #@5b
    .line 1903
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    #@5d
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    #@60
    goto :goto_0

    #@61
    .line 1907
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    #@63
    .line 1908
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    check-cast v2, Landroid/net/wifi/WpsResult;

    #@67
    .local v2, "result":Landroid/net/wifi/WpsResult;
    move-object v3, v1

    #@68
    .line 1909
    check-cast v3, Landroid/net/wifi/WifiManager$WpsCallback;

    #@6a
    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@6c
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$WpsCallback;->onStarted(Ljava/lang/String;)V

    #@6f
    .line 1911
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@71
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get4(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    monitor-enter v4

    #@76
    .line 1912
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #@78
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->-get3(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    #@7b
    move-result-object v3

    #@7c
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@7e
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    monitor-exit v4

    #@82
    goto :goto_0

    #@83
    .line 1911
    :catchall_0
    move-exception v3

    #@84
    monitor-exit v4

    #@85
    throw v3

    #@86
    .line 1917
    .end local v2    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    #@88
    .line 1918
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@8a
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    #@8d
    goto :goto_0

    #@8e
    .line 1922
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    #@90
    .line 1923
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@92
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@94
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    #@97
    goto/16 :goto_0

    #@99
    .line 1927
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    #@9b
    .line 1928
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@9d
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WpsCallback;->onSucceeded()V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1932
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    #@a4
    .line 1933
    check-cast v1, Landroid/net/wifi/WifiManager$WpsCallback;

    #@a6
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@a8
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$WpsCallback;->onFailed(I)V

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1937
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_a
    if-eqz v1, :cond_0

    #@af
    .line 1938
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b1
    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    #@b3
    .line 1939
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_2

    #@b5
    .line 1940
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@b7
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    #@b9
    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    #@bb
    add-int/2addr v3, v4

    #@bc
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    #@bf
    goto/16 :goto_0

    #@c1
    .line 1942
    .restart local v1    # "listener":Ljava/lang/Object;
    :cond_2
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@c3
    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1946
    .end local v0    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1    # "listener":Ljava/lang/Object;
    :sswitch_b
    if-eqz v1, :cond_0

    #@ca
    .line 1947
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    #@cc
    .end local v1    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@ce
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1866
    nop

    #@d4
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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1859
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get5()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    monitor-enter v0

    #@5
    .line 1860
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 1858
    return-void

    #@a
    .line 1859
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method
