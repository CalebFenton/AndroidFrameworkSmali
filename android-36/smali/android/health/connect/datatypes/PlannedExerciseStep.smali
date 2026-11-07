.class public final Landroid/health/connect/datatypes/PlannedExerciseStep;
.super Ljava/lang/Object;
.source "PlannedExerciseStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/PlannedExerciseStep$ExerciseCategory;,
        Landroid/health/connect/datatypes/PlannedExerciseStep$Builder;
    }
.end annotation


# static fields
.field public static final whitelist EXERCISE_CATEGORY_ACTIVE:I = 0x3

.field public static final whitelist EXERCISE_CATEGORY_COOLDOWN:I = 0x4

.field public static final whitelist EXERCISE_CATEGORY_RECOVERY:I = 0x5

.field public static final whitelist EXERCISE_CATEGORY_REST:I = 0x2

.field public static final whitelist EXERCISE_CATEGORY_UNKNOWN:I = 0x0

.field public static final whitelist EXERCISE_CATEGORY_WARMUP:I = 0x1

.field private static final blacklist VALID_EXERCISE_CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

.field private final blacklist mDescription:Ljava/lang/CharSequence;

.field private final blacklist mExerciseCategory:I

.field private final blacklist mExerciseType:I

.field private final blacklist mPerformanceGoals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExercisePerformanceGoal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 263
    nop

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 266
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 267
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 268
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 269
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 270
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 264
    invoke-static/range {v1 .. v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/PlannedExerciseStep;->VALID_EXERCISE_CATEGORIES:Ljava/util/Set;

    .line 263
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;ILandroid/health/connect/datatypes/ExerciseCompletionGoal;Ljava/util/List;)V
    .registers 6
    .param p1, "exerciseType"    # I
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "exerciseCategory"    # I
    .param p4, "completionGoal"    # Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/health/connect/datatypes/ExerciseCompletionGoal;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExercisePerformanceGoal;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p5, "performanceGoals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExercisePerformanceGoal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mExerciseType:I

    .line 54
    iput-object p2, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mDescription:Ljava/lang/CharSequence;

    .line 55
    iput p3, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mExerciseCategory:I

    .line 56
    iput-object p4, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 57
    iput-object p5, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mPerformanceGoals:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/CharSequence;ILandroid/health/connect/datatypes/ExerciseCompletionGoal;Ljava/util/List;Landroid/health/connect/datatypes/PlannedExerciseStep-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/health/connect/datatypes/PlannedExerciseStep;-><init>(ILjava/lang/CharSequence;ILandroid/health/connect/datatypes/ExerciseCompletionGoal;Ljava/util/List;)V

    return-void
.end method

.method public static blacklist isValidExerciseCategory(I)Z
    .registers 3
    .param p0, "exerciseCategory"    # I

    .line 278
    sget-object v0, Landroid/health/connect/datatypes/PlannedExerciseStep;->VALID_EXERCISE_CATEGORIES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/PlannedExerciseStep;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/PlannedExerciseStep;

    .line 99
    .local v1, "that":Landroid/health/connect/datatypes/PlannedExerciseStep;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/health/connect/datatypes/RecordUtils;->isEqualNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 100
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseCategory()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseCategory()I

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 101
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseType()I

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 102
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getCompletionGoal()Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getCompletionGoal()Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 103
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getPerformanceGoals()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getPerformanceGoals()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 99
    :goto_4d
    return v0
.end method

.method public whitelist getCompletionGoal()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mCompletionGoal:Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExerciseCategory()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mExerciseCategory:I

    return v0
.end method

.method public whitelist getExerciseType()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mExerciseType:I

    return v0
.end method

.method public whitelist getPerformanceGoals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExercisePerformanceGoal;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mPerformanceGoals:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseCategory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getCompletionGoal()Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getPerformanceGoals()Ljava/util/List;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 108
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toInternalObject()Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    .registers 5

    .line 218
    new-instance v0, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;

    .line 220
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseType()I

    move-result v1

    .line 221
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getExerciseCategory()I

    move-result v2

    .line 222
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getCompletionGoal()Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->fromExternalObject(Landroid/health/connect/datatypes/ExerciseCompletionGoal;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;-><init>(IILandroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;)V

    .line 223
    .local v0, "result":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_22

    .line 224
    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseStep;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->setDescription(Ljava/lang/String;)V

    .line 226
    :cond_22
    nop

    .line 227
    invoke-virtual {p0}, Landroid/health/connect/datatypes/PlannedExerciseStep;->getPerformanceGoals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/health/connect/datatypes/PlannedExerciseStep$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/health/connect/datatypes/PlannedExerciseStep$$ExternalSyntheticLambda0;-><init>()V

    .line 228
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 229
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 226
    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->setPerformanceGoals(Ljava/util/List;)V

    .line 230
    return-object v0
.end method
