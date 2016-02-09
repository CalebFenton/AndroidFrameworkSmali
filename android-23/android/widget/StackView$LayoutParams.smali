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
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1290
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    #@3
    .line 1291
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 1276
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    #@d
    .line 1277
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@14
    .line 1278
    new-instance v0, Landroid/graphics/RectF;

    #@16
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@19
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@1b
    .line 1279
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@22
    .line 1292
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@24
    .line 1293
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@26
    .line 1294
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    #@28
    .line 1295
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    #@2a
    .line 1290
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1281
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    #@3
    .line 1282
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    .line 1276
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    #@d
    .line 1277
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@14
    .line 1278
    new-instance v0, Landroid/graphics/RectF;

    #@16
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@19
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@1b
    .line 1279
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@22
    .line 1283
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    #@24
    .line 1284
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    #@26
    .line 1285
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@28
    .line 1286
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@2a
    .line 1287
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@2c
    .line 1281
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1300
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6
    .line 1301
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@8
    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    #@a
    invoke-virtual {v4}, Landroid/widget/StackView;->getWidth()I

    #@d
    move-result v4

    #@e
    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    #@10
    invoke-virtual {v5}, Landroid/widget/StackView;->getHeight()I

    #@13
    move-result v5

    #@14
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    #@17
    .line 1302
    move-object v1, p1

    #@18
    .line 1303
    .local v1, "p":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1b
    move-result-object v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@21
    move-result-object v2

    #@22
    instance-of v2, v2, Landroid/view/View;

    #@24
    :goto_0
    if-nez v2, :cond_1

    #@26
    return-void

    #@27
    :cond_0
    move v2, v3

    #@28
    goto :goto_0

    #@29
    .line 1305
    :cond_1
    const/4 v0, 0x1

    #@2a
    .line 1306
    .local v0, "firstPass":Z
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@2f
    .line 1307
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@32
    move-result-object v2

    #@33
    if-eqz v2, :cond_2

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@38
    move-result-object v2

    #@39
    instance-of v2, v2, Landroid/view/View;

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 1308
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    #@3f
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@41
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 1321
    :cond_2
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@49
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@4b
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@4d
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@4f
    .line 1322
    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@51
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@53
    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@55
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@57
    .line 1321
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    #@5a
    .line 1298
    return-void

    #@5b
    .line 1309
    :cond_3
    if-nez v0, :cond_4

    #@5d
    .line 1310
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@5f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@62
    move-result v3

    #@63
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    #@66
    move-result v4

    #@67
    sub-int/2addr v3, v4

    #@68
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@6b
    move-result v4

    #@6c
    .line 1311
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    #@6f
    move-result v5

    #@70
    .line 1310
    sub-int/2addr v4, v5

    #@71
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    #@74
    .line 1313
    :cond_4
    const/4 v0, 0x0

    #@75
    .line 1314
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@78
    move-result-object v1

    #@79
    .end local v1    # "p":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    #@7b
    .line 1315
    .restart local v1    # "p":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    #@7d
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    #@80
    move-result v3

    #@81
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    #@84
    move-result v4

    #@85
    .line 1316
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@88
    move-result v5

    #@89
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    #@8c
    move-result v6

    #@8d
    add-int/2addr v5, v6

    #@8e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@91
    move-result v6

    #@92
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    #@95
    move-result v7

    #@96
    add-int/2addr v6, v7

    #@97
    .line 1315
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@9a
    .line 1317
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@9c
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@9e
    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@a0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@a2
    .line 1318
    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@a4
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@a6
    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    #@a8
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@aa
    .line 1317
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    #@ad
    goto :goto_1
.end method

.method resetInvalidateRect()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1330
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@6
    .line 1329
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "newHorizontalOffset"    # I

    #@0
    .prologue
    .line 1339
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    #@5
    .line 1338
    return-void
.end method

