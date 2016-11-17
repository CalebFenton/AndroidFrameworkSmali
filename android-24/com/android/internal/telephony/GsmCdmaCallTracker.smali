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

.field private mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

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
    .line 142
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
    .line 94
    new-instance v1, Landroid/os/RegistrantList;

    #@39
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@3e
    .line 104
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    #@40
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@43
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    #@45
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@47
    .line 144
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@49
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4b
    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4d
    const/4 v2, 0x2

    #@4e
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@51
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    const/16 v2, 0x9

    #@55
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@58
    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5a
    const/16 v2, 0xa

    #@5c
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5f
    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    #@61
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@64
    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6a
    .line 152
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
    .line 154
    const/4 v1, 0x1

    #@76
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    #@79
    .line 156
    new-instance v1, Lcom/android/internal/telephony/TelephonyEventLog;

    #@7b
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@80
    move-result v2

    #@81
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;-><init>(I)V

    #@84
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

    #@86
    .line 142
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
    .line 591
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
    .line 593
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    #@10
    const-string/jumbo v6, "false"

    #@13
    .line 592
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 595
    .local v0, "disableCall":Ljava/lang/String;
    if-eq v2, v9, :cond_0

    #@19
    .line 596
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 597
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
    .line 604
    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_1

    #@28
    .line 605
    const-string/jumbo v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == GsmCdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    #@2b
    const/16 v3, 0x8

    #@2d
    new-array v7, v3, [Ljava/lang/Object;

    #@2f
    .line 613
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    aput-object v3, v7, v5

    #@35
    .line 614
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
    .line 615
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
    .line 616
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
    .line 617
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
    .line 618
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
    .line 619
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
    .line 620
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
    .line 605
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@aa
    .line 623
    :cond_1
    return v1

    #@ab
    .line 598
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
    .line 599
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
    .line 600
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
    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@cf
    move-result v3

    #@d0
    if-nez v3, :cond_5

    #@d2
    .line 602
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
    .line 599
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
    .line 602
    goto :goto_8

    #@e4
    :cond_5
    move v3, v5

    #@e5
    .line 601
    goto :goto_8

    #@e6
    .restart local v1    # "ret":Z
    :cond_6
    move v3, v5

    #@e7
    .line 614
    goto/16 :goto_1

    #@e9
    :cond_7
    move v3, v5

    #@ea
    .line 615
    goto/16 :goto_2

    #@ec
    :cond_8
    move v3, v4

    #@ed
    .line 616
    goto/16 :goto_3

    #@ef
    :cond_9
    move v3, v4

    #@f0
    .line 617
    goto/16 :goto_4

    #@f2
    :cond_a
    move v3, v4

    #@f3
    .line 618
    goto :goto_5

    #@f4
    :cond_b
    move v3, v5

    #@f5
    .line 619
    goto :goto_6

    #@f6
    :cond_c
    move v5, v4

    #@f7
    .line 620
    goto :goto_7
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1498
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1499
    iput-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@7
    .line 1500
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@a
    const-string/jumbo v2, "false"

    #@d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1502
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
    .line 1504
    const-string/jumbo v1, "false"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_0

    #@31
    .line 1506
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    #@39
    .line 1507
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3b
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    #@3e
    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@40
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    #@43
    .line 1497
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
    .line 1519
    const/4 v0, 0x0

    #@1
    .line 1522
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
    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@f
    aget-object v0, v1, p2

    #@11
    .line 1524
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
    .line 1542
    .end local v0    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return-object v0

    #@29
    .line 1529
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
    .line 1533
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@45
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@47
    if-eq v1, v2, :cond_0

    #@49
    .line 1534
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@4b
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@4d
    if-eq v1, v2, :cond_0

    #@4f
    .line 1535
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@51
    aget-object v1, v1, p2

    #@53
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@56
    .line 1536
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@58
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@5a
    if-ne v1, v2, :cond_0

    #@5c
    .line 1538
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@5e
    aget-object v1, v1, p2

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    #@63
    goto :goto_0
.end method

.method private dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 12
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@3
    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_0

    #@9
    .line 370
    new-instance v8, Lcom/android/internal/telephony/CallStateException;

    #@b
    const-string/jumbo v9, "cannot dial in current state"

    #@e
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 374
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@14
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@17
    move-result-object v8

    #@18
    const-string/jumbo v9, "phone"

    #@1b
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v7

    #@1f
    check-cast v7, Landroid/telephony/TelephonyManager;

    #@21
    .line 375
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    move-object v5, p1

    #@22
    .line 376
    .local v5, "origNumber":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 377
    .local v4, "operatorIsoContry":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2e
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@31
    move-result v8

    #@32
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 378
    .local v6, "simIsoContry":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_1

    #@3c
    .line 379
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    .line 378
    :cond_1
    const/4 v1, 0x0

    #@43
    .line 381
    .local v1, "internationalRoaming":Z
    :goto_0
    if-eqz v1, :cond_3

    #@45
    .line 382
    const-string/jumbo v8, "us"

    #@48
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_9

    #@4e
    .line 383
    if-eqz v1, :cond_2

    #@50
    const-string/jumbo v8, "vi"

    #@53
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v8

    #@57
    if-eqz v8, :cond_8

    #@59
    :cond_2
    const/4 v1, 0x0

    #@5a
    .line 388
    .end local v1    # "internationalRoaming":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    #@5c
    .line 389
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5e
    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object p1

    #@62
    .line 392
    :cond_4
    const-string/jumbo v8, "ril.cdma.inecmmode"

    #@65
    const-string/jumbo v9, "false"

    #@68
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    .line 393
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v8, "true"

    #@6f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v3

    #@73
    .line 395
    .local v3, "isPhoneInEcmMode":Z
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@75
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@78
    move-result-object v8

    #@79
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@7c
    move-result v2

    #@7d
    .line 398
    .local v2, "isEmergencyCall":Z
    if-eqz v3, :cond_5

    #@7f
    if-eqz v2, :cond_5

    #@81
    .line 399
    const/4 v8, 0x1

    #@82
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    #@85
    .line 405
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@87
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@8a
    move-result-object v8

    #@8b
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8d
    if-ne v8, v9, :cond_c

    #@8f
    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    #@92
    move-result-object v8

    #@93
    return-object v8

    #@94
    .line 380
    .end local v0    # "inEcm":Ljava/lang/String;
    .end local v2    # "isEmergencyCall":Z
    .end local v3    # "isPhoneInEcmMode":Z
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v8

    #@98
    if-eqz v8, :cond_7

    #@9a
    const/4 v8, 0x0

    #@9b
    :goto_2
    move v1, v8

    #@9c
    goto :goto_0

    #@9d
    :cond_7
    const/4 v8, 0x1

    #@9e
    goto :goto_2

    #@9f
    .line 383
    .restart local v1    # "internationalRoaming":Z
    :cond_8
    const/4 v1, 0x1

    #@a0
    .local v1, "internationalRoaming":Z
    goto :goto_1

    #@a1
    .line 384
    .local v1, "internationalRoaming":Z
    :cond_9
    const-string/jumbo v8, "vi"

    #@a4
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v8

    #@a8
    if-eqz v8, :cond_3

    #@aa
    .line 385
    if-eqz v1, :cond_a

    #@ac
    const-string/jumbo v8, "us"

    #@af
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_b

    #@b5
    :cond_a
    const/4 v1, 0x0

    #@b6
    .local v1, "internationalRoaming":Z
    goto :goto_1

    #@b7
    .local v1, "internationalRoaming":Z
    :cond_b
    const/4 v1, 0x1

    #@b8
    .local v1, "internationalRoaming":Z
    goto :goto_1

    #@b9
    .line 409
    .end local v1    # "internationalRoaming":Z
    .restart local v0    # "inEcm":Ljava/lang/String;
    .restart local v2    # "isEmergencyCall":Z
    .restart local v3    # "isPhoneInEcmMode":Z
    :cond_c
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@bb
    iget-object v9, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@bd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v10

    #@c1
    .line 410
    iget-object v11, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@c3
    .line 409
    invoke-direct {v8, v9, v10, p0, v11}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@c6
    iput-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@c8
    .line 411
    const/4 v8, 0x0

    #@c9
    iput-boolean v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@cb
    .line 413
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@cd
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@d0
    move-result-object v8

    #@d1
    if-eqz v8, :cond_d

    #@d3
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@d5
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@dc
    move-result v8

    #@dd
    if-nez v8, :cond_f

    #@df
    .line 416
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@e1
    const/4 v9, 0x7

    #@e2
    iput v9, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@e4
    .line 420
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@e7
    .line 439
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@e9
    if-eqz v8, :cond_e

    #@eb
    .line 440
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@ed
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    #@f0
    .line 441
    const/4 v8, 0x0

    #@f1
    iput-boolean v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@f3
    .line 444
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@f6
    .line 445
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f8
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@fb
    .line 447
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@fd
    return-object v8

    #@fe
    .line 414
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@100
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@103
    move-result-object v8

    #@104
    const/16 v9, 0x4e

    #@106
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@109
    move-result v8

    #@10a
    if-gez v8, :cond_d

    #@10c
    .line 423
    const/4 v8, 0x0

    #@10d
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@110
    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@113
    .line 429
    if-eqz v3, :cond_10

    #@115
    if-eqz v3, :cond_11

    #@117
    if-eqz v2, :cond_11

    #@119
    .line 430
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@11b
    iget-object v9, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11d
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@120
    move-result-object v9

    #@121
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@124
    move-result-object v10

    #@125
    invoke-interface {v8, v9, p2, v10}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@128
    goto :goto_3

    #@129
    .line 432
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12b
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    #@12e
    .line 433
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@130
    const/16 v9, 0xe

    #@132
    const/4 v10, 0x0

    #@133
    invoke-virtual {v8, p0, v9, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@136
    .line 434
    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@138
    .line 435
    const/4 v8, 0x1

    #@139
    iput-boolean v8, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@13b
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
    .line 490
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@b
    .line 457
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f
    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@15
    .line 457
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1a
    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v0

    #@24
    .line 461
    const v1, 0x10e0090

    #@27
    .line 460
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@2d
    .line 462
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@2f
    if-lez v0, :cond_0

    #@31
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@33
    const-string/jumbo v1, ""

    #@36
    const/16 v2, 0x14

    #@38
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@3f
    .line 468
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@41
    return-object v0

    #@42
    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@44
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 466
    const/16 v2, 0x10

    #@4c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@4f
    move-result-object v2

    #@50
    .line 465
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@53
    goto :goto_0

    #@54
    .line 470
    :cond_1
    const/4 v0, 0x0

    #@55
    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
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
    .line 348
    const-string/jumbo v0, "disableDataCallInEmergencyCall"

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@12
    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    #@15
    .line 346
    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 6

    #@0
    .prologue
    .line 1082
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
    .line 1084
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
    .line 1086
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3e
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@41
    move-result-object v1

    #@42
    .line 1087
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
    .line 1088
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
    .line 1087
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1091
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
    .line 1093
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@7c
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@7f
    move-result-object v1

    #@80
    .line 1094
    const/4 v0, 0x0

    #@81
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@84
    move-result v2

    #@85
    :goto_1
    if-ge v0, v2, :cond_1

    #@87
    .line 1095
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
    .line 1094
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_1

    #@98
    .line 1098
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
    .line 1100
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    #@bd
    move-result-object v1

    #@be
    .line 1101
    const/4 v0, 0x0

    #@bf
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c2
    move-result v2

    #@c3
    :goto_2
    if-ge v0, v2, :cond_2

    #@c5
    .line 1102
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
    .line 1101
    add-int/lit8 v0, v0, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 1079
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    #@0
    .prologue
    .line 242
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
    .line 244
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
    .line 245
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@17
    .line 247
    .local v0, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    #@1a
    .line 244
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 237
    .end local v0    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    #@0
    .prologue
    .line 535
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
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@13
    .line 534
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 1290
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1300
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@5
    return-object v0

    #@6
    .line 1292
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@8
    return-object v0

    #@9
    .line 1294
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@b
    return-object v0

    #@c
    .line 1296
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@e
    return-object v0

    #@f
    .line 1298
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@11
    return-object v0

    #@12
    .line 1290
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
    .line 1282
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
    .line 1283
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@10
    .line 1286
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@13
    .line 1280
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    #@5
    .line 334
    packed-switch p1, :pswitch_data_0

    #@8
    .line 338
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
    .line 332
    :goto_0
    return-void

    #@23
    .line 335
    :pswitch_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@26
    goto :goto_0

    #@27
    .line 336
    :pswitch_1
    const/4 v0, 0x0

    #@28
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@2a
    goto :goto_0

    #@2b
    .line 334
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
    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 1072
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@5
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@a
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    #@f
    .line 640
    return-void
.end method

.method private isPhoneTypeGsm()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1557
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
    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 1273
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 651
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
    .line 659
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@6
    .line 660
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@9
    .line 661
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@c
    .line 666
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
    .line 670
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@7
    .line 675
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@9
    if-nez v0, :cond_1

    #@b
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 676
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@16
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@1a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    #@1d
    .line 669
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 678
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@20
    if-gez v0, :cond_0

    #@22
    .line 680
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@25
    const-string/jumbo v1, "GsmCdmaCallTracker.pendingOperations < 0"

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 681
    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    #@2d
    goto :goto_0
.end method

.method private reset()V
    .locals 4

    #@0
    .prologue
    .line 183
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@3
    const-string/jumbo v2, "reset"

    #@6
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@c
    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@e
    const/4 v1, 0x0

    #@f
    array-length v3, v2

    #@10
    :goto_0
    if-ge v1, v3, :cond_1

    #@12
    aget-object v0, v2, v1

    #@14
    .line 188
    .local v0, "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v0, :cond_0

    #@16
    .line 189
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    #@19
    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 182
    .end local v0    # "gsmCdmaConnection":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    return-void
.end method

.method private updatePhoneState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 686
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 687
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@5
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 688
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    .line 700
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
    .line 701
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 702
    new-instance v3, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 701
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@23
    .line 708
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
    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    if-eq v2, v1, :cond_1

    #@4b
    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    #@50
    .line 712
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

    #@52
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@54
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->writePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    #@57
    .line 685
    :cond_1
    return-void

    #@58
    .line 689
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@5a
    if-nez v2, :cond_4

    #@5c
    .line 690
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@5e
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@66
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_4

    #@6c
    .line 693
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6e
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@71
    move-result-object v0

    #@72
    .line 694
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@74
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@76
    if-ne v2, v3, :cond_3

    #@78
    if-eqz v0, :cond_3

    #@7a
    .line 695
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    #@7d
    .line 697
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7f
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@81
    goto :goto_0

    #@82
    .line 691
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@84
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@86
    goto :goto_0

    #@87
    .line 703
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@89
    if-ne v1, v2, :cond_0

    #@8b
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8d
    if-eq v1, v2, :cond_0

    #@8f
    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@91
    .line 705
    new-instance v3, Landroid/os/AsyncResult;

    #@93
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@96
    .line 704
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@99
    goto :goto_1
.end method

.method private updatePhoneType(Z)V
    .locals 3
    .param p1, "duringInit"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    if-nez p1, :cond_0

    #@3
    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    #@6
    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@9
    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 169
    const/16 v0, 0x13

    #@13
    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@17
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    #@1c
    .line 163
    :goto_0
    return-void

    #@1d
    .line 172
    :cond_1
    const/16 v0, 0x8

    #@1f
    new-array v0, v0, [Lcom/android/internal/telephony/GsmCdmaConnection;

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@23
    .line 173
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@25
    .line 174
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@27
    .line 175
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    #@29
    .line 176
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@2b
    .line 177
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@2d
    .line 178
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
    .line 498
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
    .line 499
    const-string/jumbo v1, "phone"

    #@e
    const-string/jumbo v2, "acceptCall: incoming..."

    #@11
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 501
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@17
    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    #@20
    .line 493
    :goto_0
    return-void

    #@21
    .line 503
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
    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 505
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@34
    .line 517
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    #@37
    goto :goto_0

    #@38
    .line 507
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@3a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@40
    .line 513
    .local v0, "cwConn":Lcom/android/internal/telephony/GsmCdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@42
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@47
    .line 514
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@4a
    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@4d
    goto :goto_1

    #@4e
    .line 519
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
    .line 583
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
    .line 584
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
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 583
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 586
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
    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_3

    #@7
    .line 628
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
    .line 629
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
    .line 631
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
    .line 628
    :cond_1
    return v0

    #@27
    .line 630
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
    .line 633
    :cond_3
    const-string/jumbo v1, "GsmCdmaCallTracker"

    #@35
    const-string/jumbo v2, "canTransfer: not possible in CDMA"

    #@38
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 634
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    #@3
    .line 578
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@6
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@b
    .line 575
    return-void
.end method

.method public conference()V
    .locals 2

    #@0
    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 564
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
    .line 562
    :goto_0
    return-void

    #@12
    .line 567
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
    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 475
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 477
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
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
    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@4
    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canDial()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 262
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
    .line 265
    :cond_0
    move-object v1, p1

    #@17
    .line 266
    .local v1, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@19
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v2

    #@23
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 281
    const-wide/16 v2, 0x1f4

    #@2c
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 290
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    #@32
    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@34
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@37
    move-result-object v2

    #@38
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3a
    if-eq v2, v3, :cond_2

    #@3c
    .line 295
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@3e
    const-string/jumbo v3, "cannot dial in current state"

    #@41
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 282
    :catch_0
    move-exception v0

    #@46
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@47
    .line 298
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@49
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 299
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@51
    .line 298
    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@54
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@56
    .line 300
    const/4 v2, 0x0

    #@57
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@59
    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@5b
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    if-eqz v2, :cond_3

    #@61
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@63
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6a
    move-result v2

    #@6b
    if-nez v2, :cond_5

    #@6d
    .line 305
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@6f
    const/4 v3, 0x7

    #@70
    iput v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@72
    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@75
    .line 317
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@77
    if-eqz v2, :cond_4

    #@79
    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@7b
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    #@7e
    .line 319
    const/4 v2, 0x0

    #@7f
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    #@81
    .line 322
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@84
    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@86
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@89
    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8b
    monitor-exit p0

    #@8c
    return-object v2

    #@8d
    .line 303
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@8f
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    const/16 v3, 0x4e

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@98
    move-result v2

    #@99
    if-gez v2, :cond_3

    #@9b
    .line 312
    const/4 v2, 0x0

    #@9c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@9f
    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a1
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@a3
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@aa
    move-result-object v4

    #@ab
    invoke-interface {v2, v3, p2, p3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
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
    .line 484
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
    .line 1571
    const-string/jumbo v1, "GsmCdmaCallTracker extends:"

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1572
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@c
    .line 1573
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
    .line 1574
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
    .line 1575
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
    .line 1574
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1577
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
    .line 1578
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
    .line 1579
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_1

    #@7b
    .line 1580
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
    .line 1582
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
    .line 1583
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
    .line 1584
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
    .line 1583
    add-int/lit8 v0, v0, 0x1

    #@d2
    goto :goto_1

    #@d3
    .line 1586
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
    .line 1587
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
    .line 1588
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
    .line 1589
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
    .line 1590
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
    .line 1591
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
    .line 1592
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
    .line 1593
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
    .line 1594
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@19e
    move-result v1

    #@19f
    if-nez v1, :cond_3

    #@1a1
    .line 1595
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
    .line 1596
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
    .line 1597
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
    .line 1598
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
    .line 1570
    :cond_3
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    #@0
    .prologue
    .line 572
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
    .line 571
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 196
    const-string/jumbo v0, "GsmCdmaCallTracker"

    #@3
    const-string/jumbo v1, "GsmCdmaCallTracker finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 195
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
    .line 1261
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1262
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 1263
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1264
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 1265
    return-object v0

    #@18
    .line 1262
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1269
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
    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1610
    const/4 v0, 0x5

    #@9
    .line 1609
    :goto_0
    return v0

    #@a
    .line 1611
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1

    #@0
    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1309
    iget v10, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v10, :pswitch_data_0

    #@5
    .line 1486
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
    .line 1487
    const-string/jumbo v12, "phone type "

    #@23
    .line 1486
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v11

    #@27
    .line 1487
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@29
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@2c
    move-result v12

    #@2d
    .line 1486
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
    .line 1311
    :pswitch_1
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@3c
    const-string/jumbo v11, "Event EVENT_POLL_CALLS_RESULT Received"

    #@3f
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1313
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@44
    if-ne p1, v10, :cond_0

    #@46
    .line 1316
    const/4 v10, 0x0

    #@47
    iput-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    #@49
    .line 1317
    const/4 v10, 0x0

    #@4a
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@4c
    .line 1318
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v10, Landroid/os/AsyncResult;

    #@50
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    #@53
    .line 1306
    :cond_0
    :goto_0
    return-void

    #@54
    .line 1323
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@57
    goto :goto_0

    #@58
    .line 1327
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_1

    #@5e
    .line 1330
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@60
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@63
    move-result-object v4

    #@64
    .line 1331
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_1

    #@66
    .line 1332
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    #@69
    .line 1339
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_1
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@6c
    move-result v10

    #@6d
    if-eqz v10, :cond_3

    #@6f
    .line 1340
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@71
    check-cast v0, Landroid/os/AsyncResult;

    #@73
    .line 1341
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@75
    if-eqz v10, :cond_2

    #@77
    .line 1342
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
    .line 1344
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@85
    goto :goto_0

    #@86
    .line 1346
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    iget v10, p1, Landroid/os/Message;->what:I

    #@88
    const/16 v11, 0x8

    #@8a
    if-eq v10, v11, :cond_0

    #@8c
    .line 1350
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
    .line 1351
    const-string/jumbo v12, "phone type "

    #@aa
    .line 1350
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    .line 1351
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b0
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@b3
    move-result v12

    #@b4
    .line 1350
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
    .line 1358
    :pswitch_5
    const/4 v9, 0x0

    #@c1
    .line 1359
    .local v9, "vendorCause":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c3
    check-cast v0, Landroid/os/AsyncResult;

    #@c5
    .line 1361
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    #@c8
    .line 1363
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ca
    if-eqz v10, :cond_7

    #@cc
    .line 1366
    const/16 v1, 0x10

    #@ce
    .line 1367
    .local v1, "causeCode":I
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@d1
    .line 1368
    const-string/jumbo v11, "Exception during getLastCallFailCause, assuming normal disconnect"

    #@d4
    .line 1367
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 1375
    .end local v9    # "vendorCause":Ljava/lang/String;
    :goto_1
    const/16 v10, 0x22

    #@d9
    if-eq v1, v10, :cond_4

    #@db
    .line 1376
    const/16 v10, 0x29

    #@dd
    if-ne v1, v10, :cond_8

    #@df
    .line 1383
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e1
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    #@e4
    move-result-object v7

    #@e5
    .line 1384
    .local v7, "loc":Landroid/telephony/CellLocation;
    const/4 v2, -0x1

    #@e6
    .line 1385
    .local v2, "cid":I
    if-eqz v7, :cond_5

    #@e8
    .line 1386
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@eb
    move-result v10

    #@ec
    if-eqz v10, :cond_9

    #@ee
    .line 1387
    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    #@f0
    .end local v7    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@f3
    move-result v2

    #@f4
    .line 1392
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
    .line 1393
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
    .line 1392
    const v11, 0xc3ba

    #@117
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@11a
    .line 1396
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
    .line 1397
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@125
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@128
    move-result-object v3

    #@129
    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@12b
    .line 1399
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v3, v1, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    #@12e
    .line 1396
    add-int/lit8 v6, v6, 0x1

    #@130
    goto :goto_4

    #@131
    .line 1370
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
    .line 1371
    .local v5, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, v5, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@137
    .line 1372
    .restart local v1    # "causeCode":I
    iget-object v9, v5, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@139
    .local v9, "vendorCause":Ljava/lang/String;
    goto :goto_1

    #@13a
    .line 1377
    .end local v5    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v9    # "vendorCause":Ljava/lang/String;
    :cond_8
    const/16 v10, 0x2a

    #@13c
    if-eq v1, v10, :cond_4

    #@13e
    .line 1378
    const/16 v10, 0x2c

    #@140
    if-eq v1, v10, :cond_4

    #@142
    .line 1379
    const/16 v10, 0x31

    #@144
    if-eq v1, v10, :cond_4

    #@146
    .line 1380
    const/16 v10, 0x3a

    #@148
    if-eq v1, v10, :cond_4

    #@14a
    .line 1381
    const v10, 0xffff

    #@14d
    if-ne v1, v10, :cond_6

    #@14f
    goto :goto_2

    #@150
    .line 1389
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
    .line 1402
    .end local v2    # "cid":I
    .restart local v6    # "i":I
    .restart local v8    # "s":I
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@15a
    .line 1404
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15c
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@15f
    .line 1405
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@161
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    #@164
    goto/16 :goto_0

    #@166
    .line 1410
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v6    # "i":I
    .end local v8    # "s":I
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    #@169
    goto/16 :goto_0

    #@16b
    .line 1414
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioAvailable()V

    #@16e
    goto/16 :goto_0

    #@170
    .line 1418
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    #@173
    goto/16 :goto_0

    #@175
    .line 1422
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@178
    move-result v10

    #@179
    if-nez v10, :cond_c

    #@17b
    .line 1424
    iget-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@17d
    if-eqz v10, :cond_b

    #@17f
    .line 1425
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
    .line 1426
    const/4 v10, 0x0

    #@191
    iput-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@193
    .line 1428
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@195
    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@198
    goto/16 :goto_0

    #@19a
    .line 1430
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
    .line 1431
    const-string/jumbo v12, "phone type "

    #@1b8
    .line 1430
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v11

    #@1bc
    .line 1431
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1be
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@1c1
    move-result v12

    #@1c2
    .line 1430
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
    .line 1436
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@1d1
    move-result v10

    #@1d2
    if-nez v10, :cond_d

    #@1d4
    .line 1437
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d6
    check-cast v0, Landroid/os/AsyncResult;

    #@1d8
    .line 1438
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1da
    if-nez v10, :cond_0

    #@1dc
    .line 1439
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1de
    check-cast v10, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@1e0
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@1e3
    .line 1440
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@1e6
    const-string/jumbo v11, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    #@1e9
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ec
    goto/16 :goto_0

    #@1ee
    .line 1443
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
    .line 1444
    const-string/jumbo v12, "phone type "

    #@20c
    .line 1443
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v11

    #@210
    .line 1444
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@212
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@215
    move-result v12

    #@216
    .line 1443
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
    .line 1449
    :pswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@225
    move-result v10

    #@226
    if-nez v10, :cond_e

    #@228
    .line 1450
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22a
    check-cast v0, Landroid/os/AsyncResult;

    #@22c
    .line 1451
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@22e
    if-nez v10, :cond_0

    #@230
    .line 1453
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@232
    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@235
    .line 1454
    const/4 v10, 0x0

    #@236
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@238
    goto/16 :goto_0

    #@23a
    .line 1457
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
    .line 1458
    const-string/jumbo v12, "phone type "

    #@258
    .line 1457
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v11

    #@25c
    .line 1458
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@25e
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@261
    move-result v12

    #@262
    .line 1457
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
    .line 1463
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@271
    move-result v10

    #@272
    if-nez v10, :cond_10

    #@274
    .line 1464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@276
    check-cast v0, Landroid/os/AsyncResult;

    #@278
    .line 1465
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@27a
    if-nez v10, :cond_f

    #@27c
    .line 1467
    new-instance v10, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    #@27e
    invoke-direct {v10, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    #@281
    .line 1474
    iget v11, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    #@283
    int-to-long v12, v11

    #@284
    .line 1466
    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@287
    goto/16 :goto_0

    #@289
    .line 1476
    :cond_f
    const/4 v10, 0x0

    #@28a
    iput-object v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@28c
    .line 1477
    const-string/jumbo v10, "GsmCdmaCallTracker"

    #@28f
    const-string/jumbo v11, "exception happened on Blank Flash for 3-way call"

    #@292
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@295
    goto/16 :goto_0

    #@297
    .line 1480
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
    .line 1481
    const-string/jumbo v12, "phone type "

    #@2b5
    .line 1480
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v11

    #@2b9
    .line 1481
    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2bb
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@2be
    move-result v12

    #@2bf
    .line 1480
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
    .line 1309
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
    .locals 34
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 723
    :try_start_0
    move-object/from16 v0, p1

    #@3
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5
    move-object/from16 v29, v0

    #@7
    if-nez v29, :cond_4

    #@9
    .line 724
    move-object/from16 v0, p1

    #@b
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d
    move-object/from16 v26, v0

    #@f
    check-cast v26, Ljava/util/List;

    #@11
    .line 736
    .local v26, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v22, 0x0

    #@13
    .line 737
    .local v22, "newRinging":Lcom/android/internal/telephony/Connection;
    new-instance v24, Ljava/util/ArrayList;

    #@15
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 738
    .local v24, "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    const/16 v23, 0x0

    #@1a
    .line 739
    .local v23, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    #@1c
    .line 741
    .local v16, "hasNonHangupStateChanged":Z
    const/4 v15, 0x0

    #@1d
    .line 742
    .local v15, "hasAnyCallDisconnected":Z
    const/16 v21, 0x0

    #@1f
    .line 743
    .local v21, "needsPollDelay":Z
    const/16 v27, 0x0

    #@21
    .line 746
    .local v27, "unknownConnectionAppeared":Z
    const/16 v25, 0x1

    #@23
    .line 748
    .local v25, "noConnectionExists":Z
    const/16 v18, 0x0

    #@25
    .local v18, "i":I
    const/4 v11, 0x0

    #@26
    .local v11, "curDC":I
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@29
    move-result v13

    #@2a
    .line 749
    .end local v16    # "hasNonHangupStateChanged":Z
    .end local v22    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v23    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    .local v13, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2e
    move-object/from16 v29, v0

    #@30
    move-object/from16 v0, v29

    #@32
    array-length v0, v0

    #@33
    move/from16 v29, v0

    #@35
    .line 748
    move/from16 v0, v18

    #@37
    move/from16 v1, v29

    #@39
    if-ge v0, v1, :cond_1c

    #@3b
    .line 750
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3f
    move-object/from16 v29, v0

    #@41
    aget-object v9, v29, v18

    #@43
    .line 751
    .local v9, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/4 v12, 0x0

    #@44
    .line 754
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v11, v13, :cond_0

    #@46
    .line 755
    move-object/from16 v0, v26

    #@48
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v12

    #@4c
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v12, Lcom/android/internal/telephony/DriverCall;

    #@4e
    .line 757
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v12, Lcom/android/internal/telephony/DriverCall;->index:I

    #@50
    move/from16 v29, v0

    #@52
    add-int/lit8 v30, v18, 0x1

    #@54
    move/from16 v0, v29

    #@56
    move/from16 v1, v30

    #@58
    if-ne v0, v1, :cond_6

    #@5a
    .line 758
    add-int/lit8 v11, v11, 0x1

    #@5c
    .line 765
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    :goto_2
    if-nez v9, :cond_1

    #@5e
    if-eqz v12, :cond_2

    #@60
    .line 766
    :cond_1
    const/16 v25, 0x0

    #@62
    .line 772
    :cond_2
    if-nez v9, :cond_f

    #@64
    if-eqz v12, :cond_f

    #@66
    .line 774
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@6a
    move-object/from16 v29, v0

    #@6c
    if-eqz v29, :cond_7

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@72
    move-object/from16 v29, v0

    #@74
    move-object/from16 v0, v29

    #@76
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@79
    move-result v29

    #@7a
    if-eqz v29, :cond_7

    #@7c
    .line 779
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@80
    move-object/from16 v29, v0

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@86
    move-object/from16 v30, v0

    #@88
    aput-object v30, v29, v18

    #@8a
    .line 780
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@8e
    move-object/from16 v29, v0

    #@90
    move/from16 v0, v18

    #@92
    move-object/from16 v1, v29

    #@94
    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    #@96
    .line 781
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@9a
    move-object/from16 v29, v0

    #@9c
    move-object/from16 v0, v29

    #@9e
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@a1
    .line 782
    const/16 v29, 0x0

    #@a3
    move-object/from16 v0, v29

    #@a5
    move-object/from16 v1, p0

    #@a7
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@a9
    .line 785
    move-object/from16 v0, p0

    #@ab
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@ad
    move/from16 v29, v0

    #@af
    if-eqz v29, :cond_b

    #@b1
    .line 786
    const/16 v29, 0x0

    #@b3
    move/from16 v0, v29

    #@b5
    move-object/from16 v1, p0

    #@b7
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@b9
    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@bc
    move-result v29

    #@bd
    if-nez v29, :cond_3

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@c3
    move/from16 v29, v0

    #@c5
    if-eqz v29, :cond_3

    #@c7
    .line 790
    const/16 v29, 0x0

    #@c9
    move-object/from16 v0, p0

    #@cb
    move/from16 v1, v29

    #@cd
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d0
    .line 795
    :cond_3
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v30, "poll: hangupPendingMO, hangup conn "

    #@d8
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v29

    #@dc
    move-object/from16 v0, v29

    #@de
    move/from16 v1, v18

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v29

    #@e4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v29

    #@e8
    .line 794
    move-object/from16 v0, p0

    #@ea
    move-object/from16 v1, v29

    #@ec
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@ef
    .line 796
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@f3
    move-object/from16 v29, v0

    #@f5
    aget-object v29, v29, v18

    #@f7
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v29

    #@fb
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fe
    :goto_3
    monitor-exit p0

    #@ff
    .line 803
    return-void

    #@100
    .line 725
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v11    # "curDC":I
    .end local v13    # "dcSize":I
    .end local v15    # "hasAnyCallDisconnected":Z
    .end local v18    # "i":I
    .end local v21    # "needsPollDelay":Z
    .end local v24    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v25    # "noConnectionExists":Z
    .end local v26    # "polledCalls":Ljava/util/List;
    .end local v27    # "unknownConnectionAppeared":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    #@102
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@104
    move-object/from16 v29, v0

    #@106
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v29

    #@10a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    #@10d
    move-result v29

    #@10e
    if-eqz v29, :cond_5

    #@110
    .line 728
    new-instance v26, Ljava/util/ArrayList;

    #@112
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@115
    .restart local v26    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    #@117
    .line 732
    .end local v26    # "polledCalls":Ljava/util/List;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11a
    monitor-exit p0

    #@11b
    .line 733
    return-void

    #@11c
    .line 760
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .restart local v11    # "curDC":I
    .restart local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v13    # "dcSize":I
    .restart local v15    # "hasAnyCallDisconnected":Z
    .restart local v18    # "i":I
    .restart local v21    # "needsPollDelay":Z
    .restart local v24    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v25    # "noConnectionExists":Z
    .restart local v26    # "polledCalls":Ljava/util/List;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_6
    const/4 v12, 0x0

    #@11d
    .local v12, "dc":Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_2

    #@11f
    .line 797
    .end local v12    # "dc":Lcom/android/internal/telephony/DriverCall;
    :catch_0
    move-exception v14

    #@120
    .line 798
    .local v14, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_3
    const-string/jumbo v29, "GsmCdmaCallTracker"

    #@123
    const-string/jumbo v30, "unexpected error on hangup"

    #@126
    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@129
    goto :goto_3

    #@12a
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v11    # "curDC":I
    .end local v13    # "dcSize":I
    .end local v14    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v15    # "hasAnyCallDisconnected":Z
    .end local v18    # "i":I
    .end local v21    # "needsPollDelay":Z
    .end local v24    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v25    # "noConnectionExists":Z
    .end local v26    # "polledCalls":Ljava/util/List;
    .end local v27    # "unknownConnectionAppeared":Z
    :catchall_0
    move-exception v29

    #@12b
    monitor-exit p0

    #@12c
    throw v29

    #@12d
    .line 807
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .restart local v11    # "curDC":I
    .restart local v13    # "dcSize":I
    .restart local v15    # "hasAnyCallDisconnected":Z
    .restart local v18    # "i":I
    .restart local v21    # "needsPollDelay":Z
    .restart local v24    # "newUnknownConnectionsGsm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v25    # "noConnectionExists":Z
    .restart local v26    # "polledCalls":Ljava/util/List;
    .restart local v27    # "unknownConnectionAppeared":Z
    :cond_7
    :try_start_4
    new-instance v29, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v30, "pendingMo="

    #@135
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v29

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@13d
    move-object/from16 v30, v0

    #@13f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v29

    #@143
    const-string/jumbo v30, ", dc="

    #@146
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v29

    #@14a
    move-object/from16 v0, v29

    #@14c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v29

    #@150
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v29

    #@154
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, v29

    #@158
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@15b
    .line 810
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@15f
    move-object/from16 v29, v0

    #@161
    new-instance v30, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@163
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@167
    move-object/from16 v31, v0

    #@169
    move-object/from16 v0, v30

    #@16b
    move-object/from16 v1, v31

    #@16d
    move-object/from16 v2, p0

    #@16f
    move/from16 v3, v18

    #@171
    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    #@174
    aput-object v30, v29, v18

    #@176
    .line 812
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    #@17b
    move-result-object v17

    #@17c
    .line 813
    .local v17, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v17, :cond_d

    #@17e
    .line 815
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@182
    move-object/from16 v29, v0

    #@184
    aget-object v29, v29, v18

    #@186
    move-object/from16 v0, v29

    #@188
    move-object/from16 v1, v17

    #@18a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    #@18d
    .line 818
    move-object/from16 v0, v17

    #@18f
    iget-object v0, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@191
    move-object/from16 v29, v0

    #@193
    sget-object v30, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@195
    move-object/from16 v0, v29

    #@197
    move-object/from16 v1, v30

    #@199
    if-eq v0, v1, :cond_8

    #@19b
    .line 819
    move-object/from16 v0, v17

    #@19d
    iget-object v0, v0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@19f
    move-object/from16 v29, v0

    #@1a1
    sget-object v30, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@1a3
    move-object/from16 v0, v29

    #@1a5
    move-object/from16 v1, v30

    #@1a7
    if-eq v0, v1, :cond_8

    #@1a9
    .line 820
    iget-object v0, v12, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1ab
    move-object/from16 v29, v0

    #@1ad
    sget-object v30, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@1af
    move-object/from16 v0, v29

    #@1b1
    move-object/from16 v1, v30

    #@1b3
    if-ne v0, v1, :cond_8

    #@1b5
    .line 821
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1b9
    move-object/from16 v29, v0

    #@1bb
    aget-object v29, v29, v18

    #@1bd
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    #@1c0
    .line 824
    :cond_8
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@1c4
    move-object/from16 v29, v0

    #@1c6
    move-object/from16 v0, v29

    #@1c8
    move-object/from16 v1, v17

    #@1ca
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1cd
    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@1d0
    move-result v29

    #@1d1
    if-eqz v29, :cond_a

    #@1d3
    .line 827
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@1d7
    move-object/from16 v29, v0

    #@1d9
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1dc
    move-result-object v19

    #@1dd
    .line 828
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_9
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@1e0
    move-result v29

    #@1e1
    .line 827
    if-eqz v29, :cond_a

    #@1e3
    .line 829
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e6
    move-result-object v4

    #@1e7
    check-cast v4, Lcom/android/internal/telephony/Connection;

    #@1e9
    .line 830
    .local v4, "c":Lcom/android/internal/telephony/Connection;
    const-string/jumbo v29, "GsmCdmaCallTracker"

    #@1ec
    new-instance v30, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v31, "HO Conn state is "

    #@1f4
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v30

    #@1f8
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@1fa
    move-object/from16 v31, v0

    #@1fc
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v30

    #@200
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@203
    move-result-object v30

    #@204
    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@207
    .line 831
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@209
    move-object/from16 v29, v0

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@20f
    move-object/from16 v30, v0

    #@211
    aget-object v30, v30, v18

    #@213
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@216
    move-result-object v30

    #@217
    move-object/from16 v0, v29

    #@219
    move-object/from16 v1, v30

    #@21b
    if-ne v0, v1, :cond_9

    #@21d
    .line 832
    const-string/jumbo v29, "GsmCdmaCallTracker"

    #@220
    new-instance v30, Ljava/lang/StringBuilder;

    #@222
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@225
    const-string/jumbo v31, "Removing HO conn "

    #@228
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v30

    #@22c
    move-object/from16 v0, v30

    #@22e
    move-object/from16 v1, v17

    #@230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v30

    #@234
    .line 833
    iget-object v0, v4, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    #@236
    move-object/from16 v31, v0

    #@238
    .line 832
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v30

    #@23c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23f
    move-result-object v30

    #@240
    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@243
    .line 834
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    #@246
    goto :goto_4

    #@247
    .line 839
    .end local v4    # "c":Lcom/android/internal/telephony/Connection;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_a
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24b
    move-object/from16 v29, v0

    #@24d
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@251
    move-object/from16 v30, v0

    #@253
    aget-object v30, v30, v18

    #@255
    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    #@258
    .line 853
    .end local v17    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_b
    :goto_5
    const/16 v16, 0x1

    #@25a
    .line 749
    :cond_c
    :goto_6
    add-int/lit8 v18, v18, 0x1

    #@25c
    goto/16 :goto_1

    #@25e
    .line 842
    .restart local v17    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_d
    move-object/from16 v0, p0

    #@260
    move/from16 v1, v18

    #@262
    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@265
    move-result-object v22

    #@266
    .line 843
    .local v22, "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v22, :cond_b

    #@268
    .line 844
    const/16 v27, 0x1

    #@26a
    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@26d
    move-result v29

    #@26e
    if-eqz v29, :cond_e

    #@270
    .line 846
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@274
    move-object/from16 v29, v0

    #@276
    aget-object v29, v29, v18

    #@278
    move-object/from16 v0, v24

    #@27a
    move-object/from16 v1, v29

    #@27c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27f
    goto :goto_5

    #@280
    .line 848
    :cond_e
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@284
    move-object/from16 v29, v0

    #@286
    aget-object v23, v29, v18

    #@288
    .local v23, "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    goto :goto_5

    #@289
    .line 854
    .end local v17    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v22    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v23    # "newUnknownConnectionCdma":Lcom/android/internal/telephony/Connection;
    :cond_f
    if-eqz v9, :cond_14

    #@28b
    if-nez v12, :cond_14

    #@28d
    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@290
    move-result v29

    #@291
    if-eqz v29, :cond_10

    #@293
    .line 858
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@297
    move-object/from16 v29, v0

    #@299
    move-object/from16 v0, v29

    #@29b
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29e
    .line 861
    move-object/from16 v0, p0

    #@2a0
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2a2
    move-object/from16 v29, v0

    #@2a4
    const/16 v30, 0x0

    #@2a6
    aput-object v30, v29, v18

    #@2a8
    goto :goto_6

    #@2a9
    .line 867
    :cond_10
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2ad
    move-object/from16 v29, v0

    #@2af
    move-object/from16 v0, v29

    #@2b1
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2b3
    move-object/from16 v29, v0

    #@2b5
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@2b8
    move-result v10

    #@2b9
    .line 868
    .local v10, "count":I
    const/16 v20, 0x0

    #@2bb
    .local v20, "n":I
    :goto_7
    move/from16 v0, v20

    #@2bd
    if-ge v0, v10, :cond_11

    #@2bf
    .line 869
    new-instance v29, Ljava/lang/StringBuilder;

    #@2c1
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@2c4
    const-string/jumbo v30, "adding fgCall cn "

    #@2c7
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v29

    #@2cb
    move-object/from16 v0, v29

    #@2cd
    move/from16 v1, v20

    #@2cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v29

    #@2d3
    const-string/jumbo v30, " to droppedDuringPoll"

    #@2d6
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v29

    #@2da
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dd
    move-result-object v29

    #@2de
    move-object/from16 v0, p0

    #@2e0
    move-object/from16 v1, v29

    #@2e2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@2e5
    .line 870
    move-object/from16 v0, p0

    #@2e7
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@2e9
    move-object/from16 v29, v0

    #@2eb
    move-object/from16 v0, v29

    #@2ed
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2ef
    move-object/from16 v29, v0

    #@2f1
    move-object/from16 v0, v29

    #@2f3
    move/from16 v1, v20

    #@2f5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f8
    move-result-object v8

    #@2f9
    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2fb
    .line 871
    .local v8, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@2ff
    move-object/from16 v29, v0

    #@301
    move-object/from16 v0, v29

    #@303
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@306
    .line 868
    add-int/lit8 v20, v20, 0x1

    #@308
    goto :goto_7

    #@309
    .line 873
    .end local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_11
    move-object/from16 v0, p0

    #@30b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@30d
    move-object/from16 v29, v0

    #@30f
    move-object/from16 v0, v29

    #@311
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@313
    move-object/from16 v29, v0

    #@315
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@318
    move-result v10

    #@319
    .line 876
    const/16 v20, 0x0

    #@31b
    :goto_8
    move/from16 v0, v20

    #@31d
    if-ge v0, v10, :cond_12

    #@31f
    .line 877
    new-instance v29, Ljava/lang/StringBuilder;

    #@321
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@324
    const-string/jumbo v30, "adding rgCall cn "

    #@327
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v29

    #@32b
    move-object/from16 v0, v29

    #@32d
    move/from16 v1, v20

    #@32f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@332
    move-result-object v29

    #@333
    const-string/jumbo v30, " to droppedDuringPoll"

    #@336
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@339
    move-result-object v29

    #@33a
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33d
    move-result-object v29

    #@33e
    move-object/from16 v0, p0

    #@340
    move-object/from16 v1, v29

    #@342
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@345
    .line 878
    move-object/from16 v0, p0

    #@347
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@349
    move-object/from16 v29, v0

    #@34b
    move-object/from16 v0, v29

    #@34d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@34f
    move-object/from16 v29, v0

    #@351
    move-object/from16 v0, v29

    #@353
    move/from16 v1, v20

    #@355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@358
    move-result-object v8

    #@359
    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@35b
    .line 879
    .restart local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    move-object/from16 v0, p0

    #@35d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@35f
    move-object/from16 v29, v0

    #@361
    move-object/from16 v0, v29

    #@363
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@366
    .line 876
    add-int/lit8 v20, v20, 0x1

    #@368
    goto :goto_8

    #@369
    .line 883
    .end local v8    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_12
    move-object/from16 v0, p0

    #@36b
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@36d
    move/from16 v29, v0

    #@36f
    if-eqz v29, :cond_13

    #@371
    .line 884
    const/16 v29, 0x0

    #@373
    move-object/from16 v0, p0

    #@375
    move/from16 v1, v29

    #@377
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    #@37a
    .line 887
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@37d
    .line 891
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@381
    move-object/from16 v29, v0

    #@383
    const/16 v30, 0x0

    #@385
    aput-object v30, v29, v18

    #@387
    goto/16 :goto_6

    #@389
    .line 894
    .end local v10    # "count":I
    .end local v20    # "n":I
    :cond_14
    if-eqz v9, :cond_15

    #@38b
    if-eqz v12, :cond_15

    #@38d
    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@390
    move-result v29

    #@391
    if-eqz v29, :cond_17

    #@393
    .line 905
    :cond_15
    if-eqz v9, :cond_c

    #@395
    if-eqz v12, :cond_c

    #@397
    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@39a
    move-result v29

    #@39b
    if-nez v29, :cond_1a

    #@39d
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    #@3a0
    move-result v29

    #@3a1
    iget-boolean v0, v12, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@3a3
    move/from16 v30, v0

    #@3a5
    move/from16 v0, v29

    #@3a7
    move/from16 v1, v30

    #@3a9
    if-eq v0, v1, :cond_1a

    #@3ab
    .line 908
    iget-boolean v0, v12, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@3ad
    move/from16 v29, v0

    #@3af
    if-eqz v29, :cond_19

    #@3b1
    .line 910
    move-object/from16 v0, p0

    #@3b3
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3b5
    move-object/from16 v29, v0

    #@3b7
    move-object/from16 v0, v29

    #@3b9
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3bc
    .line 912
    move-object/from16 v0, p0

    #@3be
    move/from16 v1, v18

    #@3c0
    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@3c3
    move-result-object v22

    #@3c4
    .line 913
    .restart local v22    # "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v22, :cond_16

    #@3c6
    .line 914
    const/16 v27, 0x1

    #@3c8
    .line 915
    move-object/from16 v23, v9

    #@3ca
    .line 917
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@3cd
    goto/16 :goto_6

    #@3cf
    .line 894
    .end local v22    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3d2
    move-result v29

    #@3d3
    if-eqz v29, :cond_15

    #@3d5
    .line 898
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3d9
    move-object/from16 v29, v0

    #@3db
    move-object/from16 v0, v29

    #@3dd
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e0
    .line 899
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3e4
    move-object/from16 v29, v0

    #@3e6
    new-instance v30, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3e8
    move-object/from16 v0, p0

    #@3ea
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3ec
    move-object/from16 v31, v0

    #@3ee
    move-object/from16 v0, v30

    #@3f0
    move-object/from16 v1, v31

    #@3f2
    move-object/from16 v2, p0

    #@3f4
    move/from16 v3, v18

    #@3f6
    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    #@3f9
    aput-object v30, v29, v18

    #@3fb
    .line 901
    move-object/from16 v0, p0

    #@3fd
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@3ff
    move-object/from16 v29, v0

    #@401
    aget-object v29, v29, v18

    #@403
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@406
    move-result-object v29

    #@407
    move-object/from16 v0, p0

    #@409
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@40b
    move-object/from16 v30, v0

    #@40d
    move-object/from16 v0, v29

    #@40f
    move-object/from16 v1, v30

    #@411
    if-ne v0, v1, :cond_18

    #@413
    .line 902
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    #@417
    move-object/from16 v29, v0

    #@419
    aget-object v22, v29, v18

    #@41b
    .line 904
    :cond_18
    const/16 v16, 0x1

    #@41d
    .restart local v16    # "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@41f
    .line 923
    .end local v16    # "hasNonHangupStateChanged":Z
    :cond_19
    const-string/jumbo v29, "GsmCdmaCallTracker"

    #@422
    new-instance v30, Ljava/lang/StringBuilder;

    #@424
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@427
    const-string/jumbo v31, "Error in RIL, Phantom call appeared "

    #@42a
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v30

    #@42e
    move-object/from16 v0, v30

    #@430
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v30

    #@434
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@437
    move-result-object v30

    #@438
    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43b
    goto/16 :goto_6

    #@43d
    .line 927
    :cond_1a
    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@440
    move-result v7

    #@441
    .line 928
    .local v7, "changed":Z
    if-nez v16, :cond_1b

    #@443
    move/from16 v16, v7

    #@445
    .local v16, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@447
    .end local v16    # "hasNonHangupStateChanged":Z
    :cond_1b
    const/16 v16, 0x1

    #@449
    .local v16, "hasNonHangupStateChanged":Z
    goto/16 :goto_6

    #@44b
    .line 953
    .end local v7    # "changed":Z
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v16    # "hasNonHangupStateChanged":Z
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@44e
    move-result v29

    #@44f
    if-nez v29, :cond_1d

    #@451
    if-eqz v25, :cond_1d

    #@453
    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@456
    .line 960
    :cond_1d
    move-object/from16 v0, p0

    #@458
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@45a
    move-object/from16 v29, v0

    #@45c
    if-eqz v29, :cond_1f

    #@45e
    .line 961
    const-string/jumbo v29, "GsmCdmaCallTracker"

    #@461
    new-instance v30, Ljava/lang/StringBuilder;

    #@463
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@466
    const-string/jumbo v31, "Pending MO dropped before poll fg state:"

    #@469
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46c
    move-result-object v30

    #@46d
    .line 962
    move-object/from16 v0, p0

    #@46f
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@471
    move-object/from16 v31, v0

    #@473
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@476
    move-result-object v31

    #@477
    .line 961
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47a
    move-result-object v30

    #@47b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47e
    move-result-object v30

    #@47f
    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@482
    .line 964
    move-object/from16 v0, p0

    #@484
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@486
    move-object/from16 v29, v0

    #@488
    move-object/from16 v0, p0

    #@48a
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@48c
    move-object/from16 v30, v0

    #@48e
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@491
    .line 965
    const/16 v29, 0x0

    #@493
    move-object/from16 v0, v29

    #@495
    move-object/from16 v1, p0

    #@497
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@499
    .line 966
    const/16 v29, 0x0

    #@49b
    move/from16 v0, v29

    #@49d
    move-object/from16 v1, p0

    #@49f
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@4a1
    .line 968
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@4a4
    move-result v29

    #@4a5
    if-nez v29, :cond_1f

    #@4a7
    .line 969
    move-object/from16 v0, p0

    #@4a9
    iget-boolean v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@4ab
    move/from16 v29, v0

    #@4ad
    if-eqz v29, :cond_1e

    #@4af
    .line 970
    const/16 v29, 0x0

    #@4b1
    move/from16 v0, v29

    #@4b3
    move-object/from16 v1, p0

    #@4b5
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    #@4b7
    .line 972
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@4ba
    .line 976
    :cond_1f
    if-eqz v22, :cond_20

    #@4bc
    .line 977
    move-object/from16 v0, p0

    #@4be
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4c0
    move-object/from16 v29, v0

    #@4c2
    move-object/from16 v0, v29

    #@4c4
    move-object/from16 v1, v22

    #@4c6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    #@4c9
    .line 983
    :cond_20
    move-object/from16 v0, p0

    #@4cb
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@4cd
    move-object/from16 v29, v0

    #@4cf
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@4d2
    move-result v29

    #@4d3
    add-int/lit8 v18, v29, -0x1

    #@4d5
    .end local v15    # "hasAnyCallDisconnected":Z
    :goto_9
    if-ltz v18, :cond_26

    #@4d7
    .line 984
    move-object/from16 v0, p0

    #@4d9
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@4db
    move-object/from16 v29, v0

    #@4dd
    move-object/from16 v0, v29

    #@4df
    move/from16 v1, v18

    #@4e1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e4
    move-result-object v9

    #@4e5
    check-cast v9, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@4e7
    .line 986
    .restart local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    const/16 v28, 0x0

    #@4e9
    .line 988
    .local v28, "wasDisconnected":Z
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    #@4ec
    move-result v29

    #@4ed
    if-eqz v29, :cond_24

    #@4ef
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    #@4f2
    move-result-wide v30

    #@4f3
    const-wide/16 v32, 0x0

    #@4f5
    cmp-long v29, v30, v32

    #@4f7
    if-nez v29, :cond_24

    #@4f9
    .line 991
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@4fb
    move/from16 v29, v0

    #@4fd
    const/16 v30, 0x3

    #@4ff
    move/from16 v0, v29

    #@501
    move/from16 v1, v30

    #@503
    if-ne v0, v1, :cond_23

    #@505
    .line 992
    const/16 v6, 0x10

    #@507
    .line 998
    .local v6, "cause":I
    :goto_a
    new-instance v29, Ljava/lang/StringBuilder;

    #@509
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@50c
    const-string/jumbo v30, "missed/rejected call, conn.cause="

    #@50f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@512
    move-result-object v29

    #@513
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@515
    move/from16 v30, v0

    #@517
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v29

    #@51b
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51e
    move-result-object v29

    #@51f
    move-object/from16 v0, p0

    #@521
    move-object/from16 v1, v29

    #@523
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@526
    .line 999
    new-instance v29, Ljava/lang/StringBuilder;

    #@528
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@52b
    const-string/jumbo v30, "setting cause to "

    #@52e
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@531
    move-result-object v29

    #@532
    move-object/from16 v0, v29

    #@534
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@537
    move-result-object v29

    #@538
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53b
    move-result-object v29

    #@53c
    move-object/from16 v0, p0

    #@53e
    move-object/from16 v1, v29

    #@540
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@543
    .line 1001
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@547
    move-object/from16 v29, v0

    #@549
    move-object/from16 v0, v29

    #@54b
    move/from16 v1, v18

    #@54d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@550
    .line 1002
    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    #@553
    move-result v29

    #@554
    or-int v15, v15, v29

    #@556
    .line 1003
    .local v15, "hasAnyCallDisconnected":Z
    const/16 v28, 0x1

    #@558
    .line 1011
    .end local v6    # "cause":I
    .end local v15    # "hasAnyCallDisconnected":Z
    :cond_21
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@55b
    move-result v29

    #@55c
    if-nez v29, :cond_22

    #@55e
    if-eqz v28, :cond_22

    #@560
    if-eqz v27, :cond_22

    #@562
    .line 1012
    move-object/from16 v0, v23

    #@564
    if-ne v9, v0, :cond_22

    #@566
    .line 1013
    const/16 v27, 0x0

    #@568
    .line 1014
    const/16 v23, 0x0

    #@56a
    .line 983
    :cond_22
    add-int/lit8 v18, v18, -0x1

    #@56c
    goto/16 :goto_9

    #@56e
    .line 994
    :cond_23
    const/4 v6, 0x1

    #@56f
    .restart local v6    # "cause":I
    goto :goto_a

    #@570
    .line 1004
    .end local v6    # "cause":I
    :cond_24
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@572
    move/from16 v29, v0

    #@574
    const/16 v30, 0x3

    #@576
    move/from16 v0, v29

    #@578
    move/from16 v1, v30

    #@57a
    if-eq v0, v1, :cond_25

    #@57c
    .line 1005
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@57e
    move/from16 v29, v0

    #@580
    const/16 v30, 0x7

    #@582
    move/from16 v0, v29

    #@584
    move/from16 v1, v30

    #@586
    if-ne v0, v1, :cond_21

    #@588
    .line 1006
    :cond_25
    move-object/from16 v0, p0

    #@58a
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@58c
    move-object/from16 v29, v0

    #@58e
    move-object/from16 v0, v29

    #@590
    move/from16 v1, v18

    #@592
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@595
    .line 1007
    iget v0, v9, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    #@597
    move/from16 v29, v0

    #@599
    move/from16 v0, v29

    #@59b
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    #@59e
    move-result v29

    #@59f
    or-int v15, v15, v29

    #@5a1
    .line 1008
    .restart local v15    # "hasAnyCallDisconnected":Z
    const/16 v28, 0x1

    #@5a3
    goto :goto_b

    #@5a4
    .line 1019
    .end local v9    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v15    # "hasAnyCallDisconnected":Z
    .end local v28    # "wasDisconnected":Z
    :cond_26
    move-object/from16 v0, p0

    #@5a6
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@5a8
    move-object/from16 v29, v0

    #@5aa
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5ad
    move-result-object v19

    #@5ae
    .line 1020
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@5b1
    move-result v29

    #@5b2
    .line 1019
    if-eqz v29, :cond_28

    #@5b4
    .line 1021
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b7
    move-result-object v17

    #@5b8
    check-cast v17, Lcom/android/internal/telephony/Connection;

    #@5ba
    .line 1022
    .restart local v17    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v29, Ljava/lang/StringBuilder;

    #@5bc
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@5bf
    const-string/jumbo v30, "handlePollCalls - disconnect hoConn= "

    #@5c2
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c5
    move-result-object v29

    #@5c6
    move-object/from16 v0, v29

    #@5c8
    move-object/from16 v1, v17

    #@5ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5cd
    move-result-object v29

    #@5ce
    .line 1023
    const-string/jumbo v30, " hoConn.State= "

    #@5d1
    .line 1022
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d4
    move-result-object v29

    #@5d5
    .line 1023
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@5d8
    move-result-object v30

    #@5d9
    .line 1022
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5dc
    move-result-object v29

    #@5dd
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e0
    move-result-object v29

    #@5e1
    move-object/from16 v0, p0

    #@5e3
    move-object/from16 v1, v29

    #@5e5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@5e8
    .line 1024
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@5eb
    move-result-object v29

    #@5ec
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@5ef
    move-result v29

    #@5f0
    if-eqz v29, :cond_27

    #@5f2
    .line 1025
    const/16 v29, 0x1

    #@5f4
    move-object/from16 v0, v17

    #@5f6
    move/from16 v1, v29

    #@5f8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    #@5fb
    .line 1029
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    #@5fe
    goto :goto_c

    #@5ff
    .line 1027
    :cond_27
    const/16 v29, -0x1

    #@601
    move-object/from16 v0, v17

    #@603
    move/from16 v1, v29

    #@605
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    #@608
    goto :goto_d

    #@609
    .line 1033
    .end local v17    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_28
    move-object/from16 v0, p0

    #@60b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@60d
    move-object/from16 v29, v0

    #@60f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    #@612
    move-result v29

    #@613
    if-lez v29, :cond_29

    #@615
    .line 1034
    move-object/from16 v0, p0

    #@617
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@619
    move-object/from16 v29, v0

    #@61b
    .line 1035
    const/16 v30, 0x5

    #@61d
    move-object/from16 v0, p0

    #@61f
    move/from16 v1, v30

    #@621
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    #@624
    move-result-object v30

    #@625
    .line 1034
    invoke-interface/range {v29 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    #@628
    .line 1038
    :cond_29
    if-eqz v21, :cond_2a

    #@62a
    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V

    #@62d
    .line 1047
    :cond_2a
    if-nez v22, :cond_2b

    #@62f
    if-nez v16, :cond_2b

    #@631
    if-eqz v15, :cond_2c

    #@633
    .line 1048
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    #@636
    .line 1052
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@639
    .line 1054
    if-eqz v27, :cond_2e

    #@63b
    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@63e
    move-result v29

    #@63f
    if-eqz v29, :cond_2d

    #@641
    .line 1056
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@644
    move-result-object v5

    #@645
    .local v5, "c$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@648
    move-result v29

    #@649
    if-eqz v29, :cond_2e

    #@64b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64e
    move-result-object v4

    #@64f
    check-cast v4, Lcom/android/internal/telephony/Connection;

    #@651
    .line 1057
    .restart local v4    # "c":Lcom/android/internal/telephony/Connection;
    new-instance v29, Ljava/lang/StringBuilder;

    #@653
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@656
    const-string/jumbo v30, "Notify unknown for "

    #@659
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65c
    move-result-object v29

    #@65d
    move-object/from16 v0, v29

    #@65f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@662
    move-result-object v29

    #@663
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@666
    move-result-object v29

    #@667
    move-object/from16 v0, p0

    #@669
    move-object/from16 v1, v29

    #@66b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@66e
    .line 1058
    move-object/from16 v0, p0

    #@670
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@672
    move-object/from16 v29, v0

    #@674
    move-object/from16 v0, v29

    #@676
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@679
    goto :goto_e

    #@67a
    .line 1061
    .end local v4    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "c$iterator":Ljava/util/Iterator;
    :cond_2d
    move-object/from16 v0, p0

    #@67c
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@67e
    move-object/from16 v29, v0

    #@680
    move-object/from16 v0, v29

    #@682
    move-object/from16 v1, v23

    #@684
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@687
    .line 1065
    :cond_2e
    if-nez v16, :cond_2f

    #@689
    if-eqz v22, :cond_31

    #@68b
    .line 1066
    :cond_2f
    :goto_f
    move-object/from16 v0, p0

    #@68d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@68f
    move-object/from16 v29, v0

    #@691
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@694
    :cond_30
    monitor-exit p0

    #@695
    .line 719
    return-void

    #@696
    .line 1065
    :cond_31
    if-eqz v15, :cond_30

    #@698
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
    .line 1184
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
    .line 1185
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@d
    const-string/jumbo v1, "no connections in call"

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@16
    if-ne p1, v0, :cond_1

    #@18
    .line 1189
    const-string/jumbo v0, "(ringing) hangup waiting or background"

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 1190
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@27
    .line 1219
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    #@2a
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@2f
    .line 1183
    return-void

    #@30
    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@32
    if-ne p1, v0, :cond_4

    #@34
    .line 1192
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 1194
    const-string/jumbo v0, "(foregnd) hangup dialing or alerting..."

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@40
    .line 1196
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
    .line 1197
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@59
    move-result v0

    #@5a
    .line 1197
    if-eqz v0, :cond_3

    #@5c
    .line 1200
    const-string/jumbo v0, "hangup all conns in active/background call, without affecting ringing call"

    #@5f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@62
    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@65
    goto :goto_0

    #@66
    .line 1203
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    #@69
    goto :goto_0

    #@6a
    .line 1205
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@6c
    if-ne p1, v0, :cond_6

    #@6e
    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@70
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_5

    #@76
    .line 1208
    const-string/jumbo v0, "hangup all conns in background call"

    #@79
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@7c
    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    #@7f
    goto :goto_0

    #@80
    .line 1212
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    #@83
    goto :goto_0

    #@84
    .line 1215
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
    .line 1216
    const-string/jumbo v2, "does not belong to GsmCdmaCallTracker "

    #@99
    .line 1215
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
    .line 1110
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 1111
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
    .line 1112
    const-string/jumbo v3, "does not belong to GsmCdmaCallTracker "

    #@19
    .line 1111
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
    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    #@2b
    if-ne p1, v1, :cond_1

    #@2d
    .line 1119
    const-string/jumbo v1, "hangup: set hangupPendingMO to true"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@33
    .line 1120
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    #@36
    .line 1151
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    #@39
    .line 1109
    return-void

    #@3a
    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_2

    #@40
    .line 1122
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@46
    if-ne v1, v2, :cond_2

    #@48
    .line 1123
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
    .line 1135
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    #@55
    .line 1137
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    #@58
    .line 1138
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    #@5d
    .line 1139
    return-void

    #@5e
    .line 1142
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
    .line 1143
    :catch_0
    move-exception v0

    #@6d
    .line 1146
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
    .line 1249
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1250
    .local v1, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@9
    .line 1251
    iget-object v4, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1252
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
    .line 1250
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1254
    .end local v0    # "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@22
    .line 1255
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
    .line 1247
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
    .line 1235
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1236
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 1237
    iget-object v3, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    #@11
    .line 1238
    .local v0, "cn":Lcom/android/internal/telephony/GsmCdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 1239
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    #@20
    .line 1240
    return-void

    #@21
    .line 1236
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1244
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
    .line 1229
    const-string/jumbo v0, "hangupForegroundResumeBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    #@f
    .line 1228
    return-void
.end method

.method public hangupWaitingOrBackground()V
    .locals 2

    #@0
    .prologue
    .line 1224
    const-string/jumbo v0, "hangupWaitingOrBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@f
    .line 1223
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1566
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
    .line 1565
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 230
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 228
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 219
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 220
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 218
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
    .line 204
    new-instance v0, Landroid/os/Registrant;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 205
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@b
    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 208
    new-instance v1, Landroid/os/AsyncResult;

    #@13
    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@19
    .line 203
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
    .line 526
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
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    #@15
    .line 523
    return-void

    #@16
    .line 529
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
    .line 1155
    iget-object v1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 1156
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
    .line 1157
    const-string/jumbo v3, "does not belong to GsmCdmaCallTracker "

    #@19
    .line 1156
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
    .line 1160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    #@2e
    move-result v2

    #@2f
    .line 1161
    const/16 v3, 0xc

    #@31
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@34
    move-result-object v3

    #@35
    .line 1160
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1154
    :goto_0
    return-void

    #@39
    .line 1162
    :catch_0
    move-exception v0

    #@3a
    .line 1165
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
    .line 355
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    #@3
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    #@b
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    #@10
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    #@15
    .line 354
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@2
    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    #@a
    .line 1171
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
    .line 542
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
    .line 543
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@e
    const-string/jumbo v1, "cannot be in the incoming state"

    #@11
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    .line 547
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    .line 546
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    #@24
    .line 540
    :goto_0
    return-void

    #@25
    .line 549
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
    .line 550
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    #@35
    goto :goto_0

    #@36
    .line 556
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
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 233
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 224
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 213
    return-void
.end method

.method public updatePhoneType()V
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    #@4
    .line 159
    return-void
.end method
