.class public abstract Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.super Ljava/lang/Object;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;,
        Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromExternalObject(Landroid/health/connect/datatypes/ExercisePerformanceGoal;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
    .registers 7
    .param p0, "externalObject"    # Landroid/health/connect/datatypes/ExercisePerformanceGoal;

    .line 95
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;

    if-eqz v0, :cond_15

    .line 96
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;

    .line 98
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMinPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;->getMaxPower()Landroid/health/connect/datatypes/units/Power;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Power;Landroid/health/connect/datatypes/units/Power;)V

    return-object v1

    .line 99
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$PowerGoal;
    :cond_15
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;

    if-eqz v0, :cond_2a

    .line 100
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;

    .line 102
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMinSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;->getMaxSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Velocity;Landroid/health/connect/datatypes/units/Velocity;)V

    return-object v1

    .line 103
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$SpeedGoal;
    :cond_2a
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;

    if-eqz v0, :cond_3f

    .line 104
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;

    .line 106
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMinRpm()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;->getMaxRpm()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;-><init>(DD)V

    return-object v1

    .line 107
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;
    :cond_3f
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;

    if-eqz v0, :cond_54

    .line 108
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;

    .line 110
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMinBpm()I

    move-result v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;->getMaxBpm()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;-><init>(II)V

    return-object v1

    .line 111
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$HeartRateGoal;
    :cond_54
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;

    if-eqz v0, :cond_65

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;

    .line 114
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;->getMass()Landroid/health/connect/datatypes/units/Mass;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Mass;)V

    return-object v1

    .line 115
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;
    :cond_65
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;

    if-eqz v0, :cond_76

    .line 116
    move-object v0, p0

    check-cast v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;

    .line 118
    .local v0, "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;
    new-instance v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;->getRpe()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;-><init>(I)V

    return-object v1

    .line 119
    .end local v0    # "goal":Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;
    :cond_76
    instance-of v0, p0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;

    if-eqz v0, :cond_7d

    .line 120
    sget-object v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;

    return-object v0

    .line 122
    :cond_7d
    sget-object v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;

    return-object v0
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_53

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "goalTypeId":I
    packed-switch v3, :pswitch_data_54

    goto :goto_50

    .line 78
    :pswitch_14
    sget-object v4, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_50

    .line 75
    :pswitch_1a
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_50

    .line 72
    :pswitch_22
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_50

    .line 69
    :pswitch_2a
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$HeartRateGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_50

    .line 66
    :pswitch_32
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_50

    .line 63
    :pswitch_3a
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$SpeedGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_50

    .line 60
    :pswitch_42
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;->readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$PowerGoalInternal;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_50

    .line 81
    :pswitch_4a
    sget-object v4, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    nop

    .line 56
    .end local v3    # "goalTypeId":I
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 89
    .end local v2    # "i":I
    :cond_53
    return-object v0

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

.method public static blacklist writeToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "performanceGoals":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;

    .line 47
    .local v1, "performanceGoal":Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
    invoke-virtual {v1}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;->getTypeId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {v1, p1}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;->writeFieldsToParcel(Landroid/os/Parcel;)V

    .line 49
    .end local v1    # "performanceGoal":Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
    goto :goto_b

    .line 50
    :cond_22
    return-void
.end method


# virtual methods
.method public abstract blacklist getTypeId()I
.end method

.method public abstract blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
.end method

.method abstract blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
.end method
