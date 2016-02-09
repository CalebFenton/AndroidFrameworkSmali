.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@0
    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 614
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    #@3
    .line 615
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@5
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    #@14
    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@16
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@18
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@1a
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@1d
    move-result v3

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@23
    move-result v2

    #@24
    const v3, 0x2100b

    #@27
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    #@2e
    .line 612
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, 0x1

    #@4
    .line 621
    iget v4, p1, Landroid/os/Message;->what:I

    #@6
    sparse-switch v4, :sswitch_data_0

    #@9
    .line 674
    return v9

    #@a
    .line 623
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@c
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap7(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    #@f
    .line 624
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@11
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get10(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 625
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@19
    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@1c
    .line 676
    :cond_0
    :goto_0
    :sswitch_1
    return v8

    #@1d
    .line 630
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@1f
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@21
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get12(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap5(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    #@28
    goto :goto_0

    #@29
    .line 634
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@2b
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2d
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@30
    move-result v5

    #@31
    if-ne v4, v5, :cond_0

    #@33
    .line 635
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@35
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get16(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@38
    move-result-object v4

    #@39
    const v5, 0x25014

    #@3c
    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@3f
    .line 636
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@41
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@43
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@45
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get11(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    #@48
    move-result v7

    #@49
    add-int/lit8 v7, v7, 0x1

    #@4b
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set4(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    #@4e
    move-result v6

    #@4f
    const v7, 0x2100b

    #@52
    invoke-virtual {v5, v7, v6, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@55
    move-result-object v5

    #@56
    .line 637
    const-wide/16 v6, 0x3e8

    #@58
    .line 636
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@5b
    goto :goto_0

    #@5c
    .line 642
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@5e
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@61
    move-result-object v4

    #@62
    if-eqz v4, :cond_0

    #@64
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    if-eqz v4, :cond_0

    #@68
    .line 645
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6a
    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    #@6c
    .line 646
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    #@6e
    .line 649
    .local v1, "rssi":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@70
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@73
    move-result-object v4

    #@74
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    #@77
    move-result-wide v4

    #@78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7b
    move-result-wide v6

    #@7c
    sub-long v2, v4, v6

    #@7e
    .line 650
    .local v2, "time":J
    cmp-long v4, v2, v10

    #@80
    if-gtz v4, :cond_1

    #@82
    .line 653
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@84
    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@87
    goto :goto_0

    #@88
    .line 655
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@8a
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    #@91
    move-result v4

    #@92
    if-lt v1, v4, :cond_2

    #@94
    .line 656
    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    #@96
    add-int/lit8 v4, v4, 0x1

    #@98
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    #@9a
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@9c
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@9f
    move-result-object v5

    #@a0
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    #@a3
    move-result v5

    #@a4
    if-lt v4, v5, :cond_0

    #@a6
    .line 659
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@a8
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    #@ab
    move-result-object v4

    #@ac
    invoke-static {v4, v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->-set0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    #@af
    .line 660
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@b1
    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap4(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    #@b4
    goto/16 :goto_0

    #@b6
    .line 663
    :cond_2
    iput v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    #@b8
    goto/16 :goto_0

    #@ba
    .line 621
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_1
    .end sparse-switch
.end method
