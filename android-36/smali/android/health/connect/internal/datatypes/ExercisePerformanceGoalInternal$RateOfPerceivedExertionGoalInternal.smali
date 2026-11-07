.class public final Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;
.super Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.source "ExercisePerformanceGoalInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateOfPerceivedExertionGoalInternal"
.end annotation


# static fields
.field public static final blacklist RATE_OF_PERCEIVED_EXERTION_TYPE_ID:I = 0x6


# instance fields
.field private final blacklist mRpe:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "rpe"    # I

    .line 370
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal;-><init>()V

    .line 371
    iput p1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;->mRpe:I

    .line 372
    return-void
.end method

.method static blacklist readFieldsFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 360
    new-instance v0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist getRpe()I
    .registers 2

    .line 375
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;->mRpe:I

    return v0
.end method

.method public blacklist getTypeId()I
    .registers 2

    .line 365
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist toExternalObject()Landroid/health/connect/datatypes/ExercisePerformanceGoal;
    .registers 3

    .line 380
    new-instance v0, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;

    iget v1, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;->mRpe:I

    invoke-direct {v0, v1}, Landroid/health/connect/datatypes/ExercisePerformanceGoal$RateOfPerceivedExertionGoal;-><init>(I)V

    return-object v0
.end method

.method blacklist writeFieldsToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 356
    iget v0, p0, Landroid/health/connect/internal/datatypes/ExercisePerformanceGoalInternal$RateOfPerceivedExertionGoalInternal;->mRpe:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    return-void
.end method
