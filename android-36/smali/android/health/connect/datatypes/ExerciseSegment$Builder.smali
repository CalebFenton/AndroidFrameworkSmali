.class public final Landroid/health/connect/datatypes/ExerciseSegment$Builder;
.super Ljava/lang/Object;
.source "ExerciseSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mInterval:Landroid/health/connect/datatypes/TimeInterval;

.field private blacklist mRepetitionsCount:I

.field private final blacklist mSegmentType:I


# direct methods
.method public constructor whitelist <init>(Ljava/time/Instant;Ljava/time/Instant;I)V
    .registers 5
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .param p3, "segmentType"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mRepetitionsCount:I

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/health/connect/datatypes/TimeInterval;

    invoke-direct {v0, p1, p2}, Landroid/health/connect/datatypes/TimeInterval;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 133
    iput p3, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mSegmentType:I

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ExerciseSegment;
    .registers 7

    .line 164
    new-instance v0, Landroid/health/connect/datatypes/ExerciseSegment;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget v2, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mSegmentType:I

    iget v3, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mRepetitionsCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/ExerciseSegment;-><init>(Landroid/health/connect/datatypes/TimeInterval;IIZLandroid/health/connect/datatypes/ExerciseSegment-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseSegment;
    .registers 7

    .line 155
    new-instance v0, Landroid/health/connect/datatypes/ExerciseSegment;

    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    iget v2, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mSegmentType:I

    iget v3, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mRepetitionsCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/health/connect/datatypes/ExerciseSegment;-><init>(Landroid/health/connect/datatypes/TimeInterval;IIZLandroid/health/connect/datatypes/ExerciseSegment-IA;)V

    return-object v0
.end method

.method public whitelist setRepetitionsCount(I)Landroid/health/connect/datatypes/ExerciseSegment$Builder;
    .registers 4
    .param p1, "repetitionsCount"    # I

    .line 142
    if-ltz p1, :cond_5

    .line 145
    iput p1, p0, Landroid/health/connect/datatypes/ExerciseSegment$Builder;->mRepetitionsCount:I

    .line 146
    return-object p0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of repetitions must be non negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
