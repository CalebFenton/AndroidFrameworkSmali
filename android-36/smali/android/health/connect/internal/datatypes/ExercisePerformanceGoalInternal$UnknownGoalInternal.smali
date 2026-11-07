.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownGoalInternal"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;

.field public static final blacklist UNKNOWN_GOAL_TYPE_ID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$UnknownGoalInternal;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getTypeId()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 2

    .line 150
    sget-object v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;->INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$UnknownGoal;

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 139
    return-void
.end method
