.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$ListenerTransport;,
        Landroid/location/LocationManager$GpsStatusListenerTransport;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

.field private final mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 68
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    #@a
    .line 71
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 70
    iput-object v0, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    #@11
    .line 72
    new-instance v0, Landroid/location/GpsStatus;

    #@13
    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    #@16
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    #@18
    .line 212
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    .line 211
    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@1f
    .line 316
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@21
    .line 317
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@23
    .line 318
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport;

    #@25
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@27
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@29
    invoke-direct {v0, v1, v2}, Landroid/location/GpsMeasurementListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    #@2c
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    #@2e
    .line 320
    new-instance v0, Landroid/location/GpsNavigationMessageListenerTransport;

    #@30
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@32
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@34
    invoke-direct {v0, v1, v2}, Landroid/location/GpsNavigationMessageListenerTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    #@37
    .line 319
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    #@39
    .line 315
    return-void
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;

    #@0
    .prologue
    .line 1709
    if-nez p0, :cond_0

    #@2
    .line 1710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid criteria: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1708
    :cond_0
    return-void
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .locals 3
    .param p0, "fence"    # Landroid/location/Geofence;

    #@0
    .prologue
    .line 1736
    if-nez p0, :cond_0

    #@2
    .line 1737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid geofence: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1735
    :cond_0
    return-void
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p0, "listener"    # Landroid/location/LocationListener;

    #@0
    .prologue
    .line 1715
    if-nez p0, :cond_0

    #@2
    .line 1716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid listener: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1714
    :cond_0
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1721
    if-nez p1, :cond_0

    #@2
    .line 1722
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "invalid pending intent: "

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
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1724
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_2

    #@22
    .line 1725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    .line 1726
    const-string/jumbo v1, "pending intent must be targeted to package"

    #@27
    .line 1725
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1727
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v1

    #@30
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    const/16 v2, 0x10

    #@34
    if-le v1, v2, :cond_1

    #@36
    .line 1728
    throw v0

    #@37
    .line 1730
    :cond_1
    const-string/jumbo v1, "LocationManager"

    #@3a
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 1720
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1703
    if-nez p0, :cond_0

    #@2
    .line 1704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid provider: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1702
    :cond_0
    return-void
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    #@0
    .prologue
    .line 324
    new-instance v0, Landroid/location/LocationProvider;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    #@5
    return-object v0
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 874
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 877
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    #@9
    move-result-object v2

    #@a
    .line 880
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@c
    invoke-interface {v3, p1, v2, p4, v1}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 872
    :goto_0
    return-void

    #@10
    .line 881
    :catch_0
    move-exception v0

    #@11
    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@14
    const-string/jumbo v4, "RemoteException"

    #@17
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 860
    if-nez p1, :cond_0

    #@3
    return-object v1

    #@4
    .line 861
    :cond_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@6
    monitor-enter v2

    #@7
    .line 862
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/location/LocationManager$ListenerTransport;

    #@f
    .line 863
    .local v0, "transport":Landroid/location/LocationManager$ListenerTransport;
    if-nez v0, :cond_1

    #@11
    .line 864
    new-instance v0, Landroid/location/LocationManager$ListenerTransport;

    #@13
    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    #@16
    .line 866
    .restart local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_1
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 867
    return-object v0

    #@1d
    .line 861
    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "fence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1031
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1032
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    #@6
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@8
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1030
    :goto_0
    return-void

    #@12
    .line 1036
    :catch_0
    move-exception v0

    #@13
    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@16
    const-string/jumbo v2, "RemoteException"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method public addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    #@0
    .prologue
    .line 1607
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    #@0
    .prologue
    .line 1632
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    #@0
    .prologue
    .line 1516
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1518
    const/4 v3, 0x1

    #@9
    return v3

    #@a
    .line 1521
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@c
    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    #@f
    .line 1522
    .local v2, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@11
    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    .line 1523
    .local v1, "result":Z
    if-eqz v1, :cond_1

    #@1d
    .line 1524
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1531
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_1
    :goto_0
    return v1

    #@23
    .line 1526
    :catch_0
    move-exception v0

    #@24
    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@27
    const-string/jumbo v4, "RemoteException in registerGpsStatusListener: "

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 1528
    const/4 v1, 0x0

    #@2e
    .local v1, "result":Z
    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    #@0
    .prologue
    .line 1563
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 1565
    const/4 v3, 0x1

    #@9
    return v3

    #@a
    .line 1568
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@c
    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    #@f
    .line 1569
    .local v2, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@11
    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    .line 1570
    .local v1, "result":Z
    if-eqz v1, :cond_1

    #@1d
    .line 1571
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1578
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_1
    :goto_0
    return v1

    #@23
    .line 1573
    :catch_0
    move-exception v0

    #@24
    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@27
    const-string/jumbo v4, "RemoteException in registerGpsStatusListener: "

    #@2a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    .line 1575
    const/4 v1, 0x0

    #@2e
    .local v1, "result":Z
    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 981
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 982
    const-wide/16 v4, 0x0

    #@5
    cmp-long v3, p6, v4

    #@7
    if-gez v3, :cond_0

    #@9
    const-wide p6, 0x7fffffffffffffffL

    #@e
    .line 984
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    #@11
    move-result-object v1

    #@12
    .line 985
    .local v1, "fence":Landroid/location/Geofence;
    new-instance v3, Landroid/location/LocationRequest;

    #@14
    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    #@17
    invoke-virtual {v3, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    #@1a
    move-result-object v2

    #@1b
    .line 987
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@1d
    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-interface {v3, v2, v1, p8, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 980
    :goto_0
    return-void

    #@27
    .line 988
    :catch_0
    move-exception v0

    #@28
    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@2b
    const-string/jumbo v4, "RemoteException"

    #@2e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerRequirement"    # I
    .param p10, "accuracy"    # I

    #@0
    .prologue
    .line 1224
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move v3, p4

    #@5
    move/from16 v4, p5

    #@7
    move/from16 v5, p6

    #@9
    move/from16 v6, p7

    #@b
    move/from16 v7, p8

    #@d
    move/from16 v8, p9

    #@f
    move/from16 v9, p10

    #@11
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@14
    .line 1227
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    const-string/jumbo v1, "[^a-zA-Z0-9]"

    #@17
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 1228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "provider name contains illegal character: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 1232
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@39
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@3b
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {v1, p1, v0, v2}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 1223
    :goto_0
    return-void

    #@43
    .line 1233
    :catch_0
    move-exception v10

    #@44
    .line 1234
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@47
    const-string/jumbo v2, "RemoteException"

    #@4a
    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1341
    :goto_0
    return-void

    #@c
    .line 1344
    :catch_0
    move-exception v0

    #@d
    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@10
    const-string/jumbo v2, "RemoteException"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1305
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1303
    :goto_0
    return-void

    #@c
    .line 1306
    :catch_0
    move-exception v0

    #@d
    .line 1307
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@10
    const-string/jumbo v2, "RemoteException"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1384
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1382
    :goto_0
    return-void

    #@c
    .line 1385
    :catch_0
    move-exception v0

    #@d
    .line 1386
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@10
    const-string/jumbo v2, "RemoteException"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 337
    :catch_0
    move-exception v0

    #@8
    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@b
    const-string/jumbo v2, "RemoteException"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 340
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    #@0
    .prologue
    .line 427
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@3
    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@5
    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 430
    :catch_0
    move-exception v0

    #@b
    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@e
    const-string/jumbo v2, "RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 433
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1
    .param p1, "status"    # Landroid/location/GpsStatus;

    #@0
    .prologue
    .line 1660
    if-nez p1, :cond_0

    #@2
    .line 1661
    new-instance p1, Landroid/location/GpsStatus;

    #@4
    .end local p1    # "status":Landroid/location/GpsStatus;
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    #@7
    .line 1663
    .restart local p1    # "status":Landroid/location/GpsStatus;
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    #@9
    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    #@c
    .line 1664
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1194
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@3
    .line 1195
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1197
    .local v1, "packageName":Ljava/lang/String;
    const-wide/16 v4, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v6, 0x1

    #@d
    .line 1196
    invoke-static {p1, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@10
    move-result-object v2

    #@11
    .line 1200
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@13
    invoke-interface {v3, v2, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 1201
    :catch_0
    move-exception v0

    #@19
    .line 1202
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@1c
    const-string/jumbo v4, "RemoteException"

    #@1f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 1203
    const/4 v3, 0x0

    #@23
    return-object v3
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1165
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1168
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v2, v3, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 1169
    :catch_0
    move-exception v0

    #@10
    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@13
    const-string/jumbo v3, "RemoteException"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 1171
    return-object v4
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 371
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@4
    .line 373
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@6
    invoke-interface {v2, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    #@9
    move-result-object v1

    #@a
    .line 374
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v1, :cond_0

    #@c
    .line 375
    return-object v4

    #@d
    .line 377
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 378
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catch_0
    move-exception v0

    #@13
    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@16
    const-string/jumbo v3, "RemoteException"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 381
    return-object v4
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@3
    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@5
    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 398
    :catch_0
    move-exception v0

    #@b
    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@e
    const-string/jumbo v2, "RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 401
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-interface {v1, v2, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 353
    :catch_0
    move-exception v0

    #@a
    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@d
    const-string/jumbo v2, "RemoteException"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 356
    return-object v3
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1140
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@3
    .line 1143
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@5
    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 1144
    :catch_0
    move-exception v0

    #@b
    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@e
    const-string/jumbo v2, "RemoteException"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1146
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1108
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1109
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1112
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1107
    :goto_0
    return-void

    #@10
    .line 1113
    :catch_0
    move-exception v0

    #@11
    .line 1114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@14
    const-string/jumbo v3, "RemoteException"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1085
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1086
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    #@6
    .line 1087
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 1090
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@e
    invoke-interface {v2, p1, p2, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1084
    :goto_0
    return-void

    #@12
    .line 1091
    :catch_0
    move-exception v0

    #@13
    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@16
    const-string/jumbo v3, "RemoteException"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method public removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;

    #@0
    .prologue
    .line 1619
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsMeasurementListenerTransport:Landroid/location/GpsMeasurementListenerTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GpsMeasurementListenerTransport;->remove(Ljava/lang/Object;)V

    #@5
    .line 1618
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;

    #@0
    .prologue
    .line 1645
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNavigationMessageListenerTransport:Landroid/location/GpsNavigationMessageListenerTransport;

    #@2
    invoke-virtual {v0, p1}, Landroid/location/GpsNavigationMessageListenerTransport;->remove(Ljava/lang/Object;)V

    #@5
    .line 1644
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;

    #@0
    .prologue
    .line 1541
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@8
    .line 1542
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    #@a
    .line 1543
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@c
    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1539
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1545
    :catch_0
    move-exception v0

    #@11
    .line 1546
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@14
    const-string/jumbo v3, "RemoteException in unregisterGpsStatusListener: "

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    #@0
    .prologue
    .line 1588
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    #@8
    .line 1589
    .local v1, "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    #@a
    .line 1590
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@c
    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1586
    .end local v1    # "transport":Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1592
    :catch_0
    move-exception v0

    #@11
    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@14
    const-string/jumbo v3, "RemoteException in unregisterGpsStatusListener: "

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1058
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 1059
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1062
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1057
    :goto_0
    return-void

    #@10
    .line 1063
    :catch_0
    move-exception v0

    #@11
    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@14
    const-string/jumbo v3, "RemoteException"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1250
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1248
    :goto_0
    return-void

    #@c
    .line 1251
    :catch_0
    move-exception v0

    #@d
    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@10
    const-string/jumbo v2, "RemoteException"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 921
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@3
    .line 922
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 925
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 920
    :goto_0
    return-void

    #@10
    .line 926
    :catch_0
    move-exception v0

    #@11
    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@14
    const-string/jumbo v3, "RemoteException"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/LocationListener;

    #@0
    .prologue
    .line 896
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@3
    .line 897
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 900
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@b
    monitor-enter v4

    #@c
    .line 901
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    #@e
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/location/LocationManager$ListenerTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v4

    #@15
    .line 903
    if-nez v2, :cond_0

    #@17
    return-void

    #@18
    .line 900
    .end local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    #@19
    monitor-exit v4

    #@1a
    throw v3

    #@1b
    .line 906
    .restart local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-interface {v3, v2, v4, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    .line 895
    :goto_0
    return-void

    #@22
    .line 907
    :catch_0
    move-exception v0

    #@23
    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationManager"

    #@26
    const-string/jumbo v4, "RemoteException"

    #@29
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 654
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@4
    .line 655
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@7
    .line 658
    const/4 v1, 0x0

    #@8
    .line 657
    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    #@b
    move-result-object v0

    #@c
    .line 659
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@f
    .line 653
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 524
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@3
    .line 525
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@6
    .line 528
    const/4 v1, 0x0

    #@7
    .line 527
    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    #@a
    move-result-object v0

    #@b
    .line 529
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@f
    .line 523
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 855
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@4
    .line 856
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@7
    .line 854
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 828
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@3
    .line 829
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@7
    .line 827
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 552
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@4
    .line 553
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@7
    .line 556
    const/4 v1, 0x0

    #@8
    .line 555
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@b
    move-result-object v0

    #@c
    .line 557
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@f
    .line 551
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 459
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@4
    .line 460
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@7
    .line 463
    const/4 v1, 0x0

    #@8
    .line 462
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@b
    move-result-object v0

    #@c
    .line 464
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, p5, v2, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@f
    .line 458
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 491
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@3
    .line 492
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@6
    .line 495
    const/4 v1, 0x0

    #@7
    .line 494
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@a
    move-result-object v0

    #@b
    .line 496
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@f
    .line 490
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 760
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@4
    .line 761
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@7
    .line 764
    const-wide/16 v2, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v4, 0x1

    #@b
    .line 763
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    #@e
    move-result-object v0

    #@f
    .line 765
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@12
    .line 759
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 713
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    #@3
    .line 714
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@6
    .line 717
    const-wide/16 v2, 0x0

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v4, 0x1

    #@a
    .line 716
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    #@d
    move-result-object v0

    #@e
    .line 718
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@12
    .line 712
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 736
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@4
    .line 737
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    #@7
    .line 740
    const-wide/16 v2, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v4, 0x1

    #@b
    .line 739
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@e
    move-result-object v0

    #@f
    .line 741
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@12
    .line 735
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 683
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    #@3
    .line 684
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    #@6
    .line 687
    const-wide/16 v2, 0x0

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v4, 0x1

    #@a
    .line 686
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    #@d
    move-result-object v0

    #@e
    .line 688
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    #@12
    .line 682
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1680
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1681
    :catch_0
    move-exception v0

    #@8
    .line 1682
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@b
    const-string/jumbo v2, "RemoteException in sendExtraCommand: "

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1683
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    #@0
    .prologue
    .line 1695
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1696
    :catch_0
    move-exception v0

    #@8
    .line 1697
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@b
    const-string/jumbo v2, "RemoteException in sendNiResponse: "

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1698
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1325
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1323
    :goto_0
    return-void

    #@c
    .line 1326
    :catch_0
    move-exception v0

    #@d
    .line 1327
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LocationManager"

    #@10
    const-string/jumbo v2, "RemoteException"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;

    #@0
    .prologue
    .line 1273
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Incomplete location object, missing timestamp or accuracy? "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1274
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    .line 1276
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@24
    move-result-object v2

    #@25
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@27
    const/16 v3, 0x10

    #@29
    if-gt v2, v3, :cond_1

    #@2b
    .line 1278
    const-string/jumbo v2, "LocationManager"

    #@2e
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 1279
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    #@34
    .line 1287
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@36
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@38
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-interface {v2, p1, p2, v3}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 1272
    :goto_0
    return-void

    #@40
    .line 1282
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    throw v1

    #@41
    .line 1288
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    #@42
    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LocationManager"

    #@45
    const-string/jumbo v3, "RemoteException"

    #@48
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4b
    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J

    #@0
    .prologue
    .line 1365
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    #@2
    .line 1366
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-wide v4, p4

    #@c
    .line 1365
    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1363
    :goto_0
    return-void

    #@10
    .line 1367
    :catch_0
    move-exception v7

    #@11
    .line 1368
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "LocationManager"

    #@14
    const-string/jumbo v1, "RemoteException"

    #@17
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method
