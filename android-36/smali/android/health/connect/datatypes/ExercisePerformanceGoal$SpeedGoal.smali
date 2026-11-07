.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedGoal"
.end annotation


# instance fields
.field private final blacklist mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

.field private final blacklist mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Velocity;Landroid/health/connect/datatypes/units/Velocity;)V
    .registers 4
    .param p1, "minSpeed"    # Landroid/health/connect/datatypes/units/Velocity;
    .param p2, "maxSpeed"    # Landroid/health/connect/datatypes/units/Velocity;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    .line 99
    iput-object p2, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 121
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 122
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;

    .line 123
    .local v1, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMinSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMinSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Velocity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 124
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMaxSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMaxSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Velocity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 123
    :goto_2b
    return v0
.end method

.method public whitelist getMaxSpeed()Landroid/health/connect/datatypes/units/Velocity;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    return-object v0
.end method

.method public whitelist getMinSpeed()Landroid/health/connect/datatypes/units/Velocity;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 129
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMinSpeed:Landroid/health/connect/datatypes/units/Velocity;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->mMaxSpeed:Landroid/health/connect/datatypes/units/Velocity;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
