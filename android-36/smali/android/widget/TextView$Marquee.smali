.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final greylist-max-o MARQUEE_DELAY:I = 0x4b0

.field private static final greylist-max-o MARQUEE_DELTA_MAX:F = 0.07f

.field private static final greylist-max-o MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final greylist-max-o MARQUEE_RUNNING:B = 0x2t

.field private static final greylist-max-o MARQUEE_STARTING:B = 0x1t

.field private static final greylist-max-o MARQUEE_STOPPED:B


# instance fields
.field private final greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field private greylist-max-o mFadeStop:F

.field private greylist-max-o mGhostOffset:F

.field private greylist-max-o mGhostStart:F

.field private greylist-max-o mLastAnimationMs:J

.field private greylist-max-o mMaxFadeScroll:F

.field private greylist-max-o mMaxScroll:F

.field private final greylist-max-o mPixelsPerMs:F

.field private greylist-max-o mRepeatLimit:I

.field private greylist-max-o mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mScroll:F

.field private greylist-max-o mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private greylist-max-o mStatus:B

.field private greylist-max-o mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final greylist-max-o mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoreographer(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I
    .registers 1

    iget p0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/widget/TextView$Marquee;)B
    .registers 1

    iget-byte p0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAnimationMs(Landroid/widget/TextView$Marquee;J)V
    .registers 3

    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRepeatLimit(Landroid/widget/TextView$Marquee;I)V
    .registers 2

    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatus(Landroid/widget/TextView$Marquee;B)V
    .registers 2

    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;

    .line 16403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16391
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16410
    new-instance v0, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16417
    new-instance v0, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16426
    new-instance v0, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v0, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 16404
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16405
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    .line 16406
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 16407
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 16408
    return-void
.end method

.method private greylist-max-o resetScroll()V
    .registers 2

    .line 16472
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16473
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16474
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 16475
    :cond_10
    return-void
.end method


# virtual methods
.method greylist-max-o getGhostOffset()F
    .registers 2

    .line 16503
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method greylist-max-o getMaxFadeScroll()F
    .registers 2

    .line 16511
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method greylist-max-o getScroll()F
    .registers 2

    .line 16507
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method greylist-max-o isRunning()Z
    .registers 3

    .line 16523
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method greylist-max-o isStopped()Z
    .registers 2

    .line 16527
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o shouldDrawGhost()Z
    .registers 3

    .line 16519
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method greylist-max-o shouldDrawLeftFade()Z
    .registers 3

    .line 16515
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o start(I)V
    .registers 8
    .param p1, "repeatLimit"    # I

    .line 16478
    if-nez p1, :cond_6

    .line 16479
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 16480
    return-void

    .line 16482
    :cond_6
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 16483
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16484
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_60

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 16485
    const/4 v1, 0x1

    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16486
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16487
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 16488
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 16489
    .local v1, "textWidth":I
    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 16490
    .local v2, "lineWidth":F
    int-to-float v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 16491
    .local v3, "gap":F
    int-to-float v4, v1

    sub-float v4, v2, v4

    add-float/2addr v4, v3

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 16492
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 16493
    add-float v4, v2, v3

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 16494
    int-to-float v4, v1

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 16495
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v4, v2

    add-float/2addr v4, v2

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 16497
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 16498
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16500
    .end local v1    # "textWidth":I
    .end local v2    # "lineWidth":F
    .end local v3    # "gap":F
    :cond_60
    return-void
.end method

.method greylist-max-o stop()V
    .registers 3

    .line 16464
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 16465
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16466
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16467
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16468
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 16469
    return-void
.end method

.method greylist-max-o tick()V
    .registers 11

    .line 16439
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 16440
    return-void

    .line 16443
    :cond_6
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16445
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16446
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 16447
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 16448
    :cond_29
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    .line 16449
    .local v1, "currentMs":J
    iget-wide v3, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    sub-long v3, v1, v3

    .line 16450
    .local v3, "deltaMs":J
    iput-wide v1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 16451
    long-to-float v5, v3

    iget v6, p0, Landroid/widget/TextView$Marquee;->mPixelsPerMs:F

    mul-float/2addr v5, v6

    .line 16452
    .local v5, "deltaPx":F
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    add-float/2addr v6, v5

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16453
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v7, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_54

    .line 16454
    iget v6, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 16455
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_5b

    .line 16457
    :cond_54
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16459
    :goto_5b
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 16461
    .end local v1    # "currentMs":J
    .end local v3    # "deltaMs":J
    .end local v5    # "deltaPx":F
    :cond_5e
    return-void
.end method
