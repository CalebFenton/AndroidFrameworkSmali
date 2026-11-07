.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;
.super Ljava/lang/Object;
.source "VelocityEasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stage"
.end annotation


# instance fields
.field private blacklist mDeltaT:F

.field private blacklist mDeltaV:F

.field private blacklist mEndPos:F

.field private blacklist mEndTime:F

.field private blacklist mEndV:F

.field final blacklist mStage:I

.field private blacklist mStartPos:F

.field private blacklist mStartTime:F

.field private blacklist mStartV:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartV(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    .line 331
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    .line 332
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    .line 333
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    .line 334
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    .line 335
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    .line 336
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    .line 337
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    .line 341
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStage:I

    .line 342
    return-void
.end method


# virtual methods
.method blacklist getPos(F)F
    .registers 7
    .param p1, "t"    # F

    .line 362
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float v0, p1, v0

    .line 363
    .local v0, "dt":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    div-float v1, v0, v1

    .line 364
    .local v1, "pt":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 365
    .local v2, "v":F
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    add-float/2addr v3, v4

    return v3
.end method

.method blacklist getVel(F)F
    .registers 6
    .param p1, "t"    # F

    .line 369
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float v0, p1, v0

    .line 370
    .local v0, "dt":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr v1, v2

    div-float v1, v0, v1

    .line 371
    .local v1, "pt":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    return v2
.end method

.method blacklist setUp(FFFFFF)V
    .registers 9
    .param p1, "startV"    # F
    .param p2, "startPos"    # F
    .param p3, "startTime"    # F
    .param p4, "endV"    # F
    .param p5, "endPos"    # F
    .param p6, "endTime"    # F

    .line 351
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    .line 352
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    .line 353
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    .line 354
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    .line 355
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    .line 356
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    .line 357
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    .line 358
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    .line 359
    return-void
.end method
