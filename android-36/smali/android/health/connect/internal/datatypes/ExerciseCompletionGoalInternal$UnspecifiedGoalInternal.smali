.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnspecifiedGoalInternal"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;

.field public static final blacklist UNSPECIFIED_GOAL_TYPE_ID:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 424
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;-><init>()V

    sput-object v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;->INSTANCE:Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$UnspecifiedGoalInternal;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 431
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getTypeId()I
    .registers 2

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 2

    .line 436
    sget-object v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;->INSTANCE:Landroid/health/connect/datatypes/ExerciseCompletionGoal$UnspecifiedGoal;

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 429
    return-void
.end method
