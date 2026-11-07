.class public abstract Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.super Ljava/lang/Object;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnknownGoalInternal;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromExternalObject(Landroid/health/connect/datatypes/ExerciseCompletionGoal;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
    .registers 5
    .param p0, "externalObject"    # Landroid/health/connect/datatypes/ExerciseCompletionGoal;

    .line 46
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;

    if-eqz v0, :cond_11

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;

    .line 49
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Length;)V

    return-object v1

    .line 50
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;
    :cond_11
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;

    if-eqz v0, :cond_26

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;

    .line 53
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDistance()Landroid/health/connect/datatypes/units/Length;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;->getDuration()Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Length;Ljava/time/Duration;)V

    return-object v1

    .line 54
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;
    :cond_26
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;

    if-eqz v0, :cond_37

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;

    .line 57
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;->getSteps()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;-><init>(I)V

    return-object v1

    .line 58
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;
    :cond_37
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;

    if-eqz v0, :cond_48

    .line 59
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;

    .line 61
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->getDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;-><init>(Ljava/time/Duration;)V

    return-object v1

    .line 62
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;
    :cond_48
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;

    if-eqz v0, :cond_59

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;

    .line 65
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;->getRepetitions()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;-><init>(I)V

    return-object v1

    .line 66
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;
    :cond_59
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;

    if-eqz v0, :cond_6a

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;

    .line 69
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;->getTotalCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v1

    .line 70
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;
    :cond_6a
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;

    if-eqz v0, :cond_7b

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;

    .line 73
    .local v0, "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;->getActiveCalories()Landroid/health/connect/datatypes/units/Energy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Energy;)V

    return-object v1

    .line 74
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;
    :cond_7b
    instance-of v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;

    if-eqz v0, :cond_82

    .line 75
    sget-object v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;

    return-object v0

    .line 77
    :cond_82
    sget-object v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnknownGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnknownGoalInternal;

    return-object v0
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "goalTypeId":I
    packed-switch v0, :pswitch_data_30

    .line 112
    sget-object v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnknownGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnknownGoalInternal;

    return-object v1

    .line 105
    :pswitch_a
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceWithVariableRestGoalInternal;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_f
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$ActiveCaloriesBurnedGoalInternal;

    move-result-object v1

    return-object v1

    .line 101
    :pswitch_14
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$TotalCaloriesBurnedGoalInternal;

    move-result-object v1

    return-object v1

    .line 99
    :pswitch_19
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$RepetitionsGoalInternal;

    move-result-object v1

    return-object v1

    .line 97
    :pswitch_1e
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;

    move-result-object v1

    return-object v1

    .line 95
    :pswitch_23
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$StepsGoalInternal;

    move-result-object v1

    return-object v1

    .line 93
    :pswitch_28
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_2d
    sget-object v1, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;

    return-object v1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist getTypeId()I
.end method

.method public abstract blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end method

.method abstract blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 83
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->getTypeId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p0, p1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;->writeFieldsToParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method
