.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CadenceGoalInternal"
.end annotation


# static fields
.field public static final blacklist CADENCE_GOAL_TYPE_ID:I = 0x3


# instance fields
.field private final blacklist mMaxRpm:D

.field private final blacklist mMinRpm:D


# direct methods
.method public constructor blacklist <init>(DD)V
    .registers 5
    .param p1, "minRpm"    # D
    .param p3, "maxRpm"    # D

    .line 258
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 259
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMinRpm:D

    .line 260
    iput-wide p3, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMaxRpm:D

    .line 261
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 247
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public blacklist getMaxRpm()D
    .registers 3

    .line 268
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMaxRpm:D

    return-wide v0
.end method

.method public blacklist getMinRpm()D
    .registers 3

    .line 264
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMinRpm:D

    return-wide v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 252
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 6

    .line 273
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;

    iget-wide v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMinRpm:D

    iget-wide v3, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMaxRpm:D

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$CadenceGoal;-><init>(DD)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 242
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMinRpm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 243
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$CadenceGoalInternal;->mMaxRpm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 244
    return-void
.end method
