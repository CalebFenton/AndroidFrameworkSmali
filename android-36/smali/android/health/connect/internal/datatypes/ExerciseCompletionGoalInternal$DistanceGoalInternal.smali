.class public final Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.source "ExerciseCompletionGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistanceGoalInternal"
.end annotation


# static fields
.field public static final blacklist DISTANCE_GOAL_TYPE_ID:I = 0x2


# instance fields
.field private final blacklist mDistance:Landroid/health/connect/datatypes/units/Length;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Length;)V
    .registers 2
    .param p1, "distance"    # Landroid/health/connect/datatypes/units/Length;

    .line 132
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    .line 134
    return-void
.end method

.method public static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 127
    new-instance v0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Length;->fromMeters(D)Landroid/health/connect/datatypes/units/Length;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Length;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDistance()Landroid/health/connect/datatypes/units/Length;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 149
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExerciseCompletionGoal;
    .registers 3

    .line 144
    new-instance v0, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExerciseCompletionGoal$DistanceGoal;-><init>(Landroid/health/connect/datatypes/units/Length;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 121
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseCompletionGoalInternal$DistanceGoalInternal;->mDistance:Landroid/health/connect/datatypes/units/Length;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Length;->getInMeters()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 122
    return-void
.end method
