.class public final Lcom/android/server/location/GeofenceProxy;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceProxy$1;,
        Lcom/android/server/location/GeofenceProxy$2;,
        Lcom/android/server/location/GeofenceProxy$3;
    }
.end annotation


# static fields
.field private static final GEOFENCE_GPS_HARDWARE_CONNECTED:I = 0x4

.field private static final GEOFENCE_GPS_HARDWARE_DISCONNECTED:I = 0x5

.field private static final GEOFENCE_HARDWARE_CONNECTED:I = 0x2

.field private static final GEOFENCE_HARDWARE_DISCONNECTED:I = 0x3

.field private static final GEOFENCE_PROVIDER_CONNECTED:I = 0x1

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeofenceProvider"

.field private static final TAG:Ljava/lang/String; = "GeofenceProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field private final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setFusedGeofenceLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProviderLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/location/GeofenceProxy;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->setGpsGeofenceLocked()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlaySwitchResId"    # I
    .param p3, "defaultServicePackageNameResId"    # I
    .param p4, "initialPackageNamesResId"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;
    .param p7, "fusedGeofenceHardware"    # Landroid/location/IFusedGeofenceHardware;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;

    #@a
    .line 58
    new-instance v1, Lcom/android/server/location/GeofenceProxy$1;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$1;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    #@f
    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mRunnable:Ljava/lang/Runnable;

    #@11
    .line 100
    new-instance v1, Lcom/android/server/location/GeofenceProxy$2;

    #@13
    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$2;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    #@16
    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    #@18
    .line 150
    new-instance v1, Lcom/android/server/location/GeofenceProxy$3;

    #@1a
    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceProxy$3;-><init>(Lcom/android/server/location/GeofenceProxy;)V

    #@1d
    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;

    #@1f
    .line 83
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    #@21
    .line 84
    new-instance v1, Lcom/android/server/ServiceWatcher;

    #@23
    const-string/jumbo v3, "GeofenceProxy"

    #@26
    const-string/jumbo v4, "com.android.location.service.GeofenceProvider"

    #@29
    .line 85
    iget-object v8, p0, Lcom/android/server/location/GeofenceProxy;->mRunnable:Ljava/lang/Runnable;

    #@2b
    move-object v2, p1

    #@2c
    move v5, p2

    #@2d
    move v6, p3

    #@2e
    move v7, p4

    #@2f
    move-object v9, p5

    #@30
    .line 84
    invoke-direct/range {v1 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    #@33
    iput-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@35
    .line 86
    move-object/from16 v0, p6

    #@37
    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    #@39
    .line 87
    move-object/from16 v0, p7

    #@3b
    iput-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

    #@3d
    .line 88
    invoke-direct {p0}, Lcom/android/server/location/GeofenceProxy;->bindHardwareGeofence()V

    #@40
    .line 82
    return-void
.end method

.method private bindGeofenceProvider()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private bindHardwareGeofence()V
    .locals 5

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    #@2
    new-instance v1, Landroid/content/Intent;

    #@4
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mContext:Landroid/content/Context;

    #@6
    const-class v3, Landroid/hardware/location/GeofenceHardwareService;

    #@8
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@b
    .line 97
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    #@d
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@f
    const/4 v4, 0x1

    #@10
    .line 96
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@13
    .line 95
    return-void
.end method

.method public static createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "gpsGeofence"    # Landroid/location/IGpsGeofenceHardware;
    .param p6, "fusedGeofenceHardware"    # Landroid/location/IFusedGeofenceHardware;

    #@0
    .prologue
    .line 69
    new-instance v0, Lcom/android/server/location/GeofenceProxy;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    move-object v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GeofenceProxy;-><init>(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)V

    #@c
    .line 72
    .local v0, "proxy":Lcom/android/server/location/GeofenceProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeofenceProxy;->bindGeofenceProvider()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 73
    return-object v0

    #@13
    .line 75
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method private setFusedGeofenceLocked()V
    .locals 3

    #@0
    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    #@2
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mFusedGeofenceHardware:Landroid/location/IFusedGeofenceHardware;

    #@4
    invoke-interface {v1, v2}, Landroid/hardware/location/IGeofenceHardware;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 140
    :goto_0
    return-void

    #@8
    .line 143
    :catch_0
    move-exception v0

    #@9
    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GeofenceProxy"

    #@c
    const-string/jumbo v2, "Error while connecting to GeofenceHardwareService"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_0
.end method

.method private setGeofenceHardwareInProviderLocked()V
    .locals 5

    #@0
    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v2

    #@6
    .line 120
    invoke-static {v2}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    #@9
    move-result-object v1

    #@a
    .line 122
    .local v1, "provider":Landroid/location/IGeofenceProvider;
    if-eqz v1, :cond_0

    #@c
    .line 123
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    #@e
    invoke-interface {v1, v2}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 118
    .end local v1    # "provider":Landroid/location/IGeofenceProvider;
    :cond_0
    :goto_0
    return-void

    #@12
    .line 125
    :catch_0
    move-exception v0

    #@13
    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GeofenceProxy"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Remote Exception: setGeofenceHardwareInProviderLocked: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_0
.end method

.method private setGpsGeofenceLocked()V
    .locals 3

    #@0
    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 133
    iget-object v1, p0, Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    #@6
    iget-object v2, p0, Lcom/android/server/location/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    #@8
    invoke-interface {v1, v2}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 130
    :cond_0
    :goto_0
    return-void

    #@c
    .line 135
    :catch_0
    move-exception v0

    #@d
    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GeofenceProxy"

    #@10
    const-string/jumbo v2, "Error while connecting to GeofenceHardwareService"

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method
