.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingState"
.end annotation


# instance fields
.field mScanResultsPending:Z

.field mWifiChangeDetected:Z

.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1553
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@6
    .line 1554
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    #@8
    .line 1555
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    #@a
    .line 1553
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->issueFullScan()V

    #@3
    .line 1558
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@6
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@8
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@b
    .line 1622
    return-void
.end method

.method issueFullScan()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1628
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@6
    .line 1629
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x3

    #@7
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@9
    .line 1630
    const/16 v1, 0x2710

    #@b
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@d
    .line 1631
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@f
    .line 1632
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@11
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@14
    .line 1633
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    #@16
    .line 1626
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1566
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1616
    return v8

    #@8
    .line 1572
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@a
    const/4 v4, 0x0

    #@b
    iput-object v4, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@d
    .line 1573
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@f
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    #@12
    .line 1574
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChange()V

    #@17
    .line 1575
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@19
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@1b
    iget-object v4, v4, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@1d
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    #@20
    .line 1618
    :cond_0
    :goto_0
    :pswitch_1
    return v9

    #@21
    .line 1579
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 1581
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, [Landroid/net/wifi/WifiScanner$ScanData;

    #@2b
    .line 1582
    const/16 v5, 0x1388

    #@2d
    .line 1581
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V

    #@30
    .line 1583
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    #@32
    .line 1584
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@34
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@36
    .line 1585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@39
    move-result-wide v4

    #@3a
    const-wide/16 v6, 0x7530

    #@3c
    add-long/2addr v4, v6

    #@3d
    .line 1586
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@3f
    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@41
    .line 1584
    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@44
    .line 1587
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mScanResultsPending:Z

    #@46
    goto :goto_0

    #@47
    .line 1593
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@49
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@4b
    .line 1594
    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@4d
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@50
    .line 1595
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    #@52
    .line 1596
    iget v1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@54
    iget v4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@56
    mul-int/2addr v1, v4

    #@57
    int-to-long v2, v1

    #@58
    .line 1597
    .local v2, "unchangedDelay":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@5a
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@5c
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@5e
    iget-object v4, v4, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@60
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@63
    .line 1598
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@65
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@67
    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6a
    move-result-wide v4

    #@6b
    add-long/2addr v4, v2

    #@6c
    .line 1600
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@6e
    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@70
    .line 1598
    invoke-virtual {v1, v8, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@73
    goto :goto_0

    #@74
    .line 1604
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .end local v2    # "unchangedDelay":J
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@76
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@78
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@7a
    iget-object v4, v4, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@7c
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7f
    .line 1605
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@81
    iget-object v4, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@83
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v1, [Landroid/net/wifi/ScanResult;

    #@87
    invoke-virtual {v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    #@8a
    .line 1606
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    #@8c
    .line 1607
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->issueFullScan()V

    #@8f
    goto :goto_0

    #@90
    .line 1611
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->mWifiChangeDetected:Z

    #@92
    if-nez v1, :cond_0

    #@94
    .line 1612
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@96
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@98
    iget-object v4, v4, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    #@9a
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    #@9d
    goto :goto_0

    #@9e
    .line 1566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
