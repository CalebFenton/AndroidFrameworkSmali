.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;,
        Lcom/android/server/display/RampAnimator$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/RampAnimator;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    #@6
    .line 131
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    #@8
    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    #@b
    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    #@d
    .line 45
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    #@f
    .line 46
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    #@11
    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    #@17
    .line 44
    return-void
.end method

.method private cancelAnimationCallback()V
    .locals 4

    #@0
    .prologue
    .line 128
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    #@2
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@9
    .line 127
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    #@0
    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    #@2
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@9
    .line 123
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 5
    .param p1, "target"    # I
    .param p2, "rate"    # I

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 62
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    #@4
    if-nez v1, :cond_0

    #@6
    if-gtz p2, :cond_5

    #@8
    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    #@a
    if-nez v1, :cond_1

    #@c
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@e
    if-eq p1, v1, :cond_4

    #@10
    .line 64
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    #@12
    .line 65
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    #@14
    .line 66
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@16
    .line 67
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@18
    .line 68
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    #@1a
    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    #@1c
    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    #@1f
    .line 69
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 70
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@25
    .line 71
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    #@28
    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 74
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    #@2e
    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    #@31
    .line 76
    :cond_3
    return v4

    #@32
    .line 78
    :cond_4
    return v3

    #@33
    .line 88
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@35
    if-eqz v1, :cond_6

    #@37
    .line 89
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    #@39
    if-le p2, v1, :cond_9

    #@3b
    .line 92
    :cond_6
    :goto_0
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    #@3d
    .line 95
    :cond_7
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@3f
    if-eq v1, p1, :cond_b

    #@41
    const/4 v0, 0x1

    #@42
    .line 96
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@44
    .line 99
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@46
    if-nez v1, :cond_8

    #@48
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@4a
    if-eq p1, v1, :cond_8

    #@4c
    .line 100
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@4e
    .line 101
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@50
    int-to-float v1, v1

    #@51
    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    #@53
    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@56
    move-result-wide v2

    #@57
    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    #@59
    .line 103
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    #@5c
    .line 106
    :cond_8
    return v0

    #@5d
    .line 90
    .end local v0    # "changed":Z
    :cond_9
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@5f
    if-gt p1, v1, :cond_a

    #@61
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@63
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@65
    if-le v1, v2, :cond_6

    #@67
    .line 91
    :cond_a
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    #@69
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@6b
    if-gt v1, v2, :cond_7

    #@6d
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    #@6f
    if-gt v1, p1, :cond_7

    #@71
    goto :goto_0

    #@72
    .line 95
    :cond_b
    const/4 v0, 0x0

    #@73
    .restart local v0    # "changed":Z
    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 113
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    #@2
    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    #@0
    .prologue
    .line 120
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    #@2
    .line 119
    return-void
.end method
