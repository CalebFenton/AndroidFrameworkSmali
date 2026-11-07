.class public Landroid/frameworks/location/altitude/IAltitudeService$Default;
.super Ljava/lang/Object;
.source "IAltitudeService.java"

# interfaces
.implements Landroid/frameworks/location/altitude/IAltitudeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/location/altitude/IAltitudeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .registers 3
    .param p1, "request"    # Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .registers 3
    .param p1, "request"    # Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method
