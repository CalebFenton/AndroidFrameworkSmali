.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final greylist-max-o mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1076
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1090
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1091
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1140
    instance-of v0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return v0
.end method

.method public whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1284
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    .line 1285
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    .line 1286
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    .line 1287
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_41

    .line 1288
    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1289
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3e

    .line 1290
    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lt v3, v5, :cond_21

    .line 1291
    goto :goto_41

    .line 1293
    :cond_21
    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    .line 1294
    .local v5, "childLeft":I
    iget-object v6, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 1295
    .local v6, "childTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1296
    .local v7, "saveCount":I
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1297
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1298
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1287
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "saveCount":I
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1301
    .end local v3    # "i":I
    :cond_41
    :goto_41
    return-void
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1135
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1262
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    .line 1263
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    .line 1264
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    .line 1265
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_3d

    .line 1266
    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1267
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3a

    .line 1268
    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    .line 1269
    .local v5, "childLeft":I
    iget-object v6, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    .line 1270
    .local v6, "childTop":I
    iget-object v7, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v0

    .line 1271
    .local v7, "childBottom":I
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v1

    .line 1277
    .local v8, "childRight":I
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 1265
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "childBottom":I
    .end local v8    # "childRight":I
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1280
    .end local v3    # "i":I
    :cond_3d
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1145
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1146
    .local v1, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1147
    .local v2, "heightSpecSize":I
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1148
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1152
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v5

    .line 1153
    .local v5, "count":I
    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    .line 1154
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    if-ge v6, v5, :cond_15d

    .line 1155
    invoke-virtual {v0, v6}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1156
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1158
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    if-eqz v10, :cond_153

    .line 1162
    move-object v10, v9

    check-cast v10, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v10, v10, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 1163
    .local v10, "scaleStartRow":F
    move-object v11, v9

    check-cast v11, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v11, v11, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 1164
    .local v11, "scaleEndRow":F
    move-object v12, v9

    check-cast v12, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v12, v12, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 1165
    .local v12, "scaleStartCol":F
    move-object v13, v9

    check-cast v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v13, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 1166
    .local v13, "scaleEndCol":F
    const/4 v14, 0x0

    cmpg-float v15, v10, v14

    if-ltz v15, :cond_145

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_145

    .line 1170
    cmpg-float v16, v11, v10

    if-ltz v16, :cond_137

    cmpl-float v16, v10, v15

    if-gtz v16, :cond_137

    .line 1174
    cmpg-float v14, v13, v14

    if-ltz v14, :cond_129

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_129

    .line 1178
    cmpg-float v14, v13, v12

    if-ltz v14, :cond_11b

    cmpl-float v14, v13, v15

    if-gtz v14, :cond_11b

    .line 1187
    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v7, v3

    mul-float/2addr v7, v12

    float-to-int v7, v7

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    int-to-float v6, v4

    mul-float/2addr v6, v10

    float-to-int v6, v6

    move-object/from16 v18, v9

    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v9, v3

    mul-float/2addr v9, v13

    float-to-int v9, v9

    move/from16 v19, v10

    .end local v10    # "scaleStartRow":F
    .local v19, "scaleStartRow":F
    int-to-float v10, v4

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v15, v7, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v15, v14, v17

    .line 1189
    int-to-float v6, v3

    sub-float v7, v13, v12

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1191
    .local v6, "childWidthSpec":I
    const/4 v9, 0x0

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1192
    .local v10, "childHeightSpec":I
    invoke-virtual {v8, v6, v10}, Landroid/view/View;->measure(II)V

    .line 1197
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v17

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v9, v14, :cond_109

    .line 1198
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v14, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v14, v14, v17

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v9, v14

    .line 1199
    .local v9, "overflowedHeight":I
    add-int/lit8 v14, v9, 0x1

    div-int/lit8 v14, v14, 0x2

    .line 1200
    .end local v9    # "overflowedHeight":I
    .local v14, "overflowedHeight":I
    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v14

    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 1201
    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v15, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v14

    iput v15, v9, Landroid/graphics/Rect;->top:I

    .line 1202
    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_eb

    .line 1203
    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v7

    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 1204
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    const/4 v9, 0x0

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1206
    :cond_eb
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_109

    .line 1207
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget-object v15, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v4

    sub-int/2addr v9, v15

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1208
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 1211
    .end local v14    # "overflowedHeight":I
    :cond_109
    int-to-float v7, v4

    sub-float v9, v11, v19

    mul-float/2addr v7, v9

    float-to-int v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1213
    .end local v10    # "childHeightSpec":I
    .local v7, "childHeightSpec":I
    invoke-virtual {v8, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1154
    .end local v6    # "childWidthSpec":I
    .end local v7    # "childHeightSpec":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "scaleEndRow":F
    .end local v12    # "scaleStartCol":F
    .end local v13    # "scaleEndCol":F
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "scaleStartRow":F
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "i":I
    .local v6, "i":I
    goto/16 :goto_29

    .line 1178
    .restart local v8    # "child":Landroid/view/View;
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    .local v10, "scaleStartRow":F
    .restart local v11    # "scaleEndRow":F
    .restart local v12    # "scaleStartCol":F
    .restart local v13    # "scaleEndCol":F
    :cond_11b
    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v10

    .line 1179
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "scaleStartRow":F
    .restart local v17    # "i":I
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "scaleStartRow":F
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1174
    .end local v17    # "i":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "scaleStartRow":F
    .restart local v6    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "scaleStartRow":F
    :cond_129
    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v10

    .line 1175
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "scaleStartRow":F
    .restart local v17    # "i":I
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "scaleStartRow":F
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1170
    .end local v17    # "i":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "scaleStartRow":F
    .restart local v6    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "scaleStartRow":F
    :cond_137
    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v10

    .line 1171
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "scaleStartRow":F
    .restart local v17    # "i":I
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "scaleStartRow":F
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1166
    .end local v17    # "i":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "scaleStartRow":F
    .restart local v6    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "scaleStartRow":F
    :cond_145
    move/from16 v17, v6

    move-object/from16 v18, v9

    move/from16 v19, v10

    .line 1167
    .end local v6    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "scaleStartRow":F
    .restart local v17    # "i":I
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "scaleStartRow":F
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1159
    .end local v11    # "scaleEndRow":F
    .end local v12    # "scaleStartCol":F
    .end local v13    # "scaleEndCol":F
    .end local v17    # "i":I
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "scaleStartRow":F
    .restart local v6    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_153
    move/from16 v17, v6

    .end local v6    # "i":I
    .restart local v17    # "i":I
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1154
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "i":I
    .restart local v6    # "i":I
    :cond_15d
    move/from16 v17, v6

    .line 1218
    .end local v6    # "i":I
    const/4 v6, 0x0

    .line 1219
    .local v6, "visibleRectCount":I
    new-array v7, v5, [I

    .line 1220
    .local v7, "visibleRectGroup":[I
    new-array v8, v5, [Landroid/graphics/Rect;

    .line 1221
    .local v8, "visibleRectArray":[Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_165
    if-ge v9, v5, :cond_17e

    .line 1222
    invoke-virtual {v0, v9}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_17b

    .line 1223
    aput v6, v7, v6

    .line 1224
    iget-object v10, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v10, v10, v9

    aput-object v10, v8, v6

    .line 1225
    add-int/lit8 v6, v6, 0x1

    .line 1221
    :cond_17b
    add-int/lit8 v9, v9, 0x1

    goto :goto_165

    .line 1228
    .end local v9    # "i":I
    :cond_17e
    sget-object v9, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/4 v10, 0x0

    invoke-static {v8, v10, v6, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1231
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_185
    add-int/lit8 v10, v6, -0x1

    if-ge v9, v10, :cond_1be

    .line 1232
    add-int/lit8 v10, v9, 0x1

    .local v10, "j":I
    :goto_18b
    if-ge v10, v6, :cond_1bb

    .line 1233
    aget-object v11, v8, v9

    aget-object v12, v8, v10

    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_1b8

    .line 1234
    aget v11, v7, v9

    aput v11, v7, v10

    .line 1235
    aget-object v11, v8, v10

    aget-object v12, v8, v10

    iget v12, v12, Landroid/graphics/Rect;->left:I

    aget-object v13, v8, v9

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v8, v10

    iget v14, v14, Landroid/graphics/Rect;->right:I

    aget-object v15, v8, v9

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    aget-object v16, v8, v10

    .line 1238
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    .line 1235
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1232
    :cond_1b8
    add-int/lit8 v10, v10, 0x1

    goto :goto_18b

    .line 1231
    .end local v10    # "j":I
    :cond_1bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_185

    .line 1244
    .end local v9    # "i":I
    :cond_1be
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_1c0
    if-ltz v9, :cond_201

    .line 1245
    aget-object v10, v8, v9

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_1fa

    .line 1246
    aget-object v10, v8, v9

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    .line 1247
    .local v10, "overflowedHeight":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1ce
    if-gt v11, v9, :cond_1f7

    .line 1248
    aget v12, v7, v9

    aget v13, v7, v11

    if-ne v12, v13, :cond_1f0

    .line 1249
    aget-object v12, v8, v11

    aget-object v13, v8, v11

    iget v13, v13, Landroid/graphics/Rect;->left:I

    aget-object v14, v8, v11

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v10

    aget-object v15, v8, v11

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move/from16 v16, v3

    .end local v3    # "width":I
    .local v16, "width":I
    aget-object v3, v8, v11

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v10

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1f2

    .line 1248
    .end local v16    # "width":I
    .restart local v3    # "width":I
    :cond_1f0
    move/from16 v16, v3

    .line 1247
    .end local v3    # "width":I
    .restart local v16    # "width":I
    :goto_1f2
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    goto :goto_1ce

    .end local v16    # "width":I
    .restart local v3    # "width":I
    :cond_1f7
    move/from16 v16, v3

    .end local v3    # "width":I
    .restart local v16    # "width":I
    goto :goto_1fc

    .line 1245
    .end local v10    # "overflowedHeight":I
    .end local v11    # "j":I
    .end local v16    # "width":I
    .restart local v3    # "width":I
    :cond_1fa
    move/from16 v16, v3

    .line 1244
    .end local v3    # "width":I
    .restart local v16    # "width":I
    :goto_1fc
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v16

    goto :goto_1c0

    .line 1257
    .end local v9    # "i":I
    .end local v16    # "width":I
    .restart local v3    # "width":I
    :cond_201
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$ScaledLayout;->setMeasuredDimension(II)V

    .line 1258
    return-void
.end method
