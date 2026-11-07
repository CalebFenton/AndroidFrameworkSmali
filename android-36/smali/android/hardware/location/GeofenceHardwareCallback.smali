.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGeofenceAdd(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 56
    return-void
.end method

.method public whitelist onGeofencePause(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 78
    return-void
.end method

.method public whitelist onGeofenceRemove(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 67
    return-void
.end method

.method public whitelist onGeofenceResume(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 90
    return-void
.end method

.method public whitelist onGeofenceTransition(IILandroid/location/Location;JI)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .line 43
    return-void
.end method
