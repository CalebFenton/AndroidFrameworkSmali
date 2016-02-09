.class public Lcom/android/server/location/GeofenceState;
.super Ljava/lang/Object;
.source "GeofenceState.java"


# static fields
.field public static final FLAG_ENTER:I = 0x1

.field public static final FLAG_EXIT:I = 0x2

.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_UNKNOWN:I


# instance fields
.field public final mAllowedResolutionLevel:I

.field mDistanceToCenter:D

.field public final mExpireAt:J

.field public final mFence:Landroid/location/Geofence;

.field public final mIntent:Landroid/app/PendingIntent;

.field private final mLocation:Landroid/location/Location;

.field public final mPackageName:Ljava/lang/String;

.field mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "expireAt"    # J
    .param p4, "allowedResolutionLevel"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    #@6
    .line 49
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@b
    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@d
    .line 51
    iput-object p1, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@f
    .line 52
    iput-wide p2, p0, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    #@11
    .line 53
    iput p4, p0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    #@13
    .line 54
    iput p5, p0, Lcom/android/server/location/GeofenceState;->mUid:I

    #@15
    .line 55
    iput-object p6, p0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    #@17
    .line 56
    iput-object p7, p0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    #@19
    .line 58
    new-instance v0, Landroid/location/Location;

    #@1b
    const-string/jumbo v1, ""

    #@1e
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    #@23
    .line 59
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    #@25
    invoke-virtual {p1}, Landroid/location/Geofence;->getLatitude()D

    #@28
    move-result-wide v2

    #@29
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    #@2c
    .line 60
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    #@2e
    invoke-virtual {p1}, Landroid/location/Geofence;->getLongitude()D

    #@31
    move-result-wide v2

    #@32
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    #@35
    .line 47
    return-void
.end method


# virtual methods
.method public getDistanceToBoundary()D
    .locals 4

    #@0
    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@5
    .line 92
    iget-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 93
    return-wide v2

    #@e
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@10
    invoke-virtual {v0}, Landroid/location/Geofence;->getRadius()F

    #@13
    move-result v0

    #@14
    float-to-double v0, v0

    #@15
    iget-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@17
    sub-double/2addr v0, v2

    #@18
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    #@1b
    move-result-wide v0

    #@1c
    return-wide v0
.end method

.method public processLocation(Landroid/location/Location;)I
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 68
    iget-object v2, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    #@4
    invoke-virtual {v2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    #@7
    move-result v2

    #@8
    float-to-double v2, v2

    #@9
    iput-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@b
    .line 70
    iget v1, p0, Lcom/android/server/location/GeofenceState;->mState:I

    #@d
    .line 72
    .local v1, "prevState":I
    iget-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@f
    iget-object v4, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@11
    invoke-virtual {v4}, Landroid/location/Geofence;->getRadius()F

    #@14
    move-result v4

    #@15
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    #@18
    move-result v5

    #@19
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@1c
    move-result v4

    #@1d
    float-to-double v4, v4

    #@1e
    cmpg-double v2, v2, v4

    #@20
    if-gtz v2, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    .line 73
    .local v0, "inside":Z
    :goto_0
    if-eqz v0, :cond_1

    #@25
    .line 74
    iput v6, p0, Lcom/android/server/location/GeofenceState;->mState:I

    #@27
    .line 75
    if-eq v1, v6, :cond_2

    #@29
    .line 76
    return v6

    #@2a
    .line 72
    .end local v0    # "inside":Z
    :cond_0
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "inside":Z
    goto :goto_0

    #@2c
    .line 79
    :cond_1
    iput v7, p0, Lcom/android/server/location/GeofenceState;->mState:I

    #@2e
    .line 80
    if-ne v1, v6, :cond_2

    #@30
    .line 81
    return v7

    #@31
    .line 84
    :cond_2
    const/4 v2, 0x0

    #@32
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 102
    iget v1, p0, Lcom/android/server/location/GeofenceState;->mState:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 110
    const-string/jumbo v0, "?"

    #@8
    .line 112
    .local v0, "state":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "%s d=%.0f %s"

    #@b
    const/4 v2, 0x3

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    iget-object v3, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    #@10
    invoke-virtual {v3}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x0

    #@15
    aput-object v3, v2, v4

    #@17
    iget-wide v4, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    #@19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x1

    #@1e
    aput-object v3, v2, v4

    #@20
    const/4 v3, 0x2

    #@21
    aput-object v0, v2, v3

    #@23
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 104
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "IN"

    #@2b
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 107
    .end local v0    # "state":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "OUT"

    #@2f
    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    #@30
    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
