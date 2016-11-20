.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mSourceTechnologies:I

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x4

    #@4
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    #@6
    .line 36
    const/16 v0, 0x7530

    #@8
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    #@a
    .line 37
    const/4 v0, 0x7

    #@b
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    #@d
    .line 39
    const/16 v0, 0x1388

    #@f
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    #@11
    .line 40
    const/4 v0, 0x1

    #@12
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    #@14
    .line 29
    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # D

    #@0
    .prologue
    .line 58
    new-instance v1, Landroid/hardware/location/GeofenceHardwareRequest;

    #@2
    invoke-direct {v1}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    #@5
    .local v1, "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    move-wide v2, p0

    #@6
    move-wide v4, p2

    #@7
    move-wide v6, p4

    #@8
    .line 59
    invoke-direct/range {v1 .. v7}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    #@b
    .line 60
    return-object v1
.end method

.method private setCircularGeofence(DDD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D

    #@0
    .prologue
    .line 43
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    #@2
    .line 44
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    #@4
    .line 45
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    #@6
    .line 46
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    #@9
    .line 42
    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    #@2
    return v0
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 135
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    #@2
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 142
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    #@2
    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    #@2
    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    #@2
    return v0
.end method

.method public getRadius()D
    .locals 2

    #@0
    .prologue
    .line 149
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    #@2
    return-wide v0
.end method

.method public getSourceTechnologies()I
    .locals 1

    #@0
    .prologue
    .line 184
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    #@2
    return v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 188
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    #@2
    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    #@2
    return v0
.end method

.method public setLastTransition(I)V
    .locals 0
    .param p1, "lastTransition"    # I

    #@0
    .prologue
    .line 71
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    #@2
    .line 70
    return-void
.end method

.method public setMonitorTransitions(I)V
    .locals 0
    .param p1, "monitorTransitions"    # I

    #@0
    .prologue
    .line 92
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    #@2
    .line 91
    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .locals 0
    .param p1, "notificationResponsiveness"    # I

    #@0
    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    #@2
    .line 105
    return-void
.end method

.method public setSourceTechnologies(I)V
    .locals 3
    .param p1, "sourceTechnologies"    # I

    #@0
    .prologue
    .line 123
    and-int/lit8 v0, p1, 0x1f

    #@2
    .line 124
    .local v0, "sanitizedSourceTechnologies":I
    if-nez v0, :cond_0

    #@4
    .line 125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "At least one valid source technology must be set."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 128
    :cond_0
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    #@f
    .line 116
    return-void
.end method

.method public setUnknownTimer(I)V
    .locals 0
    .param p1, "unknownTimer"    # I

    #@0
    .prologue
    .line 82
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    #@2
    .line 81
    return-void
.end method
