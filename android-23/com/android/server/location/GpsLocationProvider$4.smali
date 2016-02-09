.class Lcom/android/server/location/GpsLocationProvider$4;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;

    #@0
    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    #@0
    .prologue
    .line 1212
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GpsLocationProvider;->-wrap0(IDDDIIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1206
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-wrap2()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    #@0
    .prologue
    .line 1221
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->-wrap5(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .locals 1
    .param p1, "geofenceId"    # I

    #@0
    .prologue
    .line 1217
    invoke-static {p1}, Lcom/android/server/location/GpsLocationProvider;->-wrap6(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransition"    # I

    #@0
    .prologue
    .line 1225
    invoke-static {p1, p2}, Lcom/android/server/location/GpsLocationProvider;->-wrap7(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
