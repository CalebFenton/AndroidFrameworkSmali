.class public final Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
.super Ljava/lang/Object;
.source "PlannedExerciseBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/PlannedExerciseBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mRepetitions:I

.field private blacklist mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "repetitions"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    .line 94
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mRepetitions:I

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist addStep(Landroid/health/connect/datatypes/PlannedExerciseStep;)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    .registers 3
    .param p1, "step"    # Landroid/health/connect/datatypes/PlannedExerciseStep;

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/datatypes/PlannedExerciseBlock;
    .registers 6

    .line 140
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseBlock;

    iget v1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mRepetitions:I

    iget-object v2, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    invoke-static {v3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/PlannedExerciseBlock;-><init>(ILjava/lang/CharSequence;Ljava/util/List;Landroid/health/connect/datatypes/PlannedExerciseBlock-IA;)V

    return-object v0
.end method

.method public whitelist clearSteps()Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 107
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 108
    return-object p0
.end method

.method public whitelist setRepetitions(I)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    .registers 2
    .param p1, "repetitions"    # I

    .line 100
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mRepetitions:I

    .line 101
    return-object p0
.end method

.method public whitelist setSteps(Ljava/util/List;)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseStep;",
            ">;)",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;"
        }
    .end annotation

    .line 122
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/PlannedExerciseStep;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->mSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    return-object p0
.end method
