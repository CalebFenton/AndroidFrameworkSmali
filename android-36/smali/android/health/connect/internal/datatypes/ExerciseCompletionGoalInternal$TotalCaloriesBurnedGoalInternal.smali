.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TotalCaloriesBurnedGoalInternal"
.end annotation


# static fields
.field public static final blacklist TOTAL_CALORIES_BURNED_GOAL_TYPE_ID:I = 0x6


# instance fields
.field private final blacklist mTotalCalories:Landroid/health/connect/datatypes/units/Energy;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Energy;)V
    .registers 2
    .param p1, "totalCalories"    # Landroid/health/connect/datatypes/units/Energy;

    .line 279
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 280
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    .line 281
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 274
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->fromCalories(D)Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getTotalCalories()Landroid/health/connect/datatypes/units/Energy;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 295
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 290
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 268
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Energy;->getInCalories()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 269
    return-void
.end method
