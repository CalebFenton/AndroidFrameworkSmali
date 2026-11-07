.class Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2239
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2240
    return-void
.end method


# virtual methods
.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2244
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2249
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2250
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_5d

    .line 2251
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2252
    .local v1, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_5d

    .line 2253
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2254
    return-void

    .line 2256
    :cond_21
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2260
    .local v2, "pointerId":I
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_5d

    .line 2261
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2262
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2263
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2264
    .local v5, "y":F
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v4, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 2265
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v5, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 2266
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 2271
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v6, v6, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2272
    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 2277
    .end local v1    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "pointerId":I
    .end local v3    # "index":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_5d
    return-void
.end method
