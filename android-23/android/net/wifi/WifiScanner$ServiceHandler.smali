.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
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
    .line 933
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 932
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
    .line 937
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 960
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@8
    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap0(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 962
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@e
    .line 964
    return-void

    #@f
    .line 939
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@11
    if-nez v3, :cond_0

    #@13
    .line 940
    invoke-static {}, Landroid/net/wifi/WifiScanner;->-get0()Lcom/android/internal/util/AsyncChannel;

    #@16
    move-result-object v3

    #@17
    const v4, 0x11001

    #@1a
    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@1d
    .line 947
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiScanner;->-get1()Ljava/util/concurrent/CountDownLatch;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@24
    .line 948
    return-void

    #@25
    .line 942
    :cond_0
    const-string/jumbo v3, "WifiScanner"

    #@28
    const-string/jumbo v4, "Failed to set up channel connection"

    #@2b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 945
    invoke-static {v5}, Landroid/net/wifi/WifiScanner;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@31
    goto :goto_0

    #@32
    .line 950
    :pswitch_2
    return-void

    #@33
    .line 952
    :pswitch_3
    const-string/jumbo v3, "WifiScanner"

    #@36
    const-string/jumbo v4, "Channel connection lost"

    #@39
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 955
    invoke-static {v5}, Landroid/net/wifi/WifiScanner;->-set0(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@3f
    .line 956
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    #@46
    .line 957
    return-void

    #@47
    .line 969
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    #@49
    packed-switch v3, :pswitch_data_1

    #@4c
    .line 1013
    :pswitch_4
    return-void

    #@4d
    .line 972
    :pswitch_5
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    #@4f
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    #@52
    .line 936
    :goto_1
    return-void

    #@53
    .line 975
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@57
    .line 976
    .local v2, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    #@59
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    #@5b
    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    #@5d
    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    #@60
    .line 977
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@62
    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap1(I)Ljava/lang/Object;

    #@65
    goto :goto_1

    #@66
    .line 981
    .end local v2    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@68
    .line 982
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6a
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@6c
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    #@6f
    move-result-object v3

    #@70
    .line 981
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@73
    .line 983
    return-void

    #@74
    .line 985
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@76
    check-cast v1, Landroid/net/wifi/ScanResult;

    #@78
    .line 986
    .local v1, "result":Landroid/net/wifi/ScanResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@7a
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    #@7d
    .line 987
    return-void

    #@7e
    .line 989
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@80
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@82
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    #@85
    .line 990
    return-void

    #@86
    .line 992
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    #@88
    .line 993
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8a
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@8c
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@8f
    move-result-object v3

    #@90
    .line 992
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    #@93
    .line 994
    return-void

    #@94
    .line 996
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    #@96
    .line 997
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@98
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@9a
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@9d
    move-result-object v3

    #@9e
    .line 996
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    #@a1
    .line 998
    return-void

    #@a2
    .line 1000
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@a4
    .line 1001
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a6
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@a8
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@ab
    move-result-object v3

    #@ac
    .line 1000
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    #@af
    .line 1002
    return-void

    #@b0
    .line 1004
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@b2
    .line 1005
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b4
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@b6
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@b9
    move-result-object v3

    #@ba
    .line 1004
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    #@bd
    .line 1006
    return-void

    #@be
    .line 1009
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@c0
    invoke-static {v3}, Landroid/net/wifi/WifiScanner;->-wrap1(I)Ljava/lang/Object;

    #@c3
    goto :goto_1

    #@c4
    .line 937
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@d2
    .line 969
    :pswitch_data_1
    .packed-switch 0x27005
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method
