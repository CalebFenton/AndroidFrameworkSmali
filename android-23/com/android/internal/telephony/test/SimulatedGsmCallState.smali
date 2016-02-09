.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private mAutoProgressConnecting:Z

.field mCalls:[Lcom/android/internal/telephony/test/CallInfo;

.field private mNextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 135
    const/4 v0, 0x7

    #@4
    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo;

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@8
    .line 137
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    #@b
    .line 154
    return-void
.end method

.method private countActiveLines()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 767
    const/4 v4, 0x0

    #@3
    .line 768
    .local v4, "hasMpty":Z
    const/4 v3, 0x0

    #@4
    .line 769
    .local v3, "hasHeld":Z
    const/4 v1, 0x0

    #@5
    .line 770
    .local v1, "hasActive":Z
    const/4 v2, 0x0

    #@6
    .line 771
    .local v2, "hasConnecting":Z
    const/4 v5, 0x0

    #@7
    .line 772
    .local v5, "hasRinging":Z
    const/4 v7, 0x0

    #@8
    .line 774
    .local v7, "mptyIsHeld":Z
    const/4 v6, 0x0

    #@9
    .end local v1    # "hasActive":Z
    .end local v2    # "hasConnecting":Z
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    .end local v5    # "hasRinging":Z
    .local v6, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b
    array-length v9, v9

    #@c
    if-ge v6, v9, :cond_7

    #@e
    .line 775
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@10
    aget-object v0, v9, v6

    #@12
    .line 777
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@14
    .line 778
    if-nez v4, :cond_3

    #@16
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@18
    if-eqz v9, :cond_3

    #@1a
    .line 779
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@1c
    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@1e
    if-ne v9, v12, :cond_2

    #@20
    const/4 v7, 0x1

    #@21
    .line 792
    :cond_0
    :goto_1
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@23
    or-int/2addr v4, v9

    #@24
    .line 793
    .local v4, "hasMpty":Z
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@26
    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@28
    if-ne v9, v12, :cond_5

    #@2a
    move v9, v10

    #@2b
    :goto_2
    or-int/2addr v3, v9

    #@2c
    .line 794
    .local v3, "hasHeld":Z
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2e
    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@30
    if-ne v9, v12, :cond_6

    #@32
    move v9, v10

    #@33
    :goto_3
    or-int/2addr v1, v9

    #@34
    .line 795
    .local v1, "hasActive":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    #@37
    move-result v9

    #@38
    or-int/2addr v2, v9

    #@39
    .line 796
    .local v2, "hasConnecting":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    #@3c
    move-result v9

    #@3d
    or-int/2addr v5, v9

    #@3e
    .line 774
    .end local v1    # "hasActive":Z
    .end local v2    # "hasConnecting":Z
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_0

    #@41
    .line 779
    :cond_2
    const/4 v7, 0x0

    #@42
    goto :goto_1

    #@43
    .line 780
    :cond_3
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@45
    if-eqz v9, :cond_4

    #@47
    if-eqz v7, :cond_4

    #@49
    .line 781
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@4b
    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@4d
    if-ne v9, v12, :cond_4

    #@4f
    .line 783
    const-string/jumbo v9, "ModelInterpreter"

    #@52
    const-string/jumbo v10, "Invalid state"

    #@55
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 784
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    #@5a
    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    #@5d
    throw v9

    #@5e
    .line 785
    :cond_4
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@60
    if-nez v9, :cond_0

    #@62
    if-eqz v4, :cond_0

    #@64
    if-eqz v7, :cond_0

    #@66
    .line 786
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@68
    sget-object v12, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@6a
    if-ne v9, v12, :cond_0

    #@6c
    .line 788
    const-string/jumbo v9, "ModelInterpreter"

    #@6f
    const-string/jumbo v10, "Invalid state"

    #@72
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 789
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    #@77
    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    #@7a
    throw v9

    #@7b
    .restart local v4    # "hasMpty":Z
    :cond_5
    move v9, v11

    #@7c
    .line 793
    goto :goto_2

    #@7d
    .restart local v3    # "hasHeld":Z
    :cond_6
    move v9, v11

    #@7e
    .line 794
    goto :goto_3

    #@7f
    .line 800
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    .end local v3    # "hasHeld":Z
    .end local v4    # "hasMpty":Z
    :cond_7
    const/4 v8, 0x0

    #@80
    .line 802
    .local v8, "ret":I
    if-eqz v3, :cond_8

    #@82
    const/4 v8, 0x1

    #@83
    .line 803
    :cond_8
    if-eqz v1, :cond_9

    #@85
    add-int/lit8 v8, v8, 0x1

    #@87
    .line 804
    :cond_9
    if-eqz v2, :cond_a

    #@89
    add-int/lit8 v8, v8, 0x1

    #@8b
    .line 805
    :cond_a
    if-eqz v5, :cond_b

    #@8d
    add-int/lit8 v8, v8, 0x1

    #@8f
    .line 807
    :cond_b
    return v8
.end method


# virtual methods
.method public conference()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 608
    const/4 v1, 0x0

    #@3
    .line 611
    .local v1, "countCalls":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@6
    array-length v3, v3

    #@7
    if-ge v2, v3, :cond_1

    #@9
    .line 612
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b
    aget-object v0, v3, v2

    #@d
    .line 614
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@f
    .line 615
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 617
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 618
    return v4

    #@18
    .line 611
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 622
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const/4 v2, 0x0

    #@1c
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@1e
    array-length v3, v3

    #@1f
    if-ge v2, v3, :cond_3

    #@21
    .line 623
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@23
    aget-object v0, v3, v2

    #@25
    .line 625
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    #@27
    .line 626
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@29
    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2b
    .line 627
    if-lez v1, :cond_2

    #@2d
    .line 628
    iput-boolean v5, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@2f
    .line 622
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_1

    #@32
    .line 633
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    return v5
.end method

.method public explicitCallTransfer()Z
    .locals 4

    #@0
    .prologue
    .line 638
    const/4 v1, 0x0

    #@1
    .line 641
    .local v1, "countCalls":I
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v3, v3

    #@5
    if-ge v2, v3, :cond_1

    #@7
    .line 642
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@9
    aget-object v0, v3, v2

    #@b
    .line 644
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@d
    .line 645
    add-int/lit8 v1, v1, 0x1

    #@f
    .line 647
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 648
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 641
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 654
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    #@1d
    move-result v3

    #@1e
    return v3
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 752
    new-instance v2, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v3, v3

    #@5
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 754
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b
    array-length v3, v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 755
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@10
    aget-object v0, v3, v1

    #@12
    .line 757
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@14
    .line 758
    add-int/lit8 v3, v1, 0x1

    #@16
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 754
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 762
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return-object v2
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 732
    new-instance v3, Ljava/util/ArrayList;

    #@2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v4, v4

    #@5
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 734
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b
    array-length v4, v4

    #@c
    if-ge v2, v4, :cond_1

    #@e
    .line 735
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@10
    aget-object v0, v4, v2

    #@12
    .line 737
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@14
    .line 740
    add-int/lit8 v4, v2, 0x1

    #@16
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    #@19
    move-result-object v1

    #@1a
    .line 741
    .local v1, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 734
    .end local v1    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 745
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const-string/jumbo v4, "GSM"

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "SC< getDriverCalls "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 747
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 161
    monitor-enter p0

    #@1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 160
    return-void

    #@8
    .line 166
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    goto :goto_0

    #@c
    .line 161
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnswer()Z
    .locals 4

    #@0
    .prologue
    .line 359
    monitor-enter p0

    #@1
    .line 360
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@9
    aget-object v0, v2, v1

    #@b
    .line 363
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@d
    .line 364
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@f
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 365
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@15
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    monitor-exit p0

    #@1e
    return v2

    #@1f
    .line 360
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    monitor-exit p0

    #@23
    .line 372
    const/4 v2, 0x0

    #@24
    return v2

    #@25
    .line 359
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
.end method

.method public onChld(CC)Z
    .locals 5
    .param p1, "c0"    # C
    .param p2, "c1"    # C

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 394
    const/4 v0, 0x0

    #@3
    .line 396
    .local v0, "callIndex":I
    if-eqz p2, :cond_1

    #@5
    .line 397
    add-int/lit8 v0, p2, -0x31

    #@7
    .line 399
    if-ltz v0, :cond_0

    #@9
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b
    array-length v2, v2

    #@c
    if-lt v0, v2, :cond_1

    #@e
    .line 400
    :cond_0
    return v3

    #@f
    .line 404
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@12
    .line 440
    const/4 v1, 0x0

    #@13
    .line 444
    :goto_0
    return v1

    #@14
    .line 406
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    #@17
    move-result v1

    #@18
    .local v1, "ret":Z
    goto :goto_0

    #@19
    .line 409
    .end local v1    # "ret":Z
    :pswitch_1
    if-gtz p2, :cond_2

    #@1b
    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    #@1e
    move-result v1

    #@1f
    .restart local v1    # "ret":Z
    goto :goto_0

    #@20
    .line 412
    .end local v1    # "ret":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@22
    aget-object v2, v2, v0

    #@24
    if-nez v2, :cond_3

    #@26
    .line 413
    const/4 v1, 0x0

    #@27
    .local v1, "ret":Z
    goto :goto_0

    #@28
    .line 415
    .end local v1    # "ret":Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@2a
    aput-object v4, v2, v0

    #@2c
    .line 416
    const/4 v1, 0x1

    #@2d
    .restart local v1    # "ret":Z
    goto :goto_0

    #@2e
    .line 421
    .end local v1    # "ret":Z
    :pswitch_2
    if-gtz p2, :cond_4

    #@30
    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    #@33
    move-result v1

    #@34
    .local v1, "ret":Z
    goto :goto_0

    #@35
    .line 424
    .end local v1    # "ret":Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    #@38
    move-result v1

    #@39
    .restart local v1    # "ret":Z
    goto :goto_0

    #@3a
    .line 428
    .end local v1    # "ret":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    #@3d
    move-result v1

    #@3e
    .restart local v1    # "ret":Z
    goto :goto_0

    #@3f
    .line 431
    .end local v1    # "ret":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    #@42
    move-result v1

    #@43
    .restart local v1    # "ret":Z
    goto :goto_0

    #@44
    .line 436
    .end local v1    # "ret":Z
    :pswitch_5
    const/4 v1, 0x0

    #@45
    .local v1, "ret":Z
    goto :goto_0

    #@46
    .line 404
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 9
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 660
    const/4 v1, -0x1

    #@3
    .line 662
    .local v1, "freeSlot":I
    const-string/jumbo v4, "GSM"

    #@6
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "SC> dial \'"

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, "\'"

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 664
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 665
    iput-boolean v7, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    #@2a
    .line 667
    const-string/jumbo v4, "GSM"

    #@2d
    const-string/jumbo v5, "SC< dial fail (per request)"

    #@30
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 668
    return v7

    #@34
    .line 671
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 673
    .local v3, "phNum":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_1

    #@3e
    .line 674
    const-string/jumbo v4, "GSM"

    #@41
    const-string/jumbo v5, "SC< dial fail (invalid ph num)"

    #@44
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 675
    return v7

    #@48
    .line 679
    :cond_1
    const-string/jumbo v4, "*99"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    const-string/jumbo v4, "#"

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_2

    #@5a
    .line 680
    const-string/jumbo v4, "GSM"

    #@5d
    const-string/jumbo v5, "SC< dial ignored (gprs)"

    #@60
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 681
    return v8

    #@64
    .line 687
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    #@67
    move-result v4

    #@68
    if-le v4, v8, :cond_3

    #@6a
    .line 688
    const-string/jumbo v4, "GSM"

    #@6d
    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    #@70
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    .line 689
    return v7

    #@74
    .line 691
    :catch_0
    move-exception v0

    #@75
    .line 692
    .local v0, "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    const-string/jumbo v4, "GSM"

    #@78
    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    #@7b
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 693
    return v7

    #@7f
    .line 696
    .end local v0    # "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    :cond_3
    const/4 v2, 0x0

    #@80
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@82
    array-length v4, v4

    #@83
    if-ge v2, v4, :cond_8

    #@85
    .line 697
    if-gez v1, :cond_4

    #@87
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@89
    aget-object v4, v4, v2

    #@8b
    if-nez v4, :cond_4

    #@8d
    .line 698
    move v1, v2

    #@8e
    .line 701
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@90
    aget-object v4, v4, v2

    #@92
    if-eqz v4, :cond_5

    #@94
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@96
    aget-object v4, v4, v2

    #@98
    invoke-virtual {v4}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_7

    #@9e
    .line 706
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a0
    aget-object v4, v4, v2

    #@a2
    if-eqz v4, :cond_6

    #@a4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a6
    aget-object v4, v4, v2

    #@a8
    iget-object v4, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@aa
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@ac
    if-ne v4, v5, :cond_6

    #@ae
    .line 708
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@b0
    aget-object v4, v4, v2

    #@b2
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@b4
    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@b6
    .line 696
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@b8
    goto :goto_0

    #@b9
    .line 704
    :cond_7
    const-string/jumbo v4, "GSM"

    #@bc
    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    #@bf
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 705
    return v7

    #@c3
    .line 712
    :cond_8
    if-gez v1, :cond_9

    #@c5
    .line 713
    const-string/jumbo v4, "GSM"

    #@c8
    const-string/jumbo v5, "SC< dial fail (invalid call state)"

    #@cb
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 714
    return v7

    #@cf
    .line 717
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@d1
    invoke-static {v3}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    #@d4
    move-result-object v5

    #@d5
    aput-object v5, v4, v1

    #@d7
    .line 719
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    #@d9
    if-eqz v4, :cond_a

    #@db
    .line 721
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@dd
    aget-object v4, v4, v1

    #@df
    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e2
    move-result-object v4

    #@e3
    .line 722
    const-wide/16 v6, 0x1f4

    #@e5
    .line 720
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@e8
    .line 725
    :cond_a
    const-string/jumbo v4, "GSM"

    #@eb
    new-instance v5, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v6, "SC< dial (slot = "

    #@f3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v5

    #@f7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v5

    #@fb
    const-string/jumbo v6, ")"

    #@fe
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v5

    #@102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v5

    #@106
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 727
    return v8
.end method

.method public onHangup()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 377
    const/4 v1, 0x0

    #@2
    .line 379
    .local v1, "found":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@5
    array-length v3, v3

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a
    aget-object v0, v3, v2

    #@c
    .line 382
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@e
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@10
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@16
    aput-object v5, v3, v2

    #@18
    .line 384
    const/4 v1, 0x1

    #@19
    .line 379
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 388
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 6

    #@0
    .prologue
    .line 220
    monitor-enter p0

    #@1
    .line 221
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@9
    aget-object v0, v2, v1

    #@b
    .line 224
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@d
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@f
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 225
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@15
    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@17
    .line 227
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 229
    const/4 v2, 0x1

    #@1c
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v2

    #@20
    .line 230
    const-wide/16 v4, 0x1f4

    #@22
    .line 228
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    :goto_1
    monitor-exit p0

    #@26
    .line 219
    return-void

    #@27
    .line 233
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-eqz v0, :cond_2

    #@29
    .line 234
    :try_start_1
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2b
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2d
    if-ne v2, v3, :cond_2

    #@2f
    .line 236
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@31
    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    goto :goto_1

    #@34
    .line 220
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2

    #@37
    .line 221
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0
.end method

.method public progressConnectingToActive()V
    .locals 4

    #@0
    .prologue
    .line 246
    monitor-enter p0

    #@1
    .line 247
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@9
    aget-object v0, v2, v1

    #@b
    .line 250
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    #@d
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@f
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 251
    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@15
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 253
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@1b
    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    #@1e
    .line 245
    return-void

    #@1f
    .line 247
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 246
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 479
    const/4 v2, 0x0

    #@3
    .line 480
    .local v2, "foundHeld":Z
    const/4 v1, 0x0

    #@4
    .line 482
    .local v1, "foundActive":Z
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@7
    array-length v4, v4

    #@8
    if-ge v3, v4, :cond_1

    #@a
    .line 483
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@c
    aget-object v0, v4, v3

    #@e
    .line 485
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@10
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@12
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@14
    if-ne v4, v5, :cond_0

    #@16
    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@18
    aput-object v6, v4, v3

    #@1a
    .line 487
    const/4 v1, 0x1

    #@1b
    .line 482
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 491
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-nez v1, :cond_4

    #@20
    .line 494
    const/4 v3, 0x0

    #@21
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@23
    array-length v4, v4

    #@24
    if-ge v3, v4, :cond_4

    #@26
    .line 495
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@28
    aget-object v0, v4, v3

    #@2a
    .line 497
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_3

    #@2c
    .line 498
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2e
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@30
    if-eq v4, v5, :cond_2

    #@32
    .line 499
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@34
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@36
    if-ne v4, v5, :cond_3

    #@38
    .line 501
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@3a
    aput-object v6, v4, v3

    #@3c
    .line 502
    const/4 v1, 0x1

    #@3d
    .line 494
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 507
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    const/4 v3, 0x0

    #@41
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@43
    array-length v4, v4

    #@44
    if-ge v3, v4, :cond_6

    #@46
    .line 508
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@48
    aget-object v0, v4, v3

    #@4a
    .line 510
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_5

    #@4c
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@4e
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@50
    if-ne v4, v5, :cond_5

    #@52
    .line 511
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@54
    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@56
    .line 512
    const/4 v2, 0x1

    #@57
    .line 507
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 516
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    if-eqz v2, :cond_7

    #@5c
    .line 517
    return v7

    #@5d
    .line 520
    :cond_7
    const/4 v3, 0x0

    #@5e
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@60
    array-length v4, v4

    #@61
    if-ge v3, v4, :cond_9

    #@63
    .line 521
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@65
    aget-object v0, v4, v3

    #@67
    .line 523
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_8

    #@69
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_8

    #@6f
    .line 524
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@71
    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@73
    .line 525
    return v7

    #@74
    .line 520
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_3

    #@77
    .line 529
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_9
    return v7
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 449
    const/4 v1, 0x0

    #@2
    .line 451
    .local v1, "found":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@5
    array-length v3, v3

    #@6
    if-ge v2, v3, :cond_0

    #@8
    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a
    aget-object v0, v3, v2

    #@c
    .line 454
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 455
    const/4 v1, 0x1

    #@15
    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@17
    aput-object v5, v3, v2

    #@19
    .line 461
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    if-nez v1, :cond_3

    #@1b
    .line 462
    const/4 v2, 0x0

    #@1c
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@1e
    array-length v3, v3

    #@1f
    if-ge v2, v3, :cond_3

    #@21
    .line 463
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@23
    aget-object v0, v3, v2

    #@25
    .line 465
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@27
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@29
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2b
    if-ne v3, v4, :cond_1

    #@2d
    .line 466
    const/4 v1, 0x1

    #@2e
    .line 467
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@30
    aput-object v5, v3, v2

    #@32
    .line 462
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_1

    #@35
    .line 451
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 473
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    const/4 v3, 0x1

    #@39
    return v3
.end method

.method public separateCall(I)Z
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 570
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    aget-object v0, v6, p1

    #@6
    .line 572
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    #@11
    move-result v6

    #@12
    if-eq v6, v9, :cond_1

    #@14
    .line 573
    :cond_0
    return v8

    #@15
    .line 576
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@17
    iput-object v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@19
    .line 577
    const/4 v6, 0x0

    #@1a
    iput-boolean v6, v0, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z

    #@1c
    .line 579
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@1f
    array-length v6, v6

    #@20
    if-ge v4, v6, :cond_4

    #@22
    .line 580
    const/4 v2, 0x0

    #@23
    .local v2, "countHeld":I
    const/4 v5, 0x0

    #@24
    .line 582
    .local v5, "lastHeld":I
    if-eq v4, p1, :cond_2

    #@26
    .line 583
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@28
    aget-object v1, v6, v4

    #@2a
    .line 585
    .local v1, "cb":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_2

    #@2c
    iget-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2e
    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@30
    if-ne v6, v7, :cond_2

    #@32
    .line 586
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@34
    iput-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@36
    .line 587
    const/4 v2, 0x1

    #@37
    .line 588
    move v5, v4

    #@38
    .line 592
    .end local v1    # "cb":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    if-ne v2, v9, :cond_3

    #@3a
    .line 594
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@3c
    aget-object v6, v6, v5

    #@3e
    const/4 v7, 0x0

    #@3f
    iput-boolean v7, v6, Lcom/android/internal/telephony/test/CallInfo;->mIsMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 579
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 598
    .end local v2    # "countHeld":I
    .end local v5    # "lastHeld":I
    :cond_4
    return v9

    #@45
    .line 599
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    #@46
    .line 600
    .local v3, "ex":Lcom/android/internal/telephony/test/InvalidStateEx;
    return v8
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mAutoProgressConnecting:Z

    #@2
    .line 264
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mNextDialFailImmediately:Z

    #@2
    .line 269
    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 5

    #@0
    .prologue
    .line 534
    const/4 v1, 0x0

    #@1
    .line 537
    .local v1, "hasHeld":Z
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@4
    array-length v3, v3

    #@5
    if-ge v2, v3, :cond_0

    #@7
    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@9
    aget-object v0, v3, v2

    #@b
    .line 540
    .local v0, "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    #@d
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@f
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@11
    if-ne v3, v4, :cond_2

    #@13
    .line 541
    const/4 v1, 0x1

    #@14
    .line 547
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    const/4 v2, 0x0

    #@15
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@17
    array-length v3, v3

    #@18
    if-ge v2, v3, :cond_5

    #@1a
    .line 548
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@1c
    aget-object v0, v3, v2

    #@1e
    .line 550
    .restart local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@20
    .line 551
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@22
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@24
    if-ne v3, v4, :cond_3

    #@26
    .line 552
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@28
    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@2a
    .line 547
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 537
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 553
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@32
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@34
    if-ne v3, v4, :cond_4

    #@36
    .line 554
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@38
    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@3a
    goto :goto_2

    #@3b
    .line 555
    :cond_4
    if-nez v1, :cond_1

    #@3d
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 556
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@45
    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@47
    goto :goto_2

    #@48
    .line 561
    .end local v0    # "c":Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    const/4 v3, 0x1

    #@49
    return v3
.end method

.method public triggerHangupAll()Z
    .locals 5

    #@0
    .prologue
    .line 340
    monitor-enter p0

    #@1
    .line 341
    const/4 v1, 0x0

    #@2
    .line 343
    .local v1, "found":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@5
    array-length v3, v3

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a
    aget-object v0, v3, v2

    #@c
    .line 346
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@e
    aget-object v3, v3, v2

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 347
    const/4 v1, 0x1

    #@13
    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 343
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    #@1c
    .line 353
    return v1

    #@1d
    .line 340
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit p0

    #@1f
    throw v3
.end method

.method public triggerHangupBackground()Z
    .locals 5

    #@0
    .prologue
    .line 318
    monitor-enter p0

    #@1
    .line 319
    const/4 v1, 0x0

    #@2
    .line 321
    .local v1, "found":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@5
    array-length v3, v3

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a
    aget-object v0, v3, v2

    #@c
    .line 324
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    #@e
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@10
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@12
    if-ne v3, v4, :cond_0

    #@14
    .line 325
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 326
    const/4 v1, 0x1

    #@1a
    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    #@1e
    .line 330
    return v1

    #@1f
    .line 318
    :catchall_0
    move-exception v3

    #@20
    monitor-exit p0

    #@21
    throw v3
.end method

.method public triggerHangupForeground()Z
    .locals 5

    #@0
    .prologue
    .line 279
    monitor-enter p0

    #@1
    .line 282
    const/4 v1, 0x0

    #@2
    .line 284
    .local v1, "found":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@5
    array-length v3, v3

    #@6
    if-ge v2, v3, :cond_2

    #@8
    .line 285
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@a
    aget-object v0, v3, v2

    #@c
    .line 287
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    #@e
    .line 288
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@10
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@12
    if-eq v3, v4, :cond_0

    #@14
    .line 289
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@16
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@1c
    const/4 v4, 0x0

    #@1d
    aput-object v4, v3, v2

    #@1f
    .line 292
    const/4 v1, 0x1

    #@20
    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 296
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    const/4 v2, 0x0

    #@24
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@26
    array-length v3, v3

    #@27
    if-ge v2, v3, :cond_6

    #@29
    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@2b
    aget-object v0, v3, v2

    #@2d
    .line 299
    .restart local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_4

    #@2f
    .line 300
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@31
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@33
    if-eq v3, v4, :cond_3

    #@35
    .line 301
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@37
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    #@39
    if-ne v3, v4, :cond_5

    #@3b
    .line 304
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@3d
    const/4 v4, 0x0

    #@3e
    aput-object v4, v3, v2

    #@40
    .line 305
    const/4 v1, 0x1

    #@41
    .line 296
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 302
    :cond_5
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@46
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    if-ne v3, v4, :cond_4

    #@4a
    goto :goto_2

    #@4b
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    monitor-exit p0

    #@4c
    .line 308
    return v1

    #@4d
    .line 279
    :catchall_0
    move-exception v3

    #@4e
    monitor-exit p0

    #@4f
    throw v3
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 179
    monitor-enter p0

    #@2
    .line 180
    const/4 v1, -0x1

    #@3
    .line 181
    .local v1, "empty":I
    const/4 v3, 0x0

    #@4
    .line 184
    .local v3, "isCallWaiting":Z
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@7
    array-length v4, v4

    #@8
    if-ge v2, v4, :cond_4

    #@a
    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@c
    aget-object v0, v4, v2

    #@e
    .line 187
    .local v0, "call":Lcom/android/internal/telephony/test/CallInfo;
    if-nez v0, :cond_1

    #@10
    if-gez v1, :cond_1

    #@12
    .line 188
    move v1, v2

    #@13
    .line 184
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 189
    :cond_1
    if-eqz v0, :cond_3

    #@18
    .line 190
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@1a
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@1c
    if-eq v4, v5, :cond_2

    #@1e
    .line 191
    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;

    #@20
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@22
    if-ne v4, v5, :cond_3

    #@24
    .line 193
    :cond_2
    const-string/jumbo v4, "ModelInterpreter"

    #@27
    .line 194
    const-string/jumbo v5, "triggerRing failed; phone already ringing"

    #@2a
    .line 193
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 195
    return v6

    #@2f
    .line 196
    :cond_3
    if-eqz v0, :cond_0

    #@31
    .line 197
    const/4 v3, 0x1

    #@32
    goto :goto_1

    #@33
    .line 201
    .end local v0    # "call":Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    if-gez v1, :cond_5

    #@35
    .line 202
    :try_start_1
    const-string/jumbo v4, "ModelInterpreter"

    #@38
    const-string/jumbo v5, "triggerRing failed; all full"

    #@3b
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 203
    return v6

    #@40
    .line 206
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@42
    .line 207
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 206
    invoke-static {v5}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    #@49
    move-result-object v5

    #@4a
    aput-object v5, v4, v1

    #@4c
    .line 209
    if-eqz v3, :cond_6

    #@4e
    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->mCalls:[Lcom/android/internal/telephony/test/CallInfo;

    #@50
    aget-object v4, v4, v1

    #@52
    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    #@54
    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->mState:Lcom/android/internal/telephony/test/CallInfo$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    :cond_6
    monitor-exit p0

    #@57
    .line 214
    const/4 v4, 0x1

    #@58
    return v4

    #@59
    .line 179
    :catchall_0
    move-exception v4

    #@5a
    monitor-exit p0

    #@5b
    throw v4
.end method
