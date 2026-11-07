.class public Landroid/view/ViewFrameInfo;
.super Ljava/lang/Object;
.source "ViewFrameInfo.java"


# instance fields
.field public blacklist drawStart:J

.field public blacklist flags:J

.field private blacklist mInputEventId:I

.field private blacklist mViewsMeasuredCounts:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAndIncreaseViewMeasuredCount()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    return v0
.end method

.method public blacklist markDrawStart()V
    .registers 3

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    .line 64
    return-void
.end method

.method public blacklist populateFrameInfo(Landroid/graphics/FrameInfo;)V
    .registers 8
    .param p1, "frameInfo"    # Landroid/graphics/FrameInfo;

    .line 44
    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-wide v4, p0, Landroid/view/ViewFrameInfo;->flags:J

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 45
    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/16 v1, 0x8

    iget-wide v2, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    aput-wide v2, v0, v1

    .line 46
    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget v1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    int-to-long v1, v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 47
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    .line 54
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    .line 55
    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->flags:J

    .line 56
    iput v2, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    .line 57
    return-void
.end method

.method public blacklist setInputEvent(I)V
    .registers 2
    .param p1, "eventId"    # I

    .line 78
    iput p1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    .line 79
    return-void
.end method
