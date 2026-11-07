.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StepsGoalInternal"
.end annotation


# static fields
.field public static final blacklist STEPS_GOAL_TYPE_ID:I = 0x3


# instance fields
.field private final blacklist mSteps:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "steps"    # I

    .line 169
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 170
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;->mSteps:I

    .line 171
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 164
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist getSteps()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;->mSteps:I

    return v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 185
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 180
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;

    iget v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;->mSteps:I

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;-><init>(I)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 158
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;->mSteps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void
.end method
