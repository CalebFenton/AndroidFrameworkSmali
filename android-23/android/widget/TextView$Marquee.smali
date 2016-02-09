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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$Marquee$1;,
        Landroid/widget/TextView$Marquee$2;,
        Landroid/widget/TextView$Marquee$3;
    }
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$Marquee;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/TextView$Marquee;)B
    .locals 1

    #@0
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/TextView$Marquee;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/widget/TextView$Marquee;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/widget/TextView$Marquee;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@2
    return p1
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 10009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 9997
    const/4 v1, 0x0

    #@4
    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@6
    .line 10016
    new-instance v1, Landroid/widget/TextView$Marquee$1;

    #@8
    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    #@b
    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    #@d
    .line 10023
    new-instance v1, Landroid/widget/TextView$Marquee$2;

    #@f
    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    #@12
    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    #@14
    .line 10032
    new-instance v1, Landroid/widget/TextView$Marquee$3;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    #@19
    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    #@1b
    .line 10010
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v1

    #@27
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    #@29
    .line 10011
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    #@2b
    mul-float/2addr v1, v0

    #@2c
    iput v1, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    #@2e
    .line 10012
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@30
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@33
    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    #@35
    .line 10013
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@3b
    .line 10009
    return-void
.end method

.method private resetScroll()V
    .locals 2

    #@0
    .prologue
    .line 10077
    const/4 v1, 0x0

    #@1
    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@3
    .line 10078
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    #@5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/TextView;

    #@b
    .line 10079
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    #@10
    .line 10076
    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 1

    #@0
    .prologue
    .line 10108
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    #@2
    return v0
.end method

.method getMaxFadeScroll()F
    .locals 1

    #@0
    .prologue
    .line 10116
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    #@2
    return v0
.end method

.method getScroll()F
    .locals 1

    #@0
    .prologue
    .line 10112
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@2
    return v0
.end method

.method isRunning()Z
    .locals 2

    #@0
    .prologue
    .line 10128
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isStopped()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10132
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method shouldDrawGhost()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10124
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@3
    const/4 v2, 0x2

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@8
    iget v2, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    #@a
    cmpl-float v1, v1, v2

    #@c
    if-lez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method shouldDrawLeftFade()Z
    .locals 2

    #@0
    .prologue
    .line 10120
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@2
    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    #@4
    cmpg-float v0, v0, v1

    #@6
    if-gtz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method start(I)V
    .locals 7
    .param p1, "repeatLimit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 10083
    if-nez p1, :cond_0

    #@3
    .line 10084
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    #@6
    .line 10085
    return-void

    #@7
    .line 10087
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    #@9
    .line 10088
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    #@b
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/widget/TextView;

    #@11
    .line 10089
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    #@13
    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    #@16
    move-result-object v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 10090
    const/4 v4, 0x1

    #@1a
    iput-byte v4, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@1c
    .line 10091
    const/4 v4, 0x0

    #@1d
    iput v4, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@1f
    .line 10092
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@26
    move-result v5

    #@27
    sub-int/2addr v4, v5

    #@28
    .line 10093
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@2b
    move-result v5

    #@2c
    .line 10092
    sub-int v3, v4, v5

    #@2e
    .line 10094
    .local v3, "textWidth":I
    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineWidth(I)F

    #@35
    move-result v1

    #@36
    .line 10095
    .local v1, "lineWidth":F
    int-to-float v4, v3

    #@37
    const/high16 v5, 0x40400000    # 3.0f

    #@39
    div-float v0, v4, v5

    #@3b
    .line 10096
    .local v0, "gap":F
    int-to-float v4, v3

    #@3c
    sub-float v4, v1, v4

    #@3e
    add-float/2addr v4, v0

    #@3f
    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    #@41
    .line 10097
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    #@43
    int-to-float v5, v3

    #@44
    add-float/2addr v4, v5

    #@45
    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    #@47
    .line 10098
    add-float v4, v1, v0

    #@49
    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    #@4b
    .line 10099
    int-to-float v4, v3

    #@4c
    const/high16 v5, 0x40c00000    # 6.0f

    #@4e
    div-float/2addr v4, v5

    #@4f
    add-float/2addr v4, v1

    #@50
    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    #@52
    .line 10100
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    #@54
    add-float/2addr v4, v1

    #@55
    add-float/2addr v4, v1

    #@56
    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    #@58
    .line 10102
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    #@5b
    .line 10103
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@5d
    iget-object v5, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    #@5f
    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@62
    .line 10082
    .end local v0    # "gap":F
    .end local v1    # "lineWidth":F
    .end local v3    # "textWidth":I
    :cond_1
    return-void
.end method

.method stop()V
    .locals 2

    #@0
    .prologue
    .line 10069
    const/4 v0, 0x0

    #@1
    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@3
    .line 10070
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@5
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@a
    .line 10071
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@c
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@11
    .line 10072
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@13
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@18
    .line 10073
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    #@1b
    .line 10068
    return-void
.end method

.method tick()V
    .locals 10

    #@0
    .prologue
    .line 10045
    iget-byte v6, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    #@2
    const/4 v7, 0x2

    #@3
    if-eq v6, v7, :cond_0

    #@5
    .line 10046
    return-void

    #@6
    .line 10049
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@8
    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    #@a
    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@d
    .line 10051
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    #@f
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Landroid/widget/TextView;

    #@15
    .line 10052
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    #@17
    invoke-virtual {v5}, Landroid/widget/TextView;->isFocused()Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_1

    #@1d
    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_2

    #@23
    .line 10053
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@25
    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    #@28
    move-result-wide v0

    #@29
    .line 10054
    .local v0, "currentMs":J
    iget-wide v6, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    #@2b
    sub-long v2, v0, v6

    #@2d
    .line 10055
    .local v2, "deltaMs":J
    iput-wide v0, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    #@2f
    .line 10056
    long-to-float v6, v2

    #@30
    const/high16 v7, 0x447a0000    # 1000.0f

    #@32
    div-float/2addr v6, v7

    #@33
    iget v7, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    #@35
    mul-float v4, v6, v7

    #@37
    .line 10057
    .local v4, "deltaPx":F
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@39
    add-float/2addr v6, v4

    #@3a
    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@3c
    .line 10058
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@3e
    iget v7, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    #@40
    cmpl-float v6, v6, v7

    #@42
    if-lez v6, :cond_3

    #@44
    .line 10059
    iget v6, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    #@46
    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    #@48
    .line 10060
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@4a
    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    #@4c
    const-wide/16 v8, 0x4b0

    #@4e
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    #@51
    .line 10064
    :goto_0
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    #@54
    .line 10044
    .end local v0    # "currentMs":J
    .end local v2    # "deltaMs":J
    .end local v4    # "deltaPx":F
    :cond_2
    return-void

    #@55
    .line 10062
    .restart local v0    # "currentMs":J
    .restart local v2    # "deltaMs":J
    .restart local v4    # "deltaPx":F
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    #@57
    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    #@59
    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@5c
    goto :goto_0
.end method
