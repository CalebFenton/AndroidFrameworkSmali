.class Lcom/android/server/location/FlpHardwareProvider$2;
.super Landroid/location/IFusedGeofenceHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IFusedGeofenceHardware$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 1
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap6(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    #@5
    .line 437
    return-void
.end method

.method public isSupported()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public modifyGeofenceOptions(IIIIII)V
    .locals 7
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/FlpHardwareProvider;->-wrap11(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V

    #@b
    .line 462
    return-void
.end method

.method public pauseMonitoringGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap12(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 447
    return-void
.end method

.method public removeGeofences([I)V
    .locals 1
    .param p1, "geofenceIds"    # [I

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap13(Lcom/android/server/location/FlpHardwareProvider;[I)V

    #@5
    .line 442
    return-void
.end method

.method public resumeMonitoringGeofence(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap15(Lcom/android/server/location/FlpHardwareProvider;II)V

    #@5
    .line 452
    return-void
.end method
