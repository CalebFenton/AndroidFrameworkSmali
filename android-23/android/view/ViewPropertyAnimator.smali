.class public Landroid/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewPropertyAnimator$PropertyBundle;,
        Landroid/view/ViewPropertyAnimator$NameValuesHolder;,
        Landroid/view/ViewPropertyAnimator$AnimatorEventListener;,
        Landroid/view/ViewPropertyAnimator$1;
    }
.end annotation


# static fields
.field static final ALPHA:I = 0x800

.field static final NONE:I = 0x0

.field static final ROTATION:I = 0x20

.field static final ROTATION_X:I = 0x40

.field static final ROTATION_Y:I = 0x80

.field static final SCALE_X:I = 0x8

.field static final SCALE_Y:I = 0x10

.field private static final TRANSFORM_MASK:I = 0x7ff

.field static final TRANSLATION_X:I = 0x1

.field static final TRANSLATION_Y:I = 0x2

.field static final TRANSLATION_Z:I = 0x4

.field static final X:I = 0x100

.field static final Y:I = 0x200

.field static final Z:I = 0x400


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorCleanupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/view/ViewPropertyAnimator$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnEndMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorOnStartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSetupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mInterpolatorSet:Z

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCleanupAction:Ljava/lang/Runnable;

.field private mPendingOnEndAction:Ljava/lang/Runnable;

.field private mPendingOnStartAction:Ljava/lang/Runnable;

.field private mPendingSetupAction:Ljava/lang/Runnable;

.field private mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private mTempValueAnimator:Landroid/animation/ValueAnimator;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/ViewPropertyAnimator;IF)V
    .locals 0
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setValue(IF)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 66
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    #@7
    .line 73
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    #@b
    .line 79
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    #@d
    .line 92
    iput-boolean v2, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    #@f
    .line 97
    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@11
    .line 102
    iput-object v3, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@13
    .line 120
    new-instance v0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    #@15
    invoke-direct {v0, p0, v3}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$AnimatorEventListener;)V

    #@18
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    #@1a
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@21
    .line 165
    new-instance v0, Landroid/view/ViewPropertyAnimator$1;

    #@23
    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$1;-><init>(Landroid/view/ViewPropertyAnimator;)V

    #@26
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    #@28
    .line 222
    new-instance v0, Ljava/util/HashMap;

    #@2a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2d
    .line 221
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@2f
    .line 252
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@31
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->ensureTransformationInfo()V

    #@34
    .line 251
    return-void
.end method

.method private animateProperty(IF)V
    .locals 2
    .param p1, "constantName"    # I
    .param p2, "toValue"    # F

    #@0
    .prologue
    .line 919
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    #@3
    move-result v1

    #@4
    .line 920
    .local v1, "fromValue":F
    sub-float v0, p2, v1

    #@6
    .line 921
    .local v0, "deltaValue":F
    invoke-direct {p0, p1, v1, v0}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    #@9
    .line 918
    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1
    .param p1, "constantName"    # I
    .param p2, "byValue"    # F

    #@0
    .prologue
    .line 933
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    #@3
    move-result v0

    #@4
    .line 934
    .local v0, "fromValue":F
    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    #@7
    .line 932
    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 8
    .param p1, "constantName"    # I
    .param p2, "startValue"    # F
    .param p3, "byValue"    # F

    #@0
    .prologue
    .line 947
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@5
    move-result v6

    #@6
    if-lez v6, :cond_2

    #@8
    .line 948
    const/4 v1, 0x0

    #@9
    .line 949
    .local v1, "animatorToCancel":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    .line 950
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v5

    #@13
    .local v5, "runningAnim$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Landroid/animation/Animator;

    #@1f
    .line 951
    .local v4, "runningAnim":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@21
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    #@27
    .line 952
    .local v2, "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;->cancel(I)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_0

    #@2d
    .line 957
    iget v6, v2, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@2f
    if-nez v6, :cond_0

    #@31
    .line 959
    move-object v1, v4

    #@32
    .line 964
    .end local v1    # "animatorToCancel":Landroid/animation/Animator;
    .end local v2    # "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    .end local v4    # "runningAnim":Landroid/animation/Animator;
    :cond_1
    if-eqz v1, :cond_2

    #@34
    .line 965
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@37
    .line 969
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v5    # "runningAnim$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@39
    invoke-direct {v3, p1, p2, p3}, Landroid/view/ViewPropertyAnimator$NameValuesHolder;-><init>(IFF)V

    #@3c
    .line 970
    .local v3, "nameValuePair":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 971
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@43
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    #@45
    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@48
    .line 972
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@4a
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    #@4c
    invoke-virtual {v6, v7}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@4f
    .line 945
    return-void
