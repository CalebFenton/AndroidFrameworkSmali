.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final greylist-max-o globalInvalidateRect:Landroid/graphics/Rect;

.field greylist-max-o horizontalOffset:I

.field private final greylist-max-o invalidateRect:Landroid/graphics/Rect;

.field private final greylist-max-o invalidateRectf:Landroid/graphics/RectF;

.field greylist-max-o mView:Landroid/view/View;

.field private final greylist-max-o parentRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/StackView;

.field greylist-max-o verticalOffset:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1332
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1333
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1318
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1320
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1334
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1335
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1336
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1337
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1338
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1318
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1319
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1320
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1321
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1325
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1326
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1327
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1328
    iput v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1329
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 1330
    return-void
.end method


# virtual methods
.method greylist-max-o getInvalidateRect()Landroid/graphics/Rect;
    .registers 2

    .line 1368
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method greylist-max-o invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1342
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1343
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v1}, Landroid/widget/StackView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v2}, Landroid/widget/StackView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1344
    move-object v0, p1

    .line 1345
    .local v0, "p":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_ae

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_28

    goto/16 :goto_ae

    .line 1347
    :cond_28
    const/4 v1, 0x1

    .line 1348
    .local v1, "firstPass":Z
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1349
    :goto_2e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_9a

    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1350
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 1351
    if-nez v1, :cond_5f

    .line 1352
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1353
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1352
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1355
    :cond_5f
    const/4 v1, 0x0

    .line 1356
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 1357
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1358
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 1357
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1359
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_2e

    .line 1363
    :cond_9a
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 1365
    return-void

    .line 1345
    .end local v1    # "firstPass":Z
    :cond_ae
    :goto_ae
    return-void
.end method

.method greylist-max-o resetInvalidateRect()V
    .registers 3

    .line 1372
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1373
    return-void
.end method

.method public greylist-max-o setHorizontalOffset(I)V
    .registers 3
    .param p1, "newHorizontalOffset"    # I

    .line 1381
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1382
    return-void
.end method

.method public greylist-max-o setOffsets(II)V
    .registers 19
    .param p1, "newHorizontalOffset"    # I
    .param p2, "newVerticalOffset"    # I

    .line 1385
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    sub-int v3, v1, v3

    .line 1386
    .local v3, "horizontalOffsetDelta":I
    iput v1, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1387
    iget v4, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    sub-int v4, v2, v4

    .line 1388
    .local v4, "verticalOffsetDelta":I
    iput v2, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1390
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    if-eqz v5, :cond_bd

    .line 1391
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1392
    iget-object v5, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1393
    .local v5, "left":I
    iget-object v6, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1394
    .local v6, "right":I
    iget-object v7, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1395
    .local v7, "top":I
    iget-object v8, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1397
    .local v8, "bottom":I
    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v7

    int-to-float v12, v6

    int-to-float v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1399
    iget-object v9, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    .line 1400
    .local v9, "xoffset":F
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    .line 1401
    .local v10, "yoffset":F
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1402
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1403
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v12, v9

    neg-float v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1405
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget-object v13, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    .line 1406
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget-object v14, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    .line 1407
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    iget-object v15, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v15

    .line 1408
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1405
    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1410
    iget-object v1, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    iget-object v2, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1412
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    .end local v9    # "xoffset":F
    .end local v10    # "yoffset":F
    :cond_bd
    return-void
.end method

.method public greylist-max-o setVerticalOffset(I)V
    .registers 3
    .param p1, "newVerticalOffset"    # I

    .line 1377
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1378
    return-void
.end method
