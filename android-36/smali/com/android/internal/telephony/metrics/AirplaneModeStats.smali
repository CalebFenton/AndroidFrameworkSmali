.class public Lcom/android/internal/telephony/metrics/AirplaneModeStats;
.super Landroid/database/ContentObserver;
.source "AirplaneModeStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAirplaneModeSettingUri:Landroid/net/Uri;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastActivationTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mLastActivationTime:J

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mAirplaneModeSettingUri:Landroid/net/Uri;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist calculateShortToggle(JZ)Z
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_e

    .line 96
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mLastActivationTime:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_d

    .line 97
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mLastActivationTime:J

    :cond_d
    return v0

    .line 102
    :cond_e
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mLastActivationTime:J

    sub-long/2addr p1, v3

    .line 103
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mLastActivationTime:J

    cmp-long p0, p1, v1

    if-lez p0, :cond_1f

    const-wide/16 v1, 0x2710

    cmp-long p0, p1, v1

    if-gez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method

.method private static blacklist getCarrierId()I
    .registers 2

    .line 113
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 115
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 116
    :goto_d
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    return v0

    :cond_18
    return v1
.end method

.method private blacklist isAirplaneModeOn()Z
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method private blacklist onAirplaneModeChanged(Z)V
    .registers 7

    .line 76
    sget-object v0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode change. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    cmp-long v3, v1, v3

    if-gez v3, :cond_21

    return-void

    .line 82
    :cond_21
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->calculateShortToggle(JZ)Z

    move-result p0

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->getCarrierId()I

    move-result v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airplane mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", short="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", carrierId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x137

    .line 87
    invoke-static {v0, p1, p0, v1}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IZZI)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 64
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->mAirplaneModeSettingUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->isAirplaneModeOn()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/AirplaneModeStats;->onAirplaneModeChanged(Z)V

    :cond_f
    return-void
.end method
