.class Landroid/view/ViewPropertyAnimatorRT;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorRT.java"


# static fields
.field private static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimators:[Landroid/view/RenderNodeAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    #@7
    .line 32
    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const/16 v0, 0xc

    #@5
    new-array v0, v0, [Landroid/view/RenderNodeAnimator;

    #@7
    iput-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@9
    .line 41
    iput-object p1, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    #@b
    .line 40
    return-void
.end method

.method private canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 109
    return v1

    #@8
    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getListener()Landroid/animation/Animator$AnimatorListener;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 113
    return v1

    #@f
    .line 115
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 117
    return v1

    #@18
    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->hasActions()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3

    #@1e
    .line 120
    return v1

    #@1f
    .line 123
    :cond_3
    const/4 v0, 0x1

    #@20
    return v0
.end method

.method private cancelAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "mPendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    const/4 v5, 0x0

    #@1
    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v3

    #@5
    .line 128
    .local v3, "size":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@e
    .line 130
    .local v0, "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v4, v0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@10
    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    #@13
    move-result v2

    #@14
    .line 131
    .local v2, "property":I
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@16
    aget-object v4, v4, v2

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 132
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@1c
    aget-object v4, v4, v2

    #@1e
    invoke-virtual {v4}, Landroid/view/RenderNodeAnimator;->cancel()V

    #@21
    .line 133
    iget-object v4, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@23
    aput-object v5, v4, v2

    #@25
    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 126
    .end local v0    # "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    .end local v2    # "property":I
    :cond_1
    return-void
.end method

.method private doStartAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 14
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    #@0
    .prologue
    .line 67
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v9

    #@6
    .line 69
    .local v9, "size":I
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    #@9
    move-result-wide v10

    #@a
    .line 70
    .local v10, "startDelay":J
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    #@d
    move-result-wide v2

    #@e
    .line 71
    .local v2, "duration":J
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@11
    move-result-object v6

    #@12
    .line 72
    .local v6, "interpolator":Landroid/animation/TimeInterpolator;
    if-nez v6, :cond_0

    #@14
    .line 74
    sget-object v6, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    #@16
    .line 76
    :cond_0
    invoke-static {v6}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    #@19
    move-result v12

    #@1a
    if-nez v12, :cond_1

    #@1c
    .line 77
    new-instance v7, Lcom/android/internal/view/animation/FallbackLUTInterpolator;

    #@1e
    invoke-direct {v7, v6, v2, v3}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;-><init>(Landroid/animation/TimeInterpolator;J)V

    #@21
    .end local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    .local v7, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v6, v7

    #@22
    .line 79
    .end local v7    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_1
    const/4 v5, 0x0

    #@23
    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    #@25
    .line 80
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@2d
    .line 81
    .local v4, "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v12, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@2f
    invoke-static {v12}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    #@32
    move-result v8

    #@33
    .line 83
    .local v8, "property":I
    iget v12, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    #@35
    iget v13, v4, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    #@37
    add-float v1, v12, v13

    #@39
    .line 84
    .local v1, "finalValue":F
    new-instance v0, Landroid/view/RenderNodeAnimator;

    #@3b
    invoke-direct {v0, v8, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    #@3e
    .line 85
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    #@41
    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@44
    .line 87
    invoke-virtual {v0, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@47
    .line 88
    iget-object v12, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    #@49
    invoke-virtual {v0, v12}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    #@4c
    .line 89
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    #@4f
    .line 91
    iget-object v12, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@51
    aput-object v0, v12, v8

    #@53
    .line 79
    add-int/lit8 v5, v5, 0x1

    #@55
    goto :goto_0

    #@56
    .line 94
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    .end local v1    # "finalValue":F
    .end local v4    # "holder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    .end local v8    # "property":I
    :cond_2
    iget-object v12, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    #@5b
    .line 66
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 59
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@9
    aget-object v1, v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 60
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    #@14
    .line 61
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    #@16
    aput-object v2, v1, v0

    #@18
    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 57
    :cond_1
    return-void
.end method

.method public startAnimation(Landroid/view/ViewPropertyAnimator;)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewPropertyAnimator;

    #@0
    .prologue
    .line 49
    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0}, Landroid/view/ViewPropertyAnimatorRT;->cancelAnimators(Ljava/util/ArrayList;)V

    #@5
    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 51
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 53
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->doStartAnimation(Landroid/view/ViewPropertyAnimator;)V

    #@10
    .line 54
    const/4 v0, 0x1

    #@11
    return v0
.end method
