.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"


# instance fields
.field private volatile blacklist mCallEndElapsedRealtimeMillis:J

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

.field private final blacklist mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

.field private volatile blacklist mEmergencyExtensionMillis:J

.field private volatile blacklist mIsInEmergencyCall:Z

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyCallCallback(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    const-string v0, "GpsNetInitiatedHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emergencyCallCallback"    # Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;
    .param p3, "isSuplEsEnabled"    # Z

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 55
    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 95
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    .line 102
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallCallback:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallCallback;

    .line 105
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 106
    nop

    .line 107
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist getInEmergency()Z
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v0

    return v0
.end method

.method public blacklist getInEmergency(J)Z
    .registers 10
    .param p1, "emergencyExtensionMillis"    # J

    .line 139
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_17

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 143
    .local v0, "isInEmergencyExtension":Z
    :goto_18
    const/4 v3, 0x0

    .line 144
    .local v3, "isInEmergencyCallback":Z
    const/4 v4, 0x0

    .line 145
    .local v4, "isInEmergencySmsMode":Z
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 146
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_30

    const-string v6, "android.hardware.telephony.calling"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 147
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    .line 149
    :cond_30
    if-eqz v5, :cond_40

    const-string v6, "android.hardware.telephony.messaging"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 150
    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v4

    .line 152
    :cond_40
    iget-boolean v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    if-nez v6, :cond_4c

    if-nez v3, :cond_4c

    if-nez v0, :cond_4c

    if-eqz v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :cond_4c
    :goto_4c
    return v1
.end method

.method public blacklist setEmergencyExtensionSeconds(I)V
    .registers 5
    .param p1, "emergencyExtensionSeconds"    # I

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 158
    return-void
.end method
