.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@0
    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 930
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 936
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@3
    .line 937
    const-string/jumbo v1, "Scan was interrupted"

    #@6
    .line 936
    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    #@9
    .line 938
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@b
    .line 939
    const-string/jumbo v1, "Scan was interrupted"

    #@e
    .line 938
    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    #@11
    .line 940
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@13
    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->cleanup()V

    #@1c
    .line 935
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, -0x3

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 945
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@5
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@7
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@a
    move-result-object v4

    #@b
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@d
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@13
    .line 947
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    #@15
    sparse-switch v4, :sswitch_data_0

    #@18
    .line 1007
    return v6

    #@19
    .line 949
    :sswitch_0
    return v6

    #@1a
    .line 951
    :sswitch_1
    return v6

    #@1b
    .line 953
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@1d
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1f
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementBackgroundScanCount()V

    #@26
    .line 954
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/os/Bundle;

    #@2a
    .line 955
    .local v1, "scanParams":Landroid/os/Bundle;
    if-nez v1, :cond_0

    #@2c
    .line 956
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@2e
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@30
    const-string/jumbo v5, "params null"

    #@33
    invoke-virtual {v4, p1, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@36
    .line 957
    return v7

    #@37
    .line 959
    :cond_0
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->setDefusable(Z)V

    #@3a
    .line 961
    const-string/jumbo v4, "ScanSettings"

    #@3d
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@43
    .line 963
    .local v2, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const-string/jumbo v4, "WorkSource"

    #@46
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Landroid/os/WorkSource;

    #@4c
    .line 964
    .local v3, "workSource":Landroid/os/WorkSource;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@4e
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@50
    invoke-static {v4, v0, v5, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_1

    #@56
    .line 965
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@58
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5a
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@5d
    .line 1010
    .end local v1    # "scanParams":Landroid/os/Bundle;
    .end local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "workSource":Landroid/os/WorkSource;
    :goto_0
    return v7

    #@5e
    .line 967
    .restart local v1    # "scanParams":Landroid/os/Bundle;
    .restart local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v3    # "workSource":Landroid/os/WorkSource;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@60
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@62
    const-string/jumbo v5, "bad request"

    #@65
    invoke-virtual {v4, p1, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 972
    .end local v1    # "scanParams":Landroid/os/Bundle;
    .end local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "workSource":Landroid/os/WorkSource;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@6b
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@6d
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    #@70
    goto :goto_0

    #@71
    .line 975
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@73
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@75
    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@77
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    #@82
    .line 976
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@84
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@86
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@89
    goto :goto_0

    #@8a
    .line 979
    :sswitch_5
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@8c
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@8e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v4, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@92
    invoke-static {v5, v0, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V

    #@95
    .line 980
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@97
    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@99
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@9c
    goto :goto_0

    #@9d
    .line 983
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@9f
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@a1
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    #@a4
    goto :goto_0

    #@a5
    .line 986
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@a7
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@a9
    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@ab
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v5, v7}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    #@b2
    move-result-object v5

    #@b3
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    #@b6
    goto :goto_0

    #@b7
    .line 989
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@b9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bb
    check-cast v4, Landroid/net/wifi/ScanResult;

    #@bd
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@bf
    invoke-static {v5, v4, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/net/wifi/ScanResult;I)V

    #@c2
    goto :goto_0

    #@c3
    .line 992
    :sswitch_9
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@c5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v4, [Landroid/net/wifi/ScanResult;

    #@c9
    const v6, 0x27009

    #@cc
    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;I[Landroid/net/wifi/ScanResult;)V

    #@cf
    goto :goto_0

    #@d0
    .line 995
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@d2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d4
    check-cast v4, [Landroid/net/wifi/ScanResult;

    #@d6
    const v6, 0x2700a

    #@d9
    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;I[Landroid/net/wifi/ScanResult;)V

    #@dc
    goto :goto_0

    #@dd
    .line 998
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@df
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e1
    check-cast v4, [Landroid/net/wifi/WifiScanner$ScanData;

    #@e3
    invoke-static {v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    #@e6
    .line 999
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@e8
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@ea
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@ed
    move-result-object v5

    #@ee
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/internal/util/IState;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 1002
    :sswitch_c
    const-string/jumbo v4, "WifiScanningService"

    #@f6
    const-string/jumbo v5, "WifiScanner background scan gave CMD_SCAN_FAILED"

    #@f9
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 1003
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@fe
    .line 1004
    const-string/jumbo v5, "Background Scan failed"

    #@101
    const/4 v6, -0x1

    #@102
    .line 1003
    invoke-static {v4, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 947
    nop

    #@108
    :sswitch_data_0
    .sparse-switch
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_3
        0x27004 -> :sswitch_4
        0x27006 -> :sswitch_5
        0x27007 -> :sswitch_6
        0x27100 -> :sswitch_7
        0x27101 -> :sswitch_8
        0x27102 -> :sswitch_9
        0x27103 -> :sswitch_a
        0x27106 -> :sswitch_0
        0x27107 -> :sswitch_1
        0x27108 -> :sswitch_b
        0x2710a -> :sswitch_c
    .end sparse-switch
.end method
