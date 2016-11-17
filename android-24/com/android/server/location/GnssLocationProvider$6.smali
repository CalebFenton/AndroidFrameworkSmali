.class Lcom/android/server/location/GnssLocationProvider$6;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    #@0
    .prologue
    .line 1301
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

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
    .line 1309
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GnssLocationProvider;->-wrap0(IDDDIIII)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1303
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap2()Z

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
    .line 1318
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap5(I)Z

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
    .line 1314
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap6(I)Z

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
    .line 1322
    invoke-static {p1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap7(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
