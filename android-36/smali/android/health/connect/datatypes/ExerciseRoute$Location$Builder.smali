.class public final Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
.super Ljava/lang/Object;
.source "ExerciseRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseRoute$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAltitude:Landroid/health/connect/datatypes/units/Length;

.field private blacklist mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mLatitude:D

.field private final blacklist mLongitude:D

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method public constructor whitelist <init>(Ljava/time/Instant;DD)V
    .registers 6
    .param p1, "time"    # Ljava/time/Instant;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mTime:Ljava/time/Instant;

    .line 337
    iput-wide p2, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLatitude:D

    .line 338
    iput-wide p4, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLongitude:D

    .line 339
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ExerciseRoute$Location;
    .registers 12

    .line 384
    new-instance v0, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mTime:Ljava/time/Instant;

    iget-wide v2, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLatitude:D

    iget-wide v4, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLongitude:D

    iget-object v6, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    iget-object v7, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    iget-object v8, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/ExerciseRoute$Location;-><init>(Ljava/time/Instant;DDLandroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseRoute-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseRoute$Location;
    .registers 12

    .line 371
    new-instance v0, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mTime:Ljava/time/Instant;

    iget-wide v2, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLatitude:D

    iget-wide v4, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mLongitude:D

    iget-object v6, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    iget-object v7, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    iget-object v8, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/ExerciseRoute$Location;-><init>(Ljava/time/Instant;DDLandroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;Landroid/health/connect/datatypes/units/Length;ZLandroid/health/connect/datatypes/ExerciseRoute-IA;)V

    return-object v0
.end method

.method public whitelist setAltitude(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    .registers 2
    .param p1, "altitude"    # Landroid/health/connect/datatypes/units/Length;

    .line 360
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mAltitude:Landroid/health/connect/datatypes/units/Length;

    .line 362
    return-object p0
.end method

.method public whitelist setHorizontalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    .registers 2
    .param p1, "horizontalAccuracy"    # Landroid/health/connect/datatypes/units/Length;

    .line 344
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mHorizontalAccuracy:Landroid/health/connect/datatypes/units/Length;

    .line 346
    return-object p0
.end method

.method public whitelist setVerticalAccuracy(Landroid/health/connect/datatypes/units/Length;)Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;
    .registers 2
    .param p1, "verticalAccuracy"    # Landroid/health/connect/datatypes/units/Length;

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute$Location$Builder;->mVerticalAccuracy:Landroid/health/connect/datatypes/units/Length;

    .line 354
    return-object p0
.end method
