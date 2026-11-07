.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistanceWithVariableRestGoalInternal"
.end annotation


# static fields
.field public static final blacklist DISTANCE_WITH_VARIABLE_REST_GOAL_TYPE_ID:I = 0x8


# instance fields
.field private final blacklist mDistance:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mDuration:Ljava/time/Duration;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Length;Ljava/time/Duration;)V
    .registers 3
    .param p1, "distance"    # Landroid/health/connect/datatypes/units/Length;
    .param p2, "duration"    # Ljava/time/Duration;

    .line 361
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 362
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    .line 363
    iput-object p2, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDuration:Ljava/time/Duration;

    .line 364
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 352
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;

    .line 353
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Length;Ljava/time/Duration;)V

    .line 352
    return-object v0
.end method


# virtual methods
.method public blacklist getDistance()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public blacklist getDuration()Ljava/time/Duration;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 384
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 4

    .line 379
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    iget-object v2, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDuration:Ljava/time/Duration;

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;-><init>(Landroid/health/connect/datatypes/units/Length;Ljava/time/Duration;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 344
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 345
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->mDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    return-void
.end method
