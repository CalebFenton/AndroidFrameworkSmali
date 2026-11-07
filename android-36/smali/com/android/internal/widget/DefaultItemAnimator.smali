.class public Lcom/android/internal/widget/DefaultItemAnimator;
.super Lcom/android/internal/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;,
        Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static blacklist sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field blacklist mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/SimpleItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 200
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 202
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/internal/widget/DefaultItemAnimator$4;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 219
    return-void
.end method

.method private blacklist endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 401
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 402
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 403
    .local v1, "changeInfo":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 404
    iget-object v2, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    .end local v1    # "changeInfo":Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 409
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 3
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 412
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 415
    :cond_9
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_12

    .line 416
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 418
    :cond_12
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_9

    .line 422
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    goto :goto_10

    .line 423
    :cond_9
    iget-object v1, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_27

    .line 424
    iput-object v2, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 425
    const/4 v0, 0x1

    .line 429
    :goto_10
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 431
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 433
    const/4 v1, 0x1

    return v1

    .line 427
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 523
    sget-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 524
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    :cond_f
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 528
    return-void
.end method


# virtual methods
.method public blacklist animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 224
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method blacklist animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 7
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 230
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 231
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 232
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/widget/DefaultItemAnimator$5;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 234
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    return-void
.end method

.method public blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 16
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 322
    if-ne p1, p2, :cond_d

    .line 325
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local p3    # "fromX":I
    .end local p4    # "fromY":I
    .end local p5    # "toX":I
    .end local p6    # "toY":I
    .local v1, "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "fromX":I
    .local v3, "fromY":I
    .local v4, "toX":I
    .local v5, "toY":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DefaultItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 327
    .end local v1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "fromX":I
    .end local v3    # "fromY":I
    .end local v4    # "toX":I
    .end local v5    # "toY":I
    .restart local p1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local p3    # "fromX":I
    .restart local p4    # "fromY":I
    .restart local p5    # "toX":I
    .restart local p6    # "toY":I
    :cond_d
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local p3    # "fromX":I
    .end local p4    # "fromY":I
    .end local p5    # "toX":I
    .end local p6    # "toY":I
    .restart local v1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v2    # "fromX":I
    .restart local v3    # "fromY":I
    .restart local v4    # "toX":I
    .restart local v5    # "toY":I
    iget-object p1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 328
    .local p1, "prevTranslationX":F
    iget-object p3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    .line 329
    .local p3, "prevTranslationY":F
    iget-object p4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p4

    .line 330
    .local p4, "prevAlpha":F
    invoke-direct {p0, v1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 331
    sub-int p5, v4, v2

    int-to-float p5, p5

    sub-float/2addr p5, p1

    float-to-int p5, p5

    .line 332
    .local p5, "deltaX":I
    sub-int p6, v5, v3

    int-to-float p6, p6

    sub-float/2addr p6, p3

    float-to-int p6, p6

    .line 334
    .local p6, "deltaY":I
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 335
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, p4}, Landroid/view/View;->setAlpha(F)V

    .line 337
    if-eqz p2, :cond_5a

    .line 339
    invoke-direct {p0, p2}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 340
    iget-object v6, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, p5

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 341
    iget-object v6, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, p6

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    iget-object v6, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 344
    :cond_5a
    iget-object v8, v0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move v6, v4

    move v4, v2

    move-object v2, v1

    .end local v1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v4, "fromX":I
    .local v6, "toX":I
    new-instance v1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    move v7, v5

    move v5, v3

    move-object v3, p2

    .end local p2    # "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v3, "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v5, "fromY":I
    .local v7, "toY":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    move-object p2, v1

    move-object v1, v2

    move v2, v4

    move v4, v6

    .end local v6    # "toX":I
    .restart local v1    # "oldHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "fromX":I
    .local v4, "toX":I
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 p2, 0x1

    return p2
.end method

