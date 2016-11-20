.class public abstract Lcom/android/location/provider/LocationProviderBase;
.super Ljava/lang/Object;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/LocationProviderBase$Service;
    }
.end annotation


# static fields
.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field protected final mLocationManager:Landroid/location/ILocationManager;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method static synthetic -get0(Lcom/android/location/provider/LocationProviderBase;)Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    iput-object p1, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    #@5
    .line 117
    const-string/jumbo v1, "location"

    #@8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 118
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mLocationManager:Landroid/location/ILocationManager;

    #@12
    .line 119
    invoke-virtual {p2}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->getProviderProperties()Lcom/android/internal/location/ProviderProperties;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@18
    .line 120
    new-instance v1, Lcom/android/location/provider/LocationProviderBase$Service;

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-direct {v1, p0, v2}, Lcom/android/location/provider/LocationProviderBase$Service;-><init>(Lcom/android/location/provider/LocationProviderBase;Lcom/android/location/provider/LocationProviderBase$Service;)V

    #@1e
    iput-object v1, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    #@20
    .line 115
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public abstract onDisable()V
.end method

.method public onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 171
    return-void
.end method

.method public abstract onEnable()V
.end method

.method public abstract onGetStatus(Landroid/os/Bundle;)I
.end method

.method public abstract onGetStatusUpdateTime()J
.end method

.method public onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
.end method

.method public final reportLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->mLocationManager:Landroid/location/ILocationManager;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-interface {v2, p1, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 134
    :goto_0
    return-void

    #@7
    .line 139
    :catch_0
    move-exception v1

    #@8
    .line 141
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v3, "Exception"

    #@d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0

    #@11
    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@12
    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/location/provider/LocationProviderBase;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v3, "RemoteException"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method
