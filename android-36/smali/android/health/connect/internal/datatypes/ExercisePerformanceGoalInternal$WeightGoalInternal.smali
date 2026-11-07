.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeightGoalInternal"
.end annotation


# static fields
.field public static final blacklist WEIGHT_GOAL_TYPE_ID:I = 0x5


# instance fields
.field private final blacklist mMass:Landroid/health/connect/datatypes/units/Mass;


# direct methods
.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Mass;)V
    .registers 2
    .param p1, "mass"    # Landroid/health/connect/datatypes/units/Mass;

    .line 336
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 337
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    .line 338
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 326
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;-><init>(Landroid/health/connect/datatypes/units/Mass;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getMass()Landroid/health/connect/datatypes/units/Mass;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    return-object v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 331
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 3

    .line 346
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$WeightGoal;-><init>(Landroid/health/connect/datatypes/units/Mass;)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 322
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$WeightGoalInternal;->mMass:Landroid/health/connect/datatypes/units/Mass;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/units/Mass;->getInGrams()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 323
    return-void
.end method