.method blacklist animateChangeImpl(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 10
    .param p1, "changeInfo"    # Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    .line 349
    iget-object v0, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 350
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_9

    :cond_7
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 351
    .local v2, "view":Landroid/view/View;
    :goto_9
    iget-object v3, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 352
    .local v3, "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_f

    iget-object v1, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 353
    .local v1, "newView":Landroid/view/View;
    :cond_f
    const/4 v4, 0x0

    if-eqz v2, :cond_47

    .line 354
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 354
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 356
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget v6, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    iget v6, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 359
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/internal/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Lcom/android/internal/widget/DefaultItemAnimator$7;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 375
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 377
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_47
    if-eqz v1, :cond_76

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 379
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 381
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/android/internal/widget/DefaultItemAnimator$8;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 396
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 398
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_76
    return-void
.end method

.method public blacklist animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 258
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 259
    .local v0, "view":Landroid/view/View;
    int-to-float v1, p2

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 260
    .end local p2    # "fromX":I
    .local v4, "fromX":I
    int-to-float p2, p3

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v5, p2

    .line 261
    .end local p3    # "fromY":I
    .local v5, "fromY":I
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 262
    sub-int p2, p4, v4

    .line 263
    .local p2, "deltaX":I
    sub-int p3, p5, v5

    .line 264
    .local p3, "deltaY":I
    if-nez p2, :cond_24

    if-nez p3, :cond_24

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 266
    const/4 v1, 0x0

    return v1

    .line 268
    :cond_24
    if-eqz p2, :cond_2b

    .line 269
    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 271
    :cond_2b
    if-eqz p3, :cond_32

    .line 272
    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 274
    :cond_32
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    move-object v3, p1

    move v6, p4

    move v7, p5

    .end local p1    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local p4    # "toX":I
    .end local p5    # "toY":I
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v6, "toX":I
    .local v7, "toY":I
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const/4 p1, 0x1

    return p1
.end method

.method blacklist animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .registers 14
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 279
    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 280
    .local v4, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 281
    .local v3, "deltaX":I
    sub-int v5, p5, p3

    .line 282
    .local v5, "deltaY":I
    const/4 v0, 0x0

    if-eqz v3, :cond_10

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 285
    :cond_10
    if-eqz v5, :cond_19

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 291
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 292
    .local v6, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/DefaultItemAnimator$6;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    return-void
.end method

.method public blacklist animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 666
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method blacklist cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 643
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 645
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method blacklist dispatchFinishedWhenDone()V
    .registers 2

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 554
    :cond_9
    return-void
.end method

.method public blacklist endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 10
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 438
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 440
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 443
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 444
    .local v3, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_2e

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    .end local v3    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 451
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 452
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_46

    .line 453
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 456
    :cond_46
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 457
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 461
    :cond_54
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5c
    if-ltz v1, :cond_77

    .line 462
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 463
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 464
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 465
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 468
    .end local v1    # "i":I
    :cond_77
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_7f
    if-ltz v1, :cond_b9

    .line 469
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 470
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_8f
    if-ltz v5, :cond_b6

    .line 471
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 472
    .local v6, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v6, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_b3

    .line 473
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 474
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 476
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 478
    iget-object v7, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 470
    .end local v6    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    .line 468
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 484
    .end local v1    # "i":I
    :cond_b9
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_c1
    if-ltz v1, :cond_e5

    .line 485
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 486
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 487
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 490
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 497
    .end local v1    # "i":I
    :cond_e5
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 520
    return-void
.end method

.method public blacklist endAnimations()V
    .registers 12

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_2a

    .line 560
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 561
    .local v3, "item":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 562
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 563
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 564
    iget-object v2, v3, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 565
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 559
    .end local v3    # "item":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 567
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_32
    if-ltz v1, :cond_47

    .line 569
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 570
    .local v3, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 571
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    .end local v3    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    .line 573
    .end local v1    # "i":I
    :cond_47
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_4f
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_6b

    .line 575
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 576
    .local v4, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 577
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 578
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    .end local v4    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 580
    .end local v1    # "i":I
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 581
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_73
    if-ltz v1, :cond_83

    .line 582
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 581
    add-int/lit8 v1, v1, -0x1

    goto :goto_73

    .line 584
    .end local v1    # "i":I
    :cond_83
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 586
    return-void

    .line 589
    :cond_8f
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_97
    if-ltz v4, :cond_d2

    .line 591
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 592
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_a7
    if-ltz v6, :cond_cf

    .line 594
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    .line 595
    .local v7, "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    iget-object v8, v7, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 596
    .local v8, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 597
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 598
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 599
    iget-object v10, v7, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 600
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 601
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 602
    iget-object v10, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    .end local v7    # "moveInfo":Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;
    .end local v8    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_cc
    add-int/lit8 v6, v6, -0x1

    goto :goto_a7

    .line 590
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_cf
    add-int/lit8 v4, v4, -0x1

    goto :goto_97

    .line 606
    .end local v4    # "i":I
    :cond_d2
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 607
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_da
    if-ltz v2, :cond_10e

    .line 608
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 609
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_ea
    if-ltz v5, :cond_10b

    .line 611
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 612
    .local v6, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 613
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 614
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 615
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_108

    .line 617
    iget-object v8, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    .end local v6    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_108
    add-int/lit8 v5, v5, -0x1

    goto :goto_ea

    .line 607
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_10b
    add-int/lit8 v2, v2, -0x1

    goto :goto_da

    .line 621
    .end local v2    # "i":I
    :cond_10e
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_116
    if-ltz v2, :cond_142

    .line 623
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 624
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 625
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_126
    if-ltz v4, :cond_13f

    .line 626
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 627
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 628
    iget-object v5, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    :cond_13c
    add-int/lit8 v4, v4, -0x1

    goto :goto_126

    .line 622
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_13f
    add-int/lit8 v2, v2, -0x1

    goto :goto_116

    .line 633
    .end local v2    # "i":I
    :cond_142
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 634
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 635
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 636
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 639
    return-void
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 532
    :goto_5c
    return v0
.end method

.method public blacklist runPendingAnimations()V
    .registers 16

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 104
    .local v0, "removalsPending":Z
    iget-object v1, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 105
    .local v1, "movesPending":Z
    iget-object v2, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 106
    .local v2, "changesPending":Z
    iget-object v3, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 107
    .local v3, "additionsPending":Z
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    .line 109
    return-void

    .line 112
    :cond_29
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 113
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 114
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    goto :goto_2f

    .line 115
    :cond_3f
    iget-object v4, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v4, 0x0

    if-eqz v1, :cond_77

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 122
    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$1;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 133
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_74

    .line 134
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 135
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 136
    .end local v7    # "view":Landroid/view/View;
    goto :goto_77

    .line 137
    :cond_74
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 141
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_77
    :goto_77
    if-eqz v2, :cond_a9

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 146
    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$2;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 156
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_a6

    .line 157
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 158
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 159
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    goto :goto_a9

    .line 160
    :cond_a6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 164
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_a9
    :goto_a9
    if-eqz v3, :cond_f8

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v6, p0, Lcom/android/internal/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 169
    new-instance v6, Lcom/android/internal/widget/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/android/internal/widget/DefaultItemAnimator$3;-><init>(Lcom/android/internal/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 179
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_cf

    if-nez v1, :cond_cf

    if-eqz v2, :cond_cb

    goto :goto_cf

    .line 187
    :cond_cb
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_f8

    .line 180
    :cond_cf
    :goto_cf
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_d9

    :cond_d8
    move-wide v9, v7

    .line 181
    .local v9, "removeDuration":J
    :goto_d9
    if-eqz v1, :cond_e0

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_e1

    :cond_e0
    move-wide v11, v7

    .line 182
    .local v11, "moveDuration":J
    :goto_e1
    if-eqz v2, :cond_e7

    invoke-virtual {p0}, Lcom/android/internal/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 183
    .local v7, "changeDuration":J
    :cond_e7
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 184
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v6, v13, v14}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 186
    .end local v4    # "view":Landroid/view/View;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    nop

    .line 190
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    :cond_f8
    :goto_f8
    return-void
.end method
