.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StepsGoal"
.end annotation


# instance fields
.field private final blacklist mSteps:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "steps"    # I

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    .line 125
    iput p1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->mSteps:I

    .line 126
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 136
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 137
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;

    .line 138
    .local v1, "that":Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->getSteps()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->getSteps()I

    move-result v4

    if-ne v3, v4, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0
.end method

.method public whitelist getSteps()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->mSteps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->mSteps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
