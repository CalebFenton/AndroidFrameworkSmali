.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistanceWithVariableRestGoal"
.end annotation


# instance fields
.field private final blacklist mDistance:Landroid/health/connect/datatypes/units/Length;

.field private final blacklist mDuration:Ljava/time/Duration;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Length;Ljava/time/Duration;)V
    .registers 4
    .param p1, "distance"    # Landroid/health/connect/datatypes/units/Length;
    .param p2, "duration"    # Ljava/time/Duration;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    .line 86
    iput-object p2, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDuration:Ljava/time/Duration;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 104
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 105
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;

    .line 106
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Length;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 107
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDuration()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDuration()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 106
    :goto_2b
    return v0
.end method

.method public whitelist getDistance()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public whitelist getDuration()Ljava/time/Duration;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->mDuration:Ljava/time/Duration;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
