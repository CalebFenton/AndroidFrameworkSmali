.class public Lcom/android/server/location/PassiveProvider;
.super Ljava/lang/Object;
.source "PassiveProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final TAG:Ljava/lang/String; = "PassiveProvider"


# instance fields
.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    #@3
    .line 48
    const/4 v8, 0x1

    #@4
    const/4 v9, 0x2

    #@5
    move v2, v1

    #@6
    move v3, v1

    #@7
    move v4, v1

    #@8
    move v5, v1

    #@9
    move v6, v1

    #@a
    move v7, v1

    #@b
    .line 46
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@e
    sput-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@10
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationManager;)V
    .locals 0
    .param p1, "locationManager"    # Landroid/location/ILocationManager;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    #@5
    .line 53
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    #@0
    .prologue
    .line 77
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mReportLocation="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 116
    return-void
.end method

.method public enable()V
    .locals 0

    #@0
    .prologue
    .line 73
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "passive"

    #@3
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 64
    sget-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    const/4 v0, 0x2

    #@5
    return v0

    #@6
    .line 85
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 91
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 96
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@2
    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    #@4
    .line 95
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 99
    :cond_0
    :goto_0
    return-void

    #@b
    .line 104
    :catch_0
    move-exception v0

    #@c
    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PassiveProvider"

    #@f
    const-string/jumbo v2, "RemoteException calling reportLocation"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    goto :goto_0
.end method