.method public setOffsets(II)V
    .locals 16
    .param p1, "newHorizontalOffset"    # I
    .param p2, "newVerticalOffset"    # I

    #@0
    .prologue
    .line 1343
    move-object/from16 v0, p0

    #@2
    iget v10, v0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@4
    sub-int v3, p1, v10

    #@6
    .line 1344
    .local v3, "horizontalOffsetDelta":I
    move/from16 v0, p1

    #@8
    move-object/from16 v1, p0

    #@a
    iput v0, v1, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@c
    .line 1345
    move-object/from16 v0, p0

    #@e
    iget v10, v0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@10
    sub-int v7, p2, v10

    #@12
    .line 1346
    .local v7, "verticalOffsetDelta":I
    move/from16 v0, p2

    #@14
    move-object/from16 v1, p0

    #@16
    iput v0, v1, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@18
    .line 1348
    move-object/from16 v0, p0

    #@1a
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@1c
    if-eqz v10, :cond_0

    #@1e
    .line 1349
    move-object/from16 v0, p0

    #@20
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@22
    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    #@25
    .line 1350
    move-object/from16 v0, p0

    #@27
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@29
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    #@2c
    move-result v10

    #@2d
    add-int/2addr v10, v3

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@32
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    #@35
    move-result v11

    #@36
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@39
    move-result v4

    #@3a
    .line 1351
    .local v4, "left":I
    move-object/from16 v0, p0

    #@3c
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@3e
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    #@41
    move-result v10

    #@42
    add-int/2addr v10, v3

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@47
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    #@4a
    move-result v11

    #@4b
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v5

    #@4f
    .line 1352
    .local v5, "right":I
    move-object/from16 v0, p0

    #@51
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@53
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@56
    move-result v10

    #@57
    add-int/2addr v10, v7

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@5c
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@5f
    move-result v11

    #@60
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@63
    move-result v6

    #@64
    .line 1353
    .local v6, "top":I
    move-object/from16 v0, p0

    #@66
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@68
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@6b
    move-result v10

    #@6c
    add-int/2addr v10, v7

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@71
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@74
    move-result v11

    #@75
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@78
    move-result v2

    #@79
    .line 1355
    .local v2, "bottom":I
    move-object/from16 v0, p0

    #@7b
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@7d
    int-to-float v11, v4

    #@7e
    int-to-float v12, v6

    #@7f
    int-to-float v13, v5

    #@80
    int-to-float v14, v2

    #@81
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    #@84
    .line 1357
    move-object/from16 v0, p0

    #@86
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@88
    iget v10, v10, Landroid/graphics/RectF;->left:F

    #@8a
    neg-float v8, v10

    #@8b
    .line 1358
    .local v8, "xoffset":F
    move-object/from16 v0, p0

    #@8d
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@8f
    iget v10, v10, Landroid/graphics/RectF;->top:F

    #@91
    neg-float v9, v10

    #@92
    .line 1359
    .local v9, "yoffset":F
    move-object/from16 v0, p0

    #@94
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@96
    invoke-virtual {v10, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    #@99
    .line 1360
    move-object/from16 v0, p0

    #@9b
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@9d
    invoke-virtual {v10}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@a0
    move-result-object v10

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@a5
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@a8
    .line 1361
    move-object/from16 v0, p0

    #@aa
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@ac
    neg-float v11, v8

    #@ad
    neg-float v12, v9

    #@ae
    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    #@b1
    .line 1363
    move-object/from16 v0, p0

    #@b3
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@b9
    iget v11, v11, Landroid/graphics/RectF;->left:F

    #@bb
    float-to-double v12, v11

    #@bc
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@bf
    move-result-wide v12

    #@c0
    double-to-int v11, v12

    #@c1
    .line 1364
    move-object/from16 v0, p0

    #@c3
    iget-object v12, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@c5
    iget v12, v12, Landroid/graphics/RectF;->top:F

    #@c7
    float-to-double v12, v12

    #@c8
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@cb
    move-result-wide v12

    #@cc
    double-to-int v12, v12

    #@cd
    .line 1365
    move-object/from16 v0, p0

    #@cf
    iget-object v13, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@d1
    iget v13, v13, Landroid/graphics/RectF;->right:F

    #@d3
    float-to-double v14, v13

    #@d4
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@d7
    move-result-wide v14

    #@d8
    double-to-int v13, v14

    #@d9
    .line 1366
    move-object/from16 v0, p0

    #@db
    iget-object v14, v0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    #@dd
    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    #@df
    float-to-double v14, v14

    #@e0
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    #@e3
    move-result-wide v14

    #@e4
    double-to-int v14, v14

    #@e5
    .line 1363
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    #@e8
    .line 1368
    move-object/from16 v0, p0

    #@ea
    iget-object v10, v0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-object v11, v0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    #@f0
    move-object/from16 v0, p0

    #@f2
    invoke-virtual {v0, v10, v11}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    #@f5
    .line 1342
    .end local v2    # "bottom":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v8    # "xoffset":F
    .end local v9    # "yoffset":F
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "newVerticalOffset"    # I

    #@0
    .prologue
    .line 1335
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    #@5
    .line 1334
    return-void
.end method
