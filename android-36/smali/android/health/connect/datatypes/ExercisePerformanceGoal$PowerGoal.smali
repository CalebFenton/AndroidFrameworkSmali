.class public final Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;
.super Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.source "ExercisePerformanceGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerGoal"
.end annotation


# instance fields
.field private final blacklist mMaxPower:Landroid/health/connect/datatypes/units/Power;

.field private final blacklist mMinPower:Landroid/health/connect/datatypes/units/Power;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Power;Landroid/health/connect/datatypes/units/Power;)V
    .registers 4
    .param p1, "minPower"    # Landroid/health/connect/datatypes/units/Power;
    .param p2, "maxPower"    # Landroid/health/connect/datatypes/units/Power;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal;-><init>(Landroid/health/connect/datatypes/ExercisePerformanceGoal-IA;)V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    .line 48
    iput-object p2, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 71
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;

    .line 72
    .local v1, "that":Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMinPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMinPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Power;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 73
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMaxPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMaxPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/health/connect/datatypes/units/Power;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 72
    :goto_2b
    return v0
.end method

.method public whitelist getMaxPower()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public whitelist getMinPower()Landroid/health/connect/datatypes/units/Power;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMinPower:Landroid/health/connect/datatypes/units/Power;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->mMaxPower:Landroid/health/connect/datatypes/units/Power;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
