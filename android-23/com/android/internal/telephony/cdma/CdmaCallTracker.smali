.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CdmaCallTracker"

.field static final MAX_CONNECTIONS:I = 0x8

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field private m3WayCallFlashDelay:I

.field mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field mPendingCallClirMode:I

.field mPendingCallInEcm:Z

.field mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    #@7
    .line 70
    new-array v0, v1, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@b
    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    #@d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@12
    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    #@14
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@19
    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    #@1b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@20
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@27
    .line 80
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    #@29
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    #@2c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2e
    .line 82
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    #@30
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    #@33
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@35
    .line 83
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    #@37
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    #@3a
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3c
    .line 87
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@3e
    .line 88
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@40
    .line 91
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    #@42
    .line 94
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@44
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@46
    .line 96
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@48
    .line 98
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    #@4a
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4c
    .line 108
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4e
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@50
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@52
    const/4 v1, 0x2

    #@53
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@58
    const/16 v1, 0x9

    #@5a
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5d
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5f
    const/16 v1, 0xa

    #@61
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@64
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@66
    const/16 v1, 0xf

    #@68
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6b
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@6d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@70
    .line 106
    return-void
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1135
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1136
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@7
    .line 1137
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@a
    const-string/jumbo v2, "false"

    #@d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1139
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
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 1141
    const-string/jumbo v1, "false"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_0

    #@31
    .line 1143
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    #@39
    .line 1144
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3b
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    #@3e
    .line 1134
    .end local v0    # "inEcm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I

    #@0
    .prologue
    .line 1155
    const/4 v0, 0x0

    #@1
    .line 1158
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@3
    aget-object v1, v1, p2

    #@5
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@8
    move-result-object v1

    #@9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 1159
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@f
    aget-object v0, v1, p2

    #@11
    .line 1160
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
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 1178
    .end local v0    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return-object v0

    #@29
    .line 1165
    .local v0, "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string/jumbo v1, "CdmaCallTracker"

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
    .line 1169
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@45
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@47
    if-eq v1, v2, :cond_0

    #@49
    .line 1170
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@4b
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@4d
    if-eq v1, v2, :cond_0

    #@4f
    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@51
    aget-object v1, v1, p2

    #@53
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    #@56
    .line 1172
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@58
    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@5a
    if-ne v1, v2, :cond_0

    #@5c
    .line 1174
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@5e
    aget-object v1, v1, p2

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    #@63
    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@b
    .line 277
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@19
    .line 277
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@1e
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    .line 281
    const v1, 0x10e008e

    #@2b
    .line 280
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    #@31
    .line 282
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    #@33
    if-lez v0, :cond_0

    #@35
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@37
    const-string/jumbo v1, ""

    #@3a
    const/16 v2, 0x14

    #@3c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@3f
    move-result-object v2

    #@40
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@43
    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@45
    return-object v0

    #@46
    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@4a
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 286
    const/16 v2, 0x10

    #@50
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@53
    move-result-object v2

    #@54
    .line 285
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@57
    goto :goto_0

    #@58
    .line 290
    :cond_1
    const/4 v0, 0x0

    #@59
    return-object v0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1123
    const-string/jumbo v0, "disableDataCallInEmergencyCall"

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@13
    .line 1124
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@15
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    #@1d
    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@1f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    #@22
    .line 1121
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const-string/jumbo v1, ""

    #@5
    const/16 v2, 0x8

    #@7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@e
    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@14
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@19
    .line 931
    return-void
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@10
    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@16
    .line 967
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@20
    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@23
    .line 968
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@26
    .line 971
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@29
    .line 954
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    #@5
    .line 1110
    packed-switch p1, :pswitch_data_0

    #@8
    .line 1114
    const-string/jumbo v0, "CdmaCallTracker"

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
    .line 1108
    :goto_0
    return-void

    #@23
    .line 1111
    :pswitch_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@26
    goto :goto_0

    #@27
    .line 1112
    :pswitch_1
    const/4 v0, 0x0

    #@28
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@2a
    goto :goto_0

    #@2b
    .line 1110
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
    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    #@3
    .line 941
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    #@5
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    #@a
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    #@f
    .line 415
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .param p1, "obj"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    new-instance v1, Landroid/os/AsyncResult;

    #@9
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 948
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 427
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

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
    .line 436
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@6
    .line 437
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@9
    .line 438
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    #@c
    .line 443
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

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
    .line 448
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@7
    .line 453
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@9
    if-nez v0, :cond_1

    #@b
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 454
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@16
    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@1a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    #@1d
    .line 447
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 456
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@20
    if-gez v0, :cond_0

    #@22
    .line 458
    const-string/jumbo v0, "CdmaCallTracker"

    #@25
    const-string/jumbo v1, "CdmaCallTracker.pendingOperations < 0"

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 459
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingOperations:I

    #@2d
    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3
    .line 469
    .local v1, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 470
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    .line 482
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@11
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    if-ne v2, v3, :cond_5

    #@15
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@17
    if-eq v1, v2, :cond_5

    #@19
    .line 483
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 484
    new-instance v3, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 483
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@23
    .line 490
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
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@47
    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    if-eq v2, v1, :cond_1

    #@4b
    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4d
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    #@50
    .line 466
    :cond_1
    return-void

    #@51
    .line 471
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@53
    if-nez v2, :cond_4

    #@55
    .line 472
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@57
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_4

    #@5d
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@5f
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_4

    #@65
    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@67
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6d
    .line 476
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@6f
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@71
    if-ne v2, v3, :cond_3

    #@73
    if-eqz v0, :cond_3

    #@75
    .line 477
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->callEndCleanupHandOverCallIfAny()V

    #@78
    .line 479
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7a
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7c
    goto :goto_0

    #@7d
    .line 473
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@81
    goto :goto_0

    #@82
    .line 485
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@84
    if-ne v1, v2, :cond_0

    #@86
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@88
    if-eq v1, v2, :cond_0

    #@8a
    .line 486
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@8c
    .line 487
    new-instance v3, Landroid/os/AsyncResult;

    #@8e
    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@91
    .line 486
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@94
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
    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v1

    #@6
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 296
    const-string/jumbo v1, "phone"

    #@d
    const-string/jumbo v2, "acceptCall: incoming..."

    #@10
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 298
    const/4 v1, 0x0

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    #@17
    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    #@20
    .line 294
    :goto_0
    return-void

    #@21
    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v1

    #@27
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@29
    if-ne v1, v2, :cond_1

    #@2b
    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@33
    .line 307
    .local v0, "cwConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@35
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@37
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@3a
    .line 308
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    #@3d
    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@40
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    #@43
    goto :goto_0

    #@44
    .line 312
    .end local v0    # "cwConn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@46
    const-string/jumbo v2, "phone not ringing"

    #@49
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1
.end method

