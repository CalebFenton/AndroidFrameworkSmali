.class public Lcom/android/internal/telephony/GsmCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaCallTracker$1;
    }
.end annotation


# static fields
.field private static final DBG_POLL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTracker"

.field private static final MAX_CONNECTIONS_CDMA:I = 0x8

.field public static final MAX_CONNECTIONS_GSM:I = 0x13

.field private static final MAX_CONNECTIONS_PER_CALL_CDMA:I = 0x1

.field private static final MAX_CONNECTIONS_PER_CALL_GSM:I = 0x5

.field private static final REPEAT_POLLING:Z

.field private static final VDBG:Z


# instance fields
.field private m3WayCallFlashDelay:I

.field public mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field private mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

.field private mDesiredMute:Z

.field private mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field public mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field private mIsInEmergencyCall:Z

.field private mPendingCallClirMode:I

.field private mPendingCallInEcm:Z

.field private mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

.field private mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    #@4
    .line 70
    new-instance v1, Landroid/os/RegistrantList;

    #@6
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@b
    .line 71
    new-instance v1, Landroid/os/RegistrantList;

    #@d
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@12
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    #@14
    const/16 v2, 0x13

    #@16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@1b
    .line 77
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCall;

    #@1d
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@20
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@22
    .line 79
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCall;

    #@24
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@27
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@29
    .line 80
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCall;

    #@2b
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@2e
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@30
    .line 87
    const/4 v1, 0x0

    #@31
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@33
    .line 89
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@35
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@37
    .line 92
    new-instance v1, Landroid/os/RegistrantList;

    #@39
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@3e
    .line 102
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    #@40
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@43
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    #@45
    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@47
    .line 142
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@49
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4b
    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4d
    const/4 v2, 0x2

    #@4e
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@51
    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    const/16 v2, 0x9

    #@55
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@58
    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5a
    const/16 v2, 0xa

    #@5c
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5f
    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    #@61
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@64
    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6a
    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6c
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6f
    move-result-object v1

    #@70
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    #@72
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@75
    .line 152
    const/4 v1, 0x1

    #@76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    #@79
    .line 140
    return-void
.end method

