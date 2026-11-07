.class public final Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
.super Ljava/lang/Object;
.source "ExerciseRouteInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationInternal"
.end annotation


# instance fields
.field private blacklist mAltitude:D

.field private blacklist mHorizontalAccuracy:D

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mTime:J

.field private blacklist mVerticalAccuracy:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mTime:J

    .line 122
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLatitude:D

    .line 123
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLongitude:D

    .line 124
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mHorizontalAccuracy:D

    .line 125
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mVerticalAccuracy:D

    .line 126
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mAltitude:D

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 216
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;-><init>()V

    .line 217
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setTime(J)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setLatitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setLongitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setHorizontalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setVerticalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setAltitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 216
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 260
    :cond_4
    instance-of v1, p1, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 261
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 262
    .local v1, "that":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLatitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_56

    .line 263
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLongitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_56

    .line 264
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    .line 265
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_56

    .line 266
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_56

    .line 267
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_56

    goto :goto_57

    :cond_56
    move v0, v2

    .line 262
    :goto_57
    return v0
.end method

.method public blacklist getAltitude()D
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mAltitude:D

    return-wide v0
.end method

.method public blacklist getHorizontalAccuracy()D
    .registers 3

    .line 175
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mHorizontalAccuracy:D

    return-wide v0
.end method

.method public blacklist getLatitude()D
    .registers 3

    .line 161
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getTime()J
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mTime:J

    return-wide v0
.end method

.method public blacklist getVerticalAccuracy()D
    .registers 3

    .line 189
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mVerticalAccuracy:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 272
    nop

    .line 273
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 275
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 276
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 277
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 278
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 272
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setAltitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "altitude"    # D

    .line 209
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mAltitude:D

    .line 210
    return-object p0
.end method

.method public blacklist setHorizontalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "horizontalAccuracy"    # D

    .line 181
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mHorizontalAccuracy:D

    .line 182
    return-object p0
.end method

.method public blacklist setLatitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "latitude"    # D

    .line 167
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLatitude:D

    .line 168
    return-object p0
.end method

.method public blacklist setLongitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "longitude"    # D

    .line 153
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mLongitude:D

    .line 154
    return-object p0
.end method

.method public blacklist setTime(J)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "time"    # J

    .line 138
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mTime:J

    .line 139
    return-object p0
.end method

.method public blacklist setVerticalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 3
    .param p1, "verticalAccuracy"    # D

    .line 195
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->mVerticalAccuracy:D

    .line 196
    return-object p0
.end method

.method public blacklist toExternalExerciseRouteLocation()Landroid/health/connect/datatypes/ExerciseRoute$Location;
    .registers 7

    .line 239
    new-instance v0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 241
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLongitude()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;-><init>(Ljava/time/Instant;DD)V

    .line 243
    .local v0, "builder":Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2a

    .line 244
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setHorizontalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 247
    :cond_2a
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_3d

    .line 248
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setVerticalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 251
    :cond_3d
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_50

    .line 252
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->setAltitude(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;

    .line 254
    :cond_50
    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseRoute$Location;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 228
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 230
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 231
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getHorizontalAccuracy()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 232
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getVerticalAccuracy()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 233
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 234
    return-void
.end method
