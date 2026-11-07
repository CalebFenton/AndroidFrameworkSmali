.class public final Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;
.super Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.source "ExerciseCompletionGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseCompletionGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationGoal"
.end annotation


# instance fields
.field private final blacklist mDuration:Ljava/time/Duration;


# direct methods
.method public constructor whitelist <init>(Ljava/time/Duration;)V
    .registers 3
    .param p1, "duration"    # Ljava/time/Duration;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal;-><init>(Landroid/health/connect/datatypes/ExerciseCompletionGoal-IA;)V

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->mDuration:Ljava/time/Duration;

    .line 158
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 169
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 170
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;

    .line 171
    .local v0, "that":Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->getDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->getDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getDuration()Ljava/time/Duration;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DurationGoal;->mDuration:Ljava/time/Duration;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
