.class public final Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
.super Ljava/lang/Object;
.source "PlannedExerciseStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/PlannedExerciseStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mExerciseCategory:I

.field private blacklist mExerciseType:I

.field private blacklist mPerformanceGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExercisePerformanceGoal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(IILandroid/health/connect/datatypes/ExerciseCompletionGoal;)V
    .registers 5
    .param p1, "exerciseType"    # I
    .param p2, "exerciseCategory"    # I
    .param p3, "completionGoal"    # Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    .line 134
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseType:I

    .line 135
    iput p2, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseCategory:I

    .line 136
    iput-object p3, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist addPerformanceGoal(Landroid/health/connect/datatypes/ExercisePerformanceGoal;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 3
    .param p1, "performanceGoal"    # Landroid/health/connect/datatypes/ExercisePerformanceGoal;

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/datatypes/PlannedExerciseStep;
    .registers 10

    .line 196
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 197
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/datatypes/ExercisePerformanceGoal;

    .line 198
    .local v2, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    goto :goto_b

    .line 200
    :cond_1f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_50

    .line 204
    iget v1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseCategory:I

    invoke-static {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->isValidExerciseCategory(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 207
    new-instance v2, Landroid/health/connect/datatypes/PlannedExerciseStep;

    iget v3, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseType:I

    iget-object v4, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mDescription:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseCategory:I

    iget-object v6, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    .line 212
    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/health/connect/datatypes/PlannedExerciseStep;-><init>(ILjava/lang/CharSequence;ILandroid/health/connect/datatypes/ExerciseCompletionGoal;Ljava/util/List;Landroid/health/connect/datatypes/PlannedExerciseStep-IA;)V

    .line 207
    return-object v2

    .line 205
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid exercise category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At most one of each type of performance goal is permitted."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearPerformanceGoals()Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    return-object p0
.end method

.method public whitelist setCompletionGoal(Landroid/health/connect/datatypes/ExerciseCompletionGoal;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 2
    .param p1, "completionGoal"    # Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 165
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 156
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 157
    return-object p0
.end method

.method public whitelist setExerciseCategory(I)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 2
    .param p1, "category"    # I

    .line 149
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseCategory:I

    .line 150
    return-object p0
.end method

.method public whitelist setExerciseType(I)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 2
    .param p1, "exerciseType"    # I

    .line 142
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mExerciseType:I

    .line 143
    return-object p0
.end method

.method public whitelist setPerformanceGoals(Ljava/util/List;)Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExercisePerformanceGoal;",
            ">;)",
            "Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;"
        }
    .end annotation

    .line 180
    .local p1, "performanceGoals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExercisePerformanceGoal;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;->mPerformanceGoals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-object p0
.end method
