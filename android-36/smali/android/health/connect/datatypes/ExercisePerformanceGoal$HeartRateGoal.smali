.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeartRateGoal"
.end annotation


# instance fields
.field private final blacklist mMaxBpm:I

.field private final blacklist mMinBpm:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "minBpm"    # I
    .param p2, "maxBpm"    # I

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 194
    iput p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMinBpm:I

    .line 195
    iput p2, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMaxBpm:I

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 215
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 216
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;

    .line 217
    .local v1, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMinBpm()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMinBpm()I

    move-result v4

    if-ne v3, v4, :cond_22

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMaxBpm()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMaxBpm()I

    move-result v4

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getMaxBpm()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMaxBpm:I

    return v0
.end method

.method public whitelist getMinBpm()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMinBpm:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 222
    iget v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMinBpm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->mMaxBpm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