.end method

.method private getValue(I)F
    .locals 3
    .param p1, "propertyConstant"    # I

    #@0
    .prologue
    .line 1034
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@2
    iget-object v0, v1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@4
    .line 1035
    .local v0, "node":Landroid/view/RenderNode;
    sparse-switch p1, :sswitch_data_0

    #@7
    .line 1061
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 1037
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1039
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1041
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1043
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotation()F

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 1045
    :sswitch_4
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationX()F

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 1047
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationY()F

    #@25
    move-result v1

    #@26
    return v1

    #@27
    .line 1049
    :sswitch_6
    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleX()F

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 1051
    :sswitch_7
    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleY()F

    #@2f
    move-result v1

    #@30
    return v1

    #@31
    .line 1053
    :sswitch_8
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@33
    iget v1, v1, Landroid/view/View;->mLeft:I

    #@35
    int-to-float v1, v1

    #@36
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    #@39
    move-result v2

    #@3a
    add-float/2addr v1, v2

    #@3b
    return v1

    #@3c
    .line 1055
    :sswitch_9
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@3e
    iget v1, v1, Landroid/view/View;->mTop:I

    #@40
    int-to-float v1, v1

    #@41
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    #@44
    move-result v2

    #@45
    add-float/2addr v1, v2

    #@46
    return v1

    #@47
    .line 1057
    :sswitch_a
    invoke-virtual {v0}, Landroid/view/RenderNode;->getElevation()F

    #@4a
    move-result v1

    #@4b
    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    #@4e
    move-result v2

    #@4f
    add-float/2addr v1, v2

    #@50
    return v1

    #@51
    .line 1059
    :sswitch_b
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@53
    iget-object v1, v1, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #@55
    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    #@57
    return v1

    #@58
    .line 1035
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method private setValue(IF)V
    .locals 3
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 984
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@2
    iget-object v0, v2, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #@4
    .line 985
    .local v0, "info":Landroid/view/View$TransformationInfo;
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@6
    iget-object v1, v2, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    #@8
    .line 986
    .local v1, "renderNode":Landroid/view/RenderNode;
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 983
    :goto_0
    return-void

    #@c
    .line 988
    :sswitch_0
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    #@f
    goto :goto_0

    #@10
    .line 991
    :sswitch_1
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    #@13
    goto :goto_0

    #@14
    .line 994
    :sswitch_2
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    #@17
    goto :goto_0

    #@18
    .line 997
    :sswitch_3
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotation(F)Z

    #@1b
    goto :goto_0

    #@1c
    .line 1000
    :sswitch_4
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotationX(F)Z

    #@1f
    goto :goto_0

    #@20
    .line 1003
    :sswitch_5
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setRotationY(F)Z

    #@23
    goto :goto_0

    #@24
    .line 1006
    :sswitch_6
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setScaleX(F)Z

    #@27
    goto :goto_0

    #@28
    .line 1009
    :sswitch_7
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setScaleY(F)Z

    #@2b
    goto :goto_0

    #@2c
    .line 1012
    :sswitch_8
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@2e
    iget v2, v2, Landroid/view/View;->mLeft:I

    #@30
    int-to-float v2, v2

    #@31
    sub-float v2, p2, v2

    #@33
    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    #@36
    goto :goto_0

    #@37
    .line 1015
    :sswitch_9
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@39
    iget v2, v2, Landroid/view/View;->mTop:I

    #@3b
    int-to-float v2, v2

    #@3c
    sub-float v2, p2, v2

    #@3e
    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    #@41
    goto :goto_0

    #@42
    .line 1018
    :sswitch_a
    invoke-virtual {v1}, Landroid/view/RenderNode;->getElevation()F

    #@45
    move-result v2

    #@46
    sub-float v2, p2, v2

    #@48
    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    #@4b
    goto :goto_0

    #@4c
    .line 1021
    :sswitch_b
    iput p2, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    #@4e
    .line 1022
    invoke-virtual {v1, p2}, Landroid/view/RenderNode;->setAlpha(F)Z

    #@51
    goto :goto_0

    #@52
    .line 986
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 861
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    #@4
    if-eqz v6, :cond_0

    #@6
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    #@8
    invoke-virtual {v6, p0}, Landroid/view/ViewPropertyAnimatorRT;->startAnimation(Landroid/view/ViewPropertyAnimator;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 862
    return-void

    #@f
    .line 864
    :cond_0
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v6, v7}, Landroid/view/View;->setHasTransientState(Z)V

    #@14
    .line 865
    new-array v6, v7, [F

    #@16
    const/high16 v7, 0x3f800000    # 1.0f

    #@18
    const/4 v8, 0x0

    #@19
    aput v7, v6, v8

    #@1b
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@1e
    move-result-object v0

    #@1f
    .line 867
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/util/ArrayList;

    #@27
    .line 868
    .local v2, "nameValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 869
    const/4 v5, 0x0

    #@2d
    .line 870
    .local v5, "propertyMask":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v4

    #@31
    .line 871
    .local v4, "propertyCount":I
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@34
    .line 872
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@3a
    .line 873
    .local v3, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v6, v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@3c
    or-int/2addr v5, v6

    #@3d
    .line 871
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 875
    .end local v3    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_1
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@42
    new-instance v7, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    #@44
    invoke-direct {v7, v5, v2}, Landroid/view/ViewPropertyAnimator$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    #@47
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 876
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@4c
    if-eqz v6, :cond_2

    #@4e
    .line 877
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    #@50
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@52
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 878
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@57
    .line 880
    :cond_2
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@59
    if-eqz v6, :cond_3

    #@5b
    .line 881
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    #@5d
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@5f
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 882
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@64
    .line 884
    :cond_3
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@66
    if-eqz v6, :cond_4

    #@68
    .line 885
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    #@6a
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@6c
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 886
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@71
    .line 888
    :cond_4
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@73
    if-eqz v6, :cond_5

    #@75
    .line 889
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    #@77
    iget-object v7, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@79
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 890
    iput-object v9, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@7e
    .line 892
    :cond_5
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    #@80
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@83
    .line 893
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    #@85
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@88
    .line 894
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    #@8a
    if-eqz v6, :cond_6

    #@8c
    .line 895
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    #@8e
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@91
    .line 897
    :cond_6
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    #@93
    if-eqz v6, :cond_7

    #@95
    .line 898
    iget-wide v6, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    #@97
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@9a
    .line 900
    :cond_7
    iget-boolean v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    #@9c
    if-eqz v6, :cond_8

    #@9e
    .line 901
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@a0
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@a3
    .line 903
    :cond_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@a6
    .line 860
    return-void
.end method


# virtual methods
.method public alpha(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 735
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 736
    return-object p0
.end method

.method public alphaBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 748
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 749
    return-object p0
.end method

.method public cancel()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 422
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@6
    move-result v4

    #@7
    if-lez v4, :cond_0

    #@9
    .line 424
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/util/HashMap;

    #@11
    .line 425
    .local v1, "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    .line 426
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "runningAnim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/animation/Animator;

    #@25
    .line 427
    .local v2, "runningAnim":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    #@28
    goto :goto_0

    #@29
    .line 430
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    .end local v1    # "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    .end local v2    # "runningAnim":Landroid/animation/Animator;
    .end local v3    # "runningAnim$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@2e
    .line 431
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@30
    .line 432
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@32
    .line 433
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@34
    .line 434
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@36
    .line 435
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@38
    iget-object v5, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    #@3a
    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3d
    .line 436
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    #@3f
    if-eqz v4, :cond_1

    #@41
    .line 437
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mRTBackend:Landroid/view/ViewPropertyAnimatorRT;

    #@43
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimatorRT;->cancelAll()V

    #@46
    .line 421
    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 284
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    #@6
    return-wide v0

    #@7
    .line 288
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 289
    new-instance v0, Landroid/animation/ValueAnimator;

    #@d
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@10
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@12
    .line 291
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    #@17
    move-result-wide v0

    #@18
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 353
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@6
    return-object v0

    #@7
    .line 357
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 358
    new-instance v0, Landroid/animation/ValueAnimator;

    #@d
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    #@10
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@12
    .line 360
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    #@14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 305
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    #@6
    return-wide v0

    #@7
    .line 309
    :cond_0
    const-wide/16 v0, 0x0

    #@9
    return-wide v0
.end method

.method getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@2
    return-object v0
.end method

.method hasActions()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 849
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 850
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 849
    :cond_0
    :goto_0
    return v0

    #@a
    .line 851
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 852
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@10
    if-nez v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public rotation(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 528
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 529
    return-object p0
.end method

.method public rotationBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 541
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 542
    return-object p0
.end method

.method public rotationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 554
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 555
    return-object p0
.end method

.method public rotationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 567
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 568
    return-object p0
.end method

.method public rotationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 580
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 581
    return-object p0
.end method

.method public rotationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 593
    const/16 v0, 0x80

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 594
    return-object p0
.end method

.method public scaleX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 683
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 684
    return-object p0
.end method

.method public scaleXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 696
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 697
    return-object p0
.end method

.method public scaleY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 709
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 710
    return-object p0
.end method

.method public scaleYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 722
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 723
    return-object p0
.end method

.method public setDuration(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 265
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Animators cannot have negative duration: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 269
    :cond_0
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    #@23
    .line 270
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    #@25
    .line 271
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 341
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    #@3
    .line 342
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@5
    .line 343
    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 375
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    .line 376
    return-object p0
.end method

.method public setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 322
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Animators cannot have negative start delay: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 326
    :cond_0
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    #@23
    .line 327
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    #@25
    .line 328
    return-object p0
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@2
    .line 399
    return-object p0
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 415
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    #@a
    .line 413
    return-void
.end method

.method public translationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 606
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@4
    .line 607
    return-object p0
.end method

.method public translationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 619
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@4
    .line 620
    return-object p0
.end method

.method public translationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 632
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@4
    .line 633
    return-object p0
.end method

.method public translationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 645
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@4
    .line 646
    return-object p0
.end method

.method public translationZ(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 658
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@4
    .line 659
    return-object p0
.end method

.method public translationZBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 671
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@4
    .line 672
    return-object p0
.end method

.method public withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 841
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    #@2
    .line 842
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 843
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    #@f
    .line 845
    :cond_0
    return-object p0
.end method

.method public withLayer()Landroid/view/ViewPropertyAnimator;
    .locals 2

    #@0
    .prologue
    .line 774
    new-instance v1, Landroid/view/ViewPropertyAnimator$2;

    #@2
    invoke-direct {v1, p0}, Landroid/view/ViewPropertyAnimator$2;-><init>(Landroid/view/ViewPropertyAnimator;)V

    #@5
    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    #@7
    .line 783
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    #@9
    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    #@c
    move-result v0

    #@d
    .line 784
    .local v0, "currentLayerType":I
    new-instance v1, Landroid/view/ViewPropertyAnimator$3;

    #@f
    invoke-direct {v1, p0, v0}, Landroid/view/ViewPropertyAnimator$3;-><init>(Landroid/view/ViewPropertyAnimator;I)V

    #@12
    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    #@14
    .line 790
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 791
    new-instance v1, Ljava/util/HashMap;

    #@1a
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    #@1f
    .line 793
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    #@21
    if-nez v1, :cond_1

    #@23
    .line 794
    new-instance v1, Ljava/util/HashMap;

    #@25
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@28
    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    #@2a
    .line 797
    :cond_1
    return-object p0
.end method

.method public withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 812
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    #@2
    .line 813
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 814
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    #@f
    .line 816
    :cond_0
    return-object p0
.end method

.method public x(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 450
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 451
    return-object p0
.end method

.method public xBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 463
    const/16 v0, 0x100

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 464
    return-object p0
.end method

.method public y(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 476
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 477
    return-object p0
.end method

.method public yBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 489
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 490
    return-object p0
.end method

.method public z(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 502
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    #@5
    .line 503
    return-object p0
.end method

.method public zBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 515
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    #@5
    .line 516
    return-object p0
.end method
