.class public abstract Lcom/android/location/provider/GeofenceProvider;
.super Ljava/lang/Object;
.source "GeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/GeofenceProvider$1;
    }
.end annotation


# instance fields
.field private mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

.field private mProvider:Landroid/location/IGeofenceProvider$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/location/provider/GeofenceProvider;)Landroid/hardware/location/GeofenceHardware;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/location/provider/GeofenceProvider;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/location/provider/GeofenceProvider;->mGeofenceHardware:Landroid/hardware/location/GeofenceHardware;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Lcom/android/location/provider/GeofenceProvider$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/location/provider/GeofenceProvider$1;-><init>(Lcom/android/location/provider/GeofenceProvider;)V

    #@8
    iput-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    #@a
    .line 35
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider;->mProvider:Landroid/location/IGeofenceProvider$Stub;

    #@2
    return-object v0
.end method

.method public abstract onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V
.end method
