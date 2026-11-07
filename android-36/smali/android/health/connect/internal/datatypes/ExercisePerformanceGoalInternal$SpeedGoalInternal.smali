.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedGoalInternal"
.end annotation


# static fields
.field public static final blacklist SPEED_GOAL_TYPE_ID:I = 0x2


# instance fields
.field private final blacklist mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

.field private final blacklist mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Velocity;Landroid/health/connect/datatypes/units/Velocity;)V
    .registers 3
    .param p1, "minSpeed"    # Landroid/health/connect/datatypes/units/Velocity;
    .param p2, "maxSpeed"    # Landroid/health/connect/datatypes/units/Velocity;

    .line 218
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 219
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    .line 220
    iput-object p2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    .line 221
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 205
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;

    .line 206
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Velocity;->fromMetersPerSecond(D)Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/health/connect/datatypes/units/Velocity;->fromMetersPerSecond(D)Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Velocity;Landroid/health/connect/datatypes/units/Velocity;)V

    .line 205
    return-object v0
.end method


# virtual methods
.method public blacklist getMaxSpeed()Landroid/health/connect/datatypes/units/Velocity;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    return-object v0
.end method

.method public blacklist getMinSpeed()Landroid/health/connect/datatypes/units/Velocity;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 4

    .line 233
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    iget-object v2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;-><init>(Landroid/health/connect/datatypes/units/Velocity;Landroid/health/connect/datatypes/units/Velocity;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 200
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Velocity;->getInMetersPerSecond()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 201
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Velocity;->getInMetersPerSecond()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 202
    return-void
.end method
