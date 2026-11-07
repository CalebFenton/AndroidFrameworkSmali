.class Lcom/android/internal/widget/OrientationHelper$1;
.super Lcom/android/internal/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OrientationHelper;->createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/OrientationHelper;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist getDecoratedEnd(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 290
    nop

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 292
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasurement(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 274
    nop

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 276
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 282
    nop

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 284
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedStart(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 297
    nop

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 299
    .local v0, "params":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public blacklist getEnd()I
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getEndAfterPadding()I
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getEndPadding()I
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public blacklist getMode()I
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public blacklist getModeInOther()I
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public blacklist getStartAfterPadding()I
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalSpace()I
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 317
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 316
    return v0
.end method

.method public blacklist getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public blacklist getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public blacklist offsetChild(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 323
    return-void
.end method

.method public blacklist offsetChildren(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/OrientationHelper$1;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 265
    return-void
.end method
