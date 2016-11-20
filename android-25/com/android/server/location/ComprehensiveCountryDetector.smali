.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ComprehensiveCountryDetector$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method static synthetic -get0(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/location/ComprehensiveCountryDetector;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/location/ComprehensiveCountryDetector;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .locals 1
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/ComprehensiveCountryDetector;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    #@3
    .line 79
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    #@6
    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@d
    .line 100
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    #@14
    .line 132
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    #@16
    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    #@19
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    #@1b
    .line 145
    const-string/jumbo v0, "phone"

    #@1e
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@24
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@26
    .line 143
    return-void
.end method

.method private addToLogs(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 188
    if-nez p1, :cond_0

    #@2
    .line 189
    return-void

    #@3
    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    #@c
    invoke-virtual {v0, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    monitor-exit v1

    #@13
    .line 196
    return-void

    #@14
    .line 198
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 201
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@19
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    #@1c
    move-result v0

    #@1d
    const/16 v1, 0x14

    #@1f
    if-lt v0, v1, :cond_2

    #@21
    .line 202
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@23
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    #@26
    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@28
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    #@2b
    .line 187
    return-void

    #@2c
    .line 194
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 430
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    #@7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    #@a
    .line 431
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 428
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .locals 3
    .param p1, "notifyChange"    # Z
    .param p2, "startLocationBasedDetection"    # Z

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    #@3
    move-result-object v0

    #@4
    .line 272
    .local v0, "country":Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    #@6
    if-eqz v1, :cond_0

    #@8
    new-instance v1, Landroid/location/Country;

    #@a
    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    #@c
    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    #@f
    :goto_0
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    #@12
    .line 274
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    #@14
    .line 275
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    #@16
    return-object v1

    #@17
    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    #@19
    goto :goto_0
.end method

.method private getCountry()Landroid/location/Country;
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    .line 170
    .local v0, "result":Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    #@4
    move-result-object v0

    #@5
    .line 171
    .local v0, "result":Landroid/location/Country;
    if-nez v0, :cond_0

    #@7
    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    #@a
    move-result-object v0

    #@b
    .line 174
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    #@10
    move-result-object v0

    #@11
    .line 177
    :cond_1
    if-nez v0, :cond_2

    #@13
    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    #@16
    move-result-object v0

    #@17
    .line 180
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    #@1a
    .line 181
    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 213
    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@6
    move-result v0

    #@7
    .line 215
    .local v0, "phoneType":I
    if-ne v0, v1, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .locals 1
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;

    #@0
    .prologue
    .line 394
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 395
    if-eqz p1, :cond_1

    #@8
    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 393
    :cond_0
    :goto_0
    return-void

    #@f
    .line 399
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    #@12
    goto :goto_0
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 412
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    #@9
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    #@e
    .line 413
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    #@10
    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    #@15
    .line 422
    const-wide/32 v2, 0x5265c00

    #@18
    .line 413
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 406
    return-void

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/CountryListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 359
    return-void

    #@7
    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    #@d
    .line 366
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    #@12
    .line 367
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    #@14
    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 357
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 376
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    #@7
    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    #@a
    .line 377
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 370
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 437
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    #@a
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@c
    .line 451
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@e
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 435
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .locals 2

    #@0
    .prologue
    .line 382
    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    #@2
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    move v0, v1

    #@6
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    #@2
    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@4
    move-result-object v0

    #@5
    .line 256
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    #@7
    .line 257
    new-instance v1, Landroid/location/Country;

    #@9
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x3

    #@e
    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    #@11
    return-object v1

    #@12
    .line 259
    :cond_0
    return-object v1
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .locals 3

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    .line 223
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 224
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 225
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 226
    new-instance v1, Landroid/location/Country;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    #@19
    return-object v1

    #@1a
    .line 229
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@1b
    return-object v1
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .locals 3

    #@0
    .prologue
    .line 243
    const/4 v0, 0x0

    #@1
    .line 244
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 245
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 246
    new-instance v1, Landroid/location/Country;

    #@f
    const/4 v2, 0x2

    #@10
    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    #@13
    return-object v1

    #@14
    .line 248
    :cond_0
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method protected isAirplaneModeOff()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 387
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "airplane_mode_on"

    #@a
    .line 386
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method protected isGeoCoderImplemented()Z
    .locals 1

    #@0
    .prologue
    .line 463
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 457
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@d
    .line 458
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 455
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 314
    if-eqz p3, :cond_0

    #@3
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    #@6
    .line 327
    :cond_0
    if-eqz p4, :cond_2

    #@8
    if-eqz p2, :cond_1

    #@a
    .line 328
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    #@d
    move-result v0

    #@e
    if-le v0, v1, :cond_2

    #@10
    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    #@13
    move-result v0

    #@14
    .line 327
    if-eqz v0, :cond_2

    #@16
    .line 329
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@18
    if-eqz v0, :cond_2

    #@1a
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    #@1d
    move-result v0

    #@1e
    .line 327
    if-eqz v0, :cond_2

    #@20
    .line 336
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    #@22
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    #@25
    .line 338
    :cond_2
    if-eqz p2, :cond_3

    #@27
    .line 339
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    #@2a
    move-result v0

    #@2b
    if-lt v0, v1, :cond_4

    #@2d
    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    #@30
    .line 313
    :goto_0
    return-void

    #@31
    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    #@34
    .line 350
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    #@37
    goto :goto_0
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 7
    .param p1, "country"    # Landroid/location/Country;
    .param p2, "detectedCountry"    # Landroid/location/Country;
    .param p3, "notifyChange"    # Z
    .param p4, "startLocationBasedDetection"    # Z

    #@0
    .prologue
    .line 283
    iget-object v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    #@c
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 282
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/CountryListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 294
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@3
    .line 295
    .local v0, "prevListener":Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@5
    .line 296
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    #@c
    .line 299
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    #@f
    .line 300
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    #@12
    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    #@18
    .line 302
    iget-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    #@1a
    iget-wide v4, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    #@1c
    add-long/2addr v2, v4

    #@1d
    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    #@1f
    .line 293
    :cond_0
    :goto_0
    return-void

    #@20
    .line 303
    :cond_1
    if-nez v0, :cond_0

    #@22
    .line 304
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    #@25
    .line 305
    const/4 v1, 0x1

    #@26
    invoke-direct {p0, v4, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    #@29
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2c
    move-result-wide v2

    #@2d
    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    #@2f
    .line 307
    const-wide/16 v2, 0x0

    #@31
    iput-wide v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    #@33
    .line 308
    iput v4, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    #@35
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 157
    const-string/jumbo v0, "CountryDetector"

    #@3
    const-string/jumbo v1, "Stop the detector."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 158
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    #@c
    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    #@f
    .line 160
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    #@12
    .line 161
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    #@15
    .line 162
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    #@18
    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    .line 469
    .local v4, "currentTime":J
    const-wide/16 v2, 0x0

    #@6
    .line 470
    .local v2, "currentSessionLength":J
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 471
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "ComprehensiveCountryDetector{"

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 473
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    #@13
    const-wide/16 v10, 0x0

    #@15
    cmp-long v7, v8, v10

    #@17
    if-nez v7, :cond_0

    #@19
    .line 474
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    #@1b
    sub-long v2, v4, v8

    #@1d
    .line 475
    const-string/jumbo v7, "timeRunning="

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    const-string/jumbo v8, ", "

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 480
    :goto_0
    const-string/jumbo v7, "totalCountServiceStateChanges="

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    const-string/jumbo v8, ", "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 481
    const-string/jumbo v7, "currentCountServiceStateChanges="

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    const-string/jumbo v8, ", "

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 482
    const-string/jumbo v7, "totalTime="

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    #@5d
    add-long/2addr v8, v2

    #@5e
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    const-string/jumbo v8, ", "

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 483
    const-string/jumbo v7, "currentTime="

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    const-string/jumbo v8, ", "

    #@76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 484
    const-string/jumbo v7, "countries="

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 485
    iget-object v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@81
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v1

    #@85
    .local v1, "country$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_1

    #@8b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Landroid/location/Country;

    #@91
    .line 486
    .local v0, "country":Landroid/location/Country;
    const-string/jumbo v7, "\n   "

    #@94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    goto :goto_1

    #@a0
    .line 478
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "country$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v7, "lastRunTimeLength="

    #@a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v7

    #@a7
    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    #@a9
    iget-wide v10, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    #@ab
    sub-long/2addr v8, v10

    #@ac
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    const-string/jumbo v8, ", "

    #@b3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    goto/16 :goto_0

    #@b8
    .line 488
    .restart local v1    # "country$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "}"

    #@bb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 489
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    return-object v7
.end method
