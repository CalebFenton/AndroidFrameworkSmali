.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerGoalInternal"
.end annotation


# static fields
.field public static final blacklist POWER_GOAL_TYPE_ID:I = 0x1


# instance fields
.field private final blacklist mMaxPower:Landroid/health/connect/datatypes/units/Power;

.field private final blacklist mMinPower:Landroid/health/connect/datatypes/units/Power;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Power;Landroid/health/connect/datatypes/units/Power;)V
    .registers 3
    .param p1, "minPower"    # Landroid/health/connect/datatypes/units/Power;
    .param p2, "maxPower"    # Landroid/health/connect/datatypes/units/Power;

    .line 176
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    .line 178
    iput-object p2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    .line 179
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 164
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Power;->fromWatts(D)Landroid/health/connect/datatypes/units/Power;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/health/connect/datatypes/units/Power;->fromWatts(D)Landroid/health/connect/datatypes/units/Power;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Power;Landroid/health/connect/datatypes/units/Power;)V

    .line 164
    return-object v0
.end method


# virtual methods
.method public blacklist getMaxPower()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public blacklist getMinPower()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 4

    .line 191
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    iget-object v2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;-><init>(Landroid/health/connect/datatypes/units/Power;Landroid/health/connect/datatypes/units/Power;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 159
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Power;->getInWatts()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Power;->getInWatts()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    return-void
.end method
