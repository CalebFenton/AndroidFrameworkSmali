.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateOfPerceivedExertionGoal"
.end annotation


# instance fields
.field private final blacklist mRpe:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "rpe"    # I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 280
    if-ltz p1, :cond_d

    const/16 v0, 0xa

    if-gt p1, v0, :cond_d

    .line 284
    iput p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->mRpe:I

    .line 285
    return-void

    .line 281
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RPE value must be between 0 and 10, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 297
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 298
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;

    .line 299
    .local v1, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->getRpe()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->getRpe()I

    move-result v4

    if-ne v3, v4, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0
.end method

.method public whitelist getRpe()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->mRpe:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->mRpe:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