.method private canDial()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 597
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v2

    #@d
    .line 599
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    #@10
    const-string/jumbo v6, "false"

    #@13
    .line 598
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 601
    .local v0, "disableCall":Ljava/lang/String;
    if-eq v2, v9, :cond_0

    #@19
    .line 602
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 603
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1f
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_2

    #@25
    :cond_0
    move v1, v5

    #@26
    .line 610
    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_1

    #@28
    .line 611
    const-string/jumbo v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == GsmCdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    #@2b
    const/16 v3, 0x8

    #@2d
    new-array v7, v3, [Ljava/lang/Object;

    #@2f
    .line 619
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    aput-object v3, v7, v5

    #@35
    .line 620
    if-eq v2, v9, :cond_6

    #@37
    move v3, v4

    #@38
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v3

    #@3c
    aput-object v3, v7, v4

    #@3e
    .line 621
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@40
    if-nez v3, :cond_7

    #@42
    move v3, v4

    #@43
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@46
    move-result-object v3

    #@47
    const/4 v8, 0x2

    #@48
    aput-object v3, v7, v8

    #@4a
    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4c
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_8

    #@52
    move v3, v5

    #@53
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v3

    #@57
    aput-object v3, v7, v9

    #@59
    .line 623
    const-string/jumbo v3, "true"

    #@5c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_9

    #@62
    move v3, v5

    #@63
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@66
    move-result-object v3

    #@67
    const/4 v8, 0x4

    #@68
    aput-object v3, v7, v8

    #@6a
    .line 624
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@6c
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@73
    move-result v3

    #@74
    if-eqz v3, :cond_a

    #@76
    move v3, v5

    #@77
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7a
    move-result-object v3

    #@7b
    const/4 v8, 0x5

    #@7c
    aput-object v3, v7, v8

    #@7e
    .line 625
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@80
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@83
    move-result-object v3

    #@84
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@86
    if-ne v3, v8, :cond_b

    #@88
    move v3, v4

    #@89
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8c
    move-result-object v3

    #@8d
    const/4 v8, 0x6

    #@8e
    aput-object v3, v7, v8

    #@90
    .line 626
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@92
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_c

    #@9c
    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9f
    move-result-object v3

    #@a0
    const/4 v4, 0x7

    #@a1
    aput-object v3, v7, v4

    #@a3
    .line 611
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@aa
    .line 629
    :cond_1
    return v1

    #@ab
    .line 604
    .end local v1    # "ret":Z
    :cond_2
    const-string/jumbo v3, "true"

    #@ae
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v3

    #@b2
    if-nez v3, :cond_0

    #@b4
    .line 605
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@b6
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@bd
    move-result v3

    #@be
    if-eqz v3, :cond_3

    #@c0
    .line 606
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@c2
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@c9
    move-result v3

    #@ca
    if-eqz v3, :cond_3

    #@cc
    .line 607
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@cf
    move-result v3

    #@d0
    if-nez v3, :cond_5

    #@d2
    .line 608
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@d4
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@d7
    move-result-object v3

    #@d8
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@da
    if-ne v3, v6, :cond_4

    #@dc
    move v3, v4

    #@dd
    :goto_8
    move v1, v3

    #@de
    .line 605
    goto/16 :goto_0

    #@e0
    :cond_3
    move v3, v4

    #@e1
    goto :goto_8

    #@e2
    :cond_4
    move v3, v5

    #@e3
    .line 608
    goto :goto_8

    #@e4
    :cond_5
    move v3, v5

    #@e5
    .line 607
    goto :goto_8

    #@e6
    .restart local v1    # "ret":Z
    :cond_6
    move v3, v5

    #@e7
    .line 620
    goto/16 :goto_1

    #@e9
    :cond_7
    move v3, v5

    #@ea
    .line 621
    goto/16 :goto_2

    #@ec
    :cond_8
    move v3, v4

    #@ed
    .line 622
    goto/16 :goto_3

    #@ef
    :cond_9
    move v3, v4

    #@f0
    .line 623
    goto/16 :goto_4

    #@f2
    :cond_a
    move v3, v4

    #@f3
    .line 624
    goto :goto_5

    #@f4
    :cond_b
    move v3, v5

    #@f5
    .line 625
    goto :goto_6

    #@f6
    :cond_c
    move v5, v4

    #@f7
    .line 626
    goto :goto_7
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1512
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1513
    iput-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@7
    .line 1514
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@a
    const-string/jumbo v2, "false"

    #@d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1516
    .local v0, "inEcm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 1518
    const-string/jumbo v1, "false"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_0

    #@31
    .line 1520
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    #@39
    .line 1521
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3b
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    #@3e
    .line 1523
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@40
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    #@43
    .line 1511
    .end local v0    # "inEcm":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 1533
    const/4 v0, 0x0

    #@1
    .line 1536
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3
    aget-object v1, v1, p2

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@f
    aget-object v0, v1, p2

    #@11
    .line 1538
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Notify new ring "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 1556
    .end local v0    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return-object v0

    #@29
    .line 1543
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Phantom call appeared "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1547
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@45
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@47
    if-eq v1, v2, :cond_0

    #@49
    .line 1548
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@4b
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@4d
    if-eq v1, v2, :cond_0

    #@4f
    .line 1549
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@51
    aget-object v1, v1, p2

    #@53
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@56
    .line 1550
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@58
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@5a
    if-ne v1, v2, :cond_0

    #@5c
    .line 1552
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@5e
    aget-object v1, v1, p2

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    #@63
    goto :goto_0
.end method

.method private dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 13
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@3
    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 375
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@b
    const-string/jumbo v1, "cannot dial in current state"

    #@e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "phone"

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v12

    #@1f
    check-cast v12, Landroid/telephony/TelephonyManager;

    #@21
    .line 380
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    move-object v10, p1

    #@22
    .line 381
    .local v10, "origNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@27
    move-result v0

    #@28
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    .line 382
    .local v9, "operatorIsoContry":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@31
    move-result v0

    #@32
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@35
    move-result-object v11

    #@36
    .line 383
    .local v11, "simIsoContry":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_1

    #@3c
    .line 384
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_6

    #@42
    .line 383
    :cond_1
    const/4 v7, 0x0

    #@43
    .line 386
    .local v7, "internationalRoaming":Z
    :goto_0
    if-eqz v7, :cond_3

    #@45
    .line 387
    const-string/jumbo v0, "us"

    #@48
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_9

    #@4e
    .line 388
    if-eqz v7, :cond_2

    #@50
    const-string/jumbo v0, "vi"

    #@53
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_8

    #@59
    :cond_2
    const/4 v7, 0x0

    #@5a
    .line 393
    .end local v7    # "internationalRoaming":Z
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    #@5c
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5e
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object p1

    #@62
    .line 397
    :cond_4
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@65
    const-string/jumbo v1, "false"

    #@68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 398
    .local v6, "inEcm":Ljava/lang/String;
    const-string/jumbo v0, "true"

    #@6f
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v8

    #@73
    .line 400
    .local v8, "isPhoneInEcmMode":Z
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@75
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@78
    move-result-object v0

    #@79
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@7c
    move-result v5

    #@7d
    .line 403
    .local v5, "isEmergencyCall":Z
    if-eqz v8, :cond_5

    #@7f
    if-eqz v5, :cond_5

    #@81
    .line 404
    const/4 v0, 0x1

    #@82
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    #@85
    .line 410
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@87
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@8a
    move-result-object v0

    #@8b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8d
    if-ne v0, v1, :cond_c

    #@8f
    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    #@92
    move-result-object v0

    #@93
    return-object v0

    #@94
    .line 385
    .end local v5    # "isEmergencyCall":Z
    .end local v6    # "inEcm":Ljava/lang/String;
    .end local v8    # "isPhoneInEcmMode":Z
    :cond_6
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_7

    #@9a
    const/4 v0, 0x0

    #@9b
    :goto_2
    move v7, v0

    #@9c
    goto :goto_0

    #@9d
    :cond_7
    const/4 v0, 0x1

    #@9e
    goto :goto_2

    #@9f
    .line 388
    .restart local v7    # "internationalRoaming":Z
    :cond_8
    const/4 v7, 0x1

    #@a0
    .local v7, "internationalRoaming":Z
    goto :goto_1

    #@a1
    .line 389
    .local v7, "internationalRoaming":Z
    :cond_9
    const-string/jumbo v0, "vi"

    #@a4
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_3

    #@aa
    .line 390
    if-eqz v7, :cond_a

    #@ac
    const-string/jumbo v0, "us"

    #@af
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v0

    #@b3
    if-eqz v0, :cond_b

    #@b5
    :cond_a
    const/4 v7, 0x0

    #@b6
    .local v7, "internationalRoaming":Z
    goto :goto_1

    #@b7
    .local v7, "internationalRoaming":Z
    :cond_b
    const/4 v7, 0x1

    #@b8
    .local v7, "internationalRoaming":Z
    goto :goto_1

    #@b9
    .line 414
    .end local v7    # "internationalRoaming":Z
    .restart local v5    # "isEmergencyCall":Z
    .restart local v6    # "inEcm":Ljava/lang/String;
    .restart local v8    # "isPhoneInEcmMode":Z
    :cond_c
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@bb
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@bd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    .line 415
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@c3
    move-object v3, p0

    #@c4
    .line 414
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    #@c7
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@c9
    .line 416
    const/4 v0, 0x0

    #@ca
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@cc
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@ce
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    if-eqz v0, :cond_d

    #@d4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@d6
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@dd
    move-result v0

    #@de
    if-nez v0, :cond_f

    #@e0
    .line 421
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@e2
    const/4 v1, 0x7

    #@e3
    iput v1, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@e5
    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@e8
    .line 444
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@ea
    if-eqz v0, :cond_e

    #@ec
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@ee
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    #@f1
    .line 446
    const/4 v0, 0x0

    #@f2
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@f4
    .line 449
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@f7
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f9
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@fc
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@fe
    return-object v0

    #@ff
    .line 419
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@101
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@104
    move-result-object v0

    #@105
    const/16 v1, 0x4e

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@10a
    move-result v0

    #@10b
    if-gez v0, :cond_d

    #@10d
    .line 428
    const/4 v0, 0x0

    #@10e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@111
    .line 431
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@114
    .line 434
    if-eqz v8, :cond_10

    #@116
    if-eqz v8, :cond_11

    #@118
    if-eqz v5, :cond_11

    #@11a
    .line 435
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@11c
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11e
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@125
    move-result-object v2

    #@126
    invoke-interface {v0, v1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@129
    goto :goto_3

    #@12a
    .line 437
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    #@12f
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@131
    const/16 v1, 0xe

    #@133
    const/4 v2, 0x0

    #@134
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@137
    .line 439
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@139
    .line 440
    const/4 v0, 0x1

    #@13a
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@13c
    goto :goto_3
.end method

.method private dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
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
    .line 496
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@b
    .line 462
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f
    .line 463
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@15
    .line 464
    iget-boolean v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@17
    move-object v3, p0

    #@18
    .line 462
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1d
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26
    move-result-object v0

    #@27
    .line 467
    const v1, 0x10e0096

    #@2a
    .line 466
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@30
    .line 468
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@32
    if-lez v0, :cond_0

    #@34
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@36
    const-string/jumbo v1, ""

    #@39
    const/16 v2, 0x14

    #@3b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@42
    .line 474
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@44
    return-object v0

    #@45
    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@47
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@49
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 472
    const/16 v2, 0x10

    #@4f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@52
    move-result-object v2

    #@53
    .line 471
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@56
    goto :goto_0

    #@57
    .line 476
    :cond_1
    const/4 v0, 0x0

    #@58
    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 353
    const-string/jumbo v0, "disableDataCallInEmergencyCall"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@12
    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    #@15
    .line 351
    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 6

    #@0
    .prologue
    .line 1096
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

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
    .line 1098
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2d
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

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
    .line 1100
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3e
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@41
    move-result-object v1

    #@42
    .line 1101
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
    .line 1102
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    .line 1101
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1105
    :cond_0
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@6b
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

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
    .line 1107
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@7c
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@7f
    move-result-object v1

    #@80
    .line 1108
    const/4 v0, 0x0

    #@81
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@84
    move-result v2

    #@85
    :goto_1
    if-ge v0, v2, :cond_1

    #@87
    .line 1109
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    .line 1108
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_1

    #@98
    .line 1112
    :cond_1
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@a9
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

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
    .line 1114
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@bd
    move-result-object v1

    #@be
    .line 1115
    const/4 v0, 0x0

    #@bf
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c2
    move-result v2

    #@c3
    :goto_2
    if-ge v0, v2, :cond_2

    #@c5
    .line 1116
    const-string/jumbo v3, "GsmCdmaCallTracker"

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
    .line 1115
    add-int/lit8 v0, v0, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 1093
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    #@0
    .prologue
    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/List;

    #@a
    .line 248
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
    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@17
    .line 251
    .local v0, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    #@1a
    .line 248
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 241
    .end local v0    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const-string/jumbo v1, ""

    #@5
    const/16 v2, 0x8

    #@7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@e
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@13
    .line 540
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1304
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1314
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@5
    return-object v0

    #@6
    .line 1306
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@8
    return-object v0

    #@9
    .line 1308
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@b
    return-object v0

    #@c
    .line 1310
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@e
    return-object v0

    #@f
    .line 1312
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@11
    return-object v0

    #@12
    .line 1304
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

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@0
    .prologue
    .line 1296
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@a
    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@d
    .line 1297
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@10
    .line 1300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@13
    .line 1294
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    #@5
    .line 339
    packed-switch p1, :pswitch_data_0

    #@8
    .line 343
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "handleEcmTimer, unsupported action "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 337
    :goto_0
    return-void

    #@23
    .line 340
    :pswitch_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@26
    goto :goto_0

    #@27
    .line 341
    :pswitch_1
    const/4 v0, 0x0

    #@28
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@2a
    goto :goto_0

    #@2b
    .line 339
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    #@0
    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 1086
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@5
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@a
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@f
    .line 646
    return-void
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1571
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 1287
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 657
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

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
    .line 665
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@6
    .line 666
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@9
    .line 667
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@c
    .line 672
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

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
    .line 676
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@7
    .line 681
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@9
    if-nez v0, :cond_1

    #@b
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 682
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@16
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@1a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    #@1d
    .line 675
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 684
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@20
    if-gez v0, :cond_0

    #@22
    .line 686
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@25
    const-string/jumbo v1, "GsmCdmaCallTracker.pendingOperations < 0"

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 687
    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@2d
    goto :goto_0
.end method

.method private reset()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 179
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@4
    const-string/jumbo v2, "reset"

    #@7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@d
    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@f
    const/4 v1, 0x0

    #@10
    array-length v3, v2

    #@11
    :goto_0
    if-ge v1, v3, :cond_1

    #@13
    aget-object v0, v2, v1

    #@15
    .line 184
    .local v0, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v0, :cond_0

    #@17
    .line 185
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    #@1a
    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 189
    .end local v0    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    #@26
    .line 193
    :cond_2
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@28
    .line 194
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2a
    .line 195
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2c
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    .line 178
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 693
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@5
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 694
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    .line 706
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    if-ne v2, v3, :cond_5

    #@15
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    if-eq v1, v2, :cond_5

    #@19
    .line 707
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 708
    new-instance v3, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 707
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@23
    .line 714
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "update phone state, old="

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, " new="

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@47
    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    if-eq v2, v1, :cond_1

    #@4b
    .line 717
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    #@50
    .line 718
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@53
    move-result-object v2

    #@54
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@56
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@59
    move-result v3

    #@5a
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5c
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    #@5f
    .line 691
    :cond_1
    return-void

    #@60
    .line 695
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@62
    if-nez v2, :cond_4

    #@64
    .line 696
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@66
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_4

    #@6c
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@6e
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_4

    #@74
    .line 699
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@76
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@79
    move-result-object v0

    #@7a
    .line 700
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7c
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7e
    if-ne v2, v3, :cond_3

    #@80
    if-eqz v0, :cond_3

    #@82
    .line 701
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    #@85
    .line 703
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@87
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@89
    goto :goto_0

    #@8a
    .line 697
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8c
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8e
    goto :goto_0

    #@8f
    .line 709
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@91
    if-ne v1, v2, :cond_0

    #@93
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@95
    if-eq v1, v2, :cond_0

    #@97
    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@99
    .line 711
    new-instance v3, Landroid/os/AsyncResult;

    #@9b
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@9e
    .line 710
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@a1
    goto :goto_1
.end method

.method private updatePhoneType(Z)V
    .locals 3
    .param p1, "duringInit"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    if-nez p1, :cond_0

    #@3
    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    #@6
    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@9
    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 165
    const/16 v0, 0x13

    #@13
    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@17
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    #@1c
    .line 159
    :goto_0
    return-void

    #@1d
    .line 168
    :cond_1
    const/16 v0, 0x8

    #@1f
    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@23
    .line 169
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@25
    .line 170
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@27
    .line 171
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@29
    .line 172
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@2b
    .line 173
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@2d
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2f
    const/16 v1, 0xf

    #@31
    const/4 v2, 0x0

    #@32
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@35
    goto :goto_0
.end method


# virtual methods
.method public acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 505
    const-string/jumbo v1, "phone"

    #@e
    const-string/jumbo v2, "acceptCall: incoming..."

    #@11
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 507
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@17
    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    #@20
    .line 499
    :goto_0
    return-void

    #@21
    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v1

    #@27
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@29
    if-ne v1, v2, :cond_2

    #@2b
    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 511
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@34
    .line 523
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    #@37
    goto :goto_0

    #@38
    .line 513
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@40
    .line 519
    .local v0, "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@42
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@47
    .line 520
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@4a
    .line 521
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@4d
    goto :goto_1

    #@4e
    .line 525
    .end local v0    # "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@50
    const-string/jumbo v2, "phone not ringing"

    #@53
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
.end method

.method public canConference()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 589
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_0

    #@26
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 633
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_3

    #@7
    .line 634
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@16
    move-result-object v1

    #@17
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@19
    if-ne v1, v2, :cond_2

    #@1b
    .line 637
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@20
    move-result-object v1

    #@21
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@23
    if-ne v1, v2, :cond_1

    #@25
    const/4 v0, 0x1

    #@26
    .line 634
    :cond_1
    return v0

    #@27
    .line 636
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@2c
    move-result-object v1

    #@2d
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    goto :goto_0

    #@32
    .line 639
    :cond_3
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@35
    const-string/jumbo v2, "canTransfer: not possible in CDMA"

    #@38
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 640
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    #@3
    .line 584
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@6
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@b
    .line 581
    return-void
.end method

.method public conference()V
    .locals 2

    #@0
    .prologue
    .line 569
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    const/16 v1, 0xb

    #@a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    #@11
    .line 568
    :goto_0
    return-void

    #@12
    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    #@15
    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 481
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 483
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 8
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
    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@4
    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 266
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "cannot dial in current state"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0

    #@16
    .line 269
    :cond_0
    move-object v7, p1

    #@17
    .line 270
    .local v7, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v0

    #@23
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-ne v0, v1, :cond_1

    #@27
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 285
    const-wide/16 v0, 0x1f4

    #@2c
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 294
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    #@32
    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@37
    move-result-object v0

    #@38
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3a
    if-eq v0, v1, :cond_2

    #@3c
    .line 299
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@3e
    const-string/jumbo v1, "cannot dial in current state"

    #@41
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 286
    :catch_0
    move-exception v6

    #@46
    .local v6, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@47
    .line 301
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@49
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@50
    move-result v5

    #@51
    .line 303
    .local v5, "isEmergencyCall":Z
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@53
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@5b
    move-object v3, p0

    #@5c
    .line 303
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    #@5f
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@61
    .line 305
    const/4 v0, 0x0

    #@62
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@64
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@66
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    if-eqz v0, :cond_3

    #@6c
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@6e
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@75
    move-result v0

    #@76
    if-nez v0, :cond_5

    #@78
    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@7a
    const/4 v1, 0x7

    #@7b
    iput v1, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@7d
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@80
    .line 322
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@86
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    #@89
    .line 324
    const/4 v0, 0x0

    #@8a
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@8c
    .line 327
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@8f
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@91
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@94
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@96
    monitor-exit p0

    #@97
    return-object v0

    #@98
    .line 308
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@9a
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    const/16 v1, 0x4e

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@a3
    move-result v0

    #@a4
    if-gez v0, :cond_3

    #@a6
    .line 317
    const/4 v0, 0x0

    #@a7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@aa
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ac
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@ae
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b5
    move-result-object v2

    #@b6
    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b9
    goto :goto_1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
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
    .line 490
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
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
    .line 1585
    const-string/jumbo v1, "GsmCdmaCallTracker extends:"

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1586
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@c
    .line 1587
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
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

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
    .line 1588
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@29
    array-length v1, v1

    #@2a
    if-ge v0, v1, :cond_0

    #@2c
    .line 1589
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
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@39
    aget-object v3, v3, v0

    #@3b
    aput-object v3, v2, v5

    #@3d
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@40
    .line 1588
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1591
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
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

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
    .line 1592
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
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

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
    .line 1593
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_1

    #@7b
    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, " mCallWaitingRegistrants="

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 1596
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v2, " mDroppedDuringPoll: size="

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v2

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 1597
    const/4 v0, 0x0

    #@b2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b7
    move-result v1

    #@b8
    if-ge v0, v1, :cond_2

    #@ba
    .line 1598
    const-string/jumbo v1, "  mDroppedDuringPoll[%d]=%s\n"

    #@bd
    new-array v2, v6, [Ljava/lang/Object;

    #@bf
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c2
    move-result-object v3

    #@c3
    aput-object v3, v2, v4

    #@c5
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@c7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ca
    move-result-object v3

    #@cb
    aput-object v3, v2, v5

    #@cd
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@d0
    .line 1597
    add-int/lit8 v0, v0, 0x1

    #@d2
    goto :goto_1

    #@d3
    .line 1600
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v2, " mRingingCall="

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@e1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v1

    #@e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ec
    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v2, " mForegroundCall="

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@105
    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v2, " mBackgroundCall="

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v1

    #@11b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11e
    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v2, " mPendingMO="

    #@126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v1

    #@12a
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@12c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v1

    #@130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v1

    #@134
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@137
    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v2, " mHangupPendingMO="

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v1

    #@14d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@150
    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v2, " mPhone="

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v1

    #@15c
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v1

    #@162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v1

    #@166
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@169
    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v2, " mDesiredMute="

    #@171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v1

    #@175
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v1

    #@17b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v1

    #@17f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@182
    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v2, " mState="

    #@18a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v1

    #@18e
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v1

    #@194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v1

    #@198
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19b
    .line 1608
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@19e
    move-result v1

    #@19f
    if-nez v1, :cond_3

    #@1a1
    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v2, " mPendingCallInEcm="

    #@1a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v1

    #@1ad
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@1af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v1

    #@1b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v1

    #@1b7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ba
    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    const-string/jumbo v2, " mIsInEmergencyCall="

    #@1c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v1

    #@1c6
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@1c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v1

    #@1d0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d3
    .line 1611
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d8
    const-string/jumbo v2, " mPendingCallClirMode="

    #@1db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v1

    #@1df
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@1e1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v1

    #@1e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e8
    move-result-object v1

    #@1e9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ec
    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v2, " mIsEcmTimerCanceled="

    #@1f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v1

    #@1f8
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@1fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v1

    #@202
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@205
    .line 1584
    :cond_3
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    #@b
    .line 577
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 200
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@3
    const-string/jumbo v1, "GsmCdmaCallTracker finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 199
    return-void
.end method

.method public getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1275
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1276
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 1277
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1278
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 1279
    return-object v0

    #@18
    .line 1276
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1283
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public getMaxConnectionsPerCall()I
    .locals 1

    #@0
    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1624
    const/4 v0, 0x5

    #@9
    .line 1623
    :goto_0
    return v0

    #@a
    .line 1625
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1191
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1323
    iget v10, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v10, :pswitch_data_0

    #@5
    .line 1500
    :pswitch_0
    new-instance v10, Ljava/lang/RuntimeException;

    #@7
    new-instance v11, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v12, "unexpected event "

    #@f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v11

    #@13
    iget v12, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    const-string/jumbo v12, " not handled by "

    #@1c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v11

    #@20
    .line 1501
    const-string/jumbo v12, "phone type "

    #@23
    .line 1500
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v11

    #@27
    .line 1501
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@29
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@2c
    move-result v12

    #@2d
    .line 1500
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v11

    #@35
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v10

    #@39
    .line 1325
    :pswitch_1
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@3c
    const-string/jumbo v11, "Event EVENT_POLL_CALLS_RESULT Received"

    #@3f
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1327
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@44
    if-ne p1, v10, :cond_0

    #@46
    .line 1330
    const/4 v10, 0x0

    #@47
    iput-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@49
    .line 1331
    const/4 v10, 0x0

    #@4a
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@4c
    .line 1332
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v10, Landroid/os/AsyncResult;

    #@50
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    #@53
    .line 1320
    :cond_0
    :goto_0
    return-void

    #@54
    .line 1337
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@57
    goto :goto_0

    #@58
    .line 1341
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_1

    #@5e
    .line 1344
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@60
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@63
    move-result-object v4

    #@64
    .line 1345
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_1

    #@66
    .line 1346
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    #@69
    .line 1353
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_1
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@6c
    move-result v10

    #@6d
    if-eqz v10, :cond_3

    #@6f
    .line 1354
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@71
    check-cast v0, Landroid/os/AsyncResult;

    #@73
    .line 1355
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@75
    if-eqz v10, :cond_2

    #@77
    .line 1356
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@79
    iget v11, p1, Landroid/os/Message;->what:I

    #@7b
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@7e
    move-result-object v11

    #@7f
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@82
    .line 1358
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@85
    goto :goto_0

    #@86
    .line 1360
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    iget v10, p1, Landroid/os/Message;->what:I

    #@88
    const/16 v11, 0x8

    #@8a
    if-eq v10, v11, :cond_0

    #@8c
    .line 1364
    new-instance v10, Ljava/lang/RuntimeException;

    #@8e
    new-instance v11, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v12, "unexpected event "

    #@96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v11

    #@9a
    iget v12, p1, Landroid/os/Message;->what:I

    #@9c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v11

    #@a0
    const-string/jumbo v12, " not handled by "

    #@a3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v11

    #@a7
    .line 1365
    const-string/jumbo v12, "phone type "

    #@aa
    .line 1364
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    .line 1365
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b0
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@b3
    move-result v12

    #@b4
    .line 1364
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v11

    #@b8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v11

    #@bc
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v10

    #@c0
    .line 1372
    :pswitch_5
    const/4 v9, 0x0

    #@c1
    .line 1373
    .local v9, "vendorCause":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c3
    check-cast v0, Landroid/os/AsyncResult;

    #@c5
    .line 1375
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@c8
    .line 1377
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ca
    if-eqz v10, :cond_7

    #@cc
    .line 1380
    const/16 v1, 0x10

    #@ce
    .line 1381
    .local v1, "causeCode":I
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@d1
    .line 1382
    const-string/jumbo v11, "Exception during getLastCallFailCause, assuming normal disconnect"

    #@d4
    .line 1381
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 1389
    .end local v9    # "vendorCause":Ljava/lang/String;
    :goto_1
    const/16 v10, 0x22

    #@d9
    if-eq v1, v10, :cond_4

    #@db
    .line 1390
    const/16 v10, 0x29

    #@dd
    if-ne v1, v10, :cond_8

    #@df
    .line 1397
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e1
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    #@e4
    move-result-object v7

    #@e5
    .line 1398
    .local v7, "loc":Landroid/telephony/CellLocation;
    const/4 v2, -0x1

    #@e6
    .line 1399
    .local v2, "cid":I
    if-eqz v7, :cond_5

    #@e8
    .line 1400
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@eb
    move-result v10

    #@ec
    if-eqz v10, :cond_9

    #@ee
    .line 1401
    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    #@f0
    .end local v7    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@f3
    move-result v2

    #@f4
    .line 1406
    :cond_5
    :goto_3
    const/4 v10, 0x3

    #@f5
    new-array v10, v10, [Ljava/lang/Object;

    #@f7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v11

    #@fb
    const/4 v12, 0x0

    #@fc
    aput-object v11, v10, v12

    #@fe
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object v11

    #@102
    const/4 v12, 0x1

    #@103
    aput-object v11, v10, v12

    #@105
    .line 1407
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@108
    move-result-object v11

    #@109
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@10c
    move-result v11

    #@10d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@110
    move-result-object v11

    #@111
    const/4 v12, 0x2

    #@112
    aput-object v11, v10, v12

    #@114
    .line 1406
    const v11, 0xc3ba

    #@117
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@11a
    .line 1410
    .end local v2    # "cid":I
    :cond_6
    const/4 v6, 0x0

    #@11b
    .local v6, "i":I
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@11d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@120
    move-result v8

    #@121
    .local v8, "s":I
    :goto_4
    if-ge v6, v8, :cond_a

    #@123
    .line 1411
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@125
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@128
    move-result-object v3

    #@129
    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@12b
    .line 1413
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v3, v1, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    #@12e
    .line 1410
    add-int/lit8 v6, v6, 0x1

    #@130
    goto :goto_4

    #@131
    .line 1384
    .end local v1    # "causeCode":I
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v6    # "i":I
    .end local v8    # "s":I
    .restart local v9    # "vendorCause":Ljava/lang/String;
    :cond_7
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@133
    check-cast v5, Lcom/android/internal/telephony/LastCallFailCause;

    #@135
    .line 1385
    .local v5, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, v5, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@137
    .line 1386
    .restart local v1    # "causeCode":I
    iget-object v9, v5, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@139
    .local v9, "vendorCause":Ljava/lang/String;
    goto :goto_1

    #@13a
    .line 1391
    .end local v5    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v9    # "vendorCause":Ljava/lang/String;
    :cond_8
    const/16 v10, 0x2a

    #@13c
    if-eq v1, v10, :cond_4

    #@13e
    .line 1392
    const/16 v10, 0x2c

    #@140
    if-eq v1, v10, :cond_4

    #@142
    .line 1393
    const/16 v10, 0x31

    #@144
    if-eq v1, v10, :cond_4

    #@146
    .line 1394
    const/16 v10, 0x3a

    #@148
    if-eq v1, v10, :cond_4

    #@14a
    .line 1395
    const v10, 0xffff

    #@14d
    if-ne v1, v10, :cond_6

    #@14f
    goto :goto_2

    #@150
    .line 1403
    .restart local v2    # "cid":I
    .restart local v7    # "loc":Landroid/telephony/CellLocation;
    :cond_9
    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    #@152
    .end local v7    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    #@155
    move-result v2

    #@156
    goto :goto_3

    #@157
    .line 1416
    .end local v2    # "cid":I
    .restart local v6    # "i":I
    .restart local v8    # "s":I
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@15a
    .line 1418
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15c
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@15f
    .line 1419
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@164
    goto/16 :goto_0

    #@166
    .line 1424
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v6    # "i":I
    .end local v8    # "s":I
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@169
    goto/16 :goto_0

    #@16b
    .line 1428
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioAvailable()V

    #@16e
    goto/16 :goto_0

    #@170
    .line 1432
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    #@173
    goto/16 :goto_0

    #@175
    .line 1436
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@178
    move-result v10

    #@179
    if-nez v10, :cond_c

    #@17b
    .line 1438
    iget-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@17d
    if-eqz v10, :cond_b

    #@17f
    .line 1439
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@181
    iget-object v11, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@183
    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@186
    move-result-object v11

    #@187
    iget v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@189
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@18c
    move-result-object v13

    #@18d
    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@190
    .line 1440
    const/4 v10, 0x0

    #@191
    iput-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@193
    .line 1442
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@195
    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@198
    goto/16 :goto_0

    #@19a
    .line 1444
    :cond_c
    new-instance v10, Ljava/lang/RuntimeException;

    #@19c
    new-instance v11, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v12, "unexpected event "

    #@1a4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v11

    #@1a8
    iget v12, p1, Landroid/os/Message;->what:I

    #@1aa
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v11

    #@1ae
    const-string/jumbo v12, " not handled by "

    #@1b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v11

    #@1b5
    .line 1445
    const-string/jumbo v12, "phone type "

    #@1b8
    .line 1444
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v11

    #@1bc
    .line 1445
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1be
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@1c1
    move-result v12

    #@1c2
    .line 1444
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v11

    #@1c6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v11

    #@1ca
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1cd
    throw v10

    #@1ce
    .line 1450
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@1d1
    move-result v10

    #@1d2
    if-nez v10, :cond_d

    #@1d4
    .line 1451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d6
    check-cast v0, Landroid/os/AsyncResult;

    #@1d8
    .line 1452
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1da
    if-nez v10, :cond_0

    #@1dc
    .line 1453
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1de
    check-cast v10, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@1e0
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@1e3
    .line 1454
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@1e6
    const-string/jumbo v11, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    #@1e9
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 1457
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_d
    new-instance v10, Ljava/lang/RuntimeException;

    #@1f0
    new-instance v11, Ljava/lang/StringBuilder;

    #@1f2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1f5
    const-string/jumbo v12, "unexpected event "

    #@1f8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v11

    #@1fc
    iget v12, p1, Landroid/os/Message;->what:I

    #@1fe
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@201
    move-result-object v11

    #@202
    const-string/jumbo v12, " not handled by "

    #@205
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v11

    #@209
    .line 1458
    const-string/jumbo v12, "phone type "

    #@20c
    .line 1457
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v11

    #@210
    .line 1458
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@212
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@215
    move-result v12

    #@216
    .line 1457
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@219
    move-result-object v11

    #@21a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21d
    move-result-object v11

    #@21e
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@221
    throw v10

    #@222
    .line 1463
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@225
    move-result v10

    #@226
    if-nez v10, :cond_e

    #@228
    .line 1464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22a
    check-cast v0, Landroid/os/AsyncResult;

    #@22c
    .line 1465
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@22e
    if-nez v10, :cond_0

    #@230
    .line 1467
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@232
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@235
    .line 1468
    const/4 v10, 0x0

    #@236
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@238
    goto/16 :goto_0

    #@23a
    .line 1471
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_e
    new-instance v10, Ljava/lang/RuntimeException;

    #@23c
    new-instance v11, Ljava/lang/StringBuilder;

    #@23e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@241
    const-string/jumbo v12, "unexpected event "

    #@244
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v11

    #@248
    iget v12, p1, Landroid/os/Message;->what:I

    #@24a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v11

    #@24e
    const-string/jumbo v12, " not handled by "

    #@251
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v11

    #@255
    .line 1472
    const-string/jumbo v12, "phone type "

    #@258
    .line 1471
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v11

    #@25c
    .line 1472
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@25e
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@261
    move-result v12

    #@262
    .line 1471
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@265
    move-result-object v11

    #@266
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v11

    #@26a
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26d
    throw v10

    #@26e
    .line 1477
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@271
    move-result v10

    #@272
    if-nez v10, :cond_10

    #@274
    .line 1478
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@276
    check-cast v0, Landroid/os/AsyncResult;

    #@278
    .line 1479
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@27a
    if-nez v10, :cond_f

    #@27c
    .line 1481
    new-instance v10, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    #@27e
    invoke-direct {v10, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@281
    .line 1488
    iget v11, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@283
    int-to-long v12, v11

    #@284
    .line 1480
    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@287
    goto/16 :goto_0

    #@289
    .line 1490
    :cond_f
    const/4 v10, 0x0

    #@28a
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@28c
    .line 1491
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@28f
    const-string/jumbo v11, "exception happened on Blank Flash for 3-way call"

    #@292
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@295
    goto/16 :goto_0

    #@297
    .line 1494
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_10
    new-instance v10, Ljava/lang/RuntimeException;

    #@299
    new-instance v11, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v12, "unexpected event "

    #@2a1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v11

    #@2a5
    iget v12, p1, Landroid/os/Message;->what:I

    #@2a7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v11

    #@2ab
    const-string/jumbo v12, " not handled by "

    #@2ae
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v11

    #@2b2
    .line 1495
    const-string/jumbo v12, "phone type "

    #@2b5
    .line 1494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v11

    #@2b9
    .line 1495
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2bb
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@2be
    move-result v12

    #@2bf
    .line 1494
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v11

    #@2c3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c6
    move-result-object v11

    #@2c7
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2ca
    throw v10

    #@2cb
    .line 1323
    nop

    #@2cc
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 36
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 729
    :try_start_0
    move-object/from16 v0, p1

    #@3
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5
    move-object/from16 v31, v0

    #@7
    if-nez v31, :cond_4

    #@9
    .line 730
    move-object/from16 v0, p1

    #@b
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d
    move-object/from16 v28, v0

    #@f
    check-cast v28, Ljava/util/List;

    #@11
    .line 742
    .local v28, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v24, 0x0

    #@13
    .line 743
    .local v24, "newRinging":Lcom/android/internal/telephony/Connection;
    new-instance v26, Ljava/util/ArrayList;

    #@15
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 744
    .local v26, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/16 v25, 0x0

    #@1a
    .line 745
    .local v25, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/16 v17, 0x0

    #@1c
    .line 747
    .local v17, "hasNonHangupStateChanged":Z
    const/16 v16, 0x0

    #@1e
    .line 748
    .local v16, "hasAnyCallDisconnected":Z
    const/16 v23, 0x0

    #@20
    .line 749
    .local v23, "needsPollDelay":Z
    const/16 v29, 0x0

    #@22
    .line 750
    .local v29, "unknownConnectionAppeared":Z
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@26
    move-object/from16 v31, v0

    #@28
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v15

    #@2c
    .line 753
    .local v15, "handoverConnectionsSize":I
    const/16 v27, 0x1

    #@2e
    .line 755
    .local v27, "noConnectionExists":Z
    const/16 v19, 0x0

    #@30
    .local v19, "i":I
    const/4 v11, 0x0

    #@31
    .local v11, "curDC":I
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@34
    move-result v13

    #@35
    .line 756
    .end local v17    # "hasNonHangupStateChanged":Z
    .end local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v13, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@39
    move-object/from16 v31, v0

    #@3b
    move-object/from16 v0, v31

    #@3d
    array-length v0, v0

    #@3e
    move/from16 v31, v0

    #@40
    .line 755
    move/from16 v0, v19

    #@42
    move/from16 v1, v31

    #@44
    if-ge v0, v1, :cond_1c

    #@46
    .line 757
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@4a
    move-object/from16 v31, v0

    #@4c
    aget-object v9, v31, v19

    #@4e
    .line 758
    .local v9, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v12, 0x0

    #@4f
    .line 761
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v11, v13, :cond_0

    #@51
    .line 762
    move-object/from16 v0, v28

    #@53
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v12

    #@57
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v12, Lcom/android/internal/telephony/DriverCall;

    #@59
    .line 764
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v12, Lcom/android/internal/telephony/DriverCall;->index:I

    #@5b
    move/from16 v31, v0

    #@5d
    add-int/lit8 v32, v19, 0x1

    #@5f
    move/from16 v0, v31

    #@61
    move/from16 v1, v32

    #@63
    if-ne v0, v1, :cond_6

    #@65
    .line 765
    add-int/lit8 v11, v11, 0x1

    #@67
    .line 772
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    :goto_2
    if-nez v9, :cond_1

    #@69
    if-eqz v12, :cond_2

    #@6b
    .line 773
    :cond_1
    const/16 v27, 0x0

    #@6d
    .line 779
    :cond_2
    if-nez v9, :cond_f

    #@6f
    if-eqz v12, :cond_f

    #@71
    .line 781
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@75
    move-object/from16 v31, v0

    #@77
    if-eqz v31, :cond_7

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@7d
    move-object/from16 v31, v0

    #@7f
    move-object/from16 v0, v31

    #@81
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@84
    move-result v31

    #@85
    if-eqz v31, :cond_7

    #@87
    .line 786
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@8b
    move-object/from16 v31, v0

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@91
    move-object/from16 v32, v0

    #@93
    aput-object v32, v31, v19

    #@95
    .line 787
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@99
    move-object/from16 v31, v0

    #@9b
    move/from16 v0, v19

    #@9d
    move-object/from16 v1, v31

    #@9f
    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    #@a1
    .line 788
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@a5
    move-object/from16 v31, v0

    #@a7
    move-object/from16 v0, v31

    #@a9
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@ac
    .line 789
    const/16 v31, 0x0

    #@ae
    move-object/from16 v0, v31

    #@b0
    move-object/from16 v1, p0

    #@b2
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@b4
    .line 792
    move-object/from16 v0, p0

    #@b6
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@b8
    move/from16 v31, v0

    #@ba
    if-eqz v31, :cond_b

    #@bc
    .line 793
    const/16 v31, 0x0

    #@be
    move/from16 v0, v31

    #@c0
    move-object/from16 v1, p0

    #@c2
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@c4
    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@c7
    move-result v31

    #@c8
    if-nez v31, :cond_3

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@ce
    move/from16 v31, v0

    #@d0
    if-eqz v31, :cond_3

    #@d2
    .line 797
    const/16 v31, 0x0

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, v31

    #@d8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@db
    .line 802
    :cond_3
    :try_start_1
    new-instance v31, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v32, "poll: hangupPendingMO, hangup conn "

    #@e3
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v31

    #@e7
    move-object/from16 v0, v31

    #@e9
    move/from16 v1, v19

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v31

    #@ef
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v31

    #@f3
    .line 801
    move-object/from16 v0, p0

    #@f5
    move-object/from16 v1, v31

    #@f7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@fa
    .line 803
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@fe
    move-object/from16 v31, v0

    #@100
    aget-object v31, v31, v19

    #@102
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, v31

    #@106
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@109
    :goto_3
    monitor-exit p0

    #@10a
    .line 810
    return-void

    #@10b
    .line 731
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v11    # "curDC":I
    .end local v13    # "dcSize":I
    .end local v15    # "handoverConnectionsSize":I
    .end local v16    # "hasAnyCallDisconnected":Z
    .end local v19    # "i":I
    .end local v23    # "needsPollDelay":Z
    .end local v26    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v27    # "noConnectionExists":Z
    .end local v28    # "polledCalls":Ljava/util/List;
    .end local v29    # "unknownConnectionAppeared":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    #@10d
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10f
    move-object/from16 v31, v0

    #@111
    move-object/from16 v0, p0

    #@113
    move-object/from16 v1, v31

    #@115
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    #@118
    move-result v31

    #@119
    if-eqz v31, :cond_5

    #@11b
    .line 734
    new-instance v28, Ljava/util/ArrayList;

    #@11d
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@120
    .restart local v28    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    #@122
    .line 738
    .end local v28    # "polledCalls":Ljava/util/List;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@125
    monitor-exit p0

    #@126
    .line 739
    return-void

    #@127
    .line 767
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .restart local v11    # "curDC":I
    .restart local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v13    # "dcSize":I
    .restart local v15    # "handoverConnectionsSize":I
    .restart local v16    # "hasAnyCallDisconnected":Z
    .restart local v19    # "i":I
    .restart local v23    # "needsPollDelay":Z
    .restart local v26    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v27    # "noConnectionExists":Z
    .restart local v28    # "polledCalls":Ljava/util/List;
    .restart local v29    # "unknownConnectionAppeared":Z
    :cond_6
    const/4 v12, 0x0

    #@128
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_2

    #@12a
    .line 804
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    :catch_0
    move-exception v14

    #@12b
    .line 805
    .local v14, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string/jumbo v31, "GsmCdmaCallTracker"

    #@12e
    const-string/jumbo v32, "unexpected error on hangup"

    #@131
    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@134
    goto :goto_3

    #@135
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v11    # "curDC":I
    .end local v13    # "dcSize":I
    .end local v14    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v15    # "handoverConnectionsSize":I
    .end local v16    # "hasAnyCallDisconnected":Z
    .end local v19    # "i":I
    .end local v23    # "needsPollDelay":Z
    .end local v26    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v27    # "noConnectionExists":Z
    .end local v28    # "polledCalls":Ljava/util/List;
    .end local v29    # "unknownConnectionAppeared":Z
    :catchall_0
    move-exception v31

    #@136
    monitor-exit p0

    #@137
    throw v31

    #@138
    .line 814
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .restart local v11    # "curDC":I
    .restart local v13    # "dcSize":I
    .restart local v15    # "handoverConnectionsSize":I
    .restart local v16    # "hasAnyCallDisconnected":Z
    .restart local v19    # "i":I
    .restart local v23    # "needsPollDelay":Z
    .restart local v26    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v27    # "noConnectionExists":Z
    .restart local v28    # "polledCalls":Ljava/util/List;
    .restart local v29    # "unknownConnectionAppeared":Z
    :cond_7
    :try_start_4
    new-instance v31, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v32, "pendingMo="

    #@140
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v31

    #@144
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@148
    move-object/from16 v32, v0

    #@14a
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v31

    #@14e
    const-string/jumbo v32, ", dc="

    #@151
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v31

    #@155
    move-object/from16 v0, v31

    #@157
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v31

    #@15b
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v31

    #@15f
    move-object/from16 v0, p0

    #@161
    move-object/from16 v1, v31

    #@163
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@166
    .line 817
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@16a
    move-object/from16 v31, v0

    #@16c
    new-instance v32, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@172
    move-object/from16 v33, v0

    #@174
    move-object/from16 v0, v32

    #@176
    move-object/from16 v1, v33

    #@178
    move-object/from16 v2, p0

    #@17a
    move/from16 v3, v19

    #@17c
    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    #@17f
    aput-object v32, v31, v19

    #@181
    .line 819
    move-object/from16 v0, p0

    #@183
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    #@186
    move-result-object v18

    #@187
    .line 820
    .local v18, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v18, :cond_d

    #@189
    .line 822
    move-object/from16 v0, p0

    #@18b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@18d
    move-object/from16 v31, v0

    #@18f
    aget-object v31, v31, v19

    #@191
    move-object/from16 v0, v31

    #@193
    move-object/from16 v1, v18

    #@195
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    #@198
    .line 825
    move-object/from16 v0, v18

    #@19a
    iget-object v0, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@19c
    move-object/from16 v31, v0

    #@19e
    sget-object v32, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@1a0
    move-object/from16 v0, v31

    #@1a2
    move-object/from16 v1, v32

    #@1a4
    if-eq v0, v1, :cond_8

    #@1a6
    .line 826
    move-object/from16 v0, v18

    #@1a8
    iget-object v0, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@1aa
    move-object/from16 v31, v0

    #@1ac
    sget-object v32, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@1ae
    move-object/from16 v0, v31

    #@1b0
    move-object/from16 v1, v32

    #@1b2
    if-eq v0, v1, :cond_8

    #@1b4
    .line 827
    iget-object v0, v12, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1b6
    move-object/from16 v31, v0

    #@1b8
    sget-object v32, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@1ba
    move-object/from16 v0, v31

    #@1bc
    move-object/from16 v1, v32

    #@1be
    if-ne v0, v1, :cond_8

    #@1c0
    .line 828
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1c4
    move-object/from16 v31, v0

    #@1c6
    aget-object v31, v31, v19

    #@1c8
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@1cb
    .line 831
    :cond_8
    move-object/from16 v0, p0

    #@1cd
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@1cf
    move-object/from16 v31, v0

    #@1d1
    move-object/from16 v0, v31

    #@1d3
    move-object/from16 v1, v18

    #@1d5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1d8
    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@1db
    move-result v31

    #@1dc
    if-eqz v31, :cond_a

    #@1de
    .line 834
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@1e2
    move-object/from16 v31, v0

    #@1e4
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1e7
    move-result-object v21

    #@1e8
    .line 835
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_9
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@1eb
    move-result v31

    #@1ec
    .line 834
    if-eqz v31, :cond_a

    #@1ee
    .line 836
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f1
    move-result-object v4

    #@1f2
    check-cast v4, Lcom/android/internal/telephony/Connection;

    #@1f4
    .line 837
    .local v4, "c":Lcom/android/internal/telephony/Connection;
    const-string/jumbo v31, "GsmCdmaCallTracker"

    #@1f7
    new-instance v32, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v33, "HO Conn state is "

    #@1ff
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v32

    #@203
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@205
    move-object/from16 v33, v0

    #@207
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v32

    #@20b
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v32

    #@20f
    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@212
    .line 838
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@214
    move-object/from16 v31, v0

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@21a
    move-object/from16 v32, v0

    #@21c
    aget-object v32, v32, v19

    #@21e
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@221
    move-result-object v32

    #@222
    move-object/from16 v0, v31

    #@224
    move-object/from16 v1, v32

    #@226
    if-ne v0, v1, :cond_9

    #@228
    .line 839
    const-string/jumbo v31, "GsmCdmaCallTracker"

    #@22b
    new-instance v32, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v33, "Removing HO conn "

    #@233
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v32

    #@237
    move-object/from16 v0, v32

    #@239
    move-object/from16 v1, v18

    #@23b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v32

    #@23f
    .line 840
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@241
    move-object/from16 v33, v0

    #@243
    .line 839
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v32

    #@247
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24a
    move-result-object v32

    #@24b
    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24e
    .line 841
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V

    #@251
    goto :goto_4

    #@252
    .line 846
    .end local v4    # "c":Lcom/android/internal/telephony/Connection;
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_a
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@256
    move-object/from16 v31, v0

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@25c
    move-object/from16 v32, v0

    #@25e
    aget-object v32, v32, v19

    #@260
    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    #@263
    .line 860
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_b
    :goto_5
    const/16 v17, 0x1

    #@265
    .line 756
    :cond_c
    :goto_6
    add-int/lit8 v19, v19, 0x1

    #@267
    goto/16 :goto_1

    #@269
    .line 849
    .restart local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_d
    move-object/from16 v0, p0

    #@26b
    move/from16 v1, v19

    #@26d
    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@270
    move-result-object v24

    #@271
    .line 850
    .local v24, "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v24, :cond_b

    #@273
    .line 851
    const/16 v29, 0x1

    #@275
    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@278
    move-result v31

    #@279
    if-eqz v31, :cond_e

    #@27b
    .line 853
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@27f
    move-object/from16 v31, v0

    #@281
    aget-object v31, v31, v19

    #@283
    move-object/from16 v0, v26

    #@285
    move-object/from16 v1, v31

    #@287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28a
    goto :goto_5

    #@28b
    .line 855
    :cond_e
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@28f
    move-object/from16 v31, v0

    #@291
    aget-object v25, v31, v19

    #@293
    .local v25, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_5

    #@294
    .line 861
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v25    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_f
    if-eqz v9, :cond_14

    #@296
    if-nez v12, :cond_14

    #@298
    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@29b
    move-result v31

    #@29c
    if-eqz v31, :cond_10

    #@29e
    .line 865
    move-object/from16 v0, p0

    #@2a0
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@2a2
    move-object/from16 v31, v0

    #@2a4
    move-object/from16 v0, v31

    #@2a6
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a9
    .line 868
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2ad
    move-object/from16 v31, v0

    #@2af
    const/16 v32, 0x0

    #@2b1
    aput-object v32, v31, v19

    #@2b3
    goto :goto_6

    #@2b4
    .line 874
    :cond_10
    move-object/from16 v0, p0

    #@2b6
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2b8
    move-object/from16 v31, v0

    #@2ba
    move-object/from16 v0, v31

    #@2bc
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2be
    move-object/from16 v31, v0

    #@2c0
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@2c3
    move-result v10

    #@2c4
    .line 875
    .local v10, "count":I
    const/16 v22, 0x0

    #@2c6
    .local v22, "n":I
    :goto_7
    move/from16 v0, v22

    #@2c8
    if-ge v0, v10, :cond_11

    #@2ca
    .line 876
    new-instance v31, Ljava/lang/StringBuilder;

    #@2cc
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@2cf
    const-string/jumbo v32, "adding fgCall cn "

    #@2d2
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v31

    #@2d6
    move-object/from16 v0, v31

    #@2d8
    move/from16 v1, v22

    #@2da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v31

    #@2de
    const-string/jumbo v32, " to droppedDuringPoll"

    #@2e1
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v31

    #@2e5
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e8
    move-result-object v31

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    move-object/from16 v1, v31

    #@2ed
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@2f0
    .line 877
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2f4
    move-object/from16 v31, v0

    #@2f6
    move-object/from16 v0, v31

    #@2f8
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2fa
    move-object/from16 v31, v0

    #@2fc
    move-object/from16 v0, v31

    #@2fe
    move/from16 v1, v22

    #@300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@303
    move-result-object v8

    #@304
    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@306
    .line 878
    .local v8, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@30a
    move-object/from16 v31, v0

    #@30c
    move-object/from16 v0, v31

    #@30e
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@311
    .line 875
    add-int/lit8 v22, v22, 0x1

    #@313
    goto :goto_7

    #@314
    .line 880
    .end local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_11
    move-object/from16 v0, p0

    #@316
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@318
    move-object/from16 v31, v0

    #@31a
    move-object/from16 v0, v31

    #@31c
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@31e
    move-object/from16 v31, v0

    #@320
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@323
    move-result v10

    #@324
    .line 883
    const/16 v22, 0x0

    #@326
    :goto_8
    move/from16 v0, v22

    #@328
    if-ge v0, v10, :cond_12

    #@32a
    .line 884
    new-instance v31, Ljava/lang/StringBuilder;

    #@32c
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@32f
    const-string/jumbo v32, "adding rgCall cn "

    #@332
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    move-result-object v31

    #@336
    move-object/from16 v0, v31

    #@338
    move/from16 v1, v22

    #@33a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v31

    #@33e
    const-string/jumbo v32, " to droppedDuringPoll"

    #@341
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@344
    move-result-object v31

    #@345
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@348
    move-result-object v31

    #@349
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v31

    #@34d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@350
    .line 885
    move-object/from16 v0, p0

    #@352
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@354
    move-object/from16 v31, v0

    #@356
    move-object/from16 v0, v31

    #@358
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@35a
    move-object/from16 v31, v0

    #@35c
    move-object/from16 v0, v31

    #@35e
    move/from16 v1, v22

    #@360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@363
    move-result-object v8

    #@364
    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@366
    .line 886
    .restart local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    move-object/from16 v0, p0

    #@368
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@36a
    move-object/from16 v31, v0

    #@36c
    move-object/from16 v0, v31

    #@36e
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@371
    .line 883
    add-int/lit8 v22, v22, 0x1

    #@373
    goto :goto_8

    #@374
    .line 890
    .end local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_12
    move-object/from16 v0, p0

    #@376
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@378
    move/from16 v31, v0

    #@37a
    if-eqz v31, :cond_13

    #@37c
    .line 891
    const/16 v31, 0x0

    #@37e
    move-object/from16 v0, p0

    #@380
    move/from16 v1, v31

    #@382
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    #@385
    .line 894
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@388
    .line 898
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@38c
    move-object/from16 v31, v0

    #@38e
    const/16 v32, 0x0

    #@390
    aput-object v32, v31, v19

    #@392
    goto/16 :goto_6

    #@394
    .line 901
    .end local v10    # "count":I
    .end local v22    # "n":I
    :cond_14
    if-eqz v9, :cond_15

    #@396
    if-eqz v12, :cond_15

    #@398
    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@39b
    move-result v31

    #@39c
    if-eqz v31, :cond_17

    #@39e
    .line 912
    :cond_15
    if-eqz v9, :cond_c

    #@3a0
    if-eqz v12, :cond_c

    #@3a2
    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3a5
    move-result v31

    #@3a6
    if-nez v31, :cond_1a

    #@3a8
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    #@3ab
    move-result v31

    #@3ac
    iget-boolean v0, v12, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@3ae
    move/from16 v32, v0

    #@3b0
    move/from16 v0, v31

    #@3b2
    move/from16 v1, v32

    #@3b4
    if-eq v0, v1, :cond_1a

    #@3b6
    .line 915
    iget-boolean v0, v12, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@3b8
    move/from16 v31, v0

    #@3ba
    if-eqz v31, :cond_19

    #@3bc
    .line 917
    move-object/from16 v0, p0

    #@3be
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3c0
    move-object/from16 v31, v0

    #@3c2
    move-object/from16 v0, v31

    #@3c4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c7
    .line 919
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v19

    #@3cb
    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@3ce
    move-result-object v24

    #@3cf
    .line 920
    .restart local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v24, :cond_16

    #@3d1
    .line 921
    const/16 v29, 0x1

    #@3d3
    .line 922
    move-object/from16 v25, v9

    #@3d5
    .line 924
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@3d8
    goto/16 :goto_6

    #@3da
    .line 901
    .end local v24    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3dd
    move-result v31

    #@3de
    if-eqz v31, :cond_15

    #@3e0
    .line 905
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3e4
    move-object/from16 v31, v0

    #@3e6
    move-object/from16 v0, v31

    #@3e8
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3eb
    .line 906
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3ef
    move-object/from16 v31, v0

    #@3f1
    new-instance v32, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3f3
    move-object/from16 v0, p0

    #@3f5
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3f7
    move-object/from16 v33, v0

    #@3f9
    move-object/from16 v0, v32

    #@3fb
    move-object/from16 v1, v33

    #@3fd
    move-object/from16 v2, p0

    #@3ff
    move/from16 v3, v19

    #@401
    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    #@404
    aput-object v32, v31, v19

    #@406
    .line 908
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@40a
    move-object/from16 v31, v0

    #@40c
    aget-object v31, v31, v19

    #@40e
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@411
    move-result-object v31

    #@412
    move-object/from16 v0, p0

    #@414
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@416
    move-object/from16 v32, v0

    #@418
    move-object/from16 v0, v31

    #@41a
    move-object/from16 v1, v32

    #@41c
    if-ne v0, v1, :cond_18

    #@41e
    .line 909
    move-object/from16 v0, p0

    #@420
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@422
    move-object/from16 v31, v0

    #@424
    aget-object v24, v31, v19

    #@426
    .line 911
    :cond_18
    const/16 v17, 0x1

    #@428
    .restart local v17    # "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@42a
    .line 930
    .end local v17    # "hasNonHangupStateChanged":Z
    :cond_19
    const-string/jumbo v31, "GsmCdmaCallTracker"

    #@42d
    new-instance v32, Ljava/lang/StringBuilder;

    #@42f
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@432
    const-string/jumbo v33, "Error in RIL, Phantom call appeared "

    #@435
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@438
    move-result-object v32

    #@439
    move-object/from16 v0, v32

    #@43b
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43e
    move-result-object v32

    #@43f
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@442
    move-result-object v32

    #@443
    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@446
    goto/16 :goto_6

    #@448
    .line 934
    :cond_1a
    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@44b
    move-result v7

    #@44c
    .line 935
    .local v7, "changed":Z
    if-nez v17, :cond_1b

    #@44e
    move/from16 v17, v7

    #@450
    .local v17, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@452
    .end local v17    # "hasNonHangupStateChanged":Z
    :cond_1b
    const/16 v17, 0x1

    #@454
    .local v17, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@456
    .line 960
    .end local v7    # "changed":Z
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v17    # "hasNonHangupStateChanged":Z
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@459
    move-result v31

    #@45a
    if-nez v31, :cond_1d

    #@45c
    if-eqz v27, :cond_1d

    #@45e
    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@461
    .line 967
    :cond_1d
    move-object/from16 v0, p0

    #@463
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@465
    move-object/from16 v31, v0

    #@467
    if-eqz v31, :cond_1f

    #@469
    .line 968
    const-string/jumbo v31, "GsmCdmaCallTracker"

    #@46c
    new-instance v32, Ljava/lang/StringBuilder;

    #@46e
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@471
    const-string/jumbo v33, "Pending MO dropped before poll fg state:"

    #@474
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@477
    move-result-object v32

    #@478
    .line 969
    move-object/from16 v0, p0

    #@47a
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@47c
    move-object/from16 v33, v0

    #@47e
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@481
    move-result-object v33

    #@482
    .line 968
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@485
    move-result-object v32

    #@486
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@489
    move-result-object v32

    #@48a
    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48d
    .line 971
    move-object/from16 v0, p0

    #@48f
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@491
    move-object/from16 v31, v0

    #@493
    move-object/from16 v0, p0

    #@495
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@497
    move-object/from16 v32, v0

    #@499
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49c
    .line 972
    const/16 v31, 0x0

    #@49e
    move-object/from16 v0, v31

    #@4a0
    move-object/from16 v1, p0

    #@4a2
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@4a4
    .line 973
    const/16 v31, 0x0

    #@4a6
    move/from16 v0, v31

    #@4a8
    move-object/from16 v1, p0

    #@4aa
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@4ac
    .line 975
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4af
    move-result v31

    #@4b0
    if-nez v31, :cond_1f

    #@4b2
    .line 976
    move-object/from16 v0, p0

    #@4b4
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@4b6
    move/from16 v31, v0

    #@4b8
    if-eqz v31, :cond_1e

    #@4ba
    .line 977
    const/16 v31, 0x0

    #@4bc
    move/from16 v0, v31

    #@4be
    move-object/from16 v1, p0

    #@4c0
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@4c2
    .line 979
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@4c5
    .line 983
    :cond_1f
    if-eqz v24, :cond_20

    #@4c7
    .line 984
    move-object/from16 v0, p0

    #@4c9
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4cb
    move-object/from16 v31, v0

    #@4cd
    move-object/from16 v0, v31

    #@4cf
    move-object/from16 v1, v24

    #@4d1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    #@4d4
    .line 990
    :cond_20
    move-object/from16 v0, p0

    #@4d6
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@4d8
    move-object/from16 v31, v0

    #@4da
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@4dd
    move-result v31

    #@4de
    add-int/lit8 v19, v31, -0x1

    #@4e0
    .end local v16    # "hasAnyCallDisconnected":Z
    :goto_9
    if-ltz v19, :cond_26

    #@4e2
    .line 991
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@4e6
    move-object/from16 v31, v0

    #@4e8
    move-object/from16 v0, v31

    #@4ea
    move/from16 v1, v19

    #@4ec
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4ef
    move-result-object v9

    #@4f0
    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@4f2
    .line 993
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v30, 0x0

    #@4f4
    .line 995
    .local v30, "wasDisconnected":Z
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    #@4f7
    move-result v31

    #@4f8
    if-eqz v31, :cond_24

    #@4fa
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    #@4fd
    move-result-wide v32

    #@4fe
    const-wide/16 v34, 0x0

    #@500
    cmp-long v31, v32, v34

    #@502
    if-nez v31, :cond_24

    #@504
    .line 998
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@506
    move/from16 v31, v0

    #@508
    const/16 v32, 0x3

    #@50a
    move/from16 v0, v31

    #@50c
    move/from16 v1, v32

    #@50e
    if-ne v0, v1, :cond_23

    #@510
    .line 999
    const/16 v6, 0x10

    #@512
    .line 1005
    .local v6, "cause":I
    :goto_a
    new-instance v31, Ljava/lang/StringBuilder;

    #@514
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@517
    const-string/jumbo v32, "missed/rejected call, conn.cause="

    #@51a
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v31

    #@51e
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@520
    move/from16 v32, v0

    #@522
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@525
    move-result-object v31

    #@526
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@529
    move-result-object v31

    #@52a
    move-object/from16 v0, p0

    #@52c
    move-object/from16 v1, v31

    #@52e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@531
    .line 1006
    new-instance v31, Ljava/lang/StringBuilder;

    #@533
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@536
    const-string/jumbo v32, "setting cause to "

    #@539
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53c
    move-result-object v31

    #@53d
    move-object/from16 v0, v31

    #@53f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@542
    move-result-object v31

    #@543
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@546
    move-result-object v31

    #@547
    move-object/from16 v0, p0

    #@549
    move-object/from16 v1, v31

    #@54b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@54e
    .line 1008
    move-object/from16 v0, p0

    #@550
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@552
    move-object/from16 v31, v0

    #@554
    move-object/from16 v0, v31

    #@556
    move/from16 v1, v19

    #@558
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@55b
    .line 1009
    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    #@55e
    move-result v31

    #@55f
    or-int v16, v16, v31

    #@561
    .line 1010
    .local v16, "hasAnyCallDisconnected":Z
    const/16 v30, 0x1

    #@563
    .line 1018
    .end local v6    # "cause":I
    .end local v16    # "hasAnyCallDisconnected":Z
    :cond_21
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@566
    move-result v31

    #@567
    if-nez v31, :cond_22

    #@569
    if-eqz v30, :cond_22

    #@56b
    if-eqz v29, :cond_22

    #@56d
    .line 1019
    move-object/from16 v0, v25

    #@56f
    if-ne v9, v0, :cond_22

    #@571
    .line 1020
    const/16 v29, 0x0

    #@573
    .line 1021
    const/16 v25, 0x0

    #@575
    .line 990
    :cond_22
    add-int/lit8 v19, v19, -0x1

    #@577
    goto/16 :goto_9

    #@579
    .line 1001
    :cond_23
    const/4 v6, 0x1

    #@57a
    .restart local v6    # "cause":I
    goto :goto_a

    #@57b
    .line 1011
    .end local v6    # "cause":I
    :cond_24
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@57d
    move/from16 v31, v0

    #@57f
    const/16 v32, 0x3

    #@581
    move/from16 v0, v31

    #@583
    move/from16 v1, v32

    #@585
    if-eq v0, v1, :cond_25

    #@587
    .line 1012
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@589
    move/from16 v31, v0

    #@58b
    const/16 v32, 0x7

    #@58d
    move/from16 v0, v31

    #@58f
    move/from16 v1, v32

    #@591
    if-ne v0, v1, :cond_21

    #@593
    .line 1013
    :cond_25
    move-object/from16 v0, p0

    #@595
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@597
    move-object/from16 v31, v0

    #@599
    move-object/from16 v0, v31

    #@59b
    move/from16 v1, v19

    #@59d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5a0
    .line 1014
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@5a2
    move/from16 v31, v0

    #@5a4
    move/from16 v0, v31

    #@5a6
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    #@5a9
    move-result v31

    #@5aa
    or-int v16, v16, v31

    #@5ac
    .line 1015
    .restart local v16    # "hasAnyCallDisconnected":Z
    const/16 v30, 0x1

    #@5ae
    goto :goto_b

    #@5af
    .line 1026
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v16    # "hasAnyCallDisconnected":Z
    .end local v30    # "wasDisconnected":Z
    :cond_26
    move-object/from16 v0, p0

    #@5b1
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@5b3
    move-object/from16 v31, v0

    #@5b5
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5b8
    move-result-object v21

    #@5b9
    .line 1027
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@5bc
    move-result v31

    #@5bd
    .line 1026
    if-eqz v31, :cond_28

    #@5bf
    .line 1028
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c2
    move-result-object v18

    #@5c3
    check-cast v18, Lcom/android/internal/telephony/Connection;

    #@5c5
    .line 1029
    .restart local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v31, Ljava/lang/StringBuilder;

    #@5c7
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@5ca
    const-string/jumbo v32, "handlePollCalls - disconnect hoConn= "

    #@5cd
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d0
    move-result-object v31

    #@5d1
    move-object/from16 v0, v31

    #@5d3
    move-object/from16 v1, v18

    #@5d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d8
    move-result-object v31

    #@5d9
    .line 1030
    const-string/jumbo v32, " hoConn.State= "

    #@5dc
    .line 1029
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5df
    move-result-object v31

    #@5e0
    .line 1030
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@5e3
    move-result-object v32

    #@5e4
    .line 1029
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e7
    move-result-object v31

    #@5e8
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5eb
    move-result-object v31

    #@5ec
    move-object/from16 v0, p0

    #@5ee
    move-object/from16 v1, v31

    #@5f0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@5f3
    .line 1031
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@5f6
    move-result-object v31

    #@5f7
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@5fa
    move-result v31

    #@5fb
    if-eqz v31, :cond_27

    #@5fd
    .line 1032
    const/16 v31, 0x1

    #@5ff
    move-object/from16 v0, v18

    #@601
    move/from16 v1, v31

    #@603
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    #@606
    .line 1036
    :goto_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V

    #@609
    goto :goto_c

    #@60a
    .line 1034
    :cond_27
    const/16 v31, -0x1

    #@60c
    move-object/from16 v0, v18

    #@60e
    move/from16 v1, v31

    #@610
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    #@613
    goto :goto_d

    #@614
    .line 1040
    .end local v18    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_28
    move-object/from16 v0, p0

    #@616
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@618
    move-object/from16 v31, v0

    #@61a
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@61d
    move-result v31

    #@61e
    if-lez v31, :cond_29

    #@620
    .line 1041
    move-object/from16 v0, p0

    #@622
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@624
    move-object/from16 v31, v0

    #@626
    .line 1042
    const/16 v32, 0x5

    #@628
    move-object/from16 v0, p0

    #@62a
    move/from16 v1, v32

    #@62c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    #@62f
    move-result-object v32

    #@630
    .line 1041
    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    #@633
    .line 1045
    :cond_29
    if-eqz v23, :cond_2a

    #@635
    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V

    #@638
    .line 1054
    :cond_2a
    if-nez v24, :cond_2b

    #@63a
    if-nez v17, :cond_2b

    #@63c
    if-eqz v16, :cond_2c

    #@63e
    .line 1055
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    #@641
    .line 1059
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@644
    .line 1061
    if-eqz v29, :cond_2e

    #@646
    .line 1062
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@649
    move-result v31

    #@64a
    if-eqz v31, :cond_2d

    #@64c
    .line 1063
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64f
    move-result-object v5

    #@650
    .local v5, "c$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@653
    move-result v31

    #@654
    if-eqz v31, :cond_2e

    #@656
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@659
    move-result-object v4

    #@65a
    check-cast v4, Lcom/android/internal/telephony/Connection;

    #@65c
    .line 1064
    .restart local v4    # "c":Lcom/android/internal/telephony/Connection;
    new-instance v31, Ljava/lang/StringBuilder;

    #@65e
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@661
    const-string/jumbo v32, "Notify unknown for "

    #@664
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@667
    move-result-object v31

    #@668
    move-object/from16 v0, v31

    #@66a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66d
    move-result-object v31

    #@66e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@671
    move-result-object v31

    #@672
    move-object/from16 v0, p0

    #@674
    move-object/from16 v1, v31

    #@676
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@679
    .line 1065
    move-object/from16 v0, p0

    #@67b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@67d
    move-object/from16 v31, v0

    #@67f
    move-object/from16 v0, v31

    #@681
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@684
    goto :goto_e

    #@685
    .line 1068
    .end local v4    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "c$iterator":Ljava/util/Iterator;
    :cond_2d
    move-object/from16 v0, p0

    #@687
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@689
    move-object/from16 v31, v0

    #@68b
    move-object/from16 v0, v31

    #@68d
    move-object/from16 v1, v25

    #@68f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@692
    .line 1072
    :cond_2e
    if-nez v17, :cond_2f

    #@694
    if-eqz v24, :cond_32

    #@696
    .line 1073
    :cond_2f
    :goto_f
    move-object/from16 v0, p0

    #@698
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@69a
    move-object/from16 v31, v0

    #@69c
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@69f
    .line 1077
    :cond_30
    if-lez v15, :cond_31

    #@6a1
    move-object/from16 v0, p0

    #@6a3
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@6a5
    move-object/from16 v31, v0

    #@6a7
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    #@6aa
    move-result v31

    #@6ab
    if-nez v31, :cond_31

    #@6ad
    .line 1078
    move-object/from16 v0, p0

    #@6af
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6b1
    move-object/from16 v31, v0

    #@6b3
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@6b6
    move-result-object v20

    #@6b7
    .line 1079
    .local v20, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v20, :cond_31

    #@6b9
    .line 1080
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6bc
    .end local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_31
    monitor-exit p0

    #@6bd
    .line 725
    return-void

    #@6be
    .line 1072
    :cond_32
    if-eqz v16, :cond_30

    #@6c0
    goto :goto_f
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1198
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1199
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@d
    const-string/jumbo v1, "no connections in call"

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@16
    if-ne p1, v0, :cond_1

    #@18
    .line 1203
    const-string/jumbo v0, "(ringing) hangup waiting or background"

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@27
    .line 1233
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    #@2a
    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@2f
    .line 1197
    return-void

    #@30
    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@32
    if-ne p1, v0, :cond_4

    #@34
    .line 1206
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 1208
    const-string/jumbo v0, "(foregnd) hangup dialing or alerting..."

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@40
    .line 1210
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@43
    move-result-object v0

    #@44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@4a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    #@4d
    goto :goto_0

    #@4e
    .line 1211
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@59
    move-result v0

    #@5a
    .line 1211
    if-eqz v0, :cond_3

    #@5c
    .line 1214
    const-string/jumbo v0, "hangup all conns in active/background call, without affecting ringing call"

    #@5f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@62
    .line 1215
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@65
    goto :goto_0

    #@66
    .line 1217
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    #@69
    goto :goto_0

    #@6a
    .line 1219
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@6c
    if-ne p1, v0, :cond_6

    #@6e
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@70
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_5

    #@76
    .line 1222
    const-string/jumbo v0, "hangup all conns in background call"

    #@79
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@7c
    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@7f
    goto :goto_0

    #@80
    .line 1226
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    #@83
    goto :goto_0

    #@84
    .line 1229
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    #@86
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v2, "GsmCdmaCall "

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 1230
    const-string/jumbo v2, "does not belong to GsmCdmaCallTracker "

    #@99
    .line 1229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1124
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 1125
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "GsmCdmaConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 1126
    const-string/jumbo v3, "does not belong to GsmCdmaCallTracker "

    #@19
    .line 1125
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
    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2b
    if-ne p1, v1, :cond_1

    #@2d
    .line 1133
    const-string/jumbo v1, "hangup: set hangupPendingMO to true"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@33
    .line 1134
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@36
    .line 1165
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    #@39
    .line 1123
    return-void

    #@3a
    .line 1135
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_2

    #@40
    .line 1136
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@46
    if-ne v1, v2, :cond_2

    #@48
    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@4d
    move-result-object v1

    #@4e
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@50
    if-ne v1, v2, :cond_2

    #@52
    .line 1149
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    #@55
    .line 1151
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@58
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@5d
    .line 1153
    return-void

    #@5e
    .line 1156
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@60
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@63
    move-result v2

    #@64
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@67
    move-result-object v3

    #@68
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_0

    #@6c
    .line 1157
    :catch_0
    move-exception v0

    #@6d
    .line 1160
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@70
    new-instance v2, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v3, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_0
.end method

.method public hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    #@0
    .prologue
    .line 1263
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1264
    .local v1, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@9
    .line 1265
    iget-object v4, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1266
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@16
    move-result v5

    #@17
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1a
    move-result-object v6

    #@1b
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1264
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1268
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@22
    .line 1269
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "GsmCdmaCallTracker"

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
    .line 1261
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1249
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1250
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 1251
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1252
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 1253
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    #@20
    .line 1254
    return-void

    #@21
    .line 1250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1258
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@26
    const-string/jumbo v4, "no GsmCdma index found"

    #@29
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
.end method

.method public hangupForegroundResumeBackground()V
    .locals 2

    #@0
    .prologue
    .line 1243
    const-string/jumbo v0, "hangupForegroundResumeBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    #@f
    .line 1242
    return-void
.end method

.method public hangupWaitingOrBackground()V
    .locals 2

    #@0
    .prologue
    .line 1238
    const-string/jumbo v0, "hangupWaitingOrBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@f
    .line 1237
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1580
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmCdmaCallTracker] "

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
    .line 1579
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 233
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 234
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 232
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 223
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 224
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 222
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 208
    new-instance v0, Landroid/os/Registrant;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 209
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@b
    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 212
    new-instance v1, Landroid/os/AsyncResult;

    #@13
    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@19
    .line 207
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    #@15
    .line 529
    return-void

    #@16
    .line 535
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@18
    const-string/jumbo v1, "phone not ringing"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method

.method public separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1169
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 1170
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "GsmCdmaConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 1171
    const-string/jumbo v3, "does not belong to GsmCdmaCallTracker "

    #@19
    .line 1170
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
    .line 1174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@2e
    move-result v2

    #@2f
    .line 1175
    const/16 v3, 0xc

    #@31
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@34
    move-result-object v3

    #@35
    .line 1174
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1168
    :goto_0
    return-void

    #@39
    .line 1176
    :catch_0
    move-exception v0

    #@3a
    .line 1179
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "GsmCdmaCallTracker WARN: separate() on absent connection "

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

.method public setIsInEmergencyCall()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 360
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@3
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    #@b
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    #@10
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    #@15
    .line 359
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 1186
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@2
    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    #@a
    .line 1185
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 549
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@e
    const-string/jumbo v1, "cannot be in the incoming state"

    #@11
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    .line 553
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    .line 552
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    #@24
    .line 546
    :goto_0
    return-void

    #@25
    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@27
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@2e
    move-result v0

    #@2f
    const/4 v1, 0x1

    #@30
    if-le v0, v1, :cond_2

    #@32
    .line 556
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    #@35
    goto :goto_0

    #@36
    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@38
    const-string/jumbo v1, ""

    #@3b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@42
    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 237
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 228
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 217
    return-void
.end method

.method public updatePhoneType()V
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    #@4
    .line 155
    return-void
.end method
