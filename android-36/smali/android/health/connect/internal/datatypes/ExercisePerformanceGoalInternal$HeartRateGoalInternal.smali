.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeartRateGoalInternal"
.end annotation


# static fields
.field public static final blacklist HEART_RATE_GOAL_TYPE_ID:I = 0x4


# instance fields
.field private final blacklist mMaxBpm:I

.field private final blacklist mMinBpm:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "minBpm"    # I
    .param p2, "maxBpm"    # I

    .line 298
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 299
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMinBpm:I

    .line 300
    iput p2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMaxBpm:I

    .line 301
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 287
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public blacklist getMaxBpm()I
    .registers 2

    .line 308
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMaxBpm:I

    return v0
.end method

.method public blacklist getMinBpm()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMinBpm:I

    return v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 292
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 4

    .line 313
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;

    iget v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMinBpm:I

    iget v2, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMaxBpm:I

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;-><init>(II)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 282
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMinBpm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->mMaxBpm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return-void
.end method
