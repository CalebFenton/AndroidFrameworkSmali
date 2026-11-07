.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepetitionsGoalInternal"
.end annotation


# static fields
.field public static final blacklist REPETITIONS_GOAL_TYPE_ID:I = 0x5


# instance fields
.field private final blacklist mReps:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "reps"    # I

    .line 242
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 243
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;->mReps:I

    .line 244
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 237
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist getReps()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;->mReps:I

    return v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 258
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 253
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;

    iget v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;->mReps:I

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;-><init>(I)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 231
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;->mReps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return-void
.end method
