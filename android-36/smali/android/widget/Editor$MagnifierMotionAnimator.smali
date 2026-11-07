.class Landroid/widget/Editor$MagnifierMotionAnimator;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnifierMotionAnimator"
.end annotation


# static fields
.field private static final greylist-max-o DURATION:J = 0x64L


# instance fields
.field private greylist-max-o mAnimationCurrentX:F

.field private greylist-max-o mAnimationCurrentY:F

.field private greylist-max-o mAnimationStartX:F

.field private greylist-max-o mAnimationStartY:F

.field private final greylist-max-o mAnimator:Landroid/animation/ValueAnimator;

.field private greylist-max-o mLastX:F

.field private greylist-max-o mLastY:F

.field private final greylist-max-o mMagnifier:Landroid/widget/Magnifier;

.field private greylist-max-o mMagnifierIsShowing:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3oFELTA7rr96c13o0ZpugsYfHew(Landroid/widget/Editor$MagnifierMotionAnimator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor$MagnifierMotionAnimator;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->dismiss()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$MagnifierMotionAnimator;->show(FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->update()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/widget/Magnifier;)V
    .registers 5
    .param p1, "magnifier"    # Landroid/widget/Magnifier;

    .line 4986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4987
    iput-object p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    .line 4989
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 4990
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4991
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4992
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5000
    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Magnifier;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;)V

    return-void
.end method

.method private greylist-max-o dismiss()V
    .registers 2

    .line 5042
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    .line 5043
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5044
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 5045
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 4994
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    sub-float/2addr v1, v2

    .line 4995
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    .line 4996
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    sub-float/2addr v1, v2

    .line 4997
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    .line 4998
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/Magnifier;->show(FF)V

    .line 4999
    return-void
.end method

.method private greylist-max-o show(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 5009
    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 5011
    .local v0, "startNewAnimation":Z
    :goto_e
    if-eqz v0, :cond_34

    .line 5012
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5013
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5014
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 5015
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    goto :goto_2e

    .line 5017
    :cond_26
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 5018
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    .line 5020
    :goto_2e
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_41

    .line 5022
    :cond_34
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_41

    .line 5023
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v2, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    .line 5026
    :cond_41
    :goto_41
    iput p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    .line 5027
    iput p2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    .line 5028
    iput-boolean v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 5029
    return-void
.end method

.method private greylist-max-o update()V
    .registers 2

    .line 5035
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->update()V

    .line 5036
    return-void
.end method
