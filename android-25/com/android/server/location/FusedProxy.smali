.class public final Lcom/android/server/location/FusedProxy;
.super Ljava/lang/Object;
.source "FusedProxy.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FusedProxy;)Lcom/android/server/location/FusedLocationHardwareSecure;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FusedProxy;Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 0
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FusedProxy;->bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const-string/jumbo v0, "FusedProxy"

    #@6
    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->TAG:Ljava/lang/String;

    #@8
    .line 54
    new-instance v0, Lcom/android/server/location/FusedLocationHardwareSecure;

    #@a
    .line 57
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@d
    .line 54
    invoke-direct {v0, p3, p1, v1}, Lcom/android/server/location/FusedLocationHardwareSecure;-><init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V

    #@10
    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    #@12
    .line 58
    new-instance v7, Lcom/android/server/location/FusedProxy$1;

    #@14
    invoke-direct {v7, p0}, Lcom/android/server/location/FusedProxy$1;-><init>(Lcom/android/server/location/FusedProxy;)V

    #@17
    .line 66
    .local v7, "newServiceWork":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/server/ServiceWatcher;

    #@19
    .line 68
    const-string/jumbo v2, "FusedProxy"

    #@1c
    .line 69
    const-string/jumbo v3, "com.android.location.service.FusedProvider"

    #@1f
    move-object v1, p1

    #@20
    move v4, p4

    #@21
    move v5, p5

    #@22
    move v6, p6

    #@23
    move-object v8, p2

    #@24
    .line 66
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    #@27
    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@29
    .line 53
    return-void
.end method

.method private bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 4
    .param p1, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;

    #@0
    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/location/IFusedProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedProvider;

    #@9
    move-result-object v1

    #@a
    .line 117
    .local v1, "provider":Landroid/location/IFusedProvider;
    if-nez v1, :cond_0

    #@c
    .line 118
    const-string/jumbo v2, "FusedProxy"

    #@f
    const-string/jumbo v3, "No instance of FusedProvider found on FusedLocationHardware connected."

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 119
    return-void

    #@16
    .line 123
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/location/IFusedProvider;->onFusedLocationHardwareChange(Landroid/hardware/location/IFusedLocationHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 114
    :goto_0
    return-void

    #@1a
    .line 124
    :catch_0
    move-exception v0

    #@1b
    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FusedProxy"

    #@1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "locationHardware"    # Landroid/hardware/location/IFusedLocationHardware;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNameResId"    # I

    #@0
    .prologue
    .line 93
    new-instance v0, Lcom/android/server/location/FusedProxy;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/FusedProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V

    #@b
    .line 102
    .local v0, "fusedProxy":Lcom/android/server/location/FusedProxy;
    iget-object v1, v0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@d
    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 103
    const/4 v1, 0x0

    #@14
    return-object v1

    #@15
    .line 106
    :cond_0
    return-object v0
.end method
