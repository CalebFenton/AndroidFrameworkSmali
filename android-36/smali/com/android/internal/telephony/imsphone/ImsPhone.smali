.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$SS;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_SERVICE_STATE_CHANGED:I = 0x53


# instance fields
.field greylist-max-r mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private blacklist mCurrentSubscriberUris:[Landroid/net/Uri;

.field blacklist mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

.field private blacklist mExitEcmRunnable:Ljava/lang/Runnable;

.field blacklist mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

.field private blacklist mImsDeregistrationTech:I

.field private blacklist mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

.field private final blacklist mImsManagerFactory:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;

.field private blacklist mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

.field blacklist mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

.field private blacklist mImsPhoneSharedPreferences:Landroid/content/SharedPreferences;

.field private blacklist mImsRegistrationCapabilities:I

.field private blacklist mImsRegistrationState:I

.field private blacklist mImsRegistrationSuggestedAction:I

.field private blacklist mImsRegistrationTech:I

.field private final blacklist mImsRegistrationUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mImsStats:Lcom/android/internal/telephony/metrics/ImsStats;

.field private blacklist mIsInImsEcm:Z

.field private blacklist mLastDialString:Ljava/lang/String;

.field private blacklist mLastKnownRoamingState:Z

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mMmTelRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

.field private blacklist mNotifiedRegisteredState:Z

.field private greylist-max-r mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mResultReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-r mSS:Landroid/telephony/ServiceState;

.field private final blacklist mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mTransportType:I

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic blacklist $r8$lambda$1YzxIJYkvLedpF0NF9FoP_TBL28(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2709
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1jZovAsyTV1W3MEEz-9h78-vhSg(Ljava/lang/String;)Z
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OvhbfYhIxVD7YncWQA7kL5AVKMM(Ljava/lang/String;)Z
    .registers 2

    .line 2719
    const-string v0, "^[0-9]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$SI5F8gdTR3TulF52nX8waFOxW0I(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 2707
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$gJ90sBzRMj-meMf5lUt1lIJU5NA(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2717
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gw1wxMspHS1JnjfIQIVLPFTOUzs(Landroid/net/Uri;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 2700
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$l_unicIidTc-22nUGsn2TaDtoIY(Landroid/net/Uri;)Z
    .registers 3

    .line 2701
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "sip"

    .line 2702
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$u6tWvwGCsyZAtyZLoAyOHLv4wg8(Lcom/android/internal/telephony/imsphone/ImsPhone;ZILandroid/os/AsyncResult;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->lambda$initiateSilentRedial$0(ZILandroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsRegistrationUpdateRegistrants(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsStats(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/ImsStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsStats:Lcom/android/internal/telephony/metrics/ImsStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegLocalLog(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsRegistrationTech(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEnterEmergencyCallbackMode(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateImsRegistrationInfo(Lcom/android/internal/telephony/imsphone/ImsPhone;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsRegistrationInfo(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 12

    .line 476
    new-instance v4, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda8;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;ZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;ZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    .line 482
    const-string v1, "ImsPhone"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 282
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 284
    new-instance p0, Landroid/telephony/ServiceState;

    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 300
    new-instance p0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 302
    new-instance p0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 304
    new-instance p0, Lcom/android/internal/telephony/LocalLog;

    const/16 p1, 0x40

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p0, 0x0

    .line 311
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastKnownRoamingState:Z

    .line 313
    iput-boolean p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsInImsEcm:Z

    .line 316
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 p1, -0x1

    .line 322
    iput p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    .line 325
    iput p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsDeregistrationTech:I

    .line 327
    iput p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mTransportType:I

    .line 332
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 2053
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    iget-object p2, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 2054
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 2267
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2515
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$4;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmTelRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    .line 484
    iput-object p3, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 485
    iput-object p4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsManagerFactory:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;

    .line 486
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsPhoneSharedPreferences:Landroid/content/SharedPreferences;

    .line 487
    new-instance p1, Lcom/android/internal/telephony/metrics/ImsStats;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/metrics/ImsStats;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsStats:Lcom/android/internal/telephony/metrics/ImsStats;

    .line 493
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 494
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 495
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    .line 498
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 499
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsNrSaModeHandler(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    .line 500
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    const-class p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 501
    invoke-virtual {p1, v0, v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 502
    iget-object p2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 503
    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    iget-object p2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V

    .line 505
    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    .line 507
    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 511
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    iget-object p2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmTelRegistrationUpdate:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    .line 512
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;-><init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Ljava/util/concurrent/Executor;)V

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    .line 514
    const-string p1, "power"

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 515
    const-string p2, "ImsPhone"

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 516
    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 518
    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_11f

    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    if-eqz p1, :cond_11f

    .line 520
    iget-object p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    .line 520
    array-length p4, p1

    :goto_10d
    if-ge p0, p4, :cond_11f

    aget p5, p1, p0

    .line 522
    iget-object p6, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p6}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p6

    const/16 v1, 0x52

    .line 523
    invoke-virtual {p6, p5, v0, v1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_10d

    .line 530
    :cond_11f
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 532
    iget-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 p1, 0x53

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 536
    iget-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 p1, 0x55

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForVolteSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$1000(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$1100(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$1200(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$1300(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method static synthetic blacklist access$900(Lcom/android/internal/telephony/imsphone/ImsPhone;)I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method private blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 998
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1001
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-boolean v1, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    const/4 v2, 0x0

    if-nez v1, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v2

    .line 1016
    :cond_12
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v1

    .line 1018
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    .line 1020
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 1021
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1026
    :cond_33
    iget-boolean p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-eqz p2, :cond_47

    .line 1027
    const-string p2, "dialInternal: emergency number, skip to check mmi code"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1028
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1033
    :cond_47
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p2

    .line 1036
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-nez p2, :cond_77

    .line 1039
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1040
    :cond_77
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1041
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    .line 1042
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1043
    :cond_93
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result p1

    const-string p3, "cs_fallback"

    if-eqz p1, :cond_c5

    .line 1052
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1056
    :try_start_aa
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V
    :try_end_ad
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b9

    :catch_ae
    move-exception p1

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ba

    :goto_b9
    return-object v2

    .line 1059
    :cond_ba
    const-string p3, "dialInternal: fallback to GSM required."

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 1062
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1063
    throw p1

    .line 1049
    :cond_c5
    const-string p1, "dialInternal: USSD not supported by IMS; fallback to CS."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 1050
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist extractPhoneNumberFromAssociatedUris([Landroid/net/Uri;Z)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2698
    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda0;-><init>()V

    .line 2700
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda1;-><init>()V

    .line 2701
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda2;-><init>()V

    .line 2703
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    if-eqz p1, :cond_42

    .line 2707
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda4;-><init>()V

    .line 2709
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2711
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 2712
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2715
    :cond_42
    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda6;-><init>()V

    .line 2717
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda7;-><init>()V

    .line 2719
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2721
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 2722
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private greylist-max-r getActionFromCFAction(I)I
    .registers 2

    .line 0
    if-eqz p1, :cond_d

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    const/4 p0, -0x1

    :cond_c
    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCBTypeFromFacility(Ljava/lang/String;)I
    .registers 2

    .line 1375
    const-string p0, "AO"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x2

    return p0

    .line 1377
    :cond_a
    const-string p0, "OI"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x3

    return p0

    .line 1379
    :cond_14
    const-string p0, "OX"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x4

    return p0

    .line 1381
    :cond_1e
    const-string p0, "AI"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    .line 1383
    :cond_28
    const-string p0, "IR"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x5

    return p0

    .line 1385
    :cond_32
    const-string p0, "AB"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x7

    return p0

    .line 1387
    :cond_3c
    const-string p0, "AG"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const/16 p0, 0x8

    return p0

    .line 1389
    :cond_47
    const-string p0, "AC"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    const/16 p0, 0x9

    return p0

    .line 1391
    :cond_52
    const-string p0, "AR"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    const/4 p0, 0x6

    return p0

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCFReasonFromCondition(I)I
    .registers 2

    .line 0
    if-eqz p1, :cond_10

    const/4 p0, 0x1

    if-eq p1, p0, :cond_f

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x4

    if-eq p1, p0, :cond_f

    const/4 p0, 0x5

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    :cond_f
    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 4

    .line 1736
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1737
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1738
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 p0, 0x1

    .line 1739
    iput p0, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1740
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1741
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1742
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    return-object v0
.end method

.method private blacklist getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .registers 5

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandException code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1500
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_3e

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_50

    goto :goto_40

    .line 1529
    :pswitch_29
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1526
    :pswitch_2c
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1523
    :pswitch_2f
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1520
    :pswitch_32
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1511
    :pswitch_35
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1514
    :pswitch_38
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1508
    :pswitch_3b
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_40

    .line 1517
    :cond_3e
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1535
    :goto_40
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_46
    .packed-switch 0x321
        :pswitch_3b
        :pswitch_38
        :pswitch_3b
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x335
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private blacklist getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .registers 3

    .line 1541
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_14

    .line 1542
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    return-object p0

    .line 1544
    :cond_14
    const-string p1, "getCommandException generic failure"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1545
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0
.end method

.method private greylist-max-r getConditionFromCFReason(I)I
    .registers 2

    .line 0
    if-eqz p1, :cond_13

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_12

    const/4 p0, 0x3

    if-eq p1, p0, :cond_12

    const/4 p0, 0x4

    if-eq p1, p0, :cond_12

    const/4 p0, 0x5

    if-eq p1, p0, :cond_12

    const/4 p0, -0x1

    :cond_12
    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5

    .line 708
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 712
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    const-string v2, "ImsPhone"

    if-eq p1, v1, :cond_2e

    .line 713
    const-string p1, "MmiCode 0: rejectCall"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 715
    :try_start_1c
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_21
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_4d

    :catch_22
    move-exception p1

    .line 717
    const-string v1, "reject failed"

    invoke-static {v2, v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_4d

    .line 720
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-eq p1, v1, :cond_4d

    .line 721
    const-string p1, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 723
    :try_start_3d
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_46
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception p0

    .line 725
    const-string p1, "hangup failed"

    invoke-static {v2, p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    :goto_4d
    return v0
.end method

.method private blacklist handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5

    .line 802
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    if-le p1, v0, :cond_17

    .line 809
    const-string p1, "separate not supported"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 810
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_7d

    .line 813
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v2, :cond_30

    .line 814
    const-string p1, "MmiCode 2: accept ringing call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 816
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    goto :goto_7d

    :catch_2e
    move-exception p1

    goto :goto_71

    .line 820
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_5c

    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-eq p1, v2, :cond_51

    .line 824
    const-string p1, "MmiCode 2: switch holding and active"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCall()V

    goto :goto_7d

    .line 827
    :cond_51
    const-string p1, "MmiCode 2: unhold held call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 828
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unholdHeldCall()V

    goto :goto_7d

    .line 830
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-eq p1, v2, :cond_7d

    .line 831
    const-string p1, "MmiCode 2: hold active call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCall()V
    :try_end_70
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_17 .. :try_end_70} :catch_2e

    goto :goto_7d

    .line 835
    :goto_71
    const-string v1, "ImsPhone"

    const-string v2, "switch failed"

    invoke-static {v1, v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :cond_7d
    :goto_7d
    return v0
.end method

.method private blacklist handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5

    .line 772
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 778
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1d

    .line 782
    :try_start_10
    const-string p1, "not support 1X SEND"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 783
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_47

    :catch_1b
    move-exception p1

    goto :goto_3b

    .line 785
    :cond_1d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v2, :cond_30

    .line 786
    const-string p1, "MmiCode 1: hangup foreground"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 787
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_47

    .line 789
    :cond_30
    const-string p1, "MmiCode 1: holdActiveCallForWaitingCall"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForWaitingCall()V
    :try_end_3a
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_10 .. :try_end_3a} :catch_1b

    goto :goto_47

    .line 794
    :goto_3b
    const-string v0, "ImsPhone"

    const-string v2, "hangup failed"

    invoke-static {v0, v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_47
    return v1
.end method

.method private blacklist handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .registers 4

    const/4 p0, 0x1

    .line 1780
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 1781
    aput v1, v0, v1

    .line 1783
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    if-ne p1, p0, :cond_10

    .line 1784
    aput p0, v0, v1

    :cond_10
    return-object v0
.end method

.method private blacklist handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 3

    .line 870
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 874
    :cond_9
    const-string p1, "MmiCode 5: CCBS not supported!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 876
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return v0
.end method

.method private blacklist handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .registers 4

    const/4 p0, 0x2

    .line 1791
    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 1792
    aput v0, p0, v0

    .line 1794
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    .line 1795
    aput v1, p0, v0

    .line 1796
    aput v1, p0, v1

    :cond_13
    return-object p0
.end method

.method private blacklist handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 859
    :cond_9
    const-string p1, "MmiCode 4: explicit call transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 861
    :try_start_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->explicitCallTransfer()V
    :try_end_11
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1f

    :catch_12
    move-exception p1

    .line 863
    const-string v1, "ImsPhone"

    const-string v2, "explicit call transfer failed"

    invoke-static {v1, v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_1f
    return v0
.end method

.method private greylist-max-r handleEnterEmergencyCallbackMode()V
    .registers 4

    .line 2111
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2112
    const-string v0, "DomainSelection enabled: ignore ECBM enter event."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 2115
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    .line 2118
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setIsInEcm(Z)V

    .line 2120
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 2121
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 2125
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ecm_exit_timer()Ljava/util/Optional;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    .line 2126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2127
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2129
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5b
    return-void
.end method

.method private blacklist handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 3

    .line 845
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 849
    :cond_9
    const-string p1, "MmiCode 3: merge calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    return v0
.end method

.method private blacklist isAllowNonGlobalNumberFormat()Z
    .registers 4

    .line 2951
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 2952
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2953
    const-string v1, "ims.allow_non_global_phone_number_format_bool"

    if-eqz v0, :cond_1b

    .line 2954
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 2958
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method private greylist-max-r isCfEnable(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private greylist-max-r isValidCommandInterfaceCFAction(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method

.method private greylist-max-r isValidCommandInterfaceCFReason(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    const/4 p0, 0x0

    :cond_12
    return p0
.end method

.method private synthetic blacklist lambda$initiateSilentRedial$0(ZILandroid/os/AsyncResult;)V
    .registers 6

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateSilentRedial: notifying registrants, isEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", eccCategory="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1692
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 2966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 4

    .line 2970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .registers 4

    .line 1552
    const-string v0, "onNetworkInitiatedUssd"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1553
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2337
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 2338
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-nez v2, :cond_16

    .line 2340
    const-string v1, "processDisconnectReason: CarrierConfigManager is not ready"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2343
    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_39

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDisconnectReason: no config for subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2348
    :cond_39
    const-string v3, "wfc_operator_error_codes_string_array"

    .line 2349
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    goto/16 :goto_13f

    .line 2356
    :cond_43
    iget-object v3, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 2357
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2359
    iget-object v4, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 2360
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070122

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 2363
    :goto_5f
    array-length v7, v2

    if-ge v6, v7, :cond_13f

    .line 2364
    aget-object v7, v2, v6

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2365
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_86

    .line 2366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid carrier config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 2371
    :cond_86
    iget-object v8, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_92

    goto/16 :goto_13b

    .line 2379
    :cond_92
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 2380
    aget-object v9, v7, v5

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2381
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 2382
    iget-object v9, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_bc

    .line 2383
    iget-object v9, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2384
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_bc

    goto/16 :goto_13b

    .line 2390
    :cond_bc
    iget-object v8, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const v9, 0x1040aa9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    .line 2393
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_125

    .line 2394
    array-length v9, v3

    if-ge v7, v9, :cond_125

    array-length v9, v4

    if-lt v7, v9, :cond_d5

    goto :goto_125

    .line 2400
    :cond_d5
    iget-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 2402
    aget-object v5, v3, v7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ec

    .line 2403
    aget-object v3, v3, v7

    iget-object v5, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_ed

    :cond_ec
    move-object v3, v2

    .line 2407
    :goto_ed
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_101

    .line 2408
    aget-object v2, v4, v7

    iget-object v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2415
    :cond_101
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2417
    const-string v1, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_TITLE"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2418
    const-string v1, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_MESSAGE"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v1, "notificationMessage"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    iget-object v9, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {v9 .. v16}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2397
    :cond_125
    :goto_125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    :goto_13b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5f

    :cond_13f
    :goto_13f
    return-void
.end method

.method private blacklist sendEmergencyCallbackModeChange()V
    .registers 4

    .line 2085
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2086
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2087
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2088
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEmergencyCallbackModeChange: isInEcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r sendErrorResponse(Landroid/os/Message;)V
    .registers 3

    .line 1480
    const-string v0, "sendErrorResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 1482
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1484
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method private blacklist sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_10

    if-eqz p3, :cond_9

    .line 1807
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 1809
    :goto_a
    invoke-static {p1, p2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1810
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private blacklist sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V
    .registers 12

    .line 1846
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCsRetryException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1847
    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-direct {p0, p1, p4, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1851
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Try CSFB: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ImsPhone"

    invoke-static {p4, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object p3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    const/4 p4, 0x1

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCsfbBundle(Z)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 p3, 0xc

    if-eq p2, p3, :cond_94

    const/16 p3, 0xd

    if-eq p2, p3, :cond_88

    const/16 p3, 0x56

    if-eq p2, p3, :cond_80

    packed-switch p2, :pswitch_data_a6

    return-void

    .line 1890
    :pswitch_3c
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void

    .line 1893
    :pswitch_44
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget p2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mClirMode:I

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-interface {p0, p2, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    return-void

    .line 1882
    :pswitch_4e
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallWaiting(Landroid/os/Message;)V

    return-void

    .line 1885
    :pswitch_56
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-boolean p2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mEnable:Z

    iget p3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 1869
    :pswitch_62
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    iget-object p3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    iget-object p4, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    invoke-interface {p0, p2, p3, p4, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 1875
    :pswitch_70
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mFacility:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mLockState:Z

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mPassword:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget v5, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 1896
    :cond_80
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->queryCLIP(Landroid/os/Message;)V

    return-void

    .line 1856
    :cond_88
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget p2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    iget p3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-interface {p0, p2, p3, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void

    .line 1861
    :cond_94
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfAction:I

    iget v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    iget-object v3, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    iget v5, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mTimerSeconds:I

    iget-object v6, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void

    :pswitch_data_a6
    .packed-switch 0x4c
        :pswitch_70
        :pswitch_62
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
    .end packed-switch
.end method

.method private blacklist sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .registers 5

    .line 734
    new-instance p0, Landroid/telephony/UssdResponse;

    invoke-direct {p0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 735
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 736
    const-string p2, "USSD_RESPONSE"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 737
    invoke-virtual {p4, p3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private blacklist setCsfbBundle(Z)Landroid/os/Bundle;
    .registers 3

    .line 1840
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1841
    const-string v0, "cs_fallback_ss"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private blacklist updateDataServiceState()V
    .registers 5

    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 1816
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_69

    .line 1817
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1818
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    const/4 v1, 0x2

    .line 1820
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;

    move-result-object v1

    .line 1821
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 1822
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_30

    .line 1825
    :cond_42
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isIwlanPreferred()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setIwlanPreferred(Z)V

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataServiceState: defSs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " imsSs = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method private blacklist updateImsRegistrationInfo(IIII)V
    .registers 11

    .line 2819
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationState:I

    const/4 v3, 0x2

    if-ne p1, v0, :cond_18

    if-ne p1, v3, :cond_b

    .line 2823
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    if-eq p2, v4, :cond_17

    :cond_b
    if-nez p1, :cond_18

    if-nez p3, :cond_18

    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationSuggestedAction:I

    if-nez v4, :cond_18

    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsDeregistrationTech:I

    if-ne p2, v4, :cond_18

    :cond_17
    return-void

    :cond_18
    if-nez p1, :cond_27

    .line 2834
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->updateImsRegistrationInfo(IIIILandroid/os/Message;)V

    goto :goto_40

    :cond_27
    if-ne v0, v3, :cond_40

    .line 2838
    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationCapabilities:I

    if-lez v4, :cond_40

    .line 2840
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->updateImsRegistrationInfo(IIIILandroid/os/Message;)V

    .line 2842
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    .line 2843
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mTransportType:I

    const/4 v0, 0x1

    .line 2844
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mNotifiedRegisteredState:Z

    return-void

    .line 2849
    :cond_40
    :goto_40
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationState:I

    .line 2850
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    .line 2851
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mTransportType:I

    .line 2852
    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationSuggestedAction:I

    if-nez p1, :cond_4d

    .line 2854
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsDeregistrationTech:I

    goto :goto_50

    :cond_4d
    const/4 v0, -0x1

    .line 2856
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsDeregistrationTech:I

    :goto_50
    const/4 v0, 0x0

    .line 2858
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationCapabilities:I

    .line 2860
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mNotifiedRegisteredState:Z

    return-void
.end method

.method private blacklist updateRoamingState(Landroid/telephony/ServiceState;)V
    .registers 5

    if-nez p1, :cond_8

    .line 2458
    const-string p1, "updateRoamingState: null ServiceState!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2461
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 2463
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastKnownRoamingState:Z

    if-ne v1, v0, :cond_11

    goto :goto_78

    .line 2466
    :cond_11
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2467
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p1

    if-nez p1, :cond_25

    .line 2470
    :cond_1d
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 2471
    :cond_25
    const-string p1, "updateRoamingState: we are not IN_SERVICE, ignoring roaming change."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    return-void

    .line 2475
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v1, :cond_79

    .line 2476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingState now: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_78

    .line 2485
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 2484
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 2486
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsManagerFactory:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;->create(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 2487
    invoke-virtual {p1, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 2489
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastKnownRoamingState:Z

    :cond_78
    :goto_78
    return-void

    .line 2493
    :cond_79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingState postponed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2494
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x54

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 609
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    return-void
.end method

.method public bridge synthetic blacklist activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist callEndCleanupHandOverCallIfAny()V
    .registers 1

    .line 2264
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    return-void
.end method

.method public blacklist canConference()Z
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    move-result p0

    return p0
.end method

.method public blacklist canDial()Z
    .registers 1

    .line 631
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canMakeWifiCall()Z
    .registers 2

    .line 2918
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsRegistrationTech()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canTransfer()Z
    .registers 1

    .line 650
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result p0

    return p0
.end method

.method public blacklist cancelUSSD(Landroid/os/Message;)V
    .registers 2

    .line 1475
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist clearDisconnected()V
    .registers 1

    .line 645
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    return-void
.end method

.method public blacklist clearPhoneNumberForSourceIms()V
    .registers 4

    .line 2634
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 2635
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 2639
    :cond_b
    const-string v1, "clearPhoneNumberForSourceIms"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2640
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist conference()V
    .registers 1

    .line 640
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 990
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 991
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist disableDataConnectivity()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist disableLocationUpdates()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public blacklist dispose()V
    .registers 6

    .line 542
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->tearDown()V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->tearDown()V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    .line 554
    array-length v1, v0

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_4b

    aget v3, v0, v2

    .line 556
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    .line 557
    invoke-virtual {v4, v3, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 559
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 562
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_57

    .line 563
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForVolteSilentRedial(Landroid/os/Handler;)V

    :cond_57
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2924
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2925
    const-string p2, "ImsPhone extends:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2927
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2929
    const-string p1, "ImsPhone:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mDefaultPhone = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mPendingMMIs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mPostDialHandler = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mSS = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mWakeLock = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mIsPhoneInEcmState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mEcmExitRespRegistrant = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mSilentRedialRegistrants = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mImsMmTelRegistrationState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    .line 2939
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getImsRegistrationState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2938
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mLastKnownRoamingState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastKnownRoamingState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mSsnRegistrants = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string p1, " Registration Log:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2944
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRegLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 2945
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2946
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public bridge synthetic blacklist enableDataConnectivity()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist enableLocationUpdates()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public blacklist exitEmergencyCallbackMode()V
    .registers 2

    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2097
    :cond_d
    const-string v0, "exitEmergencyCallbackMode()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2102
    :try_start_12
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    move-result-object p0

    .line 2103
    invoke-virtual {p0}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_1b
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 2105
    invoke-virtual {p0}, Lcom/android/ims/ImsException;->printStackTrace()V

    return-void
.end method

.method public blacklist explicitCallTransfer()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 655
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    return-void
.end method

.method public bridge synthetic blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic greylist-max-r getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .registers 1

    .line 669
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object p0
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    .line 1399
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V
    .registers 5

    .line 1403
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 7

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallBarring facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    const/16 p2, 0x4d

    .line 1412
    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1415
    :try_start_27
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1417
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p4}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V
    :try_end_34
    .catch Lcom/android/ims/ImsException; {:try_start_27 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    .line 1419
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist getCallComposerStatus()I
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsPhoneSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userset_callcomposer_prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getCallForwardingOption(IILandroid/os/Message;)V
    .registers 6

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOption reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1269
    const-string v0, "requesting call forwarding query."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1271
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(IILandroid/os/Message;)V

    const/16 p2, 0xd

    .line 1272
    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1275
    :try_start_2a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_38
    .catch Lcom/android/ims/ImsException; {:try_start_2a .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception p1

    .line 1278
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_3e
    if-eqz p3, :cond_43

    .line 1281
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public greylist-max-r getCallForwardingOption(ILandroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    .line 1260
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .registers 1

    .line 593
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object p0
.end method

.method public greylist-max-r getCallWaiting(Landroid/os/Message;)V
    .registers 4

    .line 1333
    const-string v0, "getCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1335
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(Landroid/os/Message;)V

    const/16 v1, 0x4f

    .line 1336
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1339
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1340
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_19
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    .line 1342
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getCurrentSubscriberUris()[Landroid/net/Uri;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    return-object p0
.end method

.method public bridge synthetic blacklist getDataActivityState()I
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getDataRoamingEnabled()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 2246
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public bridge synthetic blacklist getDeviceId()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getDeviceSvn()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEmergencyNumberDbVersion()I
    .registers 1

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result p0

    return p0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getEsn()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .registers 1

    .line 597
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    return-object p0
.end method

.method public bridge synthetic greylist-max-r getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .registers 1

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object p0
.end method

.method public bridge synthetic blacklist getGroupIdLevel1()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getGroupIdLevel2()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHandoverConnection()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1638
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1640
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1641
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2d

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic blacklist getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 1

    .line 2727
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getIccRecordsLoaded()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getIccSerialNumber()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getImei()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getImeiType()I
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImeiType()I

    move-result p0

    return p0
.end method

.method public blacklist getImsEcbmStateListener()Lcom/android/ims/ImsEcbmStateListener;
    .registers 1

    .line 2075
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    return-object p0
.end method

.method public blacklist getImsMmTelRegistrationCallback()Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .registers 1

    .line 2499
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getCallback()Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getImsRegistrationState(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2241
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->getImsRegistrationState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getImsRegistrationTech()I
    .registers 1

    .line 2231
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result p0

    return p0
.end method

.method public blacklist getImsRegistrationTech(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2236
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;
    .registers 1

    .line 2756
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsStats:Lcom/android/internal/telephony/metrics/ImsStats;

    return-object p0
.end method

.method public blacklist getLastKnownRoamingState()Z
    .registers 1

    .line 2776
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastKnownRoamingState:Z

    return p0
.end method

.method public bridge synthetic blacklist getLine1AlphaTag()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLine1Number()Ljava/lang/String;
    .registers 1

    .line 1748
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getMeid()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getMessageWaitingIndicator()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    move-result p0

    return p0
.end method

.method public blacklist getMute()Z
    .registers 1

    .line 1122
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    move-result p0

    return p0
.end method

.method public blacklist getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 4

    .line 1211
    const-string v0, "getCLIR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(Landroid/os/Message;)V

    const/16 v1, 0x51

    .line 1214
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1217
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1218
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_19
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    .line 1220
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist getPendingMmiCodes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 1732
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getPhoneType()I
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic greylist-max-r getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .registers 1

    .line 676
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object p0
.end method

.method public greylist-max-r getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 570
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    return-object v0
.end method

.method public blacklist getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 1

    .line 1128
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSubId()I
    .registers 1

    .line 1727
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getSubscriberId()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getTerminalBasedCallWaitingState(Z)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getTerminalBasedCallWaitingState(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getTransportType()I
    .registers 1

    .line 2761
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mTransportType:I

    return p0
.end method

.method public blacklist getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;
    .registers 1

    .line 2751
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 2447
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1758
    array-length v1, p1

    if-eqz v1, :cond_a

    .line 1759
    array-length v1, p1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_b

    :cond_a
    move-object v1, v0

    :goto_b
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_43

    .line 1762
    array-length v4, p1

    if-nez v4, :cond_13

    goto :goto_43

    .line 1767
    :cond_13
    array-length v0, p1

    move v4, v2

    :goto_15
    if-ge v4, v0, :cond_42

    .line 1768
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v5

    if-nez v5, :cond_37

    .line 1769
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_2d

    move v6, v3

    goto :goto_2e

    :cond_2d
    move v6, v2

    :goto_2e
    aget-object v7, p1, v4

    .line 1770
    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 1769
    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1772
    :cond_37
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_42
    return-object v1

    .line 1765
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    return-object v1
.end method

.method protected greylist-max-r handleExitEmergencyCallbackMode()V
    .registers 4

    .line 2136
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2137
    const-string v0, "DomainSelection enabled: ignore ECBM exit event."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 2140
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 2143
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setIsInEcm(Z)V

    .line 2147
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_40

    .line 2150
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 2154
    :cond_40
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2155
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2159
    :cond_4d
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 2160
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    return-void
.end method

.method public greylist-max-r handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 4

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 894
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 899
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_36

    return v1

    .line 919
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 916
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 913
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 910
    :pswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 906
    :pswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 902
    :pswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_36
    .packed-switch 0x30
        :pswitch_30
        :pswitch_2b
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1905
    const-string v0, "ImsPhone"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1908
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    if-eqz v4, :cond_12

    .line 1909
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    goto :goto_13

    :cond_12
    move-object v3, v2

    .line 1912
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1913
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-eq v4, v5, :cond_13c

    const/16 v5, 0xd

    if-eq v4, v5, :cond_126

    packed-switch v4, :pswitch_data_160

    .line 2045
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 1965
    :pswitch_3a
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_47

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v0, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v1, :cond_47

    .line 1966
    move-object v2, v0

    check-cast v2, Landroid/telephony/ims/ImsSsInfo;

    :cond_47
    if-eqz v3, :cond_15f

    .line 1969
    invoke-direct {p0, v3, v4, p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 2011
    :pswitch_4d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2012
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_15f

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_15f

    .line 2013
    check-cast p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;

    .line 2014
    iget-object v1, p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialString:Ljava/lang/String;

    .line 2015
    iget v3, p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;->causeCode:I

    .line 2016
    iget-object p1, p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 2021
    :try_start_61
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDialArgsForVolteSilentRedial(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p1

    .line 2020
    invoke-interface {p0, v1, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify volte redial connection changed cn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_15f

    .line 2029
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->notifyRedialConnectionChanged(Lcom/android/internal/telephony/Connection;)V
    :try_end_84
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_61 .. :try_end_84} :catch_86

    goto/16 :goto_15f

    :catch_86
    move-exception p1

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volte silent redial failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_15f

    .line 2034
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->notifyRedialConnectionChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_15f

    .line 1999
    :pswitch_a4
    const-string p1, "Voice call ended. Handle pending updateRoamingState."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2000
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2003
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_15f

    .line 2005
    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(Landroid/telephony/ServiceState;)V

    return-void

    .line 1994
    :pswitch_be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1995
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(Landroid/telephony/ServiceState;)V

    return-void

    .line 1988
    :pswitch_ca
    const-string p1, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    return-void

    .line 1951
    :pswitch_d3
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ims/ImsSsInfo;

    if-eqz v0, :cond_df

    const/16 v2, 0x8

    .line 1956
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsInfo;->getCompatArray(I)[I

    move-result-object v2

    :cond_df
    if-eqz v3, :cond_15f

    .line 1959
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 1974
    :pswitch_e9
    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_11c

    if-eqz v3, :cond_11c

    .line 1976
    iget v0, v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mClirMode:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    goto :goto_11c

    .line 1938
    :pswitch_f5
    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_112

    const/16 v0, 0x4d

    if-ne v4, v0, :cond_106

    .line 1940
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v2

    goto :goto_112

    :cond_106
    const/16 v0, 0x4f

    if-ne v4, v0, :cond_112

    .line 1942
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v2

    :cond_112
    :goto_112
    if-eqz v3, :cond_15f

    .line 1946
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_11c
    :goto_11c
    :pswitch_11c
    if-eqz v3, :cond_15f

    .line 1983
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 1927
    :cond_126
    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_132

    .line 1928
    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    :cond_132
    if-eqz v3, :cond_15f

    .line 1931
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 1915
    :cond_13c
    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_156

    if-eqz v3, :cond_156

    iget v0, v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    if-nez v0, :cond_156

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iget v4, v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfAction:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v4

    iget-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6, v4, v5}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    :cond_156
    if-eqz v3, :cond_15f

    .line 1921
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    :cond_15f
    :goto_15f
    return-void

    :pswitch_data_160
    .packed-switch 0x4c
        :pswitch_11c
        :pswitch_f5
        :pswitch_11c
        :pswitch_f5
        :pswitch_e9
        :pswitch_d3
        :pswitch_ca
        :pswitch_be
        :pswitch_a4
        :pswitch_4d
        :pswitch_3a
    .end packed-switch
.end method

.method public bridge synthetic blacklist handlePinMmi(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method blacklist handleTimerInEmergencyCallbackMode(I)V
    .registers 4

    .line 2169
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2172
    :cond_25
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2173
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    .line 2174
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    return-void

    .line 2177
    :cond_37
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ecm_exit_timer()Ljava/util/Optional;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    .line 2178
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2179
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2180
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 2181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    return-void
.end method

.method public blacklist handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 744
    const-string v0, "Could not execute USSD "

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "ImsPhone"

    if-lez v1, :cond_2b

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUssdRequest: queue full: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return v2

    .line 752
    :cond_2b
    :try_start_2b
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_37
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2b .. :try_end_37} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_74

    :catch_38
    move-exception v1

    goto :goto_3c

    :catch_3a
    move-exception v1

    goto :goto_53

    .line 762
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    const/4 p0, 0x0

    return p0

    .line 754
    :goto_53
    const-string v6, "cs_fallback"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    :goto_74
    return v2

    .line 755
    :cond_75
    throw v1
.end method

.method public blacklist hasAliveCall()Z
    .registers 3

    .line 2771
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_19

    .line 2772
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    if-eq p0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist holdActiveCall()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 694
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCall()V

    return-void
.end method

.method blacklist initiateSilentRedial()V
    .registers 2

    const/4 v0, 0x0

    .line 1655
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial(ZI)V

    return-void
.end method

.method blacklist initiateSilentRedial(ZI)V
    .registers 8

    .line 1660
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    .line 1661
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setEccCategory(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v0

    .line 1663
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    .line 1665
    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Lcom/android/internal/telephony/Phone$SilentRedialParam;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    const/16 v4, 0x4c1

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/Phone$SilentRedialParam;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    const/4 v0, 0x0

    invoke-direct {v1, v0, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;ZILandroid/os/AsyncResult;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist isCsRetryException(Ljava/lang/Throwable;)Z
    .registers 2

    if-eqz p1, :cond_12

    .line 1831
    instance-of p0, p1, Lcom/android/ims/ImsException;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/ims/ImsException;

    .line 1832
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result p0

    const/16 p1, 0x92

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic blacklist isDataAllowed()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataAllowed()Z

    move-result p0

    return p0
.end method

.method public blacklist isImsAvailable()Z
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsServiceReady()Z

    move-result p0

    return p0
.end method

.method public blacklist isImsCapabilityAvailable(II)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2205
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityAvailable(II)Z

    move-result p0

    return p0
.end method

.method public blacklist isImsRegistered()Z
    .registers 1

    .line 2251
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->isImsRegistered()Z

    move-result p0

    return p0
.end method

.method blacklist isInCall()Z
    .registers 3

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    .line 933
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 934
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isInEcm()Z
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p0

    return p0
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 1

    .line 2080
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result p0

    return p0
.end method

.method public blacklist isInImsEcm()Z
    .registers 2

    .line 940
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 941
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInImsEcm()Z

    move-result p0

    return p0

    .line 943
    :cond_13
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsInImsEcm:Z

    return p0
.end method

.method public bridge synthetic blacklist isUserDataEnabled()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isUserDataEnabled()Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isUtEnabled()Z
    .registers 1

    .line 2432
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isVideoEnabled()Z
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isVoiceOverCellularImsEnabled()Z
    .registers 1

    .line 2216
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVoiceOverCellularImsEnabled()Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isVolteEnabled()Z
    .registers 1

    .line 2211
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVoiceOverCellularImsEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isWifiCallingEnabled()Z
    .registers 1

    .line 2221
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public bridge synthetic blacklist needsOtaServiceProvisioning()Z
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist notifyCallForwardingIndicator()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic blacklist notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public blacklist notifyForVideoCapabilityChanged(Z)V
    .registers 2

    .line 968
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    .line 969
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    return-void
.end method

.method public bridge synthetic blacklist notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist notifyIncomingRing()V
    .registers 3

    .line 1100
    const-string v0, "notifyIncomingRing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0xe

    .line 1102
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 958
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist notifyPhoneStateChanged()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    return-void
.end method

.method public bridge synthetic blacklist notifyPreciseCallStateChanged()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public bridge synthetic blacklist notifyPreciseCallStateToNotifier()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPreciseCallStateToNotifier()V

    return-void
.end method

.method public blacklist notifySrvccState(I)V
    .registers 2

    .line 1650
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(I)V

    return-void
.end method

.method public bridge synthetic blacklist notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public blacklist notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .registers 4

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuppSvcNotification: suppSvc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 883
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 884
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method greylist-max-r notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 963
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist onCallQualityChanged(Landroid/telephony/CallQuality;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    return-void
.end method

.method public blacklist onFeatureCapabilityChanged()V
    .registers 1

    .line 2200
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    return-void
.end method

.method blacklist onIncomingUSSD(ILjava/lang/String;)V
    .registers 8

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingUSSD ussdMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v0

    :goto_1b
    if-eqz p1, :cond_21

    if-eq p1, v1, :cond_21

    move p1, v1

    goto :goto_22

    :cond_21
    move p1, v0

    .line 1572
    :goto_22
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_28
    if-ge v0, v3, :cond_44

    .line 1573
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1574
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    goto :goto_45

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_44
    const/4 v0, 0x0

    :goto_45
    if-eqz v0, :cond_51

    if-eqz p1, :cond_4d

    .line 1582
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    return-void

    .line 1584
    :cond_4d
    invoke-virtual {v0, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    return-void

    :cond_51
    if-nez p1, :cond_63

    .line 1586
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1593
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p2, v2, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p1

    .line 1595
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    return-void

    :cond_63
    if-eqz p1, :cond_6e

    .line 1598
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p2, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p0

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    :cond_6e
    return-void
.end method

.method public greylist-max-r onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .registers 5

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIDone: mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    return-void

    .line 1618
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1620
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_3b

    const/16 v1, 0x64

    goto :goto_3c

    :cond_3b
    const/4 v1, -0x1

    .line 1622
    :goto_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return-void

    .line 1625
    :cond_48
    const-string v0, "onMMIDone: notifyRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logv(Ljava/lang/String;)V

    .line 1626
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public bridge synthetic blacklist onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

.method public bridge synthetic blacklist onTtyModeReceived(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    return-void
.end method

.method public blacklist processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 2325
    iget v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1d

    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsManagerFactory:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;->create(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_1d
    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 5

    .line 1244
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(Landroid/os/Message;)V

    const/16 v1, 0x56

    .line 1245
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1248
    :try_start_b
    const-string v1, "ImsPhone"

    const-string v2, "ut.queryCLIP"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1250
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_1b
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    .line 1252
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 2889
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForImsRegistrationChanges(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1698
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1707
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1717
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist rejectCall()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    return-void
.end method

.method public blacklist resetImsRegistrationState()V
    .registers 3

    .line 2506
    const-string v0, "resetImsRegistrationState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->reset()V

    .line 2508
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 2509
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2510
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateImsRegistrationInfo(IIII)V

    :cond_19
    return-void
.end method

.method public bridge synthetic blacklist selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist sendDtmf(C)V
    .registers 4

    .line 1074
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1077
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_30

    .line 1078
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    :cond_30
    return-void
.end method

.method public blacklist sendEmergencyCallStateChange(Z)V
    .registers 2

    .line 2437
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->sendEmergencyCallStateChange(Z)V

    return-void
.end method

.method public greylist-max-r sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .registers 4

    .line 1491
    const-string v0, "sendErrorResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    .line 1493
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1494
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd ussdString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1470
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Ljava/lang/String;)V
    .registers 5

    .line 1459
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1464
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setBroadcastEmergencyCallStateChanges(Z)V
    .registers 2

    .line 2442
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setBroadcastEmergencyCallStateChanges(Z)V

    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1425
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .registers 13

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallBarring facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1437
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    move-object p1, v6

    const/16 p2, 0x4c

    .line 1438
    invoke-virtual {p0, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1449
    :try_start_35
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1450
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v1

    move-object v6, v4

    const/4 v4, 0x0

    move v2, v3

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
    :try_end_46
    .catch Lcom/android/ims/ImsException; {:try_start_35 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception v0

    move-object p2, v0

    .line 1453
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist setCallComposerStatus(I)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsPhoneSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userset_callcomposer_prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 353
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public greylist-max-r setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 15

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForwardingOption action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1308
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1310
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(IILjava/lang/String;IILandroid/os/Message;)V

    const/16 p1, 0xc

    .line 1312
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1315
    :try_start_41
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1316
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v1

    .line 1317
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v2

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p1

    .line 1316
    invoke-interface/range {v0 .. v6}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_56
    .catch Lcom/android/ims/ImsException; {:try_start_41 .. :try_end_56} :catch_57

    goto :goto_63

    :catch_57
    move-exception v0

    move-object p1, v0

    .line 1323
    invoke-virtual {p0, v7, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_5d
    move-object v7, p6

    if-eqz v7, :cond_63

    .line 1326
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 13

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 1291
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .registers 6

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1363
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(ZILandroid/os/Message;)V

    const/16 v1, 0x4e

    .line 1364
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1367
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1368
    invoke-interface {v1, p1, p2, v0}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_28
    .catch Lcom/android/ims/ImsException; {:try_start_1f .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 1370
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public greylist-max-r setCallWaiting(ZLandroid/os/Message;)V
    .registers 6

    .line 1351
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1354
    const-string v2, "call_waiting_service_class_int"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1357
    :cond_1d
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method protected blacklist setCurrentSubscriberUris([Landroid/net/Uri;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    return-void
.end method

.method public bridge synthetic blacklist setDataRoamingEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public greylist-max-r setImsRegistered(Z)V
    .registers 2

    .line 2257
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsMmTelRegistrationHelper:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;->updateRegistrationState(I)V

    return-void
.end method

.method public blacklist setImsStats(Lcom/android/internal/telephony/metrics/ImsStats;)V
    .registers 2

    .line 2767
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsStats:Lcom/android/internal/telephony/metrics/ImsStats;

    return-void
.end method

.method public blacklist setIsInEcm(Z)V
    .registers 2

    .line 953
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsInImsEcm:Z

    .line 954
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setIsInEcm(Z)V

    return-void
.end method

.method public bridge synthetic blacklist setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public blacklist setMute(Z)V
    .registers 2

    .line 1107
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    return-void
.end method

.method public bridge synthetic blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2191
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 5

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR action= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1231
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;-><init>(ILandroid/os/Message;)V

    const/16 v1, 0x50

    .line 1232
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1234
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1235
    invoke-interface {v1, p1, v0}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_28
    .catch Lcom/android/ims/ImsException; {:try_start_1f .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 1237
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public blacklist setPhoneNumberForSourceIms([Landroid/net/Uri;)V
    .registers 5

    .line 2646
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 2647
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 2654
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 2655
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2657
    const-string p1, "trigger setPhoneNumberForSourceIms, but subInfo is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2660
    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2661
    invoke-static {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->extractPhoneNumberFromAssociatedUris([Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2663
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_30

    .line 2665
    const-string p1, "format to E164 failed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2668
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    return-void

    .line 2669
    :cond_36
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isAllowNonGlobalNumberFormat()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x0

    .line 2673
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->extractPhoneNumberFromAssociatedUris([Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_49

    .line 2675
    const-string p1, "extract phone number without \'+\' failed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 2678
    :cond_49
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setNumberFromIms(ILjava/lang/String;)V

    return-void

    .line 2680
    :cond_4f
    const-string p1, "extract phone number failed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic blacklist setRadioPower(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public blacklist setRadioPower(ZZZZ)V
    .registers 5

    .line 975
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneInternalInterface;->setRadioPower(ZZZZ)V

    return-void
.end method

.method public greylist-max-r setServiceState(I)V
    .registers 4

    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 580
    :goto_c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 581
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    .line 582
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    if-eqz v0, :cond_28

    .line 585
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 586
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsServiceStateChanged()V

    :cond_28
    return-void

    :catchall_29
    move-exception p1

    .line 581
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 1112
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setTtyMode(I)V

    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(I)V
    .registers 2

    .line 2865
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setTerminalBasedCallWaitingStatus(I)V

    return-void
.end method

.method public bridge synthetic blacklist setTerminalBasedCallWaitingSupported(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setTerminalBasedCallWaitingSupported(Z)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 1117
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist startConference([Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 983
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    .line 984
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startConference([Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist startDtmf(C)V
    .registers 4

    .line 1086
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_28

    const/16 v0, 0x41

    if-lt p1, v0, :cond_e

    const/16 v0, 0x44

    if-le p1, v0, :cond_28

    .line 1087
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1089
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    return-void
.end method

.method public blacklist startImsTraffic(IIIILandroid/os/Message;)V
    .registers 6

    .line 2878
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/Phone;->startImsTraffic(IIIILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic blacklist startRingbackTone()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startRingbackTone()V

    return-void
.end method

.method public blacklist stopDtmf()V
    .registers 1

    .line 1096
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    return-void
.end method

.method public blacklist stopImsTraffic(ILandroid/os/Message;)V
    .registers 3

    .line 2884
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->stopImsTraffic(ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist stopNetworkScan(Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist stopRingbackTone()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopRingbackTone()V

    return-void
.end method

.method public blacklist switchHoldingAndActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 621
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use hold() and unhold() instead."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist triggerEpsFallback(ILandroid/os/Message;)V
    .registers 3

    .line 2870
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->triggerEpsFallback(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist triggerImsDeregistration(I)V
    .registers 2

    .line 2900
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->triggerImsDeregistration(I)V

    return-void
.end method

.method public blacklist triggerNotifyAnbr(III)V
    .registers 4

    .line 2910
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->triggerNotifyAnbr(III)V

    return-void
.end method

.method public blacklist unholdHeldCall()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 703
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unholdHeldCall()V

    return-void
.end method

.method public blacklist unregisterForConnectionSetupFailure(Landroid/os/Handler;)V
    .registers 2

    .line 2894
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForConnectionSetupFailure(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForImsRegistrationChanges(Landroid/os/Handler;)V
    .registers 2

    .line 1702
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationUpdateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSilentRedial(Landroid/os/Handler;)V
    .registers 2

    .line 1712
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 2

    .line 1722
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .registers 2

    .line 2196
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist updateDialArgsForVolteSilentRedial(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .registers 5

    if-eqz p1, :cond_33

    .line 2733
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v0

    .line 2735
    new-instance v1, Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/16 p1, 0xbba

    if-ne p2, p1, :cond_25

    const/16 p1, 0x12

    .line 2738
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2737
    const-string p2, "CallRadioTech"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const-string p1, "trigger VoWifi emergency call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    goto :goto_2e

    :cond_25
    const/16 p1, 0xbb9

    if-ne p2, p1, :cond_2e

    .line 2742
    const-string p1, "trigger VoLte emergency call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 2744
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p0

    return-object p0

    .line 2746
    :cond_33
    new-instance p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2905
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateImsRegistrationInfo(I)V
    .registers 8

    .line 2785
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationState:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_27

    .line 2786
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mNotifiedRegisteredState:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationCapabilities:I

    if-ne p1, v0, :cond_e

    goto :goto_27

    .line 2791
    :cond_e
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationCapabilities:I

    if-nez p1, :cond_13

    goto :goto_27

    .line 2798
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistrationTech:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->updateImsRegistrationInfo(IIIILandroid/os/Message;)V

    const/4 p1, 0x1

    .line 2800
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mNotifiedRegisteredState:Z

    .line 2802
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsNrSaModeHandler:Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;->updateImsCapability(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method public bridge synthetic blacklist updateServiceLocation()V
    .registers 1

    .line 153
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    return-void
.end method
