.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExpirationRealtimeMs:J

.field private final greylist-max-o mLatitude:D

.field private final greylist-max-o mLongitude:D

.field private final greylist-max-o mRadius:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(DDFJ)V
    .registers 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expirationRealtimeMs"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide v4, 0x4056800000000000L    # 90.0

    const-string v6, "latitude"

    const-wide v2, -0x3fa9800000000000L    # -90.0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 60
    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "latitude"

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 61
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid radius: %f"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    .line 64
    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    .line 65
    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    .line 66
    move-wide v4, p6

    iput-wide v4, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    .line 67
    return-void
.end method

.method public static blacklist createCircle(DDFJ)Landroid/location/Geofence;
    .registers 15
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # F
    .param p5, "expirationRealtimeMs"    # J

    .line 55
    new-instance v0, Landroid/location/Geofence;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    .end local p0    # "latitude":D
    .end local p2    # "longitude":D
    .end local p4    # "radius":F
    .end local p5    # "expirationRealtimeMs":J
    .local v1, "latitude":D
    .local v3, "longitude":D
    .local v5, "radius":F
    .local v6, "expirationRealtimeMs":J
    invoke-direct/range {v0 .. v7}, Landroid/location/Geofence;-><init>(DDFJ)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    instance-of v1, p1, Landroid/location/Geofence;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 129
    return v2

    .line 131
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/Geofence;

    .line 132
    .local v1, "geofence":Landroid/location/Geofence;
    iget-wide v3, v1, Landroid/location/Geofence;->mLatitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_34

    iget-wide v3, v1, Landroid/location/Geofence;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLongitude:D

    .line 133
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_34

    iget v3, v1, Landroid/location/Geofence;->mRadius:F

    iget v4, p0, Landroid/location/Geofence;->mRadius:F

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_34

    iget-wide v3, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    iget-wide v5, v1, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 132
    :goto_35
    return v0
.end method

.method public greylist-max-o getLatitude()D
    .registers 3

    .line 70
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public greylist-max-o getLongitude()D
    .registers 3

    .line 74
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public greylist-max-o getRadius()F
    .registers 2

    .line 78
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isExpired()Z
    .registers 3

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExpired(J)Z
    .registers 5
    .param p1, "referenceRealtimeMs"    # J

    .line 89
    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Geofence[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_54

    .line 149
    invoke-virtual {p0}, Landroid/location/Geofence;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 150
    const-string v1, " expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 152
    :cond_4a
    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 156
    :cond_54
    :goto_54
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 118
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 119
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 120
    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
