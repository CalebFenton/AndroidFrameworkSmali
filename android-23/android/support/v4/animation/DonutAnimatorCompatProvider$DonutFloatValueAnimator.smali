.class Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/DonutAnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DonutFloatValueAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;
    }
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->notifyUpdateListeners()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@b
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 41
    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    #@12
    .line 45
    const-wide/16 v0, 0xc8

    #@14
    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    #@16
    .line 46
    const/4 v0, 0x0

    #@17
    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    #@19
    .line 48
    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    #@1b
    .line 49
    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    #@1d
    .line 54
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;

    #@1f
    invoke-direct {v0, p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;-><init>(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    #@22
    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    #@24
    .line 51
    return-void
.end method

.method private dispatchCancel()V
    .locals 2

    #@0
    .prologue
    .line 124
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 125
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    #@12
    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    #@15
    .line 124
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 123
    :cond_0
    return-void
.end method

.method private dispatchEnd()V
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 119
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    #@12
    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    #@15
    .line 118
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 117
    :cond_0
    return-void
.end method

.method private dispatchStart()V
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 113
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    #@12
    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    #@15
    .line 112
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 111
    :cond_0
    return-void
.end method

.method private getTime()J
    .locals 2

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .locals 2

    #@0
    .prologue
    .line 73
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 74
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    #@12
    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    #@15
    .line 73
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/animation/AnimatorListenerCompat;

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 84
    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 1
    .param p1, "animatorUpdateListener"    # Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 142
    return-void
.end method

.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    return-void

    #@5
    .line 134
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    #@8
    .line 135
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 136
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchCancel()V

    #@f
    .line 138
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    #@12
    .line 130
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    #@0
    .prologue
    .line 148
    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    #@2
    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 91
    iput-wide p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    #@6
    .line 89
    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    #@2
    .line 79
    return-void
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 98
    return-void

    #@5
    .line 100
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    #@8
    .line 101
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchStart()V

    #@b
    .line 102
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    #@e
    .line 103
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    #@14
    .line 104
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    #@16
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    #@18
    const-wide/16 v2, 0x10

    #@1a
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1d
    .line 96
    return-void
.end method
