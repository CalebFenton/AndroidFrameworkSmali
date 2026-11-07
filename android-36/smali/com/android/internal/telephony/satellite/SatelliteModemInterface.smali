.class public Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
.super Ljava/lang/Object;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;,
        Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

.field private final blacklist mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

.field protected final blacklist mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mIsSatelliteServiceSupported:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private final blacklist mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

.field private blacklist mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

.field private final blacklist mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mVendorListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

.field private blacklist mVendorSatellitePackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$DChGqo6s3-LYVRE3AKvwbIPE8vg(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramTransferStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDemoListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDemoSimulator(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/DemoSimulator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtnSignalStrengthChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingDatagramsRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCapabilitiesChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteController(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteDatagramsReceivedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteModemStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePositionInfoChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteRegistrationFailureRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Landroid/telephony/satellite/stub/ISatellite;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedStateChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTerrestrialNetworkAvailableChangedRegistrants(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorListener(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/telephony/satellite/stub/ISatellite;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisconnectSatelliteService(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->disconnectSatelliteService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    .line 85
    const-string p4, ""

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    const/4 p4, 0x0

    .line 88
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 90
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 92
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 94
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 96
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 97
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 99
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 101
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 103
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 105
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 107
    new-instance p4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 257
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 258
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    .line 259
    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/DemoSimulator;->make(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;)Lcom/android/internal/telephony/satellite/DemoSimulator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    .line 260
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    .line 261
    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoListener:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteListener;

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatelliteServiceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    .line 263
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    .line 264
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff;

    new-instance v7, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;)V

    const-wide/16 v1, 0x7d0

    const-wide/32 v3, 0xfa00

    const/4 v5, 0x2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 280
    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    .line 281
    const-string p1, "Created SatelliteModemInterface. Attempting to bind to SatelliteService."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    return-void
.end method

.method private blacklist disconnectSatelliteService()V
    .registers 2

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .registers 1

    .line 222
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    if-nez v0, :cond_9

    .line 223
    const-string v0, "SatelliteModemInterface was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->loge(Ljava/lang/String;)V

    .line 225
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object v0
.end method

.method private blacklist getSatellitePackageName()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    return-object p0

    .line 298
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteServiceSupport()Z
    .registers 1

    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatellitePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    if-nez v1, :cond_12

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_2d

    :cond_e
    :goto_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    if-eqz v1, :cond_14

    .line 268
    :cond_12
    monitor-exit v0

    return-void

    .line 270
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    if-eqz v0, :cond_29

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 273
    :try_start_1d
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    .line 274
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 275
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    goto :goto_29

    :catchall_26
    move-exception p0

    .line 275
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    .line 278
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    return-void

    .line 270
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_c

    throw p0
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1429
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/satellite/SatelliteModemInterface;
    .registers 5

    .line 238
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    if-nez v0, :cond_f

    .line 239
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 240
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    .line 242
    :cond_f
    sget-object p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sInstance:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .registers 3

    .line 1433
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 1435
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .registers 3

    .line 1440
    const-string v0, "SatelliteModemInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_c

    .line 1442
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected static blacklist sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 1419
    :cond_4
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-direct {v0, p2}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    move-object p2, v0

    .line 1420
    :goto_a
    invoke-static {p0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1421
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public blacklist abortSendingSatelliteDatagrams(Landroid/os/Message;)V
    .registers 6

    .line 1287
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1289
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$26;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$26;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->abortSendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortSendingSatelliteDatagrams: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1300
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1304
    :cond_28
    const-string v0, "abortSendingSatelliteDatagrams: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1305
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method protected blacklist bindService()V
    .registers 7

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    if-nez v1, :cond_c9

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    if-eqz v1, :cond_d

    goto/16 :goto_c9

    :cond_d
    const/4 v1, 0x1

    .line 310
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 311
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_c7

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatellitePackageName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 314
    const-string v0, "Unable to bind to the satellite service because the package is undefined."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    :try_start_24
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 319
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2d

    .line 320
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void

    :catchall_2d
    move-exception p0

    .line 319
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0

    .line 323
    :cond_30
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.satellite.SatelliteService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Lcom/android/internal/telephony/satellite/SatelliteModemInterface-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 329
    :try_start_56
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 332
    const-string v0, "Successfully bound to the satellite service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    return-void

    :catch_66
    move-exception v0

    goto :goto_96

    .line 334
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6b} :catch_66

    .line 335
    :try_start_6b
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 336
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_93

    .line 337
    :try_start_6e
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding to the satellite service. Retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 339
    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_92} :catch_66

    return-void

    :catchall_93
    move-exception v1

    .line 336
    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_96} :catch_66

    .line 342
    :goto_96
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_99
    iput-boolean v3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 344
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_c4

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception binding to the satellite service. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 347
    invoke-virtual {v2}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    return-void

    :catchall_c4
    move-exception p0

    .line 344
    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw p0

    :catchall_c7
    move-exception p0

    goto :goto_cb

    .line 309
    :cond_c9
    :goto_c9
    :try_start_c9
    monitor-exit v0

    return-void

    .line 311
    :goto_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_c7

    throw p0
.end method

.method public blacklist enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V
    .registers 6

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 666
    :try_start_5
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 679
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->isDemoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDemoSimulator:Lcom/android/internal/telephony/satellite/DemoSimulator;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/satellite/DemoSimulator;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V

    return-void

    :catch_18
    move-exception p1

    goto :goto_20

    .line 683
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    invoke-interface {v2, p1, v0}, Landroid/telephony/satellite/stub/ISatellite;->enableTerrestrialNetworkScanWhileSatelliteModeIsOn(ZLandroid/telephony/IIntegerConsumer;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_18

    return-void

    .line 687
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTerrestrialNetworkScanWhileSatelliteModeIsOn: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p2, :cond_47

    const/4 p0, 0x3

    .line 689
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    goto :goto_47

    .line 694
    :cond_3b
    const-string p1, "enableCellularModemWhileSatelliteModeIsOn: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p2, :cond_47

    const/16 p0, 0xa

    .line 696
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    :cond_47
    :goto_47
    return-void
.end method

.method public blacklist getService()Landroid/telephony/satellite/stub/ISatellite;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    return-object p0
.end method

.method public blacklist isSatelliteServiceConnected()Z
    .registers 2

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1317
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1318
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public blacklist isSatelliteServiceSupported()Z
    .registers 1

    .line 1311
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    return p0
.end method

.method public blacklist pollPendingSatelliteDatagrams(Landroid/os/Message;)V
    .registers 6

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 921
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$12;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->pollPendingSatelliteDatagrams(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pollPendingDatagrams: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 932
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 936
    :cond_28
    const-string v0, "pollPendingDatagrams: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 937
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist registerForDatagramTransferStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 435
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNtnSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 518
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPendingDatagrams(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 476
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 539
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteDatagramsReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 497
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 456
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatellitePositionInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 414
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteRegistrationFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 581
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSatelliteSupportedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 602
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/os/Message;)V
    .registers 6

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 744
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$4;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$4;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$5;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$5;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteEnabled(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestIsSatelliteEnabled: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 765
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 769
    :cond_2d
    const-string v0, "requestIsSatelliteEnabled: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 770
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestIsSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .registers 7

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1151
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$20;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$20;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$21;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, p1, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteEnabledForCarrier(ILandroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestIsSatelliteEnabledForCarrier: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1171
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1175
    :cond_2d
    const-string p1, "requestIsSatelliteEnabledForCarrier: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1176
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/os/Message;)V
    .registers 6

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 783
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$6;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$6;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$7;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$7;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestIsSatelliteSupported(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IBooleanConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestIsSatelliteSupported: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 801
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 805
    :cond_2d
    const-string v0, "requestIsSatelliteSupported: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 806
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestNtnSignalStrength(Landroid/os/Message;)V
    .registers 6

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1189
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$22;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$22;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$23;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$23;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestSignalStrength(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1212
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1216
    :cond_2d
    const-string v0, "requestNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1217
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/os/Message;)V
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 819
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$8;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$9;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$9;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteCapabilities(Landroid/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSatelliteCapabilities: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 840
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 844
    :cond_2d
    const-string v0, "requestSatelliteCapabilities: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 845
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteEnabled(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;Landroid/os/Message;)V
    .registers 6

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 714
    :try_start_5
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteModemEnableRequestAttributes(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;)Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$3;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$3;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 713
    invoke-interface {v0, p1, v2}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteEnabled(Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;Landroid/telephony/IIntegerConsumer;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSatelliteEnabled: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 726
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 730
    :cond_2c
    const-string p1, "setSatelliteEnabled: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 731
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSatelliteListeningEnabled(ZILandroid/os/Message;)V
    .registers 7

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 627
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$1;

    invoke-direct {v2, p0, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$1;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, p1, p2, v2}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteListeningEnabled(ZILandroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSatelliteListeningEnabled: RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p3, :cond_36

    const/4 p0, 0x3

    .line 643
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    goto :goto_36

    .line 648
    :cond_2a
    const-string p1, "requestSatelliteListeningEnabled: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    if-eqz p3, :cond_36

    const/16 p0, 0xa

    .line 650
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public blacklist requestSatelliteModemState(Landroid/os/Message;)V
    .registers 6

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 988
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$14;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$14;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$15;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$15;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestSatelliteModemState(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSatelliteModemState: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1008
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1012
    :cond_2d
    const-string v0, "requestSatelliteModemState: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1013
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestSetSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .registers 7

    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1118
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$19;

    invoke-direct {v2, p0, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$19;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, p1, p2, v2}, Landroid/telephony/satellite/stub/ISatellite;->setSatelliteEnabledForCarrier(IZLandroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 1129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSetSatelliteEnabledForCarrier: RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1130
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1134
    :cond_28
    const-string p1, "requestSetSatelliteEnabledForCarrier: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xb

    .line 1135
    invoke-static {p3, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/os/Message;)V
    .registers 6

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1028
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$16;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$16;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite;->requestTimeForNextSatelliteVisibility(Landroid/telephony/IIntegerConsumer;Landroid/telephony/IIntegerConsumer;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTimeForNextSatelliteVisibility: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1051
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1055
    :cond_2d
    const-string v0, "requestTimeForNextSatelliteVisibility: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1056
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist sendSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;ZZLandroid/os/Message;)V
    .registers 7

    .line 953
    iget-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v0, 0x0

    if-eqz p3, :cond_2c

    .line 956
    :try_start_5
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;)Landroid/telephony/satellite/stub/SatelliteDatagram;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$13;

    invoke-direct {v1, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$13;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 955
    invoke-interface {p3, p1, p2, v1}, Landroid/telephony/satellite/stub/ISatellite;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLandroid/telephony/IIntegerConsumer;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 967
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendDatagram: RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 968
    invoke-static {p4, v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 972
    :cond_2c
    const-string p1, "sendDatagram: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 973
    invoke-static {p4, v0, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1083
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$18;

    invoke-direct {v2, p0, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$18;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, p1, p2, p3, v2}, Landroid/telephony/satellite/stub/ISatellite;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 1094
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setSatellitePlmn: RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1095
    invoke-static {p4, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1099
    :cond_28
    const-string p1, "setSatellitePlmn: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1100
    invoke-static {p4, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist setSatelliteServicePackageName(Ljava/lang/String;)V
    .registers 4

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteServicePackageName: config_satellite_service_package is updated, new packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    if-eqz v0, :cond_2d

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1363
    :try_start_21
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBound:Z

    .line 1364
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsBinding:Z

    .line 1365
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2a

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->unbindService()V

    goto :goto_2d

    :catchall_2a
    move-exception p0

    .line 1365
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    if-eqz p1, :cond_3b

    .line 1369
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_3b

    .line 1372
    :cond_38
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    goto :goto_3f

    .line 1370
    :cond_3b
    :goto_3b
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mVendorSatellitePackageName:Ljava/lang/String;

    .line 1374
    :goto_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getSatelliteServiceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mIsSatelliteServiceSupported:Z

    .line 1375
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->bindService()V

    .line 1376
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mExponentialBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method

.method public blacklist startSendingNtnSignalStrength(Landroid/os/Message;)V
    .registers 6

    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1231
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$24;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$24;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->startSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSendingNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1242
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1246
    :cond_28
    const-string v0, "startSendingNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1247
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist startSendingSatellitePointingInfo(Landroid/os/Message;)V
    .registers 6

    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 860
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$10;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$10;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->startSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSendingSatellitePointingInfo: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 871
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 875
    :cond_28
    const-string v0, "startSendingSatellitePointingInfo: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 876
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist stopSendingNtnSignalStrength(Landroid/os/Message;)V
    .registers 6

    .line 1258
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1260
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$25;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$25;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->stopSendingNtnSignalStrength(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSendingNtnSignalStrength: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1271
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1275
    :cond_28
    const-string v0, "stopSendingNtnSignalStrength: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1276
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist stopSendingSatellitePointingInfo(Landroid/os/Message;)V
    .registers 6

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 890
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$11;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$11;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, v2}, Landroid/telephony/satellite/stub/ISatellite;->stopSendingSatellitePointingInfo(Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSendingSatellitePointingInfo: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 901
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 905
    :cond_28
    const-string v0, "stopSendingSatellitePointingInfo: Satellite service is unavailable."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 906
    invoke-static {p1, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method protected blacklist unbindService()V
    .registers 3

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->disconnectSatelliteService()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteServiceConnection:Lcom/android/internal/telephony/satellite/SatelliteModemInterface$SatelliteServiceConnection;

    return-void
.end method

.method public blacklist unregisterForDatagramTransferStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mDatagramTransferStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNtnSignalStrengthChanged(Landroid/os/Handler;)V
    .registers 2

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mNtnSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPendingDatagrams(Landroid/os/Handler;)V
    .registers 2

    .line 485
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mPendingDatagramsRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteCapabilitiesChanged(Landroid/os/Handler;)V
    .registers 2

    .line 548
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteCapabilitiesChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteDatagramsReceived(Landroid/os/Handler;)V
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteDatagramsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteModemStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteModemStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatellitePositionInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatellitePositionInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteRegistrationFailure(Landroid/os/Handler;)V
    .registers 2

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteRegistrationFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteSupportedStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteSupportedStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForTerrestrialNetworkAvailableChanged(Landroid/os/Handler;)V
    .registers 2

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mTerrestrialNetworkAvailableChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateSatelliteSubscription(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1327
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$27;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$27;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    invoke-interface {v0, p1, v2}, Landroid/telephony/satellite/stub/ISatellite;->updateSatelliteSubscription(Ljava/lang/String;Landroid/telephony/IIntegerConsumer;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSatelliteSubscription: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1339
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1343
    :cond_28
    const-string p1, "updateSatelliteSubscription: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1344
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method public blacklist updateSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSystemSelectionChannels: SystemSelectionSpecifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->plogd(Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->mSatelliteService:Landroid/telephony/satellite/stub/ISatellite;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 1393
    :try_start_1d
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSystemSelectionSpecifier(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$28;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$28;-><init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V

    .line 1392
    invoke-interface {v0, p1, v2}, Landroid/telephony/satellite/stub/ISatellite;->updateSystemSelectionChannels(Ljava/util/List;Landroid/telephony/IIntegerConsumer;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSystemSelectionChannels: RemoteException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 1405
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void

    .line 1409
    :cond_44
    const-string p1, "updateSystemSelectionChannels: Satellite service is unavailable."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->ploge(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1410
    invoke-static {p2, v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method
