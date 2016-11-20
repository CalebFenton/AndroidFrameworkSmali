.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$3;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x33

.field private static final EVENT_GET_CALL_BARRING_DONE:I = 0x2e

.field private static final EVENT_GET_CALL_WAITING_DONE:I = 0x30

.field private static final EVENT_GET_CLIR_DONE:I = 0x32

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x34

.field private static final EVENT_SET_CALL_BARRING_DONE:I = 0x2d

.field private static final EVENT_SET_CALL_WAITING_DONE:I = 0x2f

.field private static final EVENT_SET_CLIR_DONE:I = 0x31

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x35

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final RESTART_ECM_TIMER:I

.field private static final VDBG:Z


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mCurrentSubscriberUris:[Landroid/net/Uri;

.field mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

.field private mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

.field private mImsRegistered:Z

.field private mIsPhoneInEcmState:Z

.field private mLastDialString:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoaming:Z

.field private mSS:Landroid/telephony/ServiceState;

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V

    #@4
    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "unitTestMode"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 200
    const-string/jumbo v1, "ImsPhone"

    #@5
    invoke-direct {p0, v1, p1, p2, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    #@8
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@f
    .line 136
    new-instance v1, Landroid/telephony/ServiceState;

    #@11
    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    #@14
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@16
    .line 148
    new-instance v1, Landroid/os/RegistrantList;

    #@18
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@1d
    .line 150
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@1f
    .line 152
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    #@21
    .line 155
    new-instance v1, Landroid/os/RegistrantList;

    #@23
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@26
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@28
    .line 158
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    #@2a
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@2d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@2f
    .line 1277
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    #@31
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@34
    .line 1276
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    #@36
    .line 1451
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    #@38
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@3b
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@3d
    .line 202
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@3f
    .line 208
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@46
    move-result-object v1

    #@47
    .line 207
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@49
    .line 209
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@50
    move-result-object v1

    #@51
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@53
    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@57
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    #@5a
    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@5c
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5e
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V

    #@61
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@63
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    #@66
    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@68
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@6b
    move-result v1

    #@6c
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    #@6e
    .line 220
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@71
    .line 219
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@74
    move-result v1

    #@75
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@77
    .line 222
    const-string/jumbo v1, "power"

    #@7a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Landroid/os/PowerManager;

    #@80
    .line 223
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhone"

    #@83
    const/4 v2, 0x1

    #@84
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@87
    move-result-object v1

    #@88
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8a
    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8c
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@8f
    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@91
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@94
    move-result-object v1

    #@95
    if-eqz v1, :cond_0

    #@97
    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@99
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@9c
    move-result-object v1

    #@9d
    .line 229
    const/16 v2, 0x33

    #@9f
    .line 227
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@a2
    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@a5
    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@a7
    const/16 v2, 0x34

    #@a9
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@ac
    .line 199
    return-void
.end method

.method private dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 557
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 560
    .local v2, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 561
    return-object v6

    #@c
    .line 564
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@11
    move-result v3

    #@12
    const/4 v4, 0x2

    #@13
    if-ne v3, v4, :cond_1

    #@15
    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@17
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 569
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 571
    .local v1, "networkPortion":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@23
    move-result-object v0

    #@24
    .line 572
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const-string/jumbo v3, "ImsPhone"

    #@27
    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "dialing w/ mmi \'"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "\'..."

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 572
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 575
    if-nez v0, :cond_2

    #@47
    .line 576
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@49
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 577
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_3

    #@54
    .line 578
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    #@5d
    move-result v5

    #@5e
    invoke-virtual {v3, v4, v5, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@61
    move-result-object v3

    #@62
    return-object v3

    #@63
    .line 579
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    #@66
    move-result v3

    #@67
    if-nez v3, :cond_4

    #@69
    .line 582
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@6b
    const-string/jumbo v4, "cs_fallback"

    #@6e
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3

    #@72
    .line 584
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77
    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@79
    new-instance v4, Landroid/os/AsyncResult;

    #@7b
    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7e
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@81
    .line 586
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    #@84
    .line 588
    return-object v6
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    #@0
    .prologue
    .line 709
    packed-switch p1, :pswitch_data_0

    #@3
    .line 718
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 710
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 711
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 712
    :pswitch_3
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 713
    :pswitch_4
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 709
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    #@0
    .prologue
    .line 847
    const-string/jumbo v0, "AO"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 848
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 849
    :cond_0
    const-string/jumbo v0, "OI"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 850
    const/4 v0, 0x3

    #@15
    return v0

    #@16
    .line 851
    :cond_1
    const-string/jumbo v0, "OX"

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 852
    const/4 v0, 0x4

    #@20
    return v0

    #@21
    .line 853
    :cond_2
    const-string/jumbo v0, "AI"

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 854
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 855
    :cond_3
    const-string/jumbo v0, "IR"

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 856
    const/4 v0, 0x5

    #@36
    return v0

    #@37
    .line 857
    :cond_4
    const-string/jumbo v0, "AB"

    #@3a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 858
    const/4 v0, 0x7

    #@41
    return v0

    #@42
    .line 859
    :cond_5
    const-string/jumbo v0, "AG"

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 860
    const/16 v0, 0x8

    #@4d
    return v0

    #@4e
    .line 861
    :cond_6
    const-string/jumbo v0, "AC"

    #@51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_7

    #@57
    .line 862
    const/16 v0, 0x9

    #@59
    return v0

    #@5a
    .line 865
    :cond_7
    const/4 v0, 0x0

    #@5b
    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 694
    packed-switch p1, :pswitch_data_0

    #@4
    .line 705
    return v0

    #@5
    .line 695
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 696
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 697
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 698
    :pswitch_3
    return v0

    #@c
    .line 699
    :pswitch_4
    const/4 v0, 0x4

    #@d
    return v0

    #@e
    .line 700
    :pswitch_5
    const/4 v0, 0x5

    #@f
    return v0

    #@10
    .line 694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    #@0
    .prologue
    .line 1103
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@5
    .line 1104
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@7
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@9
    .line 1105
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@11
    .line 1106
    const/4 v1, 0x1

    #@12
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@14
    .line 1107
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    #@16
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@18
    .line 1108
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@1a
    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@1c
    .line 1109
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    #@1e
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@20
    .line 1110
    return-object v0
.end method

.method private getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "code"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 942
    const-string/jumbo v1, "ImsPhone"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "getCommandException code= "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 943
    const-string/jumbo v3, ", errorString= "

    #@16
    .line 942
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 944
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    .line 946
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_0

    #@2a
    .line 959
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    #@2c
    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    #@2f
    return-object v1

    #@30
    .line 948
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@32
    goto :goto_0

    #@33
    .line 951
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@35
    goto :goto_0

    #@36
    .line 954
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@38
    goto :goto_0

    #@39
    .line 946
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_2
        0x335 -> :sswitch_1
    .end sparse-switch
.end method

.method private getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 963
    const/4 v0, 0x0

    #@1
    .line 965
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    #@3
    if-eqz v1, :cond_0

    #@5
    move-object v1, p1

    #@6
    .line 966
    check-cast v1, Lcom/android/ims/ImsException;

    #@8
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    #@13
    move-result-object v0

    #@14
    .line 971
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-object v0

    #@15
    .line 968
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    #@18
    const-string/jumbo v2, "getCommandException generic failure"

    #@1b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 969
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@20
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@22
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@25
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 679
    packed-switch p1, :pswitch_data_0

    #@3
    .line 690
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 680
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 681
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 682
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 683
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 684
    :pswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 685
    :pswitch_5
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 679
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentRoaming()Z
    .locals 3

    #@0
    .prologue
    .line 1635
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@2
    .line 1636
    const-string/jumbo v2, "phone"

    #@5
    .line 1635
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@b
    .line 1637
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-le v1, v3, :cond_0

    #@7
    .line 352
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 356
    const-string/jumbo v1, "ImsPhone"

    #@18
    const-string/jumbo v2, "MmiCode 0: rejectCall"

    #@1b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 372
    :cond_1
    :goto_0
    return v3

    #@24
    .line 359
    :catch_0
    move-exception v0

    #@25
    .line 360
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    #@28
    const-string/jumbo v2, "reject failed"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 361
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@33
    goto :goto_0

    #@34
    .line 363
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3b
    move-result-object v1

    #@3c
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3e
    if-eq v1, v2, :cond_1

    #@40
    .line 364
    const-string/jumbo v1, "ImsPhone"

    #@43
    const-string/jumbo v2, "MmiCode 0: hangupWaitingOrBackground"

    #@46
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 366
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    goto :goto_0

    #@53
    .line 367
    :catch_1
    move-exception v0

    #@54
    .line 368
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    #@57
    const-string/jumbo v2, "hangup failed"

    #@5a
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 409
    .local v1, "len":I
    if-le v1, v2, :cond_0

    #@8
    .line 410
    const/4 v2, 0x0

    #@9
    return v2

    #@a
    .line 413
    :cond_0
    if-le v1, v4, :cond_1

    #@c
    .line 414
    const-string/jumbo v2, "ImsPhone"

    #@f
    const-string/jumbo v3, "separate not supported"

    #@12
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 415
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@17
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@1a
    .line 431
    :goto_0
    return v4

    #@1b
    .line 418
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v2

    #@23
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-eq v2, v3, :cond_2

    #@27
    .line 419
    const-string/jumbo v2, "ImsPhone"

    #@2a
    const-string/jumbo v3, "MmiCode 2: accept ringing call"

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@32
    const/4 v3, 0x2

    #@33
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 425
    :catch_0
    move-exception v0

    #@38
    .line 426
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v2, "ImsPhone"

    #@3b
    const-string/jumbo v3, "switch failed"

    #@3e
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    .line 427
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@46
    goto :goto_0

    #@47
    .line 422
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "ImsPhone"

    #@4a
    const-string/jumbo v3, "MmiCode 2: switchWaitingOrHoldingAndActive"

    #@4d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 379
    .local v2, "len":I
    const/4 v3, 0x2

    #@6
    if-le v2, v3, :cond_0

    #@8
    .line 380
    const/4 v3, 0x0

    #@9
    return v3

    #@a
    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    move-result-object v0

    #@e
    .line 386
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v5, :cond_1

    #@10
    .line 387
    :try_start_0
    const-string/jumbo v3, "ImsPhone"

    #@13
    const-string/jumbo v4, "not support 1X SEND"

    #@16
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 388
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@1e
    .line 403
    :goto_0
    return v5

    #@1f
    .line 390
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v3

    #@23
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-eq v3, v4, :cond_2

    #@27
    .line 391
    const-string/jumbo v3, "ImsPhone"

    #@2a
    const-string/jumbo v4, "MmiCode 1: hangup foreground"

    #@2d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@32
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 398
    :catch_0
    move-exception v1

    #@37
    .line 399
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "ImsPhone"

    #@3a
    const-string/jumbo v4, "hangup failed"

    #@3d
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    .line 400
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@42
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@45
    goto :goto_0

    #@46
    .line 394
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "ImsPhone"

    #@49
    const-string/jumbo v4, "MmiCode 1: switchWaitingOrHoldingAndActive"

    #@4c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@51
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@54
    goto :goto_0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1143
    new-array v0, v3, [I

    #@4
    .line 1144
    .local v0, "cbInfos":[I
    aput v2, v0, v2

    #@6
    .line 1146
    aget-object v1, p1, v2

    #@8
    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 1147
    aput v3, v0, v2

    #@e
    .line 1150
    :cond_0
    return-object v0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 460
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 463
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    #@c
    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 465
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@17
    .line 466
    return v2
.end method

.method private handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 1114
    const/4 v0, 0x0

    #@4
    .line 1116
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    #@6
    array-length v4, p1

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1117
    array-length v4, p1

    #@a
    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    #@c
    .line 1120
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@11
    move-result-object v2

    #@12
    .line 1121
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p1, :cond_1

    #@14
    array-length v4, p1

    #@15
    if-nez v4, :cond_3

    #@17
    .line 1122
    :cond_1
    if-eqz v2, :cond_2

    #@19
    .line 1125
    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    #@1c
    .line 1139
    :cond_2
    return-object v0

    #@1d
    .line 1128
    :cond_3
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    array-length v3, p1

    #@1f
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@21
    .line 1129
    aget-object v4, p1, v1

    #@23
    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@25
    if-nez v4, :cond_4

    #@27
    .line 1130
    if-eqz v2, :cond_4

    #@29
    .line 1131
    aget-object v4, p1, v1

    #@2b
    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@2d
    if-ne v4, v5, :cond_5

    #@2f
    move v4, v5

    #@30
    .line 1132
    :goto_1
    aget-object v7, p1, v1

    #@32
    iget-object v7, v7, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@34
    .line 1131
    invoke-virtual {p0, v2, v5, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    #@37
    .line 1135
    :cond_4
    aget-object v4, p1, v1

    #@39
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    #@3c
    move-result-object v4

    #@3d
    aput-object v4, v0, v1

    #@3f
    .line 1128
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    :cond_5
    move v4, v6

    #@43
    .line 1131
    goto :goto_1
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1154
    const/4 v1, 0x2

    #@3
    new-array v0, v1, [I

    #@5
    .line 1155
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    #@7
    .line 1157
    aget-object v1, p1, v2

    #@9
    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@b
    if-ne v1, v3, :cond_0

    #@d
    .line 1158
    aput v3, v0, v2

    #@f
    .line 1159
    aput v3, v0, v3

    #@11
    .line 1162
    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 449
    .local v0, "len":I
    if-eq v0, v3, :cond_0

    #@7
    .line 450
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 453
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    #@c
    const-string/jumbo v2, "MmiCode 4: not support explicit call transfer"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 454
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@17
    .line 455
    return v3
.end method

.method private handleEnterEmergencyCallbackMode()V
    .locals 6

    #@0
    .prologue
    .line 1334
    const-string/jumbo v2, "ImsPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    .line 1335
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 1334
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1338
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 1339
    const-string/jumbo v2, "ril.cdma.inecmmode"

    #@23
    const-string/jumbo v3, "true"

    #@26
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 1340
    const/4 v2, 0x1

    #@2a
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@2c
    .line 1342
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    #@2f
    .line 1347
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@32
    const-wide/32 v4, 0x493e0

    #@35
    .line 1346
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v0

    #@39
    .line 1348
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3e
    .line 1350
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@43
    .line 1332
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode()V
    .locals 3

    #@0
    .prologue
    .line 1356
    const-string/jumbo v0, "ImsPhone"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 1357
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 1356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1360
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 1361
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@23
    const-string/jumbo v1, "false"

    #@26
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 1362
    const/4 v0, 0x0

    #@2a
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@2c
    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@2e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@31
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@37
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@39
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@3c
    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3e
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@46
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@49
    .line 1378
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    #@4c
    .line 1354
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 437
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 440
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    #@c
    const-string/jumbo v1, "MmiCode 3: merge calls"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 441
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    #@15
    .line 442
    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 675
    if-eq p1, v0, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    #@0
    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    #@3
    .line 670
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 668
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 663
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    #@0
    .prologue
    .line 649
    packed-switch p1, :pswitch_data_0

    #@3
    .line 658
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 656
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 649
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 976
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "onNetworkInitiatedUssd"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@c
    .line 978
    new-instance v1, Landroid/os/AsyncResult;

    #@e
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    .line 977
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@14
    .line 975
    return-void
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    #@0
    .prologue
    .line 1308
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1309
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    #@b
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10
    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@13
    move-result v1

    #@14
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@17
    .line 1311
    const/4 v1, 0x0

    #@18
    const/4 v2, -0x1

    #@19
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1c
    .line 1312
    const-string/jumbo v1, "ImsPhone"

    #@1f
    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1306
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 924
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "sendErrorResponse"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 925
    if-eqz p1, :cond_0

    #@c
    .line 927
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@13
    .line 926
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@16
    .line 928
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 923
    :cond_0
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1167
    if-eqz p1, :cond_1

    #@2
    .line 1168
    const/4 v0, 0x0

    #@3
    .line 1169
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_0

    #@5
    .line 1170
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    #@8
    move-result-object v0

    #@9
    .line 1172
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@c
    .line 1173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 1166
    :cond_1
    return-void
.end method

.method private updateDataServiceState()V
    .locals 4

    #@0
    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1179
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@11
    move-result-object v1

    #@12
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1180
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1b
    move-result-object v1

    #@1c
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1e
    .line 1181
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@20
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@27
    .line 1182
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@29
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@30
    .line 1183
    const-string/jumbo v1, "ImsPhone"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "updateDataServiceState: defSs = "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, " imsSs = "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 1177
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method

.method private updateRoamingState(Z)V
    .locals 3
    .param p1, "newRoaming"    # Z

    #@0
    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1623
    const-string/jumbo v0, "ImsPhone"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "updateRoamingState now: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1624
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    #@26
    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@28
    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@2a
    invoke-static {v1, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    #@2d
    move-result v1

    #@2e
    .line 1625
    invoke-static {v0, v1, p1}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    #@31
    .line 1621
    :goto_0
    return-void

    #@32
    .line 1628
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "updateRoamingState postponed: "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4e
    .line 1630
    const/16 v1, 0x35

    #@50
    const/4 v2, 0x0

    #@51
    .line 1629
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@54
    goto :goto_0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    #@5
    .line 286
    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    #@3
    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    #@0
    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    #@5
    .line 1447
    return-void
.end method

.method public canConference()Z
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canDial()Z
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canTransfer()Z
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public cancelUSSD()V
    .locals 1

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD()V

    #@5
    .line 919
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@5
    .line 317
    return-void
.end method

.method public conference()V
    .locals 1

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    #@5
    .line 312
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 551
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    #@3
    return-void
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 241
    const-string/jumbo v0, "ImsPhone"

    #@3
    const-string/jumbo v1, "dispose"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->tearDown()V

    #@13
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@17
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    #@1a
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@1f
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    #@24
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@26
    if-eqz v0, :cond_0

    #@28
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_0

    #@30
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@39
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@3b
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    #@3e
    .line 240
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1642
    const-string/jumbo v0, "ImsPhone extends:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1643
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 1644
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@c
    .line 1646
    const-string/jumbo v0, "ImsPhone:"

    #@f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v1, "  mDefaultPhone = "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "  mPendingMMIs = "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v1, "  mPostDialHandler = "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v1, "  mSS = "

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@76
    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v1, "  mWakeLock = "

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v1, "  mIsPhoneInEcmState = "

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v1, "  mEcmExitRespRegistrant = "

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v1, "  mSilentRedialRegistrants = "

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v1, "  mImsRegistered = "

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v0

    #@e6
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v0

    #@f0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f3
    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v1, "  mRoaming = "

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v0

    #@ff
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@104
    move-result-object v0

    #@105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10c
    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v1, "  mSsnRegistrants = "

    #@114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v0

    #@118
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v0

    #@122
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@125
    .line 1658
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@128
    .line 1641
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    #@3
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 4

    #@0
    .prologue
    .line 1317
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1318
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d
    .line 1320
    :cond_0
    const-string/jumbo v2, "ImsPhone"

    #@10
    const-string/jumbo v3, "exitEmergencyCallbackMode()"

    #@13
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1325
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@1b
    move-result-object v1

    #@1c
    .line 1326
    .local v1, "ecbm":Lcom/android/ims/ImsEcbm;
    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1316
    .end local v1    # "ecbm":Lcom/android/ims/ImsEcbm;
    :goto_0
    return-void

    #@20
    .line 1327
    :catch_0
    move-exception v0

    #@21
    .line 1328
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    #@24
    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    #@5
    .line 327
    return-void
.end method

.method public bridge synthetic getAllCellInfo()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAllCellInfo()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 869
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "getCallBarring facility="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 871
    const/16 v3, 0x2e

    #@1c
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 874
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@25
    move-result-object v2

    #@26
    .line 875
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    #@29
    move-result v3

    #@2a
    invoke-interface {v2, v3, v1}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 868
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@2e
    .line 876
    :catch_0
    move-exception v0

    #@2f
    .line 877
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@32
    goto :goto_0
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCallForwardingIndicator()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 754
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "getCallForwardingOption reason="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 755
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 756
    const-string/jumbo v3, "ImsPhone"

    #@23
    const-string/jumbo v4, "requesting call forwarding query."

    #@26
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 758
    const/16 v3, 0xd

    #@2b
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    .line 761
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@31
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@34
    move-result-object v2

    #@35
    .line 762
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    #@38
    move-result v3

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v4, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 753
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 763
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@3f
    .line 764
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@42
    goto :goto_0

    #@43
    .line 766
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_0

    #@45
    .line 767
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    #@48
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 816
    const-string/jumbo v3, "ImsPhone"

    #@3
    const-string/jumbo v4, "getCallWaiting"

    #@6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 818
    const/16 v3, 0x30

    #@b
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 821
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@11
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@14
    move-result-object v2

    #@15
    .line 822
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 815
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@19
    .line 823
    :catch_0
    move-exception v0

    #@1a
    .line 824
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@1d
    goto :goto_0
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCurrentSubscriberUris()[Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataCallList(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2
    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1046
    .local v0, "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    move-result-object v1

    #@9
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e
    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@11
    move-result-object v1

    #@12
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 1050
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1a
    move-result-object v1

    #@1b
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@20
    .line 1051
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v1

    #@24
    if-lez v1, :cond_0

    #@26
    .line 1052
    return-object v0

    #@27
    .line 1054
    :cond_0
    const/4 v1, 0x0

    #@28
    return-object v1
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getImsEcbmStateListener()Lcom/android/ims/ImsEcbmStateListener;
    .locals 1

    #@0
    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    #@2
    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 723
    const-string/jumbo v3, "ImsPhone"

    #@3
    const-string/jumbo v4, "getCLIR"

    #@6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 725
    const/16 v3, 0x32

    #@b
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 728
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@11
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@14
    move-result-object v2

    #@15
    .line 729
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 722
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@19
    .line 730
    :catch_0
    move-exception v0

    #@1a
    .line 731
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@1d
    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getVtDataUsage()J
    .locals 2

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getVtDataUsage()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 479
    return v3

    #@8
    .line 482
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 483
    return v3

    #@f
    .line 486
    :cond_1
    const/4 v1, 0x0

    #@10
    .line 487
    .local v1, "result":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 488
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    #@17
    .line 513
    .end local v1    # "result":Z
    :goto_0
    return v1

    #@18
    .line 490
    .restart local v1    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .local v1, "result":Z
    goto :goto_0

    #@1d
    .line 494
    .local v1, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    .local v1, "result":Z
    goto :goto_0

    #@22
    .line 498
    .local v1, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    .local v1, "result":Z
    goto :goto_0

    #@27
    .line 501
    .local v1, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    .local v1, "result":Z
    goto :goto_0

    #@2c
    .line 504
    .local v1, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    .local v1, "result":Z
    goto :goto_0

    #@31
    .line 507
    .local v1, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    .local v1, "result":Z
    goto :goto_0

    #@36
    .line 488
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

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v13, 0x0

    #@2
    .line 1189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/os/AsyncResult;

    #@6
    .line 1191
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v9, "ImsPhone"

    #@9
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v12, "handleMessage what="

    #@11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    iget v12, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1192
    iget v9, p1, Landroid/os/Message;->what:I

    #@24
    sparse-switch v9, :sswitch_data_0

    #@27
    .line 1268
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    #@2a
    .line 1188
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 1194
    :sswitch_0
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2d
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@30
    move-result-object v6

    #@31
    .line 1195
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@33
    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    #@35
    .line 1196
    .local v1, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    iget-boolean v9, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    #@37
    if-eqz v9, :cond_1

    #@39
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3b
    if-nez v9, :cond_1

    #@3d
    if-eqz v6, :cond_1

    #@3f
    .line 1197
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@41
    if-ne v9, v10, :cond_2

    #@43
    move v9, v10

    #@44
    :goto_1
    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    #@46
    invoke-virtual {p0, v6, v10, v9, v11}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    #@49
    .line 1199
    :cond_1
    iget-object v9, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    #@4b
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4d
    invoke-direct {p0, v9, v13, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@50
    goto :goto_0

    #@51
    .line 1197
    :cond_2
    const/4 v9, 0x0

    #@52
    goto :goto_1

    #@53
    .line 1203
    .end local v1    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_1
    const/4 v2, 0x0

    #@54
    .line 1204
    .local v2, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@56
    if-nez v9, :cond_3

    #@58
    .line 1205
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5a
    check-cast v9, [Lcom/android/ims/ImsCallForwardInfo;

    #@5c
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    #@5f
    move-result-object v2

    #@60
    .line 1207
    .end local v2    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_3
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@62
    check-cast v9, Landroid/os/Message;

    #@64
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@66
    invoke-direct {p0, v9, v2, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0

    #@6a
    .line 1212
    :sswitch_2
    const/4 v8, 0x0

    #@6b
    .line 1213
    .local v8, "ssInfos":[I
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6d
    if-nez v9, :cond_4

    #@6f
    .line 1214
    iget v9, p1, Landroid/os/Message;->what:I

    #@71
    const/16 v10, 0x2e

    #@73
    if-ne v9, v10, :cond_5

    #@75
    .line 1215
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@77
    check-cast v9, [Lcom/android/ims/ImsSsInfo;

    #@79
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    #@7c
    move-result-object v8

    #@7d
    .line 1220
    .end local v8    # "ssInfos":[I
    :cond_4
    :goto_2
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@7f
    check-cast v9, Landroid/os/Message;

    #@81
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@83
    invoke-direct {p0, v9, v8, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@86
    goto :goto_0

    #@87
    .line 1216
    .restart local v8    # "ssInfos":[I
    :cond_5
    iget v9, p1, Landroid/os/Message;->what:I

    #@89
    const/16 v10, 0x30

    #@8b
    if-ne v9, v10, :cond_4

    #@8d
    .line 1217
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8f
    check-cast v9, [Lcom/android/ims/ImsSsInfo;

    #@91
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    #@94
    move-result-object v8

    #@95
    .local v8, "ssInfos":[I
    goto :goto_2

    #@96
    .line 1224
    .end local v8    # "ssInfos":[I
    :sswitch_3
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@98
    check-cast v7, Landroid/os/Bundle;

    #@9a
    .line 1225
    .local v7, "ssInfo":Landroid/os/Bundle;
    const/4 v3, 0x0

    #@9b
    .line 1226
    .local v3, "clirInfo":[I
    if-eqz v7, :cond_6

    #@9d
    .line 1227
    const-string/jumbo v9, "queryClir"

    #@a0
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@a3
    move-result-object v3

    #@a4
    .line 1229
    .end local v3    # "clirInfo":[I
    :cond_6
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@a6
    check-cast v9, Landroid/os/Message;

    #@a8
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@aa
    invoke-direct {p0, v9, v3, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@ad
    goto/16 :goto_0

    #@af
    .line 1233
    .end local v7    # "ssInfo":Landroid/os/Bundle;
    :sswitch_4
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@b1
    if-nez v9, :cond_7

    #@b3
    .line 1234
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@b5
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    #@b8
    .line 1239
    :cond_7
    :sswitch_5
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ba
    check-cast v9, Landroid/os/Message;

    #@bc
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@be
    invoke-direct {p0, v9, v13, v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 1243
    :sswitch_6
    const-string/jumbo v9, "ImsPhone"

    #@c6
    const-string/jumbo v10, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    #@c9
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 1244
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 1249
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    #@d5
    .line 1250
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d7
    check-cast v5, Landroid/telephony/ServiceState;

    #@d9
    .line 1252
    .local v5, "newServiceState":Landroid/telephony/ServiceState;
    iget-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    #@db
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    #@de
    move-result v10

    #@df
    if-eq v9, v10, :cond_0

    #@e1
    .line 1253
    const-string/jumbo v9, "ImsPhone"

    #@e4
    const-string/jumbo v10, "Roaming state changed"

    #@e7
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 1254
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    #@ed
    move-result v9

    #@ee
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(Z)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 1258
    .end local v5    # "newServiceState":Landroid/telephony/ServiceState;
    :sswitch_8
    const-string/jumbo v9, "ImsPhone"

    #@f6
    const-string/jumbo v10, "Voice call ended. Handle pending updateRoamingState."

    #@f9
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 1259
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@fe
    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@101
    .line 1261
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentRoaming()Z

    #@104
    move-result v4

    #@105
    .line 1262
    .local v4, "newRoaming":Z
    iget-boolean v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    #@107
    if-eq v9, v4, :cond_0

    #@109
    .line 1263
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(Z)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 1192
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x2d -> :sswitch_5
        0x2e -> :sswitch_2
        0x2f -> :sswitch_5
        0x30 -> :sswitch_2
        0x31 -> :sswitch_4
        0x32 -> :sswitch_3
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1387
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1399
    const-string/jumbo v2, "ImsPhone"

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1386
    :goto_0
    return-void

    #@1e
    .line 1389
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@20
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@23
    .line 1390
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@25
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@27
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@29
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@2c
    goto :goto_0

    #@2d
    .line 1394
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@30
    const-wide/32 v4, 0x493e0

    #@33
    .line 1393
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@36
    move-result-wide v0

    #@37
    .line 1395
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@39
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3c
    .line 1396
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@3e
    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    #@40
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@42
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@45
    goto :goto_0

    #@46
    .line 1387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initiateSilentRedial()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1065
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    #@3
    .line 1066
    .local v1, "result":Ljava/lang/String;
    new-instance v0, Landroid/os/AsyncResult;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 1067
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    #@a
    .line 1068
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 1064
    :cond_0
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataConnectivityPossible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 1439
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@2
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 518
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 519
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 521
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 522
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    .line 521
    if-nez v3, :cond_0

    #@24
    .line 523
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 521
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@2
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isUtEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "from"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    #@3
    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyCallForwardingIndicator()V

    #@3
    return-void
.end method

.method public bridge synthetic notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    #@3
    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "isVideoCapable"    # Z

    #@0
    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    #@2
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    #@7
    .line 535
    return-void
.end method

.method public notifyIncomingRing()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 623
    const-string/jumbo v1, "ImsPhone"

    #@4
    const-string/jumbo v2, "notifyIncomingRing"

    #@7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 624
    new-instance v0, Landroid/os/AsyncResult;

    #@c
    invoke-direct {v0, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    .line 625
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0xe

    #@11
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 622
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@5
    .line 526
    return-void
.end method

.method public bridge synthetic notifyPhoneStateChanged()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    #@3
    return-void
.end method

.method public bridge synthetic notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPreciseCallStateChanged()V

    #@3
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    #@5
    .line 1059
    return-void
.end method

.method public notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 5
    .param p1, "suppSvc"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 470
    const-string/jumbo v1, "ImsPhone"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "notifySuppSvcNotification: suppSvc = "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 472
    new-instance v0, Landroid/os/AsyncResult;

    #@1d
    invoke-direct {v0, v4, p1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@20
    .line 473
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@22
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@25
    .line 469
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@5
    .line 530
    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    #@9
    .line 1413
    return-void
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 983
    const-string/jumbo v6, "ImsPhone"

    #@4
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "onIncomingUSSD ussdMode="

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 989
    if-ne p1, v9, :cond_2

    #@1d
    const/4 v3, 0x1

    #@1e
    .line 992
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_4

    #@20
    .line 993
    if-eq p1, v9, :cond_3

    #@22
    const/4 v2, 0x1

    #@23
    .line 995
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    #@24
    .line 996
    .local v0, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v5

    #@2b
    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    #@2d
    .line 997
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@35
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_5

    #@3b
    .line 998
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@43
    .line 1003
    :cond_0
    if-eqz v0, :cond_7

    #@45
    .line 1005
    if-eqz v2, :cond_6

    #@47
    .line 1006
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    #@4a
    .line 982
    :cond_1
    :goto_3
    return-void

    #@4b
    .line 989
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    const/4 v3, 0x0

    #@4c
    .restart local v3    # "isUssdRequest":Z
    goto :goto_0

    #@4d
    .line 993
    :cond_3
    const/4 v2, 0x0

    #@4e
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@4f
    .line 992
    .end local v2    # "isUssdError":Z
    :cond_4
    const/4 v2, 0x0

    #@50
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@51
    .line 996
    .restart local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v1    # "i":I
    .restart local v5    # "s":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_2

    #@54
    .line 1008
    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    #@57
    goto :goto_3

    #@58
    .line 1015
    :cond_7
    if-nez v2, :cond_1

    #@5a
    if-eqz p2, :cond_1

    #@5c
    .line 1017
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@5f
    move-result-object v4

    #@60
    .line 1020
    .local v4, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@63
    goto :goto_3
.end method

.method public onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@11
    .line 1038
    new-instance v1, Landroid/os/AsyncResult;

    #@13
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    .line 1037
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@19
    .line 1030
    :cond_1
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    #@3
    return-void
.end method

.method public processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V
    .locals 23
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1502
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@4
    const/16 v3, 0x3e8

    #@6
    if-ne v1, v3, :cond_a

    #@8
    .line 1503
    move-object/from16 v0, p1

    #@a
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_a

    #@e
    .line 1506
    move-object/from16 v0, p0

    #@10
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v3, "carrier_config"

    #@15
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v11

    #@19
    check-cast v11, Landroid/telephony/CarrierConfigManager;

    #@1b
    .line 1507
    .local v11, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v11, :cond_0

    #@1d
    .line 1508
    const-string/jumbo v1, "ImsPhone"

    #@20
    const-string/jumbo v3, "processDisconnectReason: CarrierConfigManager is not ready"

    #@23
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1509
    return-void

    #@27
    .line 1511
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {v11, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@2e
    move-result-object v18

    #@2f
    .line 1512
    .local v18, "pb":Landroid/os/PersistableBundle;
    if-nez v18, :cond_1

    #@31
    .line 1513
    const-string/jumbo v1, "ImsPhone"

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "processDisconnectReason: no config for subId "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    #@43
    move-result v4

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 1514
    return-void

    #@50
    .line 1518
    :cond_1
    const-string/jumbo v1, "wfc_operator_error_codes_string_array"

    #@53
    .line 1517
    move-object/from16 v0, v18

    #@55
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@58
    move-result-object v21

    #@59
    .line 1519
    .local v21, "wfcOperatorErrorCodes":[Ljava/lang/String;
    if-nez v21, :cond_2

    #@5b
    .line 1521
    return-void

    #@5c
    .line 1525
    :cond_2
    move-object/from16 v0, p0

    #@5e
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@63
    move-result-object v1

    #@64
    .line 1526
    const v3, 0x1070053

    #@67
    .line 1525
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@6a
    move-result-object v20

    #@6b
    .line 1528
    .local v20, "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@6f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@72
    move-result-object v1

    #@73
    .line 1529
    const v3, 0x1070054

    #@76
    .line 1528
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@79
    move-result-object v22

    #@7a
    .line 1531
    .local v22, "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    const/4 v12, 0x0

    #@7b
    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v21

    #@7d
    array-length v1, v0

    #@7e
    if-ge v12, v1, :cond_a

    #@80
    .line 1532
    aget-object v1, v21, v12

    #@82
    const-string/jumbo v3, "\\|"

    #@85
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@88
    move-result-object v10

    #@89
    .line 1533
    .local v10, "codes":[Ljava/lang/String;
    array-length v1, v10

    #@8a
    const/4 v3, 0x2

    #@8b
    if-eq v1, v3, :cond_4

    #@8d
    .line 1534
    const-string/jumbo v1, "ImsPhone"

    #@90
    new-instance v3, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v4, "Invalid carrier config: "

    #@98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    aget-object v4, v21, v12

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 1531
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@ab
    goto :goto_0

    #@ac
    .line 1539
    :cond_4
    move-object/from16 v0, p1

    #@ae
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@b0
    .line 1540
    const/4 v3, 0x0

    #@b1
    aget-object v3, v10, v3

    #@b3
    .line 1539
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b6
    move-result v1

    #@b7
    if-eqz v1, :cond_3

    #@b9
    .line 1547
    const/4 v1, 0x0

    #@ba
    aget-object v1, v10, v1

    #@bc
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@bf
    move-result v9

    #@c0
    .line 1548
    .local v9, "codeStringLength":I
    const/4 v1, 0x0

    #@c1
    aget-object v1, v10, v1

    #@c3
    add-int/lit8 v3, v9, -0x1

    #@c5
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@c8
    move-result v14

    #@c9
    .line 1549
    .local v14, "lastChar":C
    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@cc
    move-result v1

    #@cd
    if-eqz v1, :cond_5

    #@cf
    .line 1550
    move-object/from16 v0, p1

    #@d1
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@d3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d6
    move-result v1

    #@d7
    if-le v1, v9, :cond_5

    #@d9
    .line 1551
    move-object/from16 v0, p1

    #@db
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@dd
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    #@e0
    move-result v17

    #@e1
    .line 1552
    .local v17, "nextChar":C
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@e4
    move-result v1

    #@e5
    if-nez v1, :cond_3

    #@e7
    .line 1558
    .end local v17    # "nextChar":C
    :cond_5
    move-object/from16 v0, p0

    #@e9
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@eb
    .line 1559
    const v3, 0x10400eb

    #@ee
    .line 1558
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f1
    move-result-object v19

    #@f2
    .line 1561
    .local v19, "title":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    #@f3
    aget-object v1, v10, v1

    #@f5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f8
    move-result v13

    #@f9
    .line 1562
    .local v13, "idx":I
    if-ltz v13, :cond_6

    #@fb
    .line 1563
    move-object/from16 v0, v20

    #@fd
    array-length v1, v0

    #@fe
    if-lt v13, v1, :cond_7

    #@100
    .line 1565
    :cond_6
    const-string/jumbo v1, "ImsPhone"

    #@103
    new-instance v3, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v4, "Invalid index: "

    #@10b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    aget-object v4, v21, v12

    #@111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v3

    #@115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v3

    #@119
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    goto :goto_1

    #@11d
    .line 1564
    :cond_7
    move-object/from16 v0, v22

    #@11f
    array-length v1, v0

    #@120
    if-ge v13, v1, :cond_6

    #@122
    .line 1568
    move-object/from16 v0, p1

    #@124
    iget-object v15, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@126
    .line 1569
    .local v15, "messageAlert":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@128
    iget-object v0, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@12a
    move-object/from16 v16, v0

    #@12c
    .line 1570
    .local v16, "messageNotification":Ljava/lang/CharSequence;
    aget-object v1, v20, v13

    #@12e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@131
    move-result v1

    #@132
    if-nez v1, :cond_8

    #@134
    .line 1571
    aget-object v15, v20, v13

    #@136
    .line 1573
    :cond_8
    aget-object v1, v22, v13

    #@138
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@13b
    move-result v1

    #@13c
    if-nez v1, :cond_9

    #@13e
    .line 1574
    aget-object v16, v22, v13

    #@140
    .line 1578
    :cond_9
    move-object/from16 v0, p0

    #@142
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@144
    const/4 v3, 0x0

    #@145
    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    #@148
    .line 1582
    new-instance v2, Landroid/content/Intent;

    #@14a
    const-string/jumbo v1, "com.android.ims.REGISTRATION_ERROR"

    #@14d
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@150
    .line 1583
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "alertTitle"

    #@153
    move-object/from16 v0, v19

    #@155
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@158
    .line 1584
    const-string/jumbo v1, "alertMessage"

    #@15b
    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@15e
    .line 1585
    const-string/jumbo v1, "notificationMessage"

    #@161
    move-object/from16 v0, v16

    #@163
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@166
    .line 1586
    move-object/from16 v0, p0

    #@168
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@16e
    const/4 v3, 0x0

    #@16f
    .line 1587
    const/4 v5, 0x0

    #@170
    const/4 v6, -0x1

    #@171
    const/4 v7, 0x0

    #@172
    const/4 v8, 0x0

    #@173
    .line 1586
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@176
    .line 1501
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "codeStringLength":I
    .end local v10    # "codes":[Ljava/lang/String;
    .end local v11    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v12    # "i":I
    .end local v13    # "idx":I
    .end local v14    # "lastChar":C
    .end local v15    # "messageAlert":Ljava/lang/CharSequence;
    .end local v16    # "messageNotification":Ljava/lang/CharSequence;
    .end local v18    # "pb":Landroid/os/PersistableBundle;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    .end local v21    # "wfcOperatorErrorCodes":[Ljava/lang/String;
    .end local v22    # "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1073
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1083
    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    #@5
    .line 292
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->saveClirSetting(I)V

    #@3
    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    #@3
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 595
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 596
    const-string/jumbo v0, "ImsPhone"

    #@9
    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 596
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 594
    :cond_0
    :goto_0
    return-void

    #@28
    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@2d
    move-result-object v0

    #@2e
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@30
    if-ne v0, v1, :cond_0

    #@32
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    #@38
    goto :goto_0
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    #@0
    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->sendEmergencyCallStateChange(Z)V

    #@5
    .line 1602
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 934
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "sendErrorResponse"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 935
    if-eqz p1, :cond_0

    #@c
    .line 936
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@13
    .line 937
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 933
    :cond_0
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 914
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 907
    const-string/jumbo v1, "ImsPhone"

    #@4
    const-string/jumbo v2, "sendUssdResponse"

    #@7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 908
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@d
    move-result-object v0

    #@e
    .line 909
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@15
    new-instance v2, Landroid/os/AsyncResult;

    #@17
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1d
    .line 911
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    #@20
    .line 906
    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 1
    .param p1, "broadcast"    # Z

    #@0
    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setBroadcastEmergencyCallStateChanges(Z)V

    #@5
    .line 1607
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 883
    const-string/jumbo v4, "ImsPhone"

    #@3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v6, "setCallBarring facility="

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    .line 884
    const-string/jumbo v6, ", lockState="

    #@16
    .line 883
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 886
    const/16 v4, 0x2d

    #@27
    invoke-virtual {p0, v4, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v2

    #@2b
    .line 889
    .local v2, "resp":Landroid/os/Message;
    if-eqz p2, :cond_0

    #@2d
    .line 890
    const/4 v0, 0x1

    #@2e
    .line 897
    .local v0, "action":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@30
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@33
    move-result-object v3

    #@34
    .line 899
    .local v3, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    #@37
    move-result v4

    #@38
    const/4 v5, 0x0

    #@39
    invoke-interface {v3, v4, v0, v2, v5}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 882
    .end local v3    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_1
    return-void

    #@3d
    .line 893
    .end local v0    # "action":I
    :cond_0
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "action":I
    goto :goto_0

    #@3f
    .line 900
    :catch_0
    move-exception v1

    #@40
    .line 901
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@43
    goto :goto_1
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 11
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 787
    const-string/jumbo v2, "ImsPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "setCallForwardingOption action="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 788
    const-string/jumbo v4, ", reason="

    #@16
    .line 787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 788
    const-string/jumbo v4, " serviceClass="

    #@21
    .line 787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 789
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 790
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    #@39
    move-result v2

    #@3a
    .line 789
    if-eqz v2, :cond_3

    #@3c
    .line 792
    new-instance v8, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    #@3e
    .line 793
    if-nez p2, :cond_1

    #@40
    const/4 v2, 0x1

    #@41
    .line 792
    :goto_0
    move-object/from16 v0, p6

    #@43
    invoke-direct {v8, p3, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;)V

    #@46
    .line 796
    .local v8, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_2

    #@4c
    const/4 v2, 0x1

    #@4d
    .line 795
    :goto_1
    const/16 v3, 0xc

    #@4f
    .line 796
    const/4 v4, 0x0

    #@50
    .line 795
    invoke-virtual {p0, v3, v2, v4, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@53
    move-result-object v10

    #@54
    .line 799
    .local v10, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@59
    move-result-object v1

    #@5a
    .line 800
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    #@5d
    move-result v2

    #@5e
    .line 801
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    #@61
    move-result v3

    #@62
    move-object v4, p3

    #@63
    move v5, p4

    #@64
    move/from16 v6, p5

    #@66
    move-object/from16 v7, p6

    #@68
    .line 800
    invoke-interface/range {v1 .. v7}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 786
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    #@6c
    .line 793
    :cond_1
    const/4 v2, 0x0

    #@6d
    goto :goto_0

    #@6e
    .line 796
    .restart local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :cond_2
    const/4 v2, 0x0

    #@6f
    goto :goto_1

    #@70
    .line 806
    .restart local v10    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v9

    #@71
    .line 807
    .local v9, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p6

    #@73
    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@76
    goto :goto_2

    #@77
    .line 809
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v9    # "e":Lcom/android/ims/ImsException;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_3
    if-eqz p6, :cond_0

    #@79
    .line 810
    move-object/from16 v0, p6

    #@7b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    #@7e
    goto :goto_2
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 778
    const/4 v4, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move-object v6, p5

    #@7
    .line 777
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    #@a
    .line 776
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 834
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "setCallWaiting enable="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 836
    const/16 v3, 0x2f

    #@1c
    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 839
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@25
    move-result-object v2

    #@26
    .line 840
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, p2, v1}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 833
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@2a
    .line 841
    :catch_0
    move-exception v0

    #@2b
    .line 842
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@2e
    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 830
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    #@4
    .line 829
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    #@3
    return-void
.end method

.method protected setCurrentSubscriberUris([Landroid/net/Uri;)V
    .locals 0
    .param p1, "currentSubscriberUris"    # [Landroid/net/Uri;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    #@2
    .line 167
    return-void
.end method

.method public bridge synthetic setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataEnabled(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    #@3
    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1443
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@2
    .line 1442
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@5
    .line 629
    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1405
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@7
    .line 1404
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 737
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "setCLIR action= "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 742
    const/16 v3, 0x31

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    .line 744
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@23
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@26
    move-result-object v2

    #@27
    .line 745
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, v1}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 736
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@2b
    .line 746
    :catch_0
    move-exception v0

    #@2c
    .line 747
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@2f
    goto :goto_0
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setRadioPower(Z)V

    #@3
    return-void
.end method

.method setServiceState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@5
    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@8
    .line 264
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    #@5
    .line 634
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 608
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    const/16 v2, 0x41

    #@a
    if-lt p1, v2, :cond_1

    #@c
    const/16 v2, 0x44

    #@e
    if-gt p1, v2, :cond_1

    #@10
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@12
    .line 609
    const-string/jumbo v0, "ImsPhone"

    #@15
    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "startDtmf called with invalid character \'"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "\'"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 609
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 607
    :goto_1
    return-void

    #@34
    :cond_1
    move v0, v1

    #@35
    .line 608
    goto :goto_0

    #@36
    .line 612
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@38
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    #@3b
    goto :goto_1
.end method

.method public bridge synthetic startRingbackTone()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startRingbackTone()V

    #@3
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    #@5
    .line 618
    return-void
.end method

.method public bridge synthetic stopRingbackTone()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopRingbackTone()V

    #@3
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@5
    .line 298
    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1078
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1088
    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 1409
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    #@3
    return-void
.end method
