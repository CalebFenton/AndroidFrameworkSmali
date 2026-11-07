.class Lcom/android/internal/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/helper/ItemTouchHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 305
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_81

    .line 306
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 307
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 308
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 309
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 310
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_a8

    .line 311
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    .line 312
    .local v3, "animation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v3, :cond_80

    .line 313
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 314
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 315
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 316
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 317
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 319
    :cond_6e
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 320
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v4, p2, v5, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 322
    .end local v3    # "animation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_80
    goto :goto_a8

    .line 323
    :cond_81
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_9e

    if-ne v0, v1, :cond_88

    goto :goto_9e

    .line 326
    :cond_88
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_a8

    .line 329
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 333
    .local v3, "index":I
    if-ltz v3, :cond_a8

    .line 334
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v4, v0, p2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_a8

    .line 324
    .end local v3    # "index":I
    :cond_9e
    :goto_9e
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 325
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 337
    :cond_a8
    :goto_a8
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_b5

    .line 338
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    :cond_b5
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_bc

    goto :goto_bd

    :cond_bc
    move v1, v2

    :goto_bd
    return v1
.end method

.method public blacklist onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .line 403
    if-nez p1, :cond_3

    .line 404
    return-void

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 407
    return-void
.end method

.method public blacklist onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 353
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 354
    return-void

    .line 356
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 357
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 358
    .local v2, "activePointerIndex":I
    if-ltz v2, :cond_2f

    .line 359
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, v0, p2, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 361
    :cond_2f
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 362
    .local v3, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_36

    .line 363
    return-void

    .line 365
    :cond_36
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_a2

    :pswitch_3a
    goto :goto_a1

    .line 387
    :pswitch_3b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 388
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 389
    .local v5, "pointerId":I
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v5, v6, :cond_a1

    .line 392
    if-nez v1, :cond_4c

    const/4 v4, 0x1

    .line 393
    .local v4, "newPointerIndex":I
    :cond_4c
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 394
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 395
    .end local v4    # "newPointerIndex":I
    goto :goto_a1

    .line 378
    .end local v1    # "pointerIndex":I
    .end local v5    # "pointerId":I
    :pswitch_5e
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_96

    .line 379
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_96

    .line 368
    :pswitch_6c
    if-ltz v2, :cond_a1

    .line 369
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v1, p2, v4, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 373
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    goto :goto_a1

    .line 383
    :cond_96
    :goto_96
    :pswitch_96
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 384
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v1, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 385
    nop

    .line 399
    :cond_a1
    :goto_a1
    return-void

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_96
        :pswitch_6c
        :pswitch_5e
        :pswitch_3a
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method
