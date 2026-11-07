.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveCaloriesBurnedGoalInternal"
.end annotation


# static fields
.field public static final blacklist ACTIVE_CALORIES_BURNED_GOAL_TYPE_ID:I = 0x7


# instance fields
.field private final blacklist mActiveCalories:Landroid/health/connect/datatypes/units/Energy;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Energy;)V
    .registers 2
    .param p1, "activeCalories"    # Landroid/health/connect/datatypes/units/Energy;

    .line 317
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 318
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    .line 319
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 312
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->fromCalories(D)Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getActiveCalories()Landroid/health/connect/datatypes/units/Energy;
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 334
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 329
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 305
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Energy;->getInCalories()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 306
    return-void
.end method
