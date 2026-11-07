.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeightGoal"
.end annotation


# instance fields
.field private final blacklist mMass:Landroid/health/connect/datatypes/units/Mass;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Mass;)V
    .registers 3
    .param p1, "mass"    # Landroid/health/connect/datatypes/units/Mass;

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 238
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput-object p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    .line 240
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 252
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 253
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;

    .line 255
    .local v0, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->getMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->getMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getMass()Landroid/health/connect/datatypes/units/Mass;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
