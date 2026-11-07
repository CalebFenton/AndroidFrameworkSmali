.class public final Landroid/health/connect/datatypes/ExerciseRoute$Location;
.super Ljava/lang/Object;
.source "ExerciseRoute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/ExerciseRoute$Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_LATITUDE:D = 90.0

.field private static final blacklist MAX_LONGITUDE:D = 180.0

.field private static final blacklist MIN_LATITUDE:D = -90.0

.field private static final blacklist MIN_LONGITUDE:D = -180.0


# instance fields
.field private final blacklist mAltitude:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mLatitude:D

.field private final blacklist mLongitude:D

.field private final blacklist mTime:Ljava/time/Instant;

.field private final blacklist mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/health/connect/datatypes/ExerciseRoute$Location$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/ExerciseRoute$Location$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/time/Instant;DDLandroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Z)V
    .registers 19
    .param p1, "time"    # Ljava/time/Instant;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "horizontalAccuracy"    # Landroid/health/connect/datatypes/units/Length;
    .param p7, "verticalAccuracy"    # Landroid/health/connect/datatypes/units/Length;
    .param p8, "altitude"    # Landroid/health/connect/datatypes/units/Length;
    .param p9, "skipValidation"    # Z

    .line 175
    move-object v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    if-nez p9, :cond_4d

    .line 179
    const-wide v6, 0x4056800000000000L    # 90.0

    const-string v8, "Latitude"

    const-wide v4, -0x3fa9800000000000L    # -90.0

    move-wide v2, p2

    invoke-static/range {v2 .. v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 180
    const-wide v6, 0x4066800000000000L    # 180.0

    const-string v8, "Longitude"

    const-wide v4, -0x3f99800000000000L    # -180.0

    move-wide v2, p4

    invoke-static/range {v2 .. v8}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 183
    if-eqz v0, :cond_37

    .line 184
    nop

    .line 185
    invoke-virtual {p6}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v2

    .line 184
    const-string v4, "Horizontal accuracy"

    invoke-static {v2, v3, v4}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireNonNegative(DLjava/lang/String;)V

    .line 188
    :cond_37
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4d

    .line 189
    nop

    .line 190
    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v2

    .line 189
    const-string v4, "Vertical accuracy"

    invoke-static {v2, v3, v4}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireNonNegative(DLjava/lang/String;)V

    .line 194
    :cond_4d
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mTime:Ljava/time/Instant;

    .line 195
    iput-wide p2, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLatitude:D

    .line 196
    iput-wide p4, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLongitude:D

    .line 197
    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    .line 198
    iput-object v1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    .line 199
    move-object/from16 v7, p8

    iput-object v7, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    .line 200
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/Instant;DDLandroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseRoute-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/health/connect/datatypes/ExerciseRoute$Location;-><init>(Ljava/time/Instant;DDLandroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 270
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 271
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 272
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    .line 273
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseRoute$Location;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getAltitude()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getAltitude()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 274
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 275
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLatitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_5e

    .line 276
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLongitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_5e

    .line 277
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 278
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v2

    .line 273
    :goto_5f
    return v0
.end method

.method public whitelist getAltitude()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 217
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLatitude:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 211
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLongitude:D

    return-wide v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 283
    nop

    .line 284
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getTime()Ljava/time/Instant;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    .line 289
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getAltitude()Landroid/health/connect/datatypes/units/Length;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 283
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toExerciseRouteLocationInternal()Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    .registers 4

    .line 248
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;-><init>()V

    .line 250
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setTime(J)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setLatitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setLongitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v0

    .line 254
    .local v0, "locationInternal":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 255
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getHorizontalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setHorizontalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 258
    :cond_32
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 259
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getVerticalAccuracy()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setVerticalAccuracy(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 262
    :cond_43
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getAltitude()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 263
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->getAltitude()Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->setAltitude(D)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 265
    :cond_54
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 301
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 302
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    if-eqz v0, :cond_2c

    .line 304
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 306
    :cond_2c
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    if-eqz v0, :cond_43

    .line 308
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 310
    :cond_43
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    if-eqz v0, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 311
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    if-eqz v0, :cond_59

    .line 312
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 314
    :cond_59
    return-void
.end method
