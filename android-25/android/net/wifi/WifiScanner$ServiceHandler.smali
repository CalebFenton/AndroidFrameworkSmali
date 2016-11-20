.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiScanner;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1352
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    #@2
    .line 1353
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1352
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
    .line 1357
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 1369
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    #@8
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@a
    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 1371
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@10
    .line 1373
    return-void

    #@11
    .line 1359
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    return-void

    #@12
    .line 1361
    :pswitch_2
    const-string/jumbo v3, "WifiScanner"

    #@15
    const-string/jumbo v4, "Channel connection lost"

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1364
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    #@1d
    invoke-static {v3, v5}, Landroid/net/wifi/WifiScanner;->-set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@20
    .line 1365
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    #@27
    .line 1366
    return-void

    #@28
    .line 1378
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    #@2a
    packed-switch v3, :pswitch_data_1

    #@2d
    .line 1426
    :pswitch_3
    return-void

    #@2e
    .line 1381
    :pswitch_4
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    #@30
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    #@33
    .line 1356
    :goto_0
    return-void

    #@34
    .line 1384
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@38
    .line 1385
    .local v2, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    #@3a
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    #@3c
    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    #@3e
    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    #@41
    .line 1386
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    #@43
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@45
    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    #@48
    goto :goto_0

    #@49
    .line 1390
    .end local v2    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@4b
    .line 1391
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@4f
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    #@52
    move-result-object v3

    #@53
    .line 1390
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@56
    .line 1392
    return-void

    #@57
    .line 1394
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59
    check-cast v1, Landroid/net/wifi/ScanResult;

    #@5b
    .line 1395
    .local v1, "result":Landroid/net/wifi/ScanResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@5d
    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    #@60
    .line 1396
    return-void

    #@61
    .line 1398
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    #@63
    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@65
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    #@68
    .line 1399
    return-void

    #@69
    .line 1401
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    #@6b
    .line 1402
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@6f
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@72
    move-result-object v3

    #@73
    .line 1401
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    #@76
    .line 1403
    return-void

    #@77
    .line 1405
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    #@79
    .line 1406
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7b
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@7d
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@80
    move-result-object v3

    #@81
    .line 1405
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    #@84
    .line 1407
    return-void

    #@85
    .line 1409
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@87
    .line 1410
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@89
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@8b
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@8e
    move-result-object v3

    #@8f
    .line 1409
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    #@92
    .line 1411
    return-void

    #@93
    .line 1413
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    #@95
    .line 1414
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@97
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@99
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@9c
    move-result-object v3

    #@9d
    .line 1413
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    #@a0
    .line 1415
    return-void

    #@a1
    .line 1418
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    #@a3
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@a5
    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    #@a8
    goto :goto_0

    #@a9
    .line 1421
    :pswitch_e
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    #@ab
    .line 1422
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ad
    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@af
    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    #@b2
    move-result-object v3

    #@b3
    .line 1421
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    #@b6
    .line 1423
    return-void

    #@b7
    .line 1357
    nop

    #@b8
    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@c2
    .line 1378
    :pswitch_data_1
    .packed-switch 0x27005
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_e
    .end packed-switch
.end method
