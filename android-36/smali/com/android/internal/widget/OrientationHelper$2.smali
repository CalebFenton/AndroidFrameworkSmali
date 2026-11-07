.class Lcom/android/internal/widget/OrientationHelper$2;
.super Lcom/android/internal/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OrientationHelper;->createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OrientationHelper;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getDecoratedEnd(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 388
    nop

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 390
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasurement(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 372
    nop

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 374
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 380
    nop

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 382
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedStart(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 395
    nop

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 397
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public blacklist getEnd()I
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getEndAfterPadding()I
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getEndPadding()I
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public blacklist getModeInOther()I
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public blacklist getStartAfterPadding()I
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalSpace()I
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 415
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 414
    return v0
.end method

.method public blacklist getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 402
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public blacklist getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public blacklist offsetChild(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 421
    return-void
.end method

.method public blacklist offsetChildren(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$2;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 363
    return-void
.end method
