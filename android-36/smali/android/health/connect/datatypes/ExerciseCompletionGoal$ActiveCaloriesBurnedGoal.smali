.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveCaloriesBurnedGoal"
.end annotation


# instance fields
.field private final blacklist mActiveCalories:Landroid/health/connect/datatypes/units/Energy;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Energy;)V
    .registers 3
    .param p1, "activeCalories"    # Landroid/health/connect/datatypes/units/Energy;

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    .line 264
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 275
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 276
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;

    .line 277
    .local v0, "that":Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->getActiveCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->getActiveCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getActiveCalories()Landroid/health/connect/datatypes/units/Energy;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->mActiveCalories:Landroid/health/connect/datatypes/units/Energy;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
