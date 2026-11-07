.class Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final blacklist mActionState:I

.field final blacklist mAnimationType:I

.field blacklist mEnded:Z

.field private blacklist mFraction:F

.field public blacklist mIsPendingCleanup:Z

.field blacklist mOverridden:Z

.field final blacklist mStartDx:F

.field final blacklist mStartDy:F

.field final blacklist mTargetX:F

.field final blacklist mTargetY:F

.field private final blacklist mValueAnimator:Landroid/animation/ValueAnimator;

.field final blacklist mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V
    .registers 11
    .param p2, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2308
    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2314
    iput p4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2315
    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2316
    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 2317
    iput p5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2318
    iput p6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2319
    iput p7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2320
    iput p8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2321
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2322
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2329
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2330
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2331
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2332
    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 2344
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2345
    return-void
.end method

.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2383
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2384
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2375
    iget-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 2376
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2378
    :cond_a
    iput-boolean v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2379
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2389
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2371
    return-void
.end method

.method public blacklist setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .line 2335
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2336
    return-void
.end method

.method public blacklist setFraction(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 2348
    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2349
    return-void
.end method

.method public blacklist start()V
    .registers 3

    .line 2339
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2340
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2341
    return-void
.end method

.method public blacklist update()V
    .registers 5

    .line 2356
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 2357
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_20

    .line 2359
    :cond_13
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2361
    :goto_20
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    .line 2362
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_40

    .line 2364
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2366
    :goto_40
    return-void
.end method
