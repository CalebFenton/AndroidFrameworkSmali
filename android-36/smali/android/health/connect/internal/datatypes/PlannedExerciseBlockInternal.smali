.class public final Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
.super Ljava/lang/Object;
.source "PlannedExerciseBlockInternal.java"


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mExerciseSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRepetitions:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "repetitions"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mExerciseSteps:Ljava/util/List;

    .line 62
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mRepetitions:I

    .line 63
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_29

    .line 53
    new-instance v3, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;-><init>(I)V

    .line 54
    .local v3, "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->setDescription(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->readFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->setExerciseSteps(Ljava/util/List;)V

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 58
    .end local v2    # "i":I
    :cond_29
    return-object v0
.end method

.method public static blacklist writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 40
    .local p0, "blocks":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;

    .line 42
    .local v1, "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->getRepetitions()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->getExerciseSteps()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 45
    .end local v1    # "block":Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;
    goto :goto_b

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExerciseSteps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mExerciseSteps:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRepetitions()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mRepetitions:I

    return v0
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mDescription:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public blacklist setExerciseSteps(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "exerciseSteps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mExerciseSteps:Ljava/util/List;

    .line 88
    return-void
.end method

.method public blacklist setRepetitions(I)V
    .registers 2
    .param p1, "repetitions"    # I

    .line 83
    iput p1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mRepetitions:I

    .line 84
    return-void
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/PlannedExerciseBlock;
    .registers 5

    .line 92
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;

    iget v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mRepetitions:I

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;-><init>(I)V

    .line 93
    .local v0, "builder":Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;

    .line 94
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/PlannedExerciseBlockInternal;->mExerciseSteps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;

    .line 95
    .local v2, "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;->toExternalObject()Landroid/health/connect/datatypes/PlannedExerciseStep;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->addStep(Landroid/health/connect/datatypes/PlannedExerciseStep;)Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;

    .line 96
    .end local v2    # "step":Landroid/health/connect/internal/datatypes/PlannedExerciseStepInternal;
    goto :goto_12

    .line 97
    :cond_26
    invoke-virtual {v0}, Landroid/health/connect/datatypes/PlannedExerciseBlock$Builder;->build()Landroid/health/connect/datatypes/PlannedExerciseBlock;

    move-result-object v1

    return-object v1
.end method
