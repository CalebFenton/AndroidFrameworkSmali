.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AmrapGoalInternal"
.end annotation


# static fields
.field public static final blacklist AMRAP_GOAL_TYPE_ID:I = 0x7

.field public static final blacklist INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 385
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$AmrapGoalInternal;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getTypeId()I
    .registers 2

    .line 396
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 2

    .line 403
    sget-object v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;->INSTANCE:Landroid/health/connect/datatypes/ExercisePerformanceGoal$AmrapGoal;

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 392
    return-void
.end method
