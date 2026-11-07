.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationGoalInternal"
.end annotation


# static fields
.field public static final blacklist DURATION_GOAL_TYPE_ID:I = 0x4


# instance fields
.field private final blacklist mDuration:Ljava/time/Duration;


# direct methods
.method public constructor blacklist <init>(Ljava/time/Duration;)V
    .registers 2
    .param p1, "duration"    # Ljava/time/Duration;

    .line 205
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 206
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;->mDuration:Ljava/time/Duration;

    .line 207
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 200
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;-><init>(Ljava/time/Duration;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDuration()Ljava/time/Duration;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 222
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 217
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;->mDuration:Ljava/time/Duration;

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;-><init>(Ljava/time/Duration;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 194
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DurationGoalInternal;->mDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    return-void
.end method
