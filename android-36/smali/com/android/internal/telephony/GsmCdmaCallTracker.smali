.class public Lcom/android/internal/telephony/GsmCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCdmaCallTracker.java"


# static fields
.field public static final blacklist MAX_CONNECTIONS_GSM:I = 0x13


# instance fields
.field private blacklist m3WayCallFlashDelay:I

.field public greylist-max-r mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private blacklist mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

.field private blacklist mDesiredMute:Z

.field private blacklist mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field public greylist-max-r mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private blacklist mHangupPendingMO:Z

.field private blacklist mIsInEmergencyCall:Z

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mPendingCallClirMode:I

.field private blacklist mPendingCallInEcm:Z

.field private greylist-max-r mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

.field private greylist-max-r mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field public greylist-max-r mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field public greylist-max-r mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private blacklist mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method public static synthetic blacklist $r8$lambda$sytouaFI2-_dUgdUFTXv1kvDhl0(Lcom/android/internal/telephony/Connection;)Z
    .registers 2

    .line 1836
    instance-of v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mobtainCompleteMessage(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Landroid/os/Message;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 161
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallTracker;-><init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 82
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 83
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 89
    new-instance p2, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 92
    new-instance p2, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 94
    new-instance p2, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 106
    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 112
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 121
    new-instance p2, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    iget-object p2, p0, Lcom/android/internal/telephony/CallTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyCapabilities;->minimalTelephonyCdmCheck(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.telephony.calling"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_63

    goto :goto_6b

    .line 166
    :cond_63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GsmCdmaCallTracker requires calling"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_6b
    :goto_6b
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 170
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 171
    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x9

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0xa

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string p2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    return-void
.end method

.method private blacklist checkAndEnableDataCallAfterEmergencyCallDropped()V
    .registers 5

    .line 1772
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 1773
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1774
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v1

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    if-nez v1, :cond_28

    .line 1780
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1782
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    :cond_2d
    return-void
.end method

.method private blacklist checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .registers 6

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_25

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object p2, v0, p2

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify new ring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return-object p2

    .line 1802
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phantom call appeared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5a

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v1, :cond_5a

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1809
    iget-object p1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p1, v0, :cond_5a

    .line 1811
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    :cond_5a
    return-object v2
.end method

.method private blacklist dialCdma(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    .line 420
    iget v0, v5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 421
    iget-object v7, v5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 422
    iget-boolean v8, v5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-eqz v8, :cond_25

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial cdma emergency call, set clirModIe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    move v14, v1

    goto :goto_26

    :cond_25
    move v14, v0

    .line 430
    :goto_26
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 433
    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 435
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 436
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 438
    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v2, :cond_64

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    move v2, v10

    goto :goto_65

    :cond_64
    move v2, v9

    :goto_65
    if-eqz v2, :cond_8c

    .line 444
    const-string v4, "us"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "vi"

    if-eqz v11, :cond_7d

    if-eqz v2, :cond_7b

    .line 445
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    :goto_79
    move v2, v10

    goto :goto_8c

    :cond_7b
    move v2, v9

    goto :goto_8c

    .line 446
    :cond_7d
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    if-eqz v2, :cond_7b

    .line 447
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_79

    :cond_8c
    :goto_8c
    if-eqz v2, :cond_96

    .line 451
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3, v0, v6}, Lcom/android/internal/telephony/CallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_97

    :cond_96
    move-object v2, v6

    .line 454
    :goto_97
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v11

    if-eqz v11, :cond_a6

    if-eqz v8, :cond_a6

    .line 458
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 464
    :cond_a6
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_b5

    .line 465
    invoke-direct {v3, v2, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 468
    :cond_b5
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v7, :cond_e7

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialGsm - emergency dialer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GsmCdmaCallTracker"

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setHasKnownUserIntentEmergency(Z)V

    .line 477
    :cond_e7
    iput-boolean v9, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 479
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10b

    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 480
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_10d

    :cond_10b
    move v0, v9

    goto :goto_169

    .line 489
    :cond_10d
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 492
    invoke-direct {v3, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    if-eqz v11, :cond_119

    if-eqz v11, :cond_11b

    if-eqz v8, :cond_11b

    :cond_119
    move v0, v9

    goto :goto_147

    .line 500
    :cond_11b
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 501
    iput-boolean v10, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 503
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    invoke-direct {v0, v3, v14}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    .line 512
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode(Ljava/lang/Runnable;I)V

    :goto_133
    move v0, v9

    goto :goto_171

    .line 515
    :cond_135
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    .line 516
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iput v14, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 518
    iput-boolean v10, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    goto :goto_133

    .line 496
    :goto_147
    iget-object v9, v3, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v11

    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v12

    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 498
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result v13

    .line 499
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v15

    .line 496
    invoke-interface/range {v9 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    goto :goto_171

    .line 482
    :goto_169
    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v2, 0x7

    iput v2, v1, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 486
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 522
    :goto_171
    iget-boolean v1, v3, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    if-eqz v1, :cond_17c

    .line 523
    iget-object v1, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/Connection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 524
    iput-boolean v0, v3, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 527
    :cond_17c
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 528
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 530
    iget-object v0, v3, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private blacklist dialThreeWay(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 11

    .line 535
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 539
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 542
    new-instance v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v5, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    iput-object v2, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_42

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dialThreeWay - emergency dialer "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "GsmCdmaCallTracker"

    invoke-static {p2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setHasKnownUserIntentEmergency(Z)V

    .line 551
    :cond_42
    iget-object p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "carrier_config"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 553
    iget-object p1, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 555
    const-string p1, "cdma_3waycall_flash_delay_int"

    .line 556
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_68

    :cond_65
    const/4 p0, 0x0

    .line 559
    iput p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 561
    :goto_68
    iget p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez p0, :cond_7a

    .line 562
    iget-object p0, v5, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x14

    invoke-virtual {v5, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p0, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_8b

    .line 564
    :cond_7a
    iget-object p0, v5, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p1, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 565
    invoke-virtual {v5, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 564
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 567
    :goto_8b
    iget-object p0, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object p0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-r disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 400
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 401
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 402
    const-string p1, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    :cond_1c
    return-void
.end method

.method private greylist-max-r fakeHoldForegroundBeforeDial()V
    .registers 4

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 279
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 280
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private blacklist flashAndSetGenericTrue()V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method private blacklist getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .registers 2

    const/16 p0, 0x8

    if-eq p1, p0, :cond_13

    packed-switch p1, :pswitch_data_16

    .line 1492
    sget-object p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0

    .line 1490
    :pswitch_a
    sget-object p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0

    .line 1488
    :pswitch_d
    sget-object p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0

    .line 1486
    :pswitch_10
    sget-object p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0

    .line 1484
    :cond_13
    sget-object p0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p0

    :pswitch_data_16
    .packed-switch 0xb
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    .line 1916
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p0, :cond_15

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1919
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 1921
    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1925
    :cond_15
    const-string p0, ""

    return-object p0
.end method

.method private blacklist handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .registers 5

    .line 1474
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1475
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    return-void
.end method

.method private greylist-max-r handleEcmTimer(I)V
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    return-void
.end method

.method private blacklist handleRadioNotAvailable()V
    .registers 1

    .line 1244
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method private blacklist hangupWaitingCallSilently(I)Z
    .registers 7

    const/4 v0, 0x0

    if-ltz p1, :cond_38

    .line 1938
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v2, v1

    if-lt p1, v2, :cond_9

    goto :goto_38

    .line 1940
    :cond_9
    aget-object v1, v1, p1

    if-nez v1, :cond_e

    return v0

    .line 1943
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v2

    if-nez v2, :cond_38

    .line 1945
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_38

    .line 1946
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "hangupWaitingCallSilently"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1949
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    return v3

    :cond_38
    :goto_38
    return v0
.end method

.method private blacklist internalClearDisconnected()V
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->clearDisconnected()V

    return-void
.end method

.method private blacklist isEmcRetryCause(I)Z
    .registers 4

    .line 1853
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1854
    const-string p1, "isEmcRetryCause AP based domain selection ignores the cause"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_11
    const/16 p0, 0xbb9

    if-eq p1, p0, :cond_1b

    const/16 p0, 0xbba

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    return v1

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-r isPhoneTypeGsm()Z
    .registers 2

    .line 1843
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 9

    .line 1397
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1398
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1401
    :try_start_15
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3
    :try_end_19
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    const/4 v3, -0x1

    .line 1405
    :goto_1b
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    goto :goto_9

    :cond_2b
    return-void
.end method

.method private blacklist notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .registers 4

    .line 1466
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_d

    .line 1467
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_d
    return-void
.end method

.method private greylist-max-r obtainCompleteMessage()Landroid/os/Message;
    .registers 2

    const/4 v0, 0x4

    .line 779
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-r obtainCompleteMessage(I)Landroid/os/Message;
    .registers 4

    .line 788
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 790
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 795
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private blacklist operationComplete()V
    .registers 4

    .line 799
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    if-nez v0, :cond_18

    .line 804
    iget-boolean v2, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    if-eqz v2, :cond_18

    .line 805
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    return-void

    :cond_18
    if-gez v0, :cond_24

    .line 809
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 810
    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    :cond_24
    return-void
.end method

.method private blacklist reset()V
    .registers 6

    .line 209
    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x24

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    if-eqz v4, :cond_19

    .line 213
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 214
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 218
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_28

    .line 220
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    :cond_28
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 225
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    return-void
.end method

.method private blacklist updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 6

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_13

    aget-object v3, p1, v2

    if-eqz v3, :cond_10

    .line 1234
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1236
    :cond_13
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1237
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilCallListChanged(Ljava/util/List;)V

    return-void
.end method

.method private greylist-max-r updatePhoneState()V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 817
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 818
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3e

    .line 819
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 820
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_3a

    .line 823
    :cond_24
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_35

    if-eqz v1, :cond_35

    .line 825
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 827
    :cond_35
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3e

    .line 821
    :cond_3a
    :goto_3a
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 830
    :goto_3e
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_52

    if-eq v0, v1, :cond_52

    .line 831
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_60

    :cond_52
    if-ne v0, v2, :cond_60

    if-eq v0, v1, :cond_60

    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 838
    :cond_60
    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_94

    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    :cond_94
    return-void
.end method

.method private blacklist updatePhoneType(Z)V
    .registers 4

    if-nez p1, :cond_8

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 192
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/16 p1, 0x13

    .line 193
    new-array p1, p1, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 194
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    return-void

    :cond_1c
    const/16 p1, 0x8

    .line 198
    new-array p1, p1, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 200
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 201
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    .line 203
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist acceptCall()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2e

    .line 615
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilAcceptCall(Ljava/util/List;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    return-void

    .line 620
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5b

    .line 621
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 622
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    goto :goto_57

    .line 624
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 631
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 632
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 634
    :goto_57
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    return-void

    .line 636
    :cond_5b
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "phone not ringing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist canConference()Z
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 703
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 704
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canTransfer()Z
    .registers 4

    .line 754
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 756
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 757
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_31

    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1

    .line 760
    :cond_32
    const-string p0, "GsmCdmaCallTracker"

    const-string v0, "canTransfer: not possible in CDMA"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist checkForDialIssues(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->disable_call()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ac

    if-nez v0, :cond_a3

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_9a

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_91

    .line 732
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "There is already a foreground and background call."

    const/4 v2, 0x6

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_4f

    .line 734
    :cond_49
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 737
    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 740
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_7e

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 743
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_7e

    .line 744
    :cond_78
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_7e
    :goto_7e
    if-nez p1, :cond_90

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInOtaspCall()Z

    move-result p0

    if-nez p0, :cond_87

    goto :goto_90

    .line 748
    :cond_87
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x7

    const-string v0, "OTASP provisioning is in process."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_90
    :goto_90
    return-void

    .line 729
    :cond_91
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x4

    const-string v0, "Can\'t call while a call is ringing."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 725
    :cond_9a
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x3

    const-string v0, "A call is already dialing."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 721
    :cond_a3
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x5

    const-string v0, "Calling disabled via ro.telephony.disable-call property"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 717
    :cond_ac
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x2

    const-string v0, "Modem not powered"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public blacklist cleanupCalls()V
    .registers 1

    .line 1934
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method public greylist-max-r clearDisconnected()V
    .registers 1

    .line 695
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 697
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 698
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public blacklist conference()V
    .registers 3

    .line 681
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    return-void

    .line 685
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 574
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 576
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialCdma(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 603
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 604
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 605
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 606
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p2

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_1
    iget v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 291
    iget-object v8, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 292
    iget-object v7, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 293
    iget-boolean v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-eqz v2, :cond_25

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial gsm emergency call, set clirModIe="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    move v9, v3

    goto :goto_26

    :catchall_22
    move-exception v0

    goto/16 :goto_113

    :cond_25
    move v9, v1

    .line 301
    :goto_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 304
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/CallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_47

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_22

    const-wide/16 v1, 0x1f4

    .line 324
    :try_start_41
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_22

    .line 333
    :catch_44
    :try_start_44
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 336
    :cond_47
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_10b

    .line 341
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    move-object v2, v1

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v7, :cond_88

    .line 345
    const-string v2, "GsmCdmaCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialGsm - emergency dialer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v3, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Connection;->setHasKnownUserIntentEmergency(Z)V

    :cond_88
    const/4 v10, 0x0

    .line 350
    iput-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, v3, v4, v9, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilDial(Lcom/android/internal/telephony/Connection;)V

    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 356
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_c6

    goto :goto_ec

    .line 366
    :cond_c6
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 369
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result v6

    move v7, v9

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v9

    .line 368
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_f4

    .line 358
    :cond_ec
    :goto_ec
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 373
    :goto_f4
    iget-boolean v2, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    if-eqz v2, :cond_ff

    .line 374
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/Connection;->restoreDialedNumberAfterConversion(Ljava/lang/String;)V

    .line 375
    iput-boolean v10, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 378
    :cond_ff
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_109
    .catchall {:try_start_44 .. :try_end_109} :catchall_22

    monitor-exit p0

    return-object v0

    .line 338
    :cond_10b
    :try_start_10b
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :goto_113
    monitor-exit p0
    :try_end_114
    .catchall {:try_start_10b .. :try_end_114} :catchall_22

    throw v0
.end method

.method public blacklist dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 583
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 584
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setUusInfo(Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 586
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    .line 587
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p2

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dispatchCsCallRadioTech(I)V
    .registers 5

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_a

    .line 1756
    const-string p1, "dispatchCsCallRadioTech: mConnections is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1759
    :cond_a
    array-length p0, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p0, :cond_18

    aget-object v2, v0, v1

    if-eqz v2, :cond_15

    .line 1761
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/Connection;->setCallRadioTech(I)V

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1872
    const-string v0, "GsmCdmaCallTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1873
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mConnections: length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1875
    :goto_21
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v0, v0

    if-ge p3, v0, :cond_3a

    .line 1876
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p3

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  mConnections[%d]=%s\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    .line 1878
    :cond_3a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mVoiceCallEndedRegistrants="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mVoiceCallStartedRegistrants="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result p3

    if-nez p3, :cond_82

    .line 1881
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mCallWaitingRegistrants="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    :cond_82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mDroppedDuringPoll: size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    :goto_9c
    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_ba

    .line 1885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "  mDroppedDuringPoll[%d]=%s\n"

    invoke-virtual {p2, v0, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_9c

    .line 1887
    :cond_ba
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mRingingCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mForegroundCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mBackgroundCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPendingMO="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mHangupPendingMO="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPhone="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDesiredMute="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_1b2

    .line 1896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPendingCallInEcm="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsInEmergencyCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mPendingCallClirMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b2
    return-void
.end method

.method public blacklist explicitCallTransfer()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 231
    const-string p0, "GsmCdmaCallTracker"

    const-string v0, "GsmCdmaCallTracker finalized"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1455
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_9
    if-ge v0, p1, :cond_20

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1456
    check-cast v1, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1457
    iget-boolean v2, v1, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    if-ne v2, p2, :cond_9

    return-object v1

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMaxConnectionsPerCall()I
    .registers 1

    .line 1909
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getMute()Z
    .registers 1

    .line 1348
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    return p0
.end method

.method public greylist-max-r getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 1

    .line 1849
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method public bridge synthetic greylist-max-r getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 1905
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1501
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_315

    const/4 v4, 0x2

    if-eq v0, v4, :cond_311

    const/4 v5, 0x3

    if-eq v0, v5, :cond_311

    const/4 v6, 0x4

    if-eq v0, v6, :cond_30d

    const/4 v7, 0x5

    const-string v8, "GsmCdmaCallTracker"

    if-eq v0, v7, :cond_1e2

    const/16 v2, 0x14

    const-string v4, " not handled by phone type "

    const-string v5, "unexpected event "

    if-eq v0, v2, :cond_19d

    packed-switch v0, :pswitch_data_326

    .line 1742
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :pswitch_43
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1706
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1707
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_324

    .line 1709
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1710
    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-void

    .line 1713
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1692
    :pswitch_7c
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1693
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1694
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_324

    .line 1695
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1696
    const-string p0, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v8, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1699
    :cond_97
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1700
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1675
    :pswitch_ba
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 1677
    iget-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz p1, :cond_e9

    .line 1678
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v4

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1679
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v5

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1680
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1681
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    .line 1678
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 1682
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1684
    :cond_e9
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void

    .line 1686
    :cond_ef
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1687
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :pswitch_112
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 1520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1521
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_134

    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 1526
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    goto :goto_134

    .line 1671
    :pswitch_12c
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    return-void

    .line 1667
    :pswitch_130
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->handleRadioAvailable()V

    return-void

    .line 1534
    :cond_134
    :goto_134
    :pswitch_134
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_174

    .line 1535
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1536
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_170

    .line 1537
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_165

    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_165

    .line 1540
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_160

    .line 1541
    const-string v1, "android.telecom.event.CALL_HOLD_FAILED"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_165

    .line 1545
    :cond_160
    const-string v1, "android.telecom.event.CALL_SWITCH_FAILED"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1551
    :cond_165
    :goto_165
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1553
    :cond_170
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    return-void

    .line 1555
    :cond_174
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_17a

    goto/16 :goto_324

    .line 1559
    :cond_17a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1560
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1719
    :cond_19d
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 1720
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1721
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1b7

    .line 1722
    new-instance p1, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1732
    :cond_1b7
    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1733
    const-string p0, "exception happened on Blank Flash for 3-way call"

    invoke-static {v8, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1736
    :cond_1bf
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1737
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_1e2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1570
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1572
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v7, 0xffff

    if-eqz v0, :cond_21d

    .line 1573
    instance-of p1, v0, Lcom/android/internal/telephony/CommandException;

    const/16 v9, 0x10

    if-eqz p1, :cond_217

    .line 1577
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1578
    sget-object p1, Lcom/android/internal/telephony/GsmCdmaCallTracker$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget p1, p1, v8

    if-eq p1, v2, :cond_20d

    if-eq p1, v4, :cond_20d

    if-eq p1, v5, :cond_20d

    if-eq p1, v6, :cond_20d

    goto :goto_225

    .line 1590
    :cond_20d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v9, v7

    goto :goto_225

    .line 1599
    :cond_217
    const-string p1, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v8, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_225

    .line 1604
    :cond_21d
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1605
    iget v9, p1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1606
    iget-object v3, p1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    :goto_225
    const/16 p1, 0x22

    if-eq v9, p1, :cond_23f

    const/16 p1, 0x29

    if-eq v9, p1, :cond_23f

    const/16 p1, 0x2a

    if-eq v9, p1, :cond_23f

    const/16 p1, 0x2c

    if-eq v9, p1, :cond_23f

    const/16 p1, 0x31

    if-eq v9, p1, :cond_23f

    const/16 p1, 0x3a

    if-eq v9, p1, :cond_23f

    if-ne v9, v7, :cond_280

    .line 1617
    :cond_23f
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_261

    .line 1620
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_256

    .line 1621
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    goto :goto_262

    .line 1622
    :cond_256
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_261

    .line 1623
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p1

    goto :goto_262

    :cond_261
    const/4 p1, -0x1

    .line 1626
    :goto_262
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1627
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0xc3ba

    .line 1626
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1630
    :cond_280
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isEmcRetryCause(I)Z

    move-result p1

    if-eqz p1, :cond_2cd

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->useImsForEmergency()Z

    move-result p1

    if-eqz p1, :cond_2cd

    .line 1632
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object p1, p1, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, ""

    move v4, v1

    :goto_299
    if-ge v4, v0, :cond_2b7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1633
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1634
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v5

    .line 1635
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/GsmCdmaCall;->detach(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 1636
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_299

    .line 1638
    :cond_2b7
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v2, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyVolteSilentRedial(Ljava/lang/String;I)V

    .line 1639
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1640
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2cd

    .line 1641
    const-string p1, "LAST_CALL_FAIL_CAUSE - no Dropped normal Call"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1646
    :cond_2cd
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2d3
    if-ge v1, p1, :cond_2e3

    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1649
    invoke-virtual {v0, v9, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d3

    .line 1652
    :cond_2e3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1654
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1655
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 1656
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 1655
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1657
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilCallListChanged(Ljava/util/List;)V

    .line 1658
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1515
    :cond_30d
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    return-void

    .line 1663
    :cond_311
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    return-void

    .line 1505
    :cond_315
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_324

    .line 1508
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 1509
    iput-object v3, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1510
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    :cond_324
    :goto_324
    return-void

    nop

    :pswitch_data_326
    .packed-switch 0x8
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_112
        :pswitch_134
        :pswitch_134
        :pswitch_ba
        :pswitch_7c
        :pswitch_43
    .end packed-switch
.end method

.method protected declared-synchronized blacklist handlePollCalls(Landroid/os/AsyncResult;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 853
    :try_start_5
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_11

    .line 854
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_1c

    :catchall_e
    move-exception v0

    goto/16 :goto_4ba

    .line 855
    :cond_11
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4b5

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    :goto_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 874
    iget-object v3, v1, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 879
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 880
    :goto_32
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v7, v15

    if-ge v8, v7, :cond_2e8

    .line 881
    aget-object v7, v15, v8

    if-ge v10, v4, :cond_4a

    .line 886
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/DriverCall;

    .line 888
    iget v6, v15, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v5, v8, 0x1

    if-ne v6, v5, :cond_4a

    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v15, 0x0

    :goto_4b
    if-nez v7, :cond_4f

    if-eqz v15, :cond_50

    :cond_4f
    const/4 v9, 0x0

    :cond_50
    if-nez v7, :cond_1c2

    if-eqz v15, :cond_1c2

    .line 905
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v5, :cond_b0

    invoke-virtual {v5, v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 910
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v6, v5, v8

    .line 911
    iput v8, v6, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 912
    invoke-virtual {v6, v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    const/4 v5, 0x0

    .line 913
    iput-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 916
    iget-boolean v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v5, :cond_ac

    const/4 v5, 0x0

    .line 917
    iput-boolean v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 920
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isEcmCanceledForEmergency()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 921
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_e

    .line 926
    :cond_87
    :try_start_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 928
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_a2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_87 .. :try_end_a2} :catch_a3
    .catchall {:try_start_87 .. :try_end_a2} :catchall_e

    goto :goto_aa

    .line 930
    :catch_a3
    :try_start_a3
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "unexpected error on hangup"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_e

    .line 935
    :goto_aa
    monitor-exit p0

    return-void

    :cond_ac
    move-object/from16 v18, v0

    goto/16 :goto_1bf

    .line 939
    :cond_b0
    :try_start_b0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pendingMo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 942
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v6, v7, v15, v1, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v6, v5, v8

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New connection is not mPendingMO. Creating new GsmCdmaConnection, objId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    .line 944
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 943
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/CallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_196

    .line 948
    const-string v6, "Handover connection found."

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 950
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 953
    iget-object v6, v5, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_11f

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_11f

    iget-object v6, v15, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v6, v7, :cond_11f

    .line 956
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    goto :goto_126

    .line 958
    :cond_11f
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedConnectionMigrated()V

    .line 961
    :goto_126
    iget-object v6, v1, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 963
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_18a

    .line 964
    iget-object v6, v1, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 965
    :goto_137
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18a

    .line 966
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 967
    const-string v11, "GsmCdmaCallTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "HO Conn state is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    if-ne v0, v11, :cond_187

    .line 969
    const-string v0, "GsmCdmaCallTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing HO conn "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :cond_187
    move-object/from16 v0, v18

    goto :goto_137

    :cond_18a
    move-object/from16 v18, v0

    .line 976
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v8

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Phone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1bf

    :cond_196
    move-object/from16 v18, v0

    .line 979
    const-string v0, "New connection is not mPendingMO nor a pending handover."

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 980
    invoke-direct {v1, v15, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v12

    if-nez v12, :cond_1b7

    .line 983
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 984
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b0
    const/4 v14, 0x1

    goto :goto_1bf

    .line 986
    :cond_1b2
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v13, v0, v8

    goto :goto_1b0

    .line 988
    :cond_1b7
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingCallSilently(I)Z

    move-result v0
    :try_end_1bb
    .catchall {:try_start_b0 .. :try_end_1bb} :catchall_e

    if-eqz v0, :cond_1bf

    .line 989
    monitor-exit p0

    return-void

    :cond_1bf
    :goto_1bf
    const/4 v11, 0x1

    goto/16 :goto_2e2

    :cond_1c2
    move-object/from16 v18, v0

    if-eqz v7, :cond_262

    if-nez v15, :cond_262

    .line 995
    :try_start_1c8
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 998
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25a

    .line 1004
    :cond_1d5
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1e0
    if-ge v6, v5, :cond_20f

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1007
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "adding fgCall cn "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "to droppedDuringPoll"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1009
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    goto :goto_1e0

    .line 1012
    :cond_20f
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_21a
    if-ge v6, v5, :cond_249

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 1017
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "adding rgCall cn "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "to droppedDuringPoll"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1019
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    goto :goto_21a

    .line 1023
    :cond_249
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isEcmCanceledForEmergency()Z

    move-result v0

    if-eqz v0, :cond_257

    .line 1024
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1027
    :cond_257
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1031
    :goto_25a
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/16 v17, 0x0

    aput-object v17, v0, v8

    goto/16 :goto_2e2

    :cond_262
    if-eqz v7, :cond_29a

    if-eqz v15, :cond_29a

    .line 1032
    invoke-virtual {v7, v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v0, :cond_29a

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 1036
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v5, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v5, v6, v15, v1, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v5, v0, v8

    .line 1039
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v5, :cond_1bf

    .line 1040
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v12, v0, v8

    .line 1041
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingCallSilently(I)Z

    move-result v0
    :try_end_296
    .catchall {:try_start_1c8 .. :try_end_296} :catchall_e

    if-eqz v0, :cond_1bf

    .line 1042
    monitor-exit p0

    return-void

    :cond_29a
    if-eqz v7, :cond_2e2

    if-eqz v15, :cond_2e2

    .line 1048
    :try_start_29e
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2d7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    iget-boolean v5, v15, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v0, v5, :cond_2d7

    const/4 v0, 0x1

    if-ne v5, v0, :cond_2c0

    .line 1051
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-direct {v1, v15, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v12

    if-nez v12, :cond_2bc

    move-object v13, v7

    const/4 v14, 0x1

    .line 1058
    :cond_2bc
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto :goto_2e2

    .line 1064
    :cond_2c0
    const-string v0, "GsmCdmaCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in RIL, Phantom call appeared "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e2

    .line 1068
    :cond_2d7
    invoke-virtual {v7, v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v11, :cond_1bf

    if-eqz v0, :cond_2e1

    goto/16 :goto_1bf

    :cond_2e1
    const/4 v11, 0x0

    :cond_2e2
    :goto_2e2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v18

    goto/16 :goto_32

    .line 1094
    :cond_2e8
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2f3

    if-eqz v9, :cond_2f3

    .line 1095
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1101
    :cond_2f3
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_330

    .line 1102
    const-string v0, "GsmCdmaCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending MO dropped before poll fg state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1103
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1106
    iput-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v0, 0x0

    .line 1107
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1109
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_332

    .line 1110
    iget-boolean v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v4, :cond_32c

    .line 1111
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1113
    :cond_32c
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto :goto_332

    :cond_330
    const/4 v0, 0x0

    const/4 v5, 0x0

    :cond_332
    :goto_332
    if-eqz v12, :cond_339

    .line 1118
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1124
    :cond_339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v7, v6

    move v6, v0

    :goto_348
    if-ltz v7, :cond_3d3

    .line 1126
    iget-object v8, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1130
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_3a5

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v9, v15, v17

    if-nez v9, :cond_3a5

    .line 1133
    iget v9, v8, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne v9, v10, :cond_36a

    const/16 v9, 0x10

    goto :goto_36b

    :cond_36a
    const/4 v9, 0x1

    .line 1140
    :goto_36b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "missed/rejected call, conn.cause="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v8, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting cause to "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1143
    iget-object v10, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1144
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v9

    or-int/2addr v6, v9

    .line 1146
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3a2
    move v9, v6

    const/4 v6, 0x1

    goto :goto_3c0

    .line 1147
    :cond_3a5
    iget v9, v8, Lcom/android/internal/telephony/Connection;->mCause:I

    if-eq v9, v10, :cond_3b0

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3ad

    goto :goto_3b0

    :cond_3ad
    move v9, v6

    move v6, v0

    goto :goto_3c0

    .line 1149
    :cond_3b0
    :goto_3b0
    iget-object v9, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1150
    iget v9, v8, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v9

    or-int/2addr v6, v9

    .line 1152
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a2

    .line 1155
    :goto_3c0
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v10

    if-nez v10, :cond_3ce

    if-eqz v6, :cond_3ce

    if-eqz v14, :cond_3ce

    if-ne v8, v13, :cond_3ce

    move v14, v0

    move-object v13, v5

    :cond_3ce
    add-int/lit8 v7, v7, -0x1

    move v6, v9

    goto/16 :goto_348

    .line 1162
    :cond_3d3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3f1

    .line 1163
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    .line 1164
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v8

    .line 1163
    invoke-virtual {v5, v7, v4, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1165
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilCallListChanged(Ljava/util/List;)V

    .line 1169
    :cond_3f1
    iget-object v4, v1, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1170
    :goto_3f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43b

    .line 1171
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 1172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePollCalls - disconnect hoConn= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hoConn.State= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1172
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_432

    const/4 v7, 0x1

    .line 1175
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_437

    :cond_432
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 1177
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 1180
    :goto_437
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3f7

    .line 1184
    :cond_43b
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_44d

    .line 1185
    iget-object v4, v1, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x5

    .line 1186
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/CallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1185
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    :cond_44d
    if-nez v12, :cond_453

    if-nez v11, :cond_453

    if-eqz v6, :cond_456

    .line 1199
    :cond_453
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1203
    :cond_456
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    if-eqz v14, :cond_48e

    .line 1206
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_489

    .line 1207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_465
    if-ge v0, v4, :cond_48e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 1208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notify unknown for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1209
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_465

    .line 1212
    :cond_489
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_48e
    if-nez v11, :cond_494

    if-nez v12, :cond_494

    if-eqz v6, :cond_49e

    .line 1217
    :cond_494
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1218
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    :cond_49e
    if-lez v3, :cond_4b3

    .line 1222
    iget-object v0, v1, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4b3

    .line 1223
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_4b3

    .line 1225
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V
    :try_end_4b3
    .catchall {:try_start_29e .. :try_end_4b3} :catchall_e

    .line 1229
    :cond_4b3
    monitor-exit p0

    return-void

    .line 862
    :cond_4b5
    :try_start_4b5
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->pollCallsAfterDelay()V
    :try_end_4b8
    .catchall {:try_start_4b5 .. :try_end_4b8} :catchall_e

    .line 863
    monitor-exit p0

    return-void

    :goto_4ba
    :try_start_4ba
    monitor-exit p0
    :try_end_4bb
    .catchall {:try_start_4ba .. :try_end_4bb} :catchall_e

    throw v0
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1355
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result v0

    if-eqz v0, :cond_96

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_1c

    .line 1360
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_6e

    .line 1363
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v1, :cond_58

    .line 1364
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1366
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_6e

    .line 1369
    :cond_3a
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1370
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1372
    const-string v0, "hangup all conns in active/background call, without affecting ringing call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_6e

    .line 1375
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_6e

    .line 1378
    :cond_58
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v1, :cond_77

    .line 1379
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1381
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_6e

    .line 1385
    :cond_6b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 1392
    :goto_6e
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1393
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 1388
    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_96
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no connections in call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1278
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_6e

    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_11

    .line 1287
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1288
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    goto :goto_6a

    .line 1289
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1290
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_33

    .line 1291
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_33

    .line 1303
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1305
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1306
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 1310
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    .line 1311
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 1310
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_53
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_33 .. :try_end_53} :catch_54

    goto :goto_6a

    .line 1316
    :catch_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaCallTracker"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    return-void

    .line 1279
    :cond_6e
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 9

    .line 1440
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    if-ge v1, v0, :cond_51

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1441
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1442
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_9

    .line 1443
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    .line 1444
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 1443
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    .line 1445
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_39
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_9

    :catch_3a
    move-exception p0

    .line 1449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hangupConnectionByIndex caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public blacklist hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_9
    if-ge v1, v0, :cond_3c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 1427
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1428
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_9

    .line 1429
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;ILjava/lang/String;)V

    .line 1431
    iget-object p1, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    return-void

    .line 1435
    :cond_3c
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no GsmCdma index found"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hangupForegroundResumeBackground()V
    .registers 2

    .line 1420
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackground()V
    .registers 2

    .line 1414
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 1

    .line 1826
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    return p0
.end method

.method public blacklist isInOtaspCall()Z
    .registers 5

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1835
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 1836
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1838
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_29

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 4

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 264
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 254
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 239
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, p1, :cond_19

    .line 243
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    return-void

    .line 646
    :cond_16
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "phone not ringing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1325
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_2b

    .line 1330
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0xc

    .line 1331
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1330
    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_13
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_13} :catch_14

    return-void

    .line 1335
    :catch_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GsmCdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaCallTracker"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1326
    :cond_2b
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setIsInEmergencyCall()V
    .registers 3

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    return-void
.end method

.method public greylist-max-r setMute(Z)V
    .registers 3

    .line 1343
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 1344
    iget-object p0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r switchWaitingOrHoldingAndActive()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_35

    .line 663
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1c

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 665
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 664
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    return-void

    .line 667
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnectionsCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_29

    .line 668
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    return-void

    .line 674
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, ""

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 661
    :cond_35
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "cannot be in the incoming state"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist unregisterForCallWaiting(Landroid/os/Handler;)V
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updatePhoneType()V
    .registers 2

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    return-void
.end method
