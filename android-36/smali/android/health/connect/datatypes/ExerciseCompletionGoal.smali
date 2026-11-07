.class public abstract Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.super Ljava/lang/Object;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnknownGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$ActiveCaloriesBurnedGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$TotalCaloriesBurnedGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$RepetitionsGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$StepsGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceWithVariableRestGoal;,
        Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>()V

    return-void
.end method
