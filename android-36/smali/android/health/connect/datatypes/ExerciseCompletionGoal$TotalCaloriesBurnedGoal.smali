.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TotalCaloriesBurnedGoal"
.end annotation


# instance fields
.field private final blacklist mTotalCalories:Landroid/health/connect/datatypes/units/Energy;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Energy;)V
    .registers 3
    .param p1, "totalCalories"    # Landroid/health/connect/datatypes/units/Energy;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    .line 226
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 238
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 239
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;

    .line 241
    .local v0, "that":Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->getTotalCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->getTotalCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getTotalCalories()Landroid/health/connect/datatypes/units/Energy;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->mTotalCalories:Landroid/health/connect/datatypes/units/Energy;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
