.class public final Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
.super Ljava/lang/Object;
.source "PlannedExerciseStepInternal.java"


# instance fields
.field private blacklist mCompletionGoal:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mExerciseCategory:I

.field private blacklist mExerciseType:I

.field private blacklist mPerformanceGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(IILandroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;)V
    .registers 5
    .param p1, "exerciseType"    # I
    .param p2, "exerciseCategory"    # I
    .param p3, "completionGoal"    # Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mPerformanceGoals:Ljava/util/List;

    .line 42
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseType:I

    .line 43
    iput p2, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseCategory:I

    .line 44
    iput-object p3, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mCompletionGoal:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    .line 45
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 8
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_31

    .line 121
    new-instance v3, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;-><init>(IILandroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;)V

    .line 126
    .local v3, "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->setDescription(Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;->readFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->setPerformanceGoals(Ljava/util/List;)V

    .line 128
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v3    # "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 130
    .end local v2    # "i":I
    :cond_31
    return-object v0
.end method

.method public static blacklist writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 106
    .local p0, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;

    .line 108
    .local v1, "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->getExerciseType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->getExerciseCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->getCompletionGoal()Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 111
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->getPerformanceGoals()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;->writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 113
    .end local v1    # "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    goto :goto_b

    .line 114
    :cond_3b
    return-void
.end method


# virtual methods
.method public blacklist getCompletionGoal()Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mCompletionGoal:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExerciseCategory()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseCategory:I

    return v0
.end method

.method public blacklist getExerciseType()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseType:I

    return v0
.end method

.method public blacklist getPerformanceGoals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mPerformanceGoals:Ljava/util/List;

    return-object v0
.end method

.method public blacklist setCompletionGoal(Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;)V
    .registers 2
    .param p1, "completionGoal"    # Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    .line 65
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mCompletionGoal:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    .line 66
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mDescription:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public blacklist setExerciseCategory(I)V
    .registers 2
    .param p1, "exerciseCategory"    # I

    .line 57
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseCategory:I

    .line 58
    return-void
.end method

.method public blacklist setExerciseType(I)V
    .registers 2
    .param p1, "exerciseType"    # I

    .line 53
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseType:I

    .line 54
    return-void
.end method

.method public blacklist setPerformanceGoals(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "performanceGoals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mPerformanceGoals:Ljava/util/List;

    .line 70
    return-void
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/PlannedExerciseStep;
    .registers 5

    .line 92
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;

    iget v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseType:I

    iget v2, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mExerciseCategory:I

    iget-object v3, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mCompletionGoal:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    .line 94
    invoke-virtual {v3}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;-><init>(IILandroid/health/connect/datatypes/ExerciseCompletionGoal;)V

    .line 95
    .local v0, "builder":Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 96
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;

    .line 98
    :cond_18
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;

    .line 99
    .local v2, "goal":Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;->toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->addPerformanceGoal(Landroid/health/connect/datatypes/ExercisePerformanceGoal;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;

    .line 100
    .end local v2    # "goal":Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
    goto :goto_1e

    .line 101
    :cond_32
    invoke-virtual {v0}, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->build()Landroid/health/connect/datatypes/PlannedExerciseStep;

    move-result-object v1

    return-object v1
.end method
