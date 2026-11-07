.class public final Landroid/health/connect/datatypes/PlannedExerciseBlock;
.super Ljava/lang/Object;
.source "PlannedExerciseBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDescription:Ljava/lang/CharSequence;

.field private final blacklist mRepetitions:I

.field private final blacklist mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(ILjava/lang/CharSequence;Ljava/util/List;)V
    .registers 4
    .param p1, "repetitions"    # I
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseStep;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p3, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/PlannedExerciseStep;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mRepetitions:I

    .line 44
    iput-object p2, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mDescription:Ljava/lang/CharSequence;

    .line 45
    iput-object p3, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mSteps:Ljava/util/List;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/CharSequence;Ljava/util/List;Landroid/health/connect/datatypes/PlannedExerciseBlock-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/datatypes/PlannedExerciseBlock;-><init>(ILjava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$toInternalObject$0(Landroid/health/connect/datatypes/PlannedExerciseStep;)Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    .registers 2
    .param p0, "it"    # Landroid/health/connect/datatypes/PlannedExerciseStep;

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->toInternalObject()Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/PlannedExerciseBlock;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 73
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/PlannedExerciseBlock;

    .line 74
    .local v1, "that":Landroid/health/connect/datatypes/PlannedExerciseBlock;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 75
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getRepetitions()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getRepetitions()I

    move-result v4

    if-ne v3, v4, :cond_34

    .line 76
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getSteps()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 74
    :goto_35
    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRepetitions()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mRepetitions:I

    return v0
.end method

.method public whitelist getSteps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseStep;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mSteps:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 81
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getRepetitions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getSteps()Ljava/util/List;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toInternalObject()Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    .registers 4

    .line 146
    new-instance v0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;

    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getRepetitions()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;-><init>(I)V

    .line 147
    .local v0, "result":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_16

    .line 148
    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseBlock;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->setDescription(Ljava/lang/String;)V

    .line 150
    :cond_16
    nop

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseBlock;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/PlannedExerciseBlock$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/PlannedExerciseBlock$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 150
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->setExerciseSteps(Ljava/util/List;)V

    .line 152
    return-object v0
.end method
