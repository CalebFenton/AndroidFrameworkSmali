.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CadenceGoal"
.end annotation


# instance fields
.field private final blacklist mMaxRpm:D

.field private final blacklist mMinRpm:D


# direct methods
.method public constructor whitelist <init>(DD)V
    .registers 6
    .param p1, "minRpm"    # D
    .param p3, "maxRpm"    # D

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 148
    iput-wide p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMinRpm:D

    .line 149
    iput-wide p3, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMaxRpm:D

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 169
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;

    .line 171
    .local v1, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMinRpm()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMinRpm()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_26

    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMaxRpm()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMaxRpm()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public whitelist getMaxRpm()D
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMaxRpm:D

    return-wide v0
.end method

.method public whitelist getMinRpm()D
    .registers 3

    .line 156
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMinRpm:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 176
    iget-wide v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMinRpm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->mMaxRpm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
