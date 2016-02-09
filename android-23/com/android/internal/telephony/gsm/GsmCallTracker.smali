.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z


# instance fields
.field mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mHangupPendingMO:Z

.field mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    const/4 v2, 0x0

    #@2
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    #@5
    .line 74
    new-array v0, v1, [Lcom/android/internal/telephony/gsm/GsmConnection;

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@9
    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    #@b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@10
    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    #@12
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@17
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1c
    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@1e
    .line 83
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    #@20
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@25
    .line 85
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    #@27
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    #@2a
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2c
    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCall;

    #@2e
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    #@31
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@33
    .line 93
    const/4 v0, 0x0

    #@34
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    #@36
    .line 95
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3a
    .line 97
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    #@3e
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@40
    .line 106
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@42
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@44
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@46
    const/4 v1, 0x2

    #@47
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4a
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4c
    const/16 v1, 0x9

    #@4e
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@51
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    const/16 v1, 0xa

    #@55
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@58
    .line 104
    return-void
.end method

.method private dumpState()V
    .locals 6

    #@0
    .prologue
    .line 685
    const-string/jumbo v3, "GsmCallTracker"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "Phone State:"

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 687
    const-string/jumbo v3, "GsmCallTracker"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Ringing call: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2d
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 689
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3e
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    #@41
    move-result-object v1

    #@42
    .line 690
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@46
    move-result v2

    #@47
    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@49
    .line 691
    const-string/jumbo v3, "GsmCallTracker"

    #@4c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 690
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 694
    :cond_0
    const-string/jumbo v3, "GsmCallTracker"

    #@5d
    new-instance v4, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v5, "Foreground call: "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@6b
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 696
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@7c
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    #@7f
    move-result-object v1

    #@80
    .line 697
    const/4 v0, 0x0

    #@81
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@84
    move-result v2

    #@85
    :goto_1
    if-ge v0, v2, :cond_1

    #@87
    .line 698
    const-string/jumbo v3, "GsmCallTracker"

    #@8a
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 697
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_1

    #@98
    .line 701
    :cond_1
    const-string/jumbo v3, "GsmCallTracker"

    #@9b
    new-instance v4, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v5, "Background call: "

    #@a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@a9
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 703
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    #@bd
    move-result-object v1

    #@be
    .line 704
    const/4 v0, 0x0

    #@bf
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c2
    move-result v2

    #@c3
    :goto_2
    if-ge v0, v2, :cond_2

    #@c5
    .line 705
    const-string/jumbo v3, "GsmCallTracker"

    #@c8
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 704
    add-int/lit8 v0, v0, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 682
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    #@0
    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/List;

    #@a
    .line 163
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@e
    move-result v3

    #@f
    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@11
    .line 164
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@17
    .line 166
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    #@1a
    .line 163
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 156
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 865
    packed-switch p1, :pswitch_data_0

    #@3
    .line 875
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    #@5
    return-object v0

    #@6
    .line 867
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    #@8
    return-object v0

    #@9
    .line 869
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    #@b
    return-object v0

    #@c
    .line 871
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@e
    return-object v0

    #@f
    .line 873
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    #@11
    return-object v0

    #@12
    .line 865
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    #@0
    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 674
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    #@5
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    #@a
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    #@f
    .line 357
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 369
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 378
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@6
    .line 379
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@9
    .line 380
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    #@c
    .line 385
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private operationComplete()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 390
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@7
    .line 395
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@9
    if-nez v0, :cond_1

    #@b
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 396
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@16
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@1a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    #@1d
    .line 389
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 398
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@20
    if-gez v0, :cond_0

    #@22
    .line 400
    const-string/jumbo v0, "GsmCallTracker"

    #@25
    const-string/jumbo v1, "GsmCallTracker.pendingOperations < 0"

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 401
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    #@2d
    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 408
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@5
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 409
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    .line 421
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    if-ne v2, v3, :cond_5

    #@15
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    if-eq v1, v2, :cond_5

    #@19
    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 423
    new-instance v3, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 422
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@23
    .line 429
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@25
    if-eq v2, v1, :cond_1

    #@27
    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@29
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    #@2c
    .line 406
    :cond_1
    return-void

    #@2d
    .line 410
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@2f
    if-nez v2, :cond_4

    #@31
    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@33
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_4

    #@39
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3b
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_4

    #@41
    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@43
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@49
    .line 415
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4b
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4d
    if-ne v2, v3, :cond_3

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 416
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->callEndCleanupHandOverCallIfAny()V

    #@54
    .line 418
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@56
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@58
    goto :goto_0

    #@59
    .line 412
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5b
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5d
    goto :goto_0

    #@5e
    .line 424
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@60
    if-ne v1, v2, :cond_0

    #@62
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@64
    if-eq v1, v2, :cond_0

    #@66
    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@68
    .line 426
    new-instance v3, Landroid/os/AsyncResult;

    #@6a
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6d
    .line 425
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@70
    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v0

    #@7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 269
    const-string/jumbo v0, "phone"

    #@e
    const-string/jumbo v1, "acceptCall: incoming..."

    #@11
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 271
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    #@17
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    #@20
    .line 263
    :goto_0
    return-void

    #@21
    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@23
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@29
    if-ne v0, v1, :cond_1

    #@2b
    .line 274
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    #@2e
    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    #@31
    goto :goto_0

    #@32
    .line 277
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@34
    const-string/jumbo v1, "phone not ringing"

    #@37
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method canConference()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 323
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 326
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    #@0
    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v2

    #@a
    .line 334
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    #@d
    const-string/jumbo v4, "false"

    #@10
    .line 333
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 336
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@1d
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 336
    :cond_0
    const/4 v1, 0x0

    #@24
    .line 343
    .local v1, "ret":Z
    :goto_0
    return v1

    #@25
    .line 339
    .end local v1    # "ret":Z
    :cond_1
    const-string/jumbo v3, "true"

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 340
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@30
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3c
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    const/4 v1, 0x0

    #@47
    .restart local v1    # "ret":Z
    goto :goto_0

    #@48
    .line 340
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    #@49
    .restart local v1    # "ret":Z
    goto :goto_0

    #@4a
    .line 341
    .end local v1    # "ret":Z
    :cond_3
    const/4 v1, 0x1

    #@4b
    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method canTransfer()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_2

    #@15
    .line 351
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1a
    move-result-object v1

    #@1b
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    const/4 v0, 0x1

    #@20
    .line 348
    :cond_1
    return v0

    #@21
    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v1

    #@27
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@29
    if-ne v1, v2, :cond_1

    #@2b
    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    #@3
    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    #@6
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    #@b
    .line 314
    return-void
.end method

.method conference()V
    .locals 2

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    #@b
    .line 304
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    #@4
    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 180
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v3, "cannot dial in current state"

    #@f
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :catchall_0
    move-exception v2

    #@14
    monitor-exit p0

    #@15
    throw v2

    #@16
    .line 183
    :cond_0
    move-object v1, p1

    #@17
    .line 184
    .local v1, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@19
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v2

    #@23
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 199
    const-wide/16 v2, 0x1f4

    #@2c
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 208
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    #@32
    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@34
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@37
    move-result-object v2

    #@38
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3a
    if-eq v2, v3, :cond_2

    #@3c
    .line 213
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@3e
    const-string/jumbo v3, "cannot dial in current state"

    #@41
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 200
    :catch_0
    move-exception v0

    #@46
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@47
    .line 216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@49
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4b
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 217
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@55
    .line 216
    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    #@58
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@5a
    .line 218
    const/4 v2, 0x0

    #@5b
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    #@5d
    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@5f
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    if-eqz v2, :cond_3

    #@65
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@67
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6e
    move-result v2

    #@6f
    if-nez v2, :cond_5

    #@71
    .line 224
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@73
    const/4 v3, 0x7

    #@74
    iput v3, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@76
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    #@79
    .line 236
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    #@7b
    if-eqz v2, :cond_4

    #@7d
    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@7f
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    #@82
    .line 238
    const/4 v2, 0x0

    #@83
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    #@85
    .line 241
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    #@88
    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@8a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    #@8d
    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    monitor-exit p0

    #@90
    return-object v2

    #@91
    .line 221
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@93
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    const/16 v3, 0x4e

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@9c
    move-result v2

    #@9d
    if-gez v2, :cond_3

    #@9f
    .line 231
    const/4 v2, 0x0

    #@a0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    #@a3
    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@a7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@ae
    move-result-object v4

    #@af
    invoke-interface {v2, v3, p2, p3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b2
    goto :goto_1
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "GsmCallTracker"

    #@3
    const-string/jumbo v1, "GsmCallTracker dispose"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    #@e
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@13
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    #@18
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    #@1b
    .line 114
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 987
    const-string/jumbo v1, "GsmCallTracker extends:"

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 988
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@c
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "mConnections: length="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1a
    array-length v2, v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 990
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@29
    array-length v1, v1

    #@2a
    if-ge v0, v1, :cond_0

    #@2c
    .line 991
    const-string/jumbo v1, "  mConnections[%d]=%s\n"

    #@2f
    new-array v2, v6, [Ljava/lang/Object;

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    aput-object v3, v2, v4

    #@37
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@39
    aget-object v3, v3, v0

    #@3b
    aput-object v3, v2, v5

    #@3d
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@40
    .line 990
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 993
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, " mVoiceCallEndedRegistrants="

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v2, " mVoiceCallStartedRegistrants="

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75
    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, " mDroppedDuringPoll: size="

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v2

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 996
    const/4 v0, 0x0

    #@93
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@98
    move-result v1

    #@99
    if-ge v0, v1, :cond_1

    #@9b
    .line 997
    const-string/jumbo v1, "  mDroppedDuringPoll[%d]=%s\n"

    #@9e
    new-array v2, v6, [Ljava/lang/Object;

    #@a0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v3

    #@a4
    aput-object v3, v2, v4

    #@a6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v3

    #@ac
    aput-object v3, v2, v5

    #@ae
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@b1
    .line 996
    add-int/lit8 v0, v0, 0x1

    #@b3
    goto :goto_1

    #@b4
    .line 999
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v2, " mRingingCall="

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cd
    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v2, " mForegroundCall="

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, " mBackgroundCall="

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v2, " mPendingMO="

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v2, " mHangupPendingMO="

    #@120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v1

    #@124
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    #@126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v2, " mPhone="

    #@139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v2, " mDesiredMute="

    #@152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v1

    #@15c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@163
    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v2, " mState="

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v1

    #@175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 986
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    #@b
    .line 309
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "GsmCallTracker"

    #@3
    const-string/jumbo v1, "GsmCallTracker finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 126
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 853
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 854
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 855
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@11
    .line 856
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 857
    return-object v0

    #@18
    .line 854
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 861
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method getMute()Z
    .locals 1

    #@0
    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 885
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@4
    iget-boolean v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    #@6
    if-nez v8, :cond_0

    #@8
    .line 886
    const-string/jumbo v8, "GsmCallTracker"

    #@b
    new-instance v9, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v10, "Received message "

    #@13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    .line 887
    const-string/jumbo v10, "["

    #@1e
    .line 886
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    .line 887
    iget v10, p1, Landroid/os/Message;->what:I

    #@24
    .line 886
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    .line 887
    const-string/jumbo v10, "] while being destroyed. Ignoring."

    #@2b
    .line 886
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 888
    return-void

    #@37
    .line 890
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    #@39
    packed-switch v8, :pswitch_data_0

    #@3c
    .line 882
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@3d
    .line 892
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3f
    check-cast v0, Landroid/os/AsyncResult;

    #@41
    .line 894
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@43
    if-ne p1, v8, :cond_1

    #@45
    .line 897
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    #@47
    .line 898
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@49
    .line 899
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v8, Landroid/os/AsyncResult;

    #@4d
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    #@50
    goto :goto_0

    #@51
    .line 904
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@53
    check-cast v0, Landroid/os/AsyncResult;

    #@55
    .line 905
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    #@58
    goto :goto_0

    #@59
    .line 912
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    check-cast v0, Landroid/os/AsyncResult;

    #@5d
    .line 913
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5f
    if-eqz v8, :cond_2

    #@61
    .line 914
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@63
    iget v9, p1, Landroid/os/Message;->what:I

    #@65
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@6c
    .line 916
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    #@6f
    goto :goto_0

    #@70
    .line 921
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const/4 v7, 0x0

    #@71
    .line 922
    .local v7, "vendorCause":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@73
    check-cast v0, Landroid/os/AsyncResult;

    #@75
    .line 924
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    #@78
    .line 926
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7a
    if-eqz v8, :cond_5

    #@7c
    .line 929
    const/16 v1, 0x10

    #@7e
    .line 930
    .local v1, "causeCode":I
    const-string/jumbo v8, "GsmCallTracker"

    #@81
    .line 931
    const-string/jumbo v9, "Exception during getLastCallFailCause, assuming normal disconnect"

    #@84
    .line 930
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 938
    .end local v7    # "vendorCause":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x22

    #@89
    if-eq v1, v8, :cond_3

    #@8b
    .line 939
    const/16 v8, 0x29

    #@8d
    if-ne v1, v8, :cond_6

    #@8f
    .line 945
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@91
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    #@94
    move-result-object v5

    #@95
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    #@97
    .line 946
    .local v5, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v8, 0x3

    #@98
    new-array v9, v8, [Ljava/lang/Object;

    #@9a
    .line 947
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v8

    #@9e
    aput-object v8, v9, v10

    #@a0
    if-eqz v5, :cond_7

    #@a2
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@a5
    move-result v8

    #@a6
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v8

    #@aa
    const/4 v10, 0x1

    #@ab
    aput-object v8, v9, v10

    #@ad
    .line 948
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@b4
    move-result v8

    #@b5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v8

    #@b9
    const/4 v10, 0x2

    #@ba
    aput-object v8, v9, v10

    #@bc
    .line 946
    const v8, 0xc3ba

    #@bf
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@c2
    .line 951
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v4, 0x0

    #@c3
    .local v4, "i":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@c5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@c8
    move-result v6

    #@c9
    .local v6, "s":I
    :goto_4
    if-ge v4, v6, :cond_8

    #@cb
    .line 954
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@cd
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d0
    move-result-object v2

    #@d1
    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@d3
    .line 956
    .local v2, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v2, v1, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    #@d6
    .line 952
    add-int/lit8 v4, v4, 0x1

    #@d8
    goto :goto_4

    #@d9
    .line 933
    .end local v1    # "causeCode":I
    .end local v2    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4    # "i":I
    .end local v6    # "s":I
    .restart local v7    # "vendorCause":Ljava/lang/String;
    :cond_5
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@db
    check-cast v3, Lcom/android/internal/telephony/LastCallFailCause;

    #@dd
    .line 934
    .local v3, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, v3, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@df
    .line 935
    .restart local v1    # "causeCode":I
    iget-object v7, v3, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@e1
    .local v7, "vendorCause":Ljava/lang/String;
    goto :goto_1

    #@e2
    .line 940
    .end local v3    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v7    # "vendorCause":Ljava/lang/String;
    :cond_6
    const/16 v8, 0x2a

    #@e4
    if-eq v1, v8, :cond_3

    #@e6
    .line 941
    const/16 v8, 0x2c

    #@e8
    if-eq v1, v8, :cond_3

    #@ea
    .line 942
    const/16 v8, 0x31

    #@ec
    if-eq v1, v8, :cond_3

    #@ee
    .line 943
    const/16 v8, 0x3a

    #@f0
    if-eq v1, v8, :cond_3

    #@f2
    .line 944
    const v8, 0xffff

    #@f5
    if-ne v1, v8, :cond_4

    #@f7
    goto :goto_2

    #@f8
    .line 947
    .restart local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/4 v8, -0x1

    #@f9
    goto :goto_3

    #@fa
    .line 959
    .end local v5    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v4    # "i":I
    .restart local v6    # "s":I
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    #@fd
    .line 961
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@ff
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    #@102
    .line 962
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@104
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@107
    goto/16 :goto_0

    #@109
    .line 967
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v4    # "i":I
    .end local v6    # "s":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 971
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    #@111
    goto/16 :goto_0

    #@113
    .line 975
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    #@116
    goto/16 :goto_0

    #@118
    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 26
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 439
    :try_start_0
    move-object/from16 v0, p1

    #@3
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5
    move-object/from16 v21, v0

    #@7
    if-nez v21, :cond_1

    #@9
    .line 440
    move-object/from16 v0, p1

    #@b
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d
    move-object/from16 v19, v0

    #@f
    check-cast v19, Ljava/util/List;

    #@11
    .line 452
    .local v19, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v17, 0x0

    #@13
    .line 453
    .local v17, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v18, 0x0

    #@15
    .line 454
    .local v18, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    #@16
    .line 456
    .local v12, "hasNonHangupStateChanged":Z
    const/4 v11, 0x0

    #@17
    .line 457
    .local v11, "hasAnyCallDisconnected":Z
    const/16 v16, 0x0

    #@19
    .line 458
    .local v16, "needsPollDelay":Z
    const/16 v20, 0x0

    #@1b
    .line 460
    .local v20, "unknownConnectionAppeared":Z
    const/4 v15, 0x0

    #@1c
    .local v15, "i":I
    const/4 v7, 0x0

    #@1d
    .local v7, "curDC":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@20
    move-result v9

    #@21
    .line 461
    .end local v12    # "hasNonHangupStateChanged":Z
    .end local v17    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v18    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .local v9, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@25
    move-object/from16 v21, v0

    #@27
    move-object/from16 v0, v21

    #@29
    array-length v0, v0

    #@2a
    move/from16 v21, v0

    #@2c
    .line 460
    move/from16 v0, v21

    #@2e
    if-ge v15, v0, :cond_11

    #@30
    .line 462
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@34
    move-object/from16 v21, v0

    #@36
    aget-object v6, v21, v15

    #@38
    .line 463
    .local v6, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v8, 0x0

    #@39
    .line 466
    .local v8, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    #@3b
    .line 467
    move-object/from16 v0, v19

    #@3d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v8

    #@41
    .end local v8    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    #@43
    .line 469
    .local v8, "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    #@45
    move/from16 v21, v0

    #@47
    add-int/lit8 v22, v15, 0x1

    #@49
    move/from16 v0, v21

    #@4b
    move/from16 v1, v22

    #@4d
    if-ne v0, v1, :cond_3

    #@4f
    .line 470
    add-int/lit8 v7, v7, 0x1

    #@51
    .line 479
    .end local v8    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    :goto_2
    if-nez v6, :cond_b

    #@53
    if-eqz v8, :cond_b

    #@55
    .line 481
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@59
    move-object/from16 v21, v0

    #@5b
    if-eqz v21, :cond_4

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@61
    move-object/from16 v21, v0

    #@63
    move-object/from16 v0, v21

    #@65
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@68
    move-result v21

    #@69
    if-eqz v21, :cond_4

    #@6b
    .line 486
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@6f
    move-object/from16 v21, v0

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@75
    move-object/from16 v22, v0

    #@77
    aput-object v22, v21, v15

    #@79
    .line 487
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@7d
    move-object/from16 v21, v0

    #@7f
    move-object/from16 v0, v21

    #@81
    iput v15, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    #@83
    .line 488
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@87
    move-object/from16 v21, v0

    #@89
    move-object/from16 v0, v21

    #@8b
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@8e
    .line 489
    const/16 v21, 0x0

    #@90
    move-object/from16 v0, v21

    #@92
    move-object/from16 v1, p0

    #@94
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@96
    .line 492
    move-object/from16 v0, p0

    #@98
    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    #@9a
    move/from16 v21, v0

    #@9c
    if-eqz v21, :cond_6

    #@9e
    .line 493
    const/16 v21, 0x0

    #@a0
    move/from16 v0, v21

    #@a2
    move-object/from16 v1, p0

    #@a4
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a6
    .line 496
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v22, "poll: hangupPendingMO, hangup conn "

    #@ae
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v21

    #@b2
    move-object/from16 v0, v21

    #@b4
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v21

    #@b8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v21

    #@bc
    .line 495
    move-object/from16 v0, p0

    #@be
    move-object/from16 v1, v21

    #@c0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@c3
    .line 497
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@c7
    move-object/from16 v21, v0

    #@c9
    aget-object v21, v21, v15

    #@cb
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v21

    #@cf
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d2
    :goto_3
    monitor-exit p0

    #@d3
    .line 504
    return-void

    #@d4
    .line 441
    .end local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7    # "curDC":I
    .end local v9    # "dcSize":I
    .end local v11    # "hasAnyCallDisconnected":Z
    .end local v15    # "i":I
    .end local v16    # "needsPollDelay":Z
    .end local v19    # "polledCalls":Ljava/util/List;
    .end local v20    # "unknownConnectionAppeared":Z
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    #@d6
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d8
    move-object/from16 v21, v0

    #@da
    move-object/from16 v0, p0

    #@dc
    move-object/from16 v1, v21

    #@de
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    #@e1
    move-result v21

    #@e2
    if-eqz v21, :cond_2

    #@e4
    .line 444
    new-instance v19, Ljava/util/ArrayList;

    #@e6
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@e9
    .restart local v19    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    #@eb
    .line 448
    .end local v19    # "polledCalls":Ljava/util/List;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ee
    monitor-exit p0

    #@ef
    .line 449
    return-void

    #@f0
    .line 472
    .restart local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v7    # "curDC":I
    .restart local v8    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v9    # "dcSize":I
    .restart local v11    # "hasAnyCallDisconnected":Z
    .restart local v15    # "i":I
    .restart local v16    # "needsPollDelay":Z
    .restart local v19    # "polledCalls":Ljava/util/List;
    .restart local v20    # "unknownConnectionAppeared":Z
    :cond_3
    const/4 v8, 0x0

    #@f1
    .local v8, "dc":Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_2

    #@f3
    .line 498
    .end local v8    # "dc":Lcom/android/internal/telephony/DriverCall;
    :catch_0
    move-exception v10

    #@f4
    .line 499
    .local v10, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string/jumbo v21, "GsmCallTracker"

    #@f7
    const-string/jumbo v22, "unexpected error on hangup"

    #@fa
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fd
    goto :goto_3

    #@fe
    .end local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v7    # "curDC":I
    .end local v9    # "dcSize":I
    .end local v10    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v11    # "hasAnyCallDisconnected":Z
    .end local v15    # "i":I
    .end local v16    # "needsPollDelay":Z
    .end local v19    # "polledCalls":Ljava/util/List;
    .end local v20    # "unknownConnectionAppeared":Z
    :catchall_0
    move-exception v21

    #@ff
    monitor-exit p0

    #@100
    throw v21

    #@101
    .line 507
    .restart local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v7    # "curDC":I
    .restart local v9    # "dcSize":I
    .restart local v11    # "hasAnyCallDisconnected":Z
    .restart local v15    # "i":I
    .restart local v16    # "needsPollDelay":Z
    .restart local v19    # "polledCalls":Ljava/util/List;
    .restart local v20    # "unknownConnectionAppeared":Z
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    #@103
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@105
    move-object/from16 v21, v0

    #@107
    new-instance v22, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@10d
    move-object/from16 v23, v0

    #@10f
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@112
    move-result-object v23

    #@113
    move-object/from16 v0, v22

    #@115
    move-object/from16 v1, v23

    #@117
    move-object/from16 v2, p0

    #@119
    invoke-direct {v0, v1, v8, v2, v15}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    #@11c
    aput-object v22, v21, v15

    #@11e
    .line 509
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    #@123
    move-result-object v13

    #@124
    .line 510
    .local v13, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v13, :cond_8

    #@126
    .line 512
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@12a
    move-object/from16 v21, v0

    #@12c
    aget-object v21, v21, v15

    #@12e
    move-object/from16 v0, v21

    #@130
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    #@133
    .line 513
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    #@136
    move-result v21

    #@137
    if-nez v21, :cond_5

    #@139
    .line 515
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@13d
    move-object/from16 v21, v0

    #@13f
    move-object/from16 v0, v21

    #@141
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@144
    .line 517
    :cond_5
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@148
    move-object/from16 v21, v0

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@14e
    move-object/from16 v22, v0

    #@150
    aget-object v22, v22, v15

    #@152
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    #@155
    .line 545
    .end local v13    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_6
    :goto_4
    const/4 v12, 0x1

    #@156
    .line 461
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    #@158
    goto/16 :goto_1

    #@15a
    .line 518
    .restart local v13    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_8
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@15e
    move-object/from16 v21, v0

    #@160
    aget-object v21, v21, v15

    #@162
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@165
    move-result-object v21

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@16a
    move-object/from16 v22, v0

    #@16c
    move-object/from16 v0, v21

    #@16e
    move-object/from16 v1, v22

    #@170
    if-ne v0, v1, :cond_9

    #@172
    .line 519
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@176
    move-object/from16 v21, v0

    #@178
    aget-object v17, v21, v15

    #@17a
    .local v17, "newRinging":Lcom/android/internal/telephony/Connection;
    goto :goto_4

    #@17b
    .line 526
    .end local v17    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_9
    const-string/jumbo v21, "GsmCallTracker"

    #@17e
    new-instance v22, Ljava/lang/StringBuilder;

    #@180
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v23, "Phantom call appeared "

    #@186
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v22

    #@18a
    move-object/from16 v0, v22

    #@18c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v22

    #@190
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v22

    #@194
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@197
    .line 531
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@199
    move-object/from16 v21, v0

    #@19b
    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@19d
    move-object/from16 v0, v21

    #@19f
    move-object/from16 v1, v22

    #@1a1
    if-eq v0, v1, :cond_a

    #@1a3
    .line 532
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1a5
    move-object/from16 v21, v0

    #@1a7
    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@1a9
    move-object/from16 v0, v21

    #@1ab
    move-object/from16 v1, v22

    #@1ad
    if-eq v0, v1, :cond_a

    #@1af
    .line 533
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1b3
    move-object/from16 v21, v0

    #@1b5
    aget-object v21, v21, v15

    #@1b7
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    #@1ba
    .line 534
    iget-object v0, v8, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1bc
    move-object/from16 v21, v0

    #@1be
    sget-object v22, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@1c0
    move-object/from16 v0, v21

    #@1c2
    move-object/from16 v1, v22

    #@1c4
    if-ne v0, v1, :cond_a

    #@1c6
    .line 536
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1ca
    move-object/from16 v21, v0

    #@1cc
    aget-object v21, v21, v15

    #@1ce
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    #@1d1
    .line 540
    :cond_a
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1d5
    move-object/from16 v21, v0

    #@1d7
    aget-object v18, v21, v15

    #@1d9
    .line 542
    .local v18, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/16 v20, 0x1

    #@1db
    goto/16 :goto_4

    #@1dd
    .line 546
    .end local v13    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v18    # "newUnknown":Lcom/android/internal/telephony/Connection;
    :cond_b
    if-eqz v6, :cond_c

    #@1df
    if-nez v8, :cond_c

    #@1e1
    .line 549
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@1e5
    move-object/from16 v21, v0

    #@1e7
    move-object/from16 v0, v21

    #@1e9
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ec
    .line 552
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@1f0
    move-object/from16 v21, v0

    #@1f2
    const/16 v22, 0x0

    #@1f4
    aput-object v22, v21, v15

    #@1f6
    goto/16 :goto_5

    #@1f8
    .line 553
    :cond_c
    if-eqz v6, :cond_d

    #@1fa
    if-eqz v8, :cond_d

    #@1fc
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@1ff
    move-result v21

    #@200
    if-eqz v21, :cond_e

    #@202
    .line 564
    :cond_d
    if-eqz v6, :cond_7

    #@204
    if-eqz v8, :cond_7

    #@206
    .line 566
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@209
    move-result v5

    #@20a
    .line 567
    .local v5, "changed":Z
    if-nez v12, :cond_10

    #@20c
    move v12, v5

    #@20d
    .local v12, "hasNonHangupStateChanged":Z
    goto/16 :goto_5

    #@20f
    .line 557
    .end local v5    # "changed":Z
    .end local v12    # "hasNonHangupStateChanged":Z
    :cond_e
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@213
    move-object/from16 v21, v0

    #@215
    move-object/from16 v0, v21

    #@217
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21a
    .line 558
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@21e
    move-object/from16 v21, v0

    #@220
    new-instance v22, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@222
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@226
    move-object/from16 v23, v0

    #@228
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@22b
    move-result-object v23

    #@22c
    move-object/from16 v0, v22

    #@22e
    move-object/from16 v1, v23

    #@230
    move-object/from16 v2, p0

    #@232
    invoke-direct {v0, v1, v8, v2, v15}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    #@235
    aput-object v22, v21, v15

    #@237
    .line 560
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@23b
    move-object/from16 v21, v0

    #@23d
    aget-object v21, v21, v15

    #@23f
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    #@242
    move-result-object v21

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@247
    move-object/from16 v22, v0

    #@249
    move-object/from16 v0, v21

    #@24b
    move-object/from16 v1, v22

    #@24d
    if-ne v0, v1, :cond_f

    #@24f
    .line 561
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    #@253
    move-object/from16 v21, v0

    #@255
    aget-object v17, v21, v15

    #@257
    .line 563
    :cond_f
    const/4 v12, 0x1

    #@258
    .line 553
    .local v12, "hasNonHangupStateChanged":Z
    goto/16 :goto_5

    #@25a
    .line 567
    .end local v12    # "hasNonHangupStateChanged":Z
    .restart local v5    # "changed":Z
    :cond_10
    const/4 v12, 0x1

    #@25b
    .restart local v12    # "hasNonHangupStateChanged":Z
    goto/16 :goto_5

    #@25d
    .line 593
    .end local v5    # "changed":Z
    .end local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v12    # "hasNonHangupStateChanged":Z
    :cond_11
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@261
    move-object/from16 v21, v0

    #@263
    if-eqz v21, :cond_12

    #@265
    .line 594
    const-string/jumbo v21, "GsmCallTracker"

    #@268
    new-instance v22, Ljava/lang/StringBuilder;

    #@26a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@26d
    const-string/jumbo v23, "Pending MO dropped before poll fg state:"

    #@270
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v22

    #@274
    .line 595
    move-object/from16 v0, p0

    #@276
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@278
    move-object/from16 v23, v0

    #@27a
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@27d
    move-result-object v23

    #@27e
    .line 594
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v22

    #@282
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v22

    #@286
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@289
    .line 597
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@28d
    move-object/from16 v21, v0

    #@28f
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@293
    move-object/from16 v22, v0

    #@295
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@298
    .line 598
    const/16 v21, 0x0

    #@29a
    move-object/from16 v0, v21

    #@29c
    move-object/from16 v1, p0

    #@29e
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@2a0
    .line 599
    const/16 v21, 0x0

    #@2a2
    move/from16 v0, v21

    #@2a4
    move-object/from16 v1, p0

    #@2a6
    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    #@2a8
    .line 602
    :cond_12
    if-eqz v17, :cond_13

    #@2aa
    .line 603
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2ae
    move-object/from16 v21, v0

    #@2b0
    move-object/from16 v0, v21

    #@2b2
    move-object/from16 v1, v17

    #@2b4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    #@2b7
    .line 609
    :cond_13
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@2bb
    move-object/from16 v21, v0

    #@2bd
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@2c0
    move-result v21

    #@2c1
    add-int/lit8 v15, v21, -0x1

    #@2c3
    .end local v11    # "hasAnyCallDisconnected":Z
    :goto_6
    if-ltz v15, :cond_18

    #@2c5
    .line 610
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@2c9
    move-object/from16 v21, v0

    #@2cb
    move-object/from16 v0, v21

    #@2cd
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d0
    move-result-object v6

    #@2d1
    check-cast v6, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@2d3
    .line 612
    .restart local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    #@2d6
    move-result v21

    #@2d7
    if-eqz v21, :cond_16

    #@2d9
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    #@2dc
    move-result-wide v22

    #@2dd
    const-wide/16 v24, 0x0

    #@2df
    cmp-long v21, v22, v24

    #@2e1
    if-nez v21, :cond_16

    #@2e3
    .line 615
    iget v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@2e5
    move/from16 v21, v0

    #@2e7
    const/16 v22, 0x3

    #@2e9
    move/from16 v0, v21

    #@2eb
    move/from16 v1, v22

    #@2ed
    if-ne v0, v1, :cond_15

    #@2ef
    .line 616
    const/16 v4, 0x10

    #@2f1
    .line 622
    .local v4, "cause":I
    :goto_7
    new-instance v21, Ljava/lang/StringBuilder;

    #@2f3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@2f6
    const-string/jumbo v22, "missed/rejected call, conn.cause="

    #@2f9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v21

    #@2fd
    iget v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@2ff
    move/from16 v22, v0

    #@301
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@304
    move-result-object v21

    #@305
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v21

    #@309
    move-object/from16 v0, p0

    #@30b
    move-object/from16 v1, v21

    #@30d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@310
    .line 623
    new-instance v21, Ljava/lang/StringBuilder;

    #@312
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@315
    const-string/jumbo v22, "setting cause to "

    #@318
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v21

    #@31c
    move-object/from16 v0, v21

    #@31e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@321
    move-result-object v21

    #@322
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@325
    move-result-object v21

    #@326
    move-object/from16 v0, p0

    #@328
    move-object/from16 v1, v21

    #@32a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@32d
    .line 625
    move-object/from16 v0, p0

    #@32f
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@331
    move-object/from16 v21, v0

    #@333
    move-object/from16 v0, v21

    #@335
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@338
    .line 626
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    #@33b
    move-result v21

    #@33c
    or-int v11, v11, v21

    #@33e
    .line 609
    .end local v4    # "cause":I
    :cond_14
    :goto_8
    add-int/lit8 v15, v15, -0x1

    #@340
    goto :goto_6

    #@341
    .line 618
    :cond_15
    const/4 v4, 0x1

    #@342
    .restart local v4    # "cause":I
    goto :goto_7

    #@343
    .line 627
    .end local v4    # "cause":I
    :cond_16
    iget v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@345
    move/from16 v21, v0

    #@347
    const/16 v22, 0x3

    #@349
    move/from16 v0, v21

    #@34b
    move/from16 v1, v22

    #@34d
    if-eq v0, v1, :cond_17

    #@34f
    .line 628
    iget v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@351
    move/from16 v21, v0

    #@353
    const/16 v22, 0x7

    #@355
    move/from16 v0, v21

    #@357
    move/from16 v1, v22

    #@359
    if-ne v0, v1, :cond_14

    #@35b
    .line 629
    :cond_17
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@35f
    move-object/from16 v21, v0

    #@361
    move-object/from16 v0, v21

    #@363
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@366
    .line 630
    iget v0, v6, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    #@368
    move/from16 v21, v0

    #@36a
    move/from16 v0, v21

    #@36c
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    #@36f
    move-result v21

    #@370
    or-int v11, v11, v21

    #@372
    .local v11, "hasAnyCallDisconnected":Z
    goto :goto_8

    #@373
    .line 635
    .end local v6    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v11    # "hasAnyCallDisconnected":Z
    :cond_18
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@377
    move-object/from16 v21, v0

    #@379
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37c
    move-result-object v14

    #@37d
    .local v14, "hoConnection$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@380
    move-result v21

    #@381
    if-eqz v21, :cond_19

    #@383
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@386
    move-result-object v13

    #@387
    check-cast v13, Lcom/android/internal/telephony/Connection;

    #@389
    .line 636
    .restart local v13    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v21, Ljava/lang/StringBuilder;

    #@38b
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@38e
    const-string/jumbo v22, "handlePollCalls - disconnect hoConn= "

    #@391
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@394
    move-result-object v21

    #@395
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@398
    move-result-object v22

    #@399
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v21

    #@39d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a0
    move-result-object v21

    #@3a1
    move-object/from16 v0, p0

    #@3a3
    move-object/from16 v1, v21

    #@3a5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@3a8
    .line 637
    move-object v0, v13

    #@3a9
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3ab
    move-object/from16 v21, v0

    #@3ad
    const/16 v22, -0x1

    #@3af
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@3b2
    .line 638
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@3b6
    move-object/from16 v21, v0

    #@3b8
    move-object/from16 v0, v21

    #@3ba
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3bd
    goto :goto_9

    #@3be
    .line 642
    .end local v13    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_19
    move-object/from16 v0, p0

    #@3c0
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3c2
    move-object/from16 v21, v0

    #@3c4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@3c7
    move-result v21

    #@3c8
    if-lez v21, :cond_1a

    #@3ca
    .line 643
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3ce
    move-object/from16 v21, v0

    #@3d0
    .line 644
    const/16 v22, 0x5

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    move/from16 v1, v22

    #@3d6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    #@3d9
    move-result-object v22

    #@3da
    .line 643
    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    #@3dd
    .line 647
    :cond_1a
    if-eqz v16, :cond_1b

    #@3df
    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    #@3e2
    .line 656
    :cond_1b
    if-nez v17, :cond_1c

    #@3e4
    if-nez v12, :cond_1c

    #@3e6
    if-eqz v11, :cond_1d

    #@3e8
    .line 657
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    #@3eb
    .line 660
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    #@3ee
    .line 662
    if-eqz v20, :cond_1e

    #@3f0
    .line 663
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@3f4
    move-object/from16 v21, v0

    #@3f6
    move-object/from16 v0, v21

    #@3f8
    move-object/from16 v1, v18

    #@3fa
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@3fd
    .line 666
    :cond_1e
    if-nez v12, :cond_1f

    #@3ff
    if-eqz v17, :cond_21

    #@401
    .line 667
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@405
    move-object/from16 v21, v0

    #@407
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40a
    :cond_20
    monitor-exit p0

    #@40b
    .line 436
    return-void

    #@40c
    .line 666
    :cond_21
    if-eqz v11, :cond_20

    #@40e
    goto :goto_a
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 774
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 775
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@d
    const-string/jumbo v1, "no connections in call"

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@16
    if-ne p1, v0, :cond_1

    #@18
    .line 779
    const-string/jumbo v0, "(ringing) hangup waiting or background"

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@27
    .line 808
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    #@2a
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    #@2f
    .line 773
    return-void

    #@30
    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@32
    if-ne p1, v0, :cond_4

    #@34
    .line 782
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 784
    const-string/jumbo v0, "(foregnd) hangup dialing or alerting..."

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@40
    .line 786
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    #@43
    move-result-object v0

    #@44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@4a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    #@4d
    goto :goto_0

    #@4e
    .line 787
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@50
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_3

    #@56
    .line 789
    const-string/jumbo v0, "hangup all conns in active/background call, without affecting ringing call"

    #@59
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@5c
    .line 790
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    #@5f
    goto :goto_0

    #@60
    .line 792
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    #@63
    goto :goto_0

    #@64
    .line 794
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@66
    if-ne p1, v0, :cond_6

    #@68
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@6a
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_5

    #@70
    .line 797
    const-string/jumbo v0, "hangup all conns in background call"

    #@73
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@76
    .line 799
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    #@79
    goto :goto_0

    #@7a
    .line 801
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    #@7d
    goto :goto_0

    #@7e
    .line 804
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v2, "GsmCall "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    .line 805
    const-string/jumbo v2, "does not belong to GsmCallTracker "

    #@93
    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 715
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "GsmConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 716
    const-string/jumbo v3, "does not belong to GsmCallTracker "

    #@19
    .line 715
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 719
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    #@2b
    if-ne p1, v1, :cond_1

    #@2d
    .line 723
    const-string/jumbo v1, "hangup: set hangupPendingMO to true"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@33
    .line 724
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    #@36
    .line 736
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    #@39
    .line 713
    return-void

    #@3a
    .line 727
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    #@3f
    move-result v2

    #@40
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 728
    :catch_0
    move-exception v0

    #@49
    .line 731
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCallTracker"

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "GsmCallTracker WARN: hangup() on absent connection "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    #@0
    .prologue
    .line 840
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 841
    .local v1, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@9
    .line 842
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@11
    .line 843
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    #@16
    move-result v5

    #@17
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1a
    move-result-object v6

    #@1b
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 841
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 845
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@22
    .line 846
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCallTracker"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "hangupConnectionByIndex caught "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 838
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 826
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 827
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 828
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    #@11
    .line 829
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 830
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    #@20
    .line 831
    return-void

    #@21
    .line 827
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 835
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@26
    const-string/jumbo v4, "no gsm index found"

    #@29
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    #@0
    .prologue
    .line 820
    const-string/jumbo v0, "hangupForegroundResumeBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    #@f
    .line 819
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    #@0
    .prologue
    .line 814
    const-string/jumbo v0, "hangupWaitingOrBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@f
    .line 813
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 982
    const-string/jumbo v0, "GsmCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmCallTracker] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 981
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 146
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 147
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 145
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 136
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 134
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    #@15
    .line 282
    return-void

    #@16
    .line 288
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@18
    const-string/jumbo v1, "phone not ringing"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 741
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 742
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "GsmConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 743
    const-string/jumbo v3, "does not belong to GsmCallTracker "

    #@19
    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 746
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    #@2e
    move-result v2

    #@2f
    .line 747
    const/16 v3, 0xc

    #@31
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@34
    move-result-object v3

    #@35
    .line 746
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 740
    :goto_0
    return-void

    #@39
    .line 748
    :catch_0
    move-exception v0

    #@3a
    .line 751
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCallTracker"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "GsmCallTracker WARN: separate() on absent connection "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 760
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    #@2
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    #@a
    .line 759
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 296
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "cannot be in the incoming state"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    .line 299
    const/16 v1, 0x8

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 298
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    #@1e
    .line 293
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 151
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 140
    return-void
.end method