.method canConference()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 364
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

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
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@5
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v2

    #@d
    .line 375
    .local v2, "serviceState":I
    const-string/jumbo v3, "ro.telephony.disable-call"

    #@10
    const-string/jumbo v6, "false"

    #@13
    .line 374
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 377
    .local v0, "disableCall":Ljava/lang/String;
    if-eq v2, v9, :cond_0

    #@19
    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 379
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@1f
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 377
    :cond_0
    const/4 v1, 0x0

    #@26
    .line 385
    .local v1, "ret":Z
    :goto_0
    if-nez v1, :cond_1

    #@28
    .line 386
    const-string/jumbo v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    #@2b
    const/16 v3, 0x8

    #@2d
    new-array v7, v3, [Ljava/lang/Object;

    #@2f
    .line 394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    aput-object v3, v7, v5

    #@35
    .line 395
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
    .line 396
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

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
    .line 397
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@4c
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

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
    .line 398
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
    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@6c
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

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
    .line 400
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@80
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

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
    .line 401
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@92
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

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
    .line 386
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@aa
    .line 403
    :cond_1
    return v1

    #@ab
    .line 380
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
    .line 381
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@b6
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@bd
    move-result v3

    #@be
    if-eqz v3, :cond_3

    #@c0
    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@c2
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c5
    move-result-object v3

    #@c6
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@c8
    if-ne v3, v6, :cond_4

    #@ca
    .line 381
    :cond_3
    const/4 v1, 0x1

    #@cb
    .restart local v1    # "ret":Z
    goto/16 :goto_0

    #@cd
    .line 383
    .end local v1    # "ret":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@cf
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_5

    #@d9
    const/4 v1, 0x0

    #@da
    .restart local v1    # "ret":Z
    goto/16 :goto_0

    #@dc
    .end local v1    # "ret":Z
    :cond_5
    const/4 v1, 0x1

    #@dd
    .restart local v1    # "ret":Z
    goto/16 :goto_0

    #@df
    :cond_6
    move v3, v5

    #@e0
    .line 395
    goto/16 :goto_1

    #@e2
    :cond_7
    move v3, v5

    #@e3
    .line 396
    goto/16 :goto_2

    #@e5
    :cond_8
    move v3, v4

    #@e6
    .line 397
    goto/16 :goto_3

    #@e8
    :cond_9
    move v3, v4

    #@e9
    .line 398
    goto/16 :goto_4

    #@eb
    :cond_a
    move v3, v4

    #@ec
    .line 399
    goto :goto_5

    #@ed
    :cond_b
    move v3, v5

    #@ee
    .line 400
    goto :goto_6

    #@ef
    :cond_c
    move v5, v4

    #@f0
    .line 401
    goto :goto_7
.end method

.method canTransfer()Z
    .locals 2

    #@0
    .prologue
    .line 408
    const-string/jumbo v0, "CdmaCallTracker"

    #@3
    const-string/jumbo v1, "canTransfer: not possible in CDMA"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 409
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    #@3
    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@6
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@b
    .line 355
    return-void
.end method

.method conference()V
    .locals 0

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    #@3
    .line 344
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
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
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    #@3
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_0

    #@9
    .line 179
    new-instance v8, Lcom/android/internal/telephony/CallStateException;

    #@b
    const-string/jumbo v9, "cannot dial in current state"

    #@e
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 183
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@14
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

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
    .line 184
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    move-object v5, p1

    #@22
    .line 185
    .local v5, "origNumber":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@24
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 186
    .local v4, "operatorIsoContry":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2e
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    #@31
    move-result v8

    #@32
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 187
    .local v6, "simIsoContry":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_1

    #@3c
    .line 188
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    .line 187
    :cond_1
    const/4 v1, 0x0

    #@43
    .line 190
    .local v1, "internationalRoaming":Z
    :goto_0
    if-eqz v1, :cond_3

    #@45
    .line 191
    const-string/jumbo v8, "us"

    #@48
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_9

    #@4e
    .line 192
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
    .line 197
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    #@5c
    .line 198
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@5e
    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object p1

    #@62
    .line 201
    :cond_4
    const-string/jumbo v8, "ril.cdma.inecmmode"

    #@65
    const-string/jumbo v9, "false"

    #@68
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    .line 202
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v8, "true"

    #@6f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v3

    #@73
    .line 204
    .local v3, "isPhoneInEcmMode":Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@75
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@78
    move-result-object v8

    #@79
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@7c
    move-result v2

    #@7d
    .line 207
    .local v2, "isEmergencyCall":Z
    if-eqz v3, :cond_5

    #@7f
    if-eqz v2, :cond_5

    #@81
    .line 208
    const/4 v8, 0x1

    #@82
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    #@85
    .line 214
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@87
    const/4 v9, 0x0

    #@88
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@8b
    .line 219
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@8d
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@90
    move-result-object v8

    #@91
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@93
    if-ne v8, v9, :cond_c

    #@95
    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    #@98
    move-result-object v8

    #@99
    return-object v8

    #@9a
    .line 189
    .end local v0    # "inEcm":Ljava/lang/String;
    .end local v1    # "internationalRoaming":Z
    .end local v2    # "isEmergencyCall":Z
    .end local v3    # "isPhoneInEcmMode":Z
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v8

    #@9e
    if-eqz v8, :cond_7

    #@a0
    const/4 v1, 0x0

    #@a1
    .restart local v1    # "internationalRoaming":Z
    goto :goto_0

    #@a2
    .end local v1    # "internationalRoaming":Z
    :cond_7
    const/4 v1, 0x1

    #@a3
    .restart local v1    # "internationalRoaming":Z
    goto :goto_0

    #@a4
    .line 192
    :cond_8
    const/4 v1, 0x1

    #@a5
    goto :goto_1

    #@a6
    .line 193
    :cond_9
    const-string/jumbo v8, "vi"

    #@a9
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v8

    #@ad
    if-eqz v8, :cond_3

    #@af
    .line 194
    if-eqz v1, :cond_a

    #@b1
    const-string/jumbo v8, "us"

    #@b4
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v8

    #@b8
    if-eqz v8, :cond_b

    #@ba
    :cond_a
    const/4 v1, 0x0

    #@bb
    goto :goto_1

    #@bc
    :cond_b
    const/4 v1, 0x1

    #@bd
    goto :goto_1

    #@be
    .line 223
    .restart local v0    # "inEcm":Ljava/lang/String;
    .restart local v2    # "isEmergencyCall":Z
    .restart local v3    # "isPhoneInEcmMode":Z
    :cond_c
    new-instance v8, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@c0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@c2
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@c5
    move-result-object v9

    #@c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    #@c9
    move-result-object v10

    #@ca
    .line 224
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@cc
    .line 223
    invoke-direct {v8, v9, v10, p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@cf
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@d1
    .line 225
    const/4 v8, 0x0

    #@d2
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@d4
    .line 227
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@d6
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    if-eqz v8, :cond_d

    #@dc
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@de
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@e1
    move-result-object v8

    #@e2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@e5
    move-result v8

    #@e6
    if-nez v8, :cond_f

    #@e8
    .line 230
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@ea
    const/4 v9, 0x7

    #@eb
    iput v9, v8, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@ed
    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    #@f0
    .line 253
    :goto_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNumberConverted:Z

    #@f2
    if-eqz v8, :cond_e

    #@f4
    .line 254
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@f6
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setConverted(Ljava/lang/String;)V

    #@f9
    .line 255
    const/4 v8, 0x0

    #@fa
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNumberConverted:Z

    #@fc
    .line 258
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@ff
    .line 259
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@101
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@104
    .line 261
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@106
    return-object v8

    #@107
    .line 228
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@109
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@10c
    move-result-object v8

    #@10d
    const/16 v9, 0x4e

    #@10f
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@112
    move-result v8

    #@113
    if-gez v8, :cond_d

    #@115
    .line 237
    const/4 v8, 0x0

    #@116
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    #@119
    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    #@11c
    .line 243
    if-eqz v3, :cond_10

    #@11e
    if-eqz v3, :cond_11

    #@120
    if-eqz v2, :cond_11

    #@122
    .line 244
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@124
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@126
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@129
    move-result-object v9

    #@12a
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@12d
    move-result-object v10

    #@12e
    invoke-interface {v8, v9, p2, v10}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@131
    goto :goto_2

    #@132
    .line 246
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@134
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    #@137
    .line 247
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@139
    const/16 v9, 0xe

    #@13b
    const/4 v10, 0x0

    #@13c
    invoke-virtual {v8, p0, v9, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    #@13f
    .line 248
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    #@141
    .line 249
    const/4 v8, 0x1

    #@142
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@144
    goto :goto_2
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 117
    const-string/jumbo v0, "CdmaCallTracker"

    #@3
    const-string/jumbo v1, "CdmaCallTracker dispose"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    #@e
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    #@13
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@18
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1a
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    #@1d
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    #@22
    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    #@25
    .line 116
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
    .line 1198
    const-string/jumbo v1, "GsmCallTracker extends:"

    #@6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 1199
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@c
    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "droppedDuringPoll: length="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

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
    .line 1201
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@29
    array-length v1, v1

    #@2a
    if-ge v0, v1, :cond_0

    #@2c
    .line 1202
    const-string/jumbo v1, " mConnections[%d]=%s\n"

    #@2f
    new-array v2, v6, [Ljava/lang/Object;

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v3

    #@35
    aput-object v3, v2, v4

    #@37
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@39
    aget-object v3, v3, v0

    #@3b
    aput-object v3, v2, v5

    #@3d
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@40
    .line 1201
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1204
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
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

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
    .line 1205
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
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

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
    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, " mCallWaitingRegistrants="

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v2, "droppedDuringPoll: size="

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@9c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9f
    move-result v2

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ab
    .line 1208
    const/4 v0, 0x0

    #@ac
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@ae
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b1
    move-result v1

    #@b2
    if-ge v0, v1, :cond_1

    #@b4
    .line 1209
    const-string/jumbo v1, " mDroppedDuringPoll[%d]=%s\n"

    #@b7
    new-array v2, v6, [Ljava/lang/Object;

    #@b9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v3

    #@bd
    aput-object v3, v2, v4

    #@bf
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v3

    #@c5
    aput-object v3, v2, v5

    #@c7
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@ca
    .line 1208
    add-int/lit8 v0, v0, 0x1

    #@cc
    goto :goto_1

    #@cd
    .line 1211
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v2, " mRingingCall="

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

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
    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, " mForegroundCall="

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

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
    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v2, " mBackgroundCall="

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

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
    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v2, " mPendingMO="

    #@120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v1

    #@124
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v2, " mHangupPendingMO="

    #@139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v2, " mPendingCallInEcm="

    #@152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

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
    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v2, " mIsInEmergencyCall="

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@174
    move-result-object v1

    #@175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v2, " mPhone="

    #@184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v1

    #@188
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@18a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v1

    #@18e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@195
    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v2, " mDesiredMute="

    #@19d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    #@1a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae
    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v2, " mPendingCallClirMode="

    #@1b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v1

    #@1ba
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    #@1bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v1

    #@1c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v1

    #@1c4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v2, " mState="

    #@1cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v1

    #@1d3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v1

    #@1d9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v2, " mIsEcmTimerCanceled="

    #@1e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v1

    #@1ec
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 1197
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    #@b
    .line 350
    return-void
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "CdmaCallTracker"

    #@3
    const-string/jumbo v1, "CdmaCallTracker finalized"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 129
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 920
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 921
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 922
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@11
    .line 923
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 924
    return-object v0

    #@18
    .line 921
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 928
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method getMute()Z
    .locals 1

    #@0
    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    #@2
    return v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 980
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4
    iget-boolean v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    #@6
    if-nez v7, :cond_0

    #@8
    .line 981
    const-string/jumbo v7, "CdmaCallTracker"

    #@b
    const-string/jumbo v8, "Ignoring events received on inactive CdmaPhone"

    #@e
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 982
    return-void

    #@12
    .line 984
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    #@14
    packed-switch v7, :pswitch_data_0

    #@17
    .line 1100
    :pswitch_0
    new-instance v7, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v8, "unexpected event not handled"

    #@1c
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v7

    #@20
    .line 986
    :pswitch_1
    const-string/jumbo v7, "CdmaCallTracker"

    #@23
    const-string/jumbo v8, "Event EVENT_POLL_CALLS_RESULT Received"

    #@26
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 987
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v0, Landroid/os/AsyncResult;

    #@2d
    .line 989
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@2f
    if-ne p1, v7, :cond_1

    #@31
    .line 992
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mNeedsPoll:Z

    #@33
    .line 993
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@35
    .line 994
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37
    check-cast v7, Landroid/os/AsyncResult;

    #@39
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    #@3c
    .line 977
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    :pswitch_2
    return-void

    #@3d
    .line 1000
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    #@40
    goto :goto_0

    #@41
    .line 1011
    :pswitch_4
    const/4 v6, 0x0

    #@42
    .line 1012
    .local v6, "vendorCause":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v0, Landroid/os/AsyncResult;

    #@46
    .line 1014
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    #@49
    .line 1016
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4b
    if-eqz v7, :cond_2

    #@4d
    .line 1019
    const/16 v1, 0x10

    #@4f
    .line 1020
    .local v1, "causeCode":I
    const-string/jumbo v7, "CdmaCallTracker"

    #@52
    .line 1021
    const-string/jumbo v8, "Exception during getLastCallFailCause, assuming normal disconnect"

    #@55
    .line 1020
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 1028
    .end local v6    # "vendorCause":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    #@59
    .local v4, "i":I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v5

    #@5f
    .local v5, "s":I
    :goto_2
    if-ge v4, v5, :cond_3

    #@61
    .line 1031
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@69
    .line 1033
    .local v2, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v2, v1, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    #@6c
    .line 1029
    add-int/lit8 v4, v4, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 1023
    .end local v1    # "causeCode":I
    .end local v2    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v4    # "i":I
    .end local v5    # "s":I
    .restart local v6    # "vendorCause":Ljava/lang/String;
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@71
    check-cast v3, Lcom/android/internal/telephony/LastCallFailCause;

    #@73
    .line 1024
    .local v3, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v1, v3, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    #@75
    .line 1025
    .restart local v1    # "causeCode":I
    iget-object v6, v3, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    #@77
    .local v6, "vendorCause":Ljava/lang/String;
    goto :goto_1

    #@78
    .line 1036
    .end local v3    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v6    # "vendorCause":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "s":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@7b
    .line 1038
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@7d
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@80
    .line 1039
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@85
    goto :goto_0

    #@86
    .line 1044
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "causeCode":I
    .end local v4    # "i":I
    .end local v5    # "s":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    #@89
    goto :goto_0

    #@8a
    .line 1048
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    #@8d
    goto :goto_0

    #@8e
    .line 1052
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    #@91
    goto :goto_0

    #@92
    .line 1057
    :pswitch_8
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@94
    if-eqz v7, :cond_4

    #@96
    .line 1058
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@98
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@9a
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallClirMode:I

    #@a0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@a3
    move-result-object v10

    #@a4
    invoke-interface {v7, v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    #@a7
    .line 1059
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@a9
    .line 1061
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@ab
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    #@ae
    goto :goto_0

    #@af
    .line 1065
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b1
    check-cast v0, Landroid/os/AsyncResult;

    #@b3
    .line 1066
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@b5
    if-nez v7, :cond_1

    #@b7
    .line 1067
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b9
    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #@bb
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    #@be
    .line 1068
    const-string/jumbo v7, "CdmaCallTracker"

    #@c1
    const-string/jumbo v8, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    #@c4
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    goto/16 :goto_0

    #@c9
    .line 1073
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cb
    check-cast v0, Landroid/os/AsyncResult;

    #@cd
    .line 1074
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cf
    if-nez v7, :cond_1

    #@d1
    .line 1076
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@d3
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    #@d6
    .line 1077
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@d8
    goto/16 :goto_0

    #@da
    .line 1082
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    check-cast v0, Landroid/os/AsyncResult;

    #@de
    .line 1083
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e0
    if-nez v7, :cond_5

    #@e2
    .line 1085
    new-instance v7, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;

    #@e4
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    #@e7
    .line 1092
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->m3WayCallFlashDelay:I

    #@e9
    int-to-long v8, v8

    #@ea
    .line 1084
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@ed
    goto/16 :goto_0

    #@ef
    .line 1094
    :cond_5
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@f1
    .line 1095
    const-string/jumbo v7, "CdmaCallTracker"

    #@f4
    const-string/jumbo v8, "exception happened on Blank Flash for 3-way call"

    #@f7
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@fa
    goto/16 :goto_0

    #@fc
    .line 984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 28
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 504
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4
    move-object/from16 v24, v0

    #@6
    if-nez v24, :cond_2

    #@8
    .line 505
    move-object/from16 v0, p1

    #@a
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@c
    move-object/from16 v22, v0

    #@e
    check-cast v22, Ljava/util/List;

    #@10
    .line 517
    .local v22, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v20, 0x0

    #@12
    .line 518
    .local v20, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v21, 0x0

    #@14
    .line 519
    .local v21, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    #@15
    .line 521
    .local v14, "hasNonHangupStateChanged":Z
    const/4 v13, 0x0

    #@16
    .line 522
    .local v13, "hasAnyCallDisconnected":Z
    const/16 v19, 0x0

    #@18
    .line 523
    .local v19, "needsPollDelay":Z
    const/16 v23, 0x0

    #@1a
    .line 525
    .local v23, "unknownConnectionAppeared":Z
    const/16 v17, 0x0

    #@1c
    .local v17, "i":I
    const/4 v9, 0x0

    #@1d
    .local v9, "curDC":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@20
    move-result v11

    #@21
    .line 526
    .end local v14    # "hasNonHangupStateChanged":Z
    .end local v20    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v21    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .local v11, "dcSize":I
    :goto_1
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@25
    move-object/from16 v24, v0

    #@27
    move-object/from16 v0, v24

    #@29
    array-length v0, v0

    #@2a
    move/from16 v24, v0

    #@2c
    .line 525
    move/from16 v0, v17

    #@2e
    move/from16 v1, v24

    #@30
    if-ge v0, v1, :cond_13

    #@32
    .line 527
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@36
    move-object/from16 v24, v0

    #@38
    aget-object v7, v24, v17

    #@3a
    .line 528
    .local v7, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/4 v10, 0x0

    #@3b
    .line 531
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v9, v11, :cond_0

    #@3d
    .line 532
    move-object/from16 v0, v22

    #@3f
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v10

    #@43
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v10, Lcom/android/internal/telephony/DriverCall;

    #@45
    .line 534
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v10, Lcom/android/internal/telephony/DriverCall;->index:I

    #@47
    move/from16 v24, v0

    #@49
    add-int/lit8 v25, v17, 0x1

    #@4b
    move/from16 v0, v24

    #@4d
    move/from16 v1, v25

    #@4f
    if-ne v0, v1, :cond_4

    #@51
    .line 535
    add-int/lit8 v9, v9, 0x1

    #@53
    .line 544
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_0
    :goto_2
    if-nez v7, :cond_a

    #@55
    if-eqz v10, :cond_a

    #@57
    .line 546
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@5b
    move-object/from16 v24, v0

    #@5d
    if-eqz v24, :cond_5

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@63
    move-object/from16 v24, v0

    #@65
    move-object/from16 v0, v24

    #@67
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    #@6a
    move-result v24

    #@6b
    if-eqz v24, :cond_5

    #@6d
    .line 551
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@71
    move-object/from16 v24, v0

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@77
    move-object/from16 v25, v0

    #@79
    aput-object v25, v24, v17

    #@7b
    .line 552
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@7f
    move-object/from16 v24, v0

    #@81
    move/from16 v0, v17

    #@83
    move-object/from16 v1, v24

    #@85
    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    #@87
    .line 553
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@8b
    move-object/from16 v24, v0

    #@8d
    move-object/from16 v0, v24

    #@8f
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@92
    .line 554
    const/16 v24, 0x0

    #@94
    move-object/from16 v0, v24

    #@96
    move-object/from16 v1, p0

    #@98
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@9a
    .line 557
    move-object/from16 v0, p0

    #@9c
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@9e
    move/from16 v24, v0

    #@a0
    if-eqz v24, :cond_7

    #@a2
    .line 558
    const/16 v24, 0x0

    #@a4
    move/from16 v0, v24

    #@a6
    move-object/from16 v1, p0

    #@a8
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@aa
    .line 560
    move-object/from16 v0, p0

    #@ac
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@ae
    move/from16 v24, v0

    #@b0
    if-eqz v24, :cond_1

    #@b2
    .line 561
    const/16 v24, 0x0

    #@b4
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, v24

    #@b8
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    #@bb
    .line 566
    :cond_1
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v25, "poll: hangupPendingMO, hangup conn "

    #@c3
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v24

    #@c7
    move-object/from16 v0, v24

    #@c9
    move/from16 v1, v17

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v24

    #@cf
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v24

    #@d3
    .line 565
    move-object/from16 v0, p0

    #@d5
    move-object/from16 v1, v24

    #@d7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@da
    .line 567
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@de
    move-object/from16 v24, v0

    #@e0
    aget-object v24, v24, v17

    #@e2
    move-object/from16 v0, p0

    #@e4
    move-object/from16 v1, v24

    #@e6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@e9
    .line 574
    :goto_3
    return-void

    #@ea
    .line 506
    .end local v7    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v9    # "curDC":I
    .end local v11    # "dcSize":I
    .end local v13    # "hasAnyCallDisconnected":Z
    .end local v17    # "i":I
    .end local v19    # "needsPollDelay":Z
    .end local v22    # "polledCalls":Ljava/util/List;
    .end local v23    # "unknownConnectionAppeared":Z
    :cond_2
    move-object/from16 v0, p1

    #@ec
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ee
    move-object/from16 v24, v0

    #@f0
    move-object/from16 v0, p0

    #@f2
    move-object/from16 v1, v24

    #@f4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    #@f7
    move-result v24

    #@f8
    if-eqz v24, :cond_3

    #@fa
    .line 509
    new-instance v22, Ljava/util/ArrayList;

    #@fc
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@ff
    .restart local v22    # "polledCalls":Ljava/util/List;
    goto/16 :goto_0

    #@101
    .line 513
    .end local v22    # "polledCalls":Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    #@104
    .line 514
    return-void

    #@105
    .line 537
    .restart local v7    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v9    # "curDC":I
    .restart local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    .restart local v11    # "dcSize":I
    .restart local v13    # "hasAnyCallDisconnected":Z
    .restart local v17    # "i":I
    .restart local v19    # "needsPollDelay":Z
    .restart local v22    # "polledCalls":Ljava/util/List;
    .restart local v23    # "unknownConnectionAppeared":Z
    :cond_4
    const/4 v10, 0x0

    #@106
    .local v10, "dc":Lcom/android/internal/telephony/DriverCall;
    goto/16 :goto_2

    #@108
    .line 568
    .end local v10    # "dc":Lcom/android/internal/telephony/DriverCall;
    :catch_0
    move-exception v12

    #@109
    .line 569
    .local v12, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v24, "CdmaCallTracker"

    #@10c
    const-string/jumbo v25, "unexpected error on hangup"

    #@10f
    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    goto :goto_3

    #@113
    .line 578
    .end local v12    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    #@115
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v25, "pendingMo="

    #@11b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v24

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@123
    move-object/from16 v25, v0

    #@125
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v24

    #@129
    const-string/jumbo v25, ", dc="

    #@12c
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v24

    #@130
    move-object/from16 v0, v24

    #@132
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v24

    #@136
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v24

    #@13a
    move-object/from16 v0, p0

    #@13c
    move-object/from16 v1, v24

    #@13e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@141
    .line 580
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@145
    move-object/from16 v24, v0

    #@147
    new-instance v25, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@14d
    move-object/from16 v26, v0

    #@14f
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    #@152
    move-result-object v26

    #@153
    move-object/from16 v0, v25

    #@155
    move-object/from16 v1, v26

    #@157
    move-object/from16 v2, p0

    #@159
    move/from16 v3, v17

    #@15b
    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    #@15e
    aput-object v25, v24, v17

    #@160
    .line 582
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    #@165
    move-result-object v15

    #@166
    .line 583
    .local v15, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v15, :cond_9

    #@168
    .line 585
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@16c
    move-object/from16 v24, v0

    #@16e
    aget-object v24, v24, v17

    #@170
    move-object/from16 v0, v24

    #@172
    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    #@175
    .line 586
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@179
    move-object/from16 v24, v0

    #@17b
    move-object/from16 v0, v24

    #@17d
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@180
    .line 587
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@184
    move-object/from16 v24, v0

    #@186
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@18a
    move-object/from16 v25, v0

    #@18c
    aget-object v25, v25, v17

    #@18e
    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    #@191
    .line 596
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@194
    .line 598
    .end local v15    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_7
    const/4 v14, 0x1

    #@195
    .line 526
    :cond_8
    :goto_5
    add-int/lit8 v17, v17, 0x1

    #@197
    goto/16 :goto_1

    #@199
    .line 590
    .restart local v15    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_9
    move-object/from16 v0, p0

    #@19b
    move/from16 v1, v17

    #@19d
    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@1a0
    move-result-object v20

    #@1a1
    .line 591
    .local v20, "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v20, :cond_6

    #@1a3
    .line 592
    const/16 v23, 0x1

    #@1a5
    .line 593
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@1a9
    move-object/from16 v24, v0

    #@1ab
    aget-object v21, v24, v17

    #@1ad
    .local v21, "newUnknown":Lcom/android/internal/telephony/Connection;
    goto :goto_4

    #@1ae
    .line 599
    .end local v15    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v20    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v21    # "newUnknown":Lcom/android/internal/telephony/Connection;
    :cond_a
    if-eqz v7, :cond_e

    #@1b0
    if-nez v10, :cond_e

    #@1b2
    .line 604
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@1b6
    move-object/from16 v24, v0

    #@1b8
    move-object/from16 v0, v24

    #@1ba
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@1bc
    move-object/from16 v24, v0

    #@1be
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@1c1
    move-result v8

    #@1c2
    .line 605
    .local v8, "count":I
    const/16 v18, 0x0

    #@1c4
    .local v18, "n":I
    :goto_6
    move/from16 v0, v18

    #@1c6
    if-ge v0, v8, :cond_b

    #@1c8
    .line 606
    new-instance v24, Ljava/lang/StringBuilder;

    #@1ca
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1cd
    const-string/jumbo v25, "adding fgCall cn "

    #@1d0
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v24

    #@1d4
    move-object/from16 v0, v24

    #@1d6
    move/from16 v1, v18

    #@1d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v24

    #@1dc
    const-string/jumbo v25, " to droppedDuringPoll"

    #@1df
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v24

    #@1e3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v24

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    move-object/from16 v1, v24

    #@1eb
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@1ee
    .line 607
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@1f2
    move-object/from16 v24, v0

    #@1f4
    move-object/from16 v0, v24

    #@1f6
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@1f8
    move-object/from16 v24, v0

    #@1fa
    move-object/from16 v0, v24

    #@1fc
    move/from16 v1, v18

    #@1fe
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@201
    move-result-object v6

    #@202
    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@204
    .line 608
    .local v6, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@208
    move-object/from16 v24, v0

    #@20a
    move-object/from16 v0, v24

    #@20c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20f
    .line 605
    add-int/lit8 v18, v18, 0x1

    #@211
    goto :goto_6

    #@212
    .line 610
    .end local v6    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_b
    move-object/from16 v0, p0

    #@214
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@216
    move-object/from16 v24, v0

    #@218
    move-object/from16 v0, v24

    #@21a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@21c
    move-object/from16 v24, v0

    #@21e
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@221
    move-result v8

    #@222
    .line 613
    const/16 v18, 0x0

    #@224
    :goto_7
    move/from16 v0, v18

    #@226
    if-ge v0, v8, :cond_c

    #@228
    .line 614
    new-instance v24, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v25, "adding rgCall cn "

    #@230
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v24

    #@234
    move-object/from16 v0, v24

    #@236
    move/from16 v1, v18

    #@238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v24

    #@23c
    const-string/jumbo v25, " to droppedDuringPoll"

    #@23f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v24

    #@243
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@246
    move-result-object v24

    #@247
    move-object/from16 v0, p0

    #@249
    move-object/from16 v1, v24

    #@24b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@24e
    .line 615
    move-object/from16 v0, p0

    #@250
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@252
    move-object/from16 v24, v0

    #@254
    move-object/from16 v0, v24

    #@256
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@258
    move-object/from16 v24, v0

    #@25a
    move-object/from16 v0, v24

    #@25c
    move/from16 v1, v18

    #@25e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@261
    move-result-object v6

    #@262
    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@264
    .line 616
    .restart local v6    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@268
    move-object/from16 v24, v0

    #@26a
    move-object/from16 v0, v24

    #@26c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26f
    .line 613
    add-int/lit8 v18, v18, 0x1

    #@271
    goto :goto_7

    #@272
    .line 618
    .end local v6    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_c
    move-object/from16 v0, p0

    #@274
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@276
    move-object/from16 v24, v0

    #@278
    const/16 v25, 0x0

    #@27a
    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@27d
    .line 619
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@281
    move-object/from16 v24, v0

    #@283
    const/16 v25, 0x0

    #@285
    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    #@288
    .line 622
    move-object/from16 v0, p0

    #@28a
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    #@28c
    move/from16 v24, v0

    #@28e
    if-eqz v24, :cond_d

    #@290
    .line 623
    const/16 v24, 0x0

    #@292
    move-object/from16 v0, p0

    #@294
    move/from16 v1, v24

    #@296
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    #@299
    .line 626
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@29c
    .line 630
    move-object/from16 v0, p0

    #@29e
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@2a0
    move-object/from16 v24, v0

    #@2a2
    const/16 v25, 0x0

    #@2a4
    aput-object v25, v24, v17

    #@2a6
    goto/16 :goto_5

    #@2a8
    .line 631
    .end local v8    # "count":I
    .end local v18    # "n":I
    :cond_e
    if-eqz v7, :cond_8

    #@2aa
    if-eqz v10, :cond_8

    #@2ac
    .line 633
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    #@2af
    move-result v24

    #@2b0
    iget-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@2b2
    move/from16 v25, v0

    #@2b4
    move/from16 v0, v24

    #@2b6
    move/from16 v1, v25

    #@2b8
    if-eq v0, v1, :cond_11

    #@2ba
    .line 634
    iget-boolean v0, v10, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@2bc
    move/from16 v24, v0

    #@2be
    if-eqz v24, :cond_10

    #@2c0
    .line 636
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@2c4
    move-object/from16 v24, v0

    #@2c6
    move-object/from16 v0, v24

    #@2c8
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2cb
    .line 638
    move-object/from16 v0, p0

    #@2cd
    move/from16 v1, v17

    #@2cf
    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    #@2d2
    move-result-object v20

    #@2d3
    .line 639
    .restart local v20    # "newRinging":Lcom/android/internal/telephony/Connection;
    if-nez v20, :cond_f

    #@2d5
    .line 640
    const/16 v23, 0x1

    #@2d7
    .line 641
    move-object/from16 v21, v7

    #@2d9
    .line 643
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@2dc
    goto/16 :goto_5

    #@2de
    .line 649
    .end local v20    # "newRinging":Lcom/android/internal/telephony/Connection;
    :cond_10
    const-string/jumbo v24, "CdmaCallTracker"

    #@2e1
    new-instance v25, Ljava/lang/StringBuilder;

    #@2e3
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2e6
    const-string/jumbo v26, "Error in RIL, Phantom call appeared "

    #@2e9
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v25

    #@2ed
    move-object/from16 v0, v25

    #@2ef
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f2
    move-result-object v25

    #@2f3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f6
    move-result-object v25

    #@2f7
    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2fa
    goto/16 :goto_5

    #@2fc
    .line 653
    :cond_11
    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    #@2ff
    move-result v5

    #@300
    .line 654
    .local v5, "changed":Z
    if-nez v14, :cond_12

    #@302
    move v14, v5

    #@303
    .local v14, "hasNonHangupStateChanged":Z
    goto/16 :goto_5

    #@305
    .end local v14    # "hasNonHangupStateChanged":Z
    :cond_12
    const/4 v14, 0x1

    #@306
    .local v14, "hasNonHangupStateChanged":Z
    goto/16 :goto_5

    #@308
    .line 681
    .end local v5    # "changed":Z
    .end local v7    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v14    # "hasNonHangupStateChanged":Z
    :cond_13
    move-object/from16 v0, p0

    #@30a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@30c
    move-object/from16 v24, v0

    #@30e
    if-eqz v24, :cond_15

    #@310
    .line 682
    const-string/jumbo v24, "CdmaCallTracker"

    #@313
    new-instance v25, Ljava/lang/StringBuilder;

    #@315
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@318
    const-string/jumbo v26, "Pending MO dropped before poll fg state:"

    #@31b
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v25

    #@31f
    .line 683
    move-object/from16 v0, p0

    #@321
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@323
    move-object/from16 v26, v0

    #@325
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@328
    move-result-object v26

    #@329
    .line 682
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32c
    move-result-object v25

    #@32d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@330
    move-result-object v25

    #@331
    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@334
    .line 685
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@338
    move-object/from16 v24, v0

    #@33a
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@33e
    move-object/from16 v25, v0

    #@340
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@343
    .line 686
    const/16 v24, 0x0

    #@345
    move-object/from16 v0, v24

    #@347
    move-object/from16 v1, p0

    #@349
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@34b
    .line 687
    const/16 v24, 0x0

    #@34d
    move/from16 v0, v24

    #@34f
    move-object/from16 v1, p0

    #@351
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@353
    .line 688
    move-object/from16 v0, p0

    #@355
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@357
    move/from16 v24, v0

    #@359
    if-eqz v24, :cond_14

    #@35b
    .line 689
    const/16 v24, 0x0

    #@35d
    move/from16 v0, v24

    #@35f
    move-object/from16 v1, p0

    #@361
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingCallInEcm:Z

    #@363
    .line 691
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    #@366
    .line 694
    :cond_15
    if-eqz v20, :cond_16

    #@368
    .line 695
    move-object/from16 v0, p0

    #@36a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@36c
    move-object/from16 v24, v0

    #@36e
    move-object/from16 v0, v24

    #@370
    move-object/from16 v1, v20

    #@372
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    #@375
    .line 701
    :cond_16
    move-object/from16 v0, p0

    #@377
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@379
    move-object/from16 v24, v0

    #@37b
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@37e
    move-result v24

    #@37f
    add-int/lit8 v17, v24, -0x1

    #@381
    .end local v13    # "hasAnyCallDisconnected":Z
    :goto_8
    if-ltz v17, :cond_1b

    #@383
    .line 702
    move-object/from16 v0, p0

    #@385
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@387
    move-object/from16 v24, v0

    #@389
    move-object/from16 v0, v24

    #@38b
    move/from16 v1, v17

    #@38d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@390
    move-result-object v7

    #@391
    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@393
    .line 704
    .restart local v7    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    #@396
    move-result v24

    #@397
    if-eqz v24, :cond_19

    #@399
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    #@39c
    move-result-wide v24

    #@39d
    const-wide/16 v26, 0x0

    #@39f
    cmp-long v24, v24, v26

    #@3a1
    if-nez v24, :cond_19

    #@3a3
    .line 707
    iget v0, v7, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@3a5
    move/from16 v24, v0

    #@3a7
    const/16 v25, 0x3

    #@3a9
    move/from16 v0, v24

    #@3ab
    move/from16 v1, v25

    #@3ad
    if-ne v0, v1, :cond_18

    #@3af
    .line 708
    const/16 v4, 0x10

    #@3b1
    .line 714
    .local v4, "cause":I
    :goto_9
    new-instance v24, Ljava/lang/StringBuilder;

    #@3b3
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3b6
    const-string/jumbo v25, "missed/rejected call, conn.cause="

    #@3b9
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v24

    #@3bd
    iget v0, v7, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@3bf
    move/from16 v25, v0

    #@3c1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v24

    #@3c5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c8
    move-result-object v24

    #@3c9
    move-object/from16 v0, p0

    #@3cb
    move-object/from16 v1, v24

    #@3cd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@3d0
    .line 715
    new-instance v24, Ljava/lang/StringBuilder;

    #@3d2
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3d5
    const-string/jumbo v25, "setting cause to "

    #@3d8
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3db
    move-result-object v24

    #@3dc
    move-object/from16 v0, v24

    #@3de
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e1
    move-result-object v24

    #@3e2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e5
    move-result-object v24

    #@3e6
    move-object/from16 v0, p0

    #@3e8
    move-object/from16 v1, v24

    #@3ea
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@3ed
    .line 717
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@3f1
    move-object/from16 v24, v0

    #@3f3
    move-object/from16 v0, v24

    #@3f5
    move/from16 v1, v17

    #@3f7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3fa
    .line 718
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    #@3fd
    move-result v24

    #@3fe
    or-int v13, v13, v24

    #@400
    .line 701
    .end local v4    # "cause":I
    :cond_17
    :goto_a
    add-int/lit8 v17, v17, -0x1

    #@402
    goto/16 :goto_8

    #@404
    .line 710
    :cond_18
    const/4 v4, 0x1

    #@405
    .restart local v4    # "cause":I
    goto :goto_9

    #@406
    .line 719
    .end local v4    # "cause":I
    :cond_19
    iget v0, v7, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@408
    move/from16 v24, v0

    #@40a
    const/16 v25, 0x3

    #@40c
    move/from16 v0, v24

    #@40e
    move/from16 v1, v25

    #@410
    if-eq v0, v1, :cond_1a

    #@412
    .line 720
    iget v0, v7, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@414
    move/from16 v24, v0

    #@416
    const/16 v25, 0x7

    #@418
    move/from16 v0, v24

    #@41a
    move/from16 v1, v25

    #@41c
    if-ne v0, v1, :cond_17

    #@41e
    .line 721
    :cond_1a
    move-object/from16 v0, p0

    #@420
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@422
    move-object/from16 v24, v0

    #@424
    move-object/from16 v0, v24

    #@426
    move/from16 v1, v17

    #@428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@42b
    .line 722
    iget v0, v7, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    #@42d
    move/from16 v24, v0

    #@42f
    move/from16 v0, v24

    #@431
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    #@434
    move-result v24

    #@435
    or-int v13, v13, v24

    #@437
    .local v13, "hasAnyCallDisconnected":Z
    goto :goto_a

    #@438
    .line 727
    .end local v7    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v13    # "hasAnyCallDisconnected":Z
    :cond_1b
    move-object/from16 v0, p0

    #@43a
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@43c
    move-object/from16 v24, v0

    #@43e
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@441
    move-result-object v16

    #@442
    .local v16, "hoConnection$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@445
    move-result v24

    #@446
    if-eqz v24, :cond_1c

    #@448
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44b
    move-result-object v15

    #@44c
    check-cast v15, Lcom/android/internal/telephony/Connection;

    #@44e
    .line 728
    .restart local v15    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v24, Ljava/lang/StringBuilder;

    #@450
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@453
    const-string/jumbo v25, "handlePollCalls - disconnect hoConn= "

    #@456
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@459
    move-result-object v24

    #@45a
    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@45d
    move-result-object v25

    #@45e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@461
    move-result-object v24

    #@462
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@465
    move-result-object v24

    #@466
    move-object/from16 v0, p0

    #@468
    move-object/from16 v1, v24

    #@46a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@46d
    move-object/from16 v24, v15

    #@46f
    .line 729
    check-cast v24, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@471
    const/16 v25, -0x1

    #@473
    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@476
    .line 730
    move-object/from16 v0, p0

    #@478
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@47a
    move-object/from16 v24, v0

    #@47c
    move-object/from16 v0, v24

    #@47e
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@481
    goto :goto_b

    #@482
    .line 734
    .end local v15    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_1c
    move-object/from16 v0, p0

    #@484
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    #@486
    move-object/from16 v24, v0

    #@488
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    #@48b
    move-result v24

    #@48c
    if-lez v24, :cond_1d

    #@48e
    .line 735
    move-object/from16 v0, p0

    #@490
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@492
    move-object/from16 v24, v0

    #@494
    .line 736
    const/16 v25, 0x5

    #@496
    move-object/from16 v0, p0

    #@498
    move/from16 v1, v25

    #@49a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    #@49d
    move-result-object v25

    #@49e
    .line 735
    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    #@4a1
    .line 739
    :cond_1d
    if-eqz v19, :cond_1e

    #@4a3
    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    #@4a6
    .line 748
    :cond_1e
    if-nez v20, :cond_1f

    #@4a8
    if-nez v14, :cond_1f

    #@4aa
    if-eqz v13, :cond_20

    #@4ac
    .line 749
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    #@4af
    .line 752
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@4b2
    .line 754
    if-eqz v23, :cond_21

    #@4b4
    .line 755
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4b8
    move-object/from16 v24, v0

    #@4ba
    move-object/from16 v0, v24

    #@4bc
    move-object/from16 v1, v21

    #@4be
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@4c1
    .line 758
    :cond_21
    if-nez v14, :cond_22

    #@4c3
    if-eqz v20, :cond_24

    #@4c5
    .line 759
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    #@4c7
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@4c9
    move-object/from16 v24, v0

    #@4cb
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@4ce
    .line 501
    :cond_23
    return-void

    #@4cf
    .line 758
    :cond_24
    if-eqz v13, :cond_23

    #@4d1
    goto :goto_c
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 845
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 846
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@d
    const-string/jumbo v1, "no connections in call"

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@16
    if-ne p1, v0, :cond_1

    #@18
    .line 850
    const-string/jumbo v0, "(ringing) hangup waiting or background"

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@27
    .line 875
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    #@2a
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@2c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@2f
    .line 844
    return-void

    #@30
    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@32
    if-ne p1, v0, :cond_3

    #@34
    .line 853
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 855
    const-string/jumbo v0, "(foregnd) hangup dialing or alerting..."

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@40
    .line 857
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    #@43
    move-result-object v0

    #@44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@4a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    #@4d
    goto :goto_0

    #@4e
    .line 859
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    #@51
    goto :goto_0

    #@52
    .line 861
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@54
    if-ne p1, v0, :cond_5

    #@56
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@58
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_4

    #@5e
    .line 864
    const-string/jumbo v0, "hangup all conns in background call"

    #@61
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@64
    .line 866
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    #@67
    goto :goto_0

    #@68
    .line 868
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    #@6b
    goto :goto_0

    #@6c
    .line 871
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    #@6e
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v2, "CdmaCall "

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 872
    const-string/jumbo v2, "does not belong to CdmaCallTracker "

    #@81
    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@90
    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 768
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 769
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "CdmaConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 770
    const-string/jumbo v3, "does not belong to CdmaCallTracker "

    #@19
    .line 769
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
    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@2b
    if-ne p1, v1, :cond_1

    #@2d
    .line 777
    const-string/jumbo v1, "hangup: set hangupPendingMO to true"

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@33
    .line 778
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mHangupPendingMO:Z

    #@36
    .line 807
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    #@39
    .line 767
    return-void

    #@3a
    .line 779
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@40
    if-ne v1, v2, :cond_2

    #@42
    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@44
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@47
    move-result-object v1

    #@48
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@4a
    if-ne v1, v2, :cond_2

    #@4c
    .line 792
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    #@4f
    .line 793
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    #@52
    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@54
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    #@57
    .line 795
    return-void

    #@58
    .line 798
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5a
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    #@5d
    move-result v2

    #@5e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@61
    move-result-object v3

    #@62
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    goto :goto_0

    #@66
    .line 799
    :catch_0
    move-exception v0

    #@67
    .line 802
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "CdmaCallTracker"

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "CdmaCallTracker WARN: hangup() on absent connection "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    #@0
    .prologue
    .line 907
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 908
    .local v1, "count":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@9
    .line 909
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@11
    .line 910
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    #@16
    move-result v5

    #@17
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1a
    move-result-object v6

    #@1b
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 908
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 912
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@22
    .line 913
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v4, "CdmaCallTracker"

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
    .line 905
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 893
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 894
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@9
    .line 895
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    #@11
    .line 896
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    #@14
    move-result v3

    #@15
    if-ne v3, p2, :cond_0

    #@17
    .line 897
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    #@20
    .line 898
    return-void

    #@21
    .line 894
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 902
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
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
    .line 887
    const-string/jumbo v0, "hangupForegroundResumeBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    #@f
    .line 886
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    #@0
    .prologue
    .line 881
    const-string/jumbo v0, "hangupWaitingOrBackground"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    #@6
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    #@f
    .line 880
    return-void
.end method

.method isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1193
    const-string/jumbo v0, "CdmaCallTracker"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[CdmaCallTracker] "

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
    .line 1192
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 163
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 161
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 153
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 151
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
    .line 138
    new-instance v0, Landroid/os/Registrant;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 139
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@b
    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@d
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 142
    new-instance v1, Landroid/os/AsyncResult;

    #@13
    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@19
    .line 137
    :cond_0
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
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    #@15
    .line 317
    return-void

    #@16
    .line 323
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@18
    const-string/jumbo v1, "phone not ringing"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 813
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "CdmaConnection "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 814
    const-string/jumbo v3, "does not belong to CdmaCallTracker "

    #@19
    .line 813
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
    .line 817
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    #@2e
    move-result v2

    #@2f
    .line 818
    const/16 v3, 0xc

    #@31
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    #@34
    move-result-object v3

    #@35
    .line 817
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 811
    :goto_0
    return-void

    #@39
    .line 819
    :catch_0
    move-exception v0

    #@3a
    .line 822
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "CdmaCallTracker"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "CdmaCallTracker WARN: separate() on absent connection "

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
    .line 831
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    #@2
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDesiredMute:Z

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    #@a
    .line 830
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 331
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    #@c
    const-string/jumbo v1, "cannot be in the incoming state"

    #@f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    const/4 v1, 0x1

    #@1e
    if-le v0, v1, :cond_1

    #@20
    .line 333
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    #@23
    .line 328
    :goto_0
    return-void

    #@24
    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@26
    const-string/jumbo v1, ""

    #@29
    const/16 v2, 0x8

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    #@32
    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 166
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 157
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 146
    return-void
.end method
