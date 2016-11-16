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
        Landroid/media/Cea708CCWidget$ScaledLayout$1;,
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1076
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    #@2
    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    #@5
    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    #@7
    .line 1073
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1090
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 1089
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1140
    instance-of v0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@2
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1284
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v5

    #@4
    .line 1285
    .local v5, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v6

    #@8
    .line 1286
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v3

    #@c
    .line 1287
    .local v3, "count":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@f
    .line 1288
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 1289
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v8

    #@17
    const/16 v9, 0x8

    #@19
    if-eq v8, v9, :cond_2

    #@1b
    .line 1290
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1d
    array-length v8, v8

    #@1e
    if-lt v4, v8, :cond_1

    #@20
    .line 1283
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    #@21
    .line 1293
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@23
    aget-object v8, v8, v4

    #@25
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@27
    add-int v1, v5, v8

    #@29
    .line 1294
    .local v1, "childLeft":I
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@2b
    aget-object v8, v8, v4

    #@2d
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@2f
    add-int v2, v6, v8

    #@31
    .line 1295
    .local v2, "childTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@34
    move-result v7

    #@35
    .line 1296
    .local v7, "saveCount":I
    int-to-float v8, v1

    #@36
    int-to-float v9, v2

    #@37
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    #@3a
    .line 1297
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@3d
    .line 1298
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@40
    .line 1287
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v7    # "saveCount":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1135
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v7

    #@4
    .line 1263
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v8

    #@8
    .line 1264
    .local v8, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v5

    #@c
    .line 1265
    .local v5, "count":I
    const/4 v6, 0x0

    #@d
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    #@f
    .line 1266
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 1267
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v9

    #@17
    const/16 v10, 0x8

    #@19
    if-eq v9, v10, :cond_0

    #@1b
    .line 1268
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1d
    aget-object v9, v9, v6

    #@1f
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@21
    add-int v2, v7, v9

    #@23
    .line 1269
    .local v2, "childLeft":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@25
    aget-object v9, v9, v6

    #@27
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@29
    add-int v4, v8, v9

    #@2b
    .line 1270
    .local v4, "childTop":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@2d
    aget-object v9, v9, v6

    #@2f
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@31
    add-int v1, v7, v9

    #@33
    .line 1271
    .local v1, "childBottom":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@35
    aget-object v9, v9, v6

    #@37
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #@39
    add-int v3, v8, v9

    #@3b
    .line 1277
    .local v3, "childRight":I
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    #@3e
    .line 1265
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1261
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1145
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@3
    move-result v22

    #@4
    .line 1146
    .local v22, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v9

    #@8
    .line 1147
    .local v9, "heightSpecSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@b
    move-result v23

    #@c
    sub-int v23, v22, v23

    #@e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@11
    move-result v24

    #@12
    sub-int v21, v23, v24

    #@14
    .line 1148
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@17
    move-result v23

    #@18
    sub-int v23, v9, v23

    #@1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@1d
    move-result v24

    #@1e
    sub-int v8, v23, v24

    #@20
    .line 1152
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@23
    move-result v7

    #@24
    .line 1153
    .local v7, "count":I
    new-array v0, v7, [Landroid/graphics/Rect;

    #@26
    move-object/from16 v23, v0

    #@28
    move-object/from16 v0, v23

    #@2a
    move-object/from16 v1, p0

    #@2c
    iput-object v0, v1, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@2e
    .line 1154
    const/4 v10, 0x0

    #@2f
    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_b

    #@31
    .line 1155
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@36
    move-result-object v4

    #@37
    .line 1156
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3a
    move-result-object v13

    #@3b
    .line 1158
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@3d
    move/from16 v23, v0

    #@3f
    if-nez v23, :cond_0

    #@41
    .line 1159
    new-instance v23, Ljava/lang/RuntimeException;

    #@43
    .line 1160
    const-string/jumbo v24, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    #@46
    .line 1159
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v23

    #@4a
    :cond_0
    move-object/from16 v23, v13

    #@4c
    .line 1162
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@4e
    move-object/from16 v0, v23

    #@50
    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    #@52
    move/from16 v17, v0

    #@54
    .local v17, "scaleStartRow":F
    move-object/from16 v23, v13

    #@56
    .line 1163
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@58
    move-object/from16 v0, v23

    #@5a
    iget v15, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    #@5c
    .local v15, "scaleEndRow":F
    move-object/from16 v23, v13

    #@5e
    .line 1164
    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@60
    move-object/from16 v0, v23

    #@62
    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    #@64
    move/from16 v16, v0

    #@66
    .line 1165
    .local v16, "scaleStartCol":F
    check-cast v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@68
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    #@6a
    .line 1166
    .local v14, "scaleEndCol":F
    const/16 v23, 0x0

    #@6c
    cmpg-float v23, v17, v23

    #@6e
    if-ltz v23, :cond_1

    #@70
    const/high16 v23, 0x3f800000    # 1.0f

    #@72
    cmpl-float v23, v17, v23

    #@74
    if-lez v23, :cond_2

    #@76
    .line 1167
    :cond_1
    new-instance v23, Ljava/lang/RuntimeException;

    #@78
    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    #@7b
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v23

    #@7f
    .line 1170
    :cond_2
    cmpg-float v23, v15, v17

    #@81
    if-ltz v23, :cond_3

    #@83
    const/high16 v23, 0x3f800000    # 1.0f

    #@85
    cmpl-float v23, v17, v23

    #@87
    if-lez v23, :cond_4

    #@89
    .line 1171
    :cond_3
    new-instance v23, Ljava/lang/RuntimeException;

    #@8b
    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    #@8e
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@91
    throw v23

    #@92
    .line 1174
    :cond_4
    const/16 v23, 0x0

    #@94
    cmpg-float v23, v14, v23

    #@96
    if-ltz v23, :cond_5

    #@98
    const/high16 v23, 0x3f800000    # 1.0f

    #@9a
    cmpl-float v23, v14, v23

    #@9c
    if-lez v23, :cond_6

    #@9e
    .line 1175
    :cond_5
    new-instance v23, Ljava/lang/RuntimeException;

    #@a0
    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    #@a3
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v23

    #@a7
    .line 1178
    :cond_6
    cmpg-float v23, v14, v16

    #@a9
    if-ltz v23, :cond_7

    #@ab
    const/high16 v23, 0x3f800000    # 1.0f

    #@ad
    cmpl-float v23, v14, v23

    #@af
    if-lez v23, :cond_8

    #@b1
    .line 1179
    :cond_7
    new-instance v23, Ljava/lang/RuntimeException;

    #@b3
    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    #@b6
    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v23

    #@ba
    .line 1187
    :cond_8
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@be
    move-object/from16 v23, v0

    #@c0
    new-instance v24, Landroid/graphics/Rect;

    #@c2
    move/from16 v0, v21

    #@c4
    int-to-float v0, v0

    #@c5
    move/from16 v25, v0

    #@c7
    mul-float v25, v25, v16

    #@c9
    move/from16 v0, v25

    #@cb
    float-to-int v0, v0

    #@cc
    move/from16 v25, v0

    #@ce
    .line 1188
    int-to-float v0, v8

    #@cf
    move/from16 v26, v0

    #@d1
    .line 1187
    mul-float v26, v26, v17

    #@d3
    move/from16 v0, v26

    #@d5
    float-to-int v0, v0

    #@d6
    move/from16 v26, v0

    #@d8
    .line 1188
    move/from16 v0, v21

    #@da
    int-to-float v0, v0

    #@db
    move/from16 v27, v0

    #@dd
    mul-float v27, v27, v14

    #@df
    move/from16 v0, v27

    #@e1
    float-to-int v0, v0

    #@e2
    move/from16 v27, v0

    #@e4
    int-to-float v0, v8

    #@e5
    move/from16 v28, v0

    #@e7
    mul-float v28, v28, v15

    #@e9
    move/from16 v0, v28

    #@eb
    float-to-int v0, v0

    #@ec
    move/from16 v28, v0

    #@ee
    .line 1187
    invoke-direct/range {v24 .. v28}, Landroid/graphics/Rect;-><init>(IIII)V

    #@f1
    aput-object v24, v23, v10

    #@f3
    .line 1190
    move/from16 v0, v21

    #@f5
    int-to-float v0, v0

    #@f6
    move/from16 v23, v0

    #@f8
    sub-float v24, v14, v16

    #@fa
    mul-float v23, v23, v24

    #@fc
    move/from16 v0, v23

    #@fe
    float-to-int v0, v0

    #@ff
    move/from16 v23, v0

    #@101
    const/high16 v24, 0x40000000    # 2.0f

    #@103
    .line 1189
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@106
    move-result v6

    #@107
    .line 1191
    .local v6, "childWidthSpec":I
    const/16 v23, 0x0

    #@109
    const/16 v24, 0x0

    #@10b
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10e
    move-result v5

    #@10f
    .line 1192
    .local v5, "childHeightSpec":I
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    #@112
    .line 1197
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@115
    move-result v23

    #@116
    move-object/from16 v0, p0

    #@118
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@11a
    move-object/from16 v24, v0

    #@11c
    aget-object v24, v24, v10

    #@11e
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    #@121
    move-result v24

    #@122
    move/from16 v0, v23

    #@124
    move/from16 v1, v24

    #@126
    if-le v0, v1, :cond_a

    #@128
    .line 1198
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@12b
    move-result v23

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@130
    move-object/from16 v24, v0

    #@132
    aget-object v24, v24, v10

    #@134
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    #@137
    move-result v24

    #@138
    sub-int v12, v23, v24

    #@13a
    .line 1199
    .local v12, "overflowedHeight":I
    add-int/lit8 v23, v12, 0x1

    #@13c
    div-int/lit8 v12, v23, 0x2

    #@13e
    .line 1200
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@142
    move-object/from16 v23, v0

    #@144
    aget-object v23, v23, v10

    #@146
    move-object/from16 v0, v23

    #@148
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@14a
    move/from16 v24, v0

    #@14c
    add-int v24, v24, v12

    #@14e
    move/from16 v0, v24

    #@150
    move-object/from16 v1, v23

    #@152
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@154
    .line 1201
    move-object/from16 v0, p0

    #@156
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@158
    move-object/from16 v23, v0

    #@15a
    aget-object v23, v23, v10

    #@15c
    move-object/from16 v0, v23

    #@15e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@160
    move/from16 v24, v0

    #@162
    sub-int v24, v24, v12

    #@164
    move/from16 v0, v24

    #@166
    move-object/from16 v1, v23

    #@168
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@16a
    .line 1202
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@16e
    move-object/from16 v23, v0

    #@170
    aget-object v23, v23, v10

    #@172
    move-object/from16 v0, v23

    #@174
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@176
    move/from16 v23, v0

    #@178
    if-gez v23, :cond_9

    #@17a
    .line 1203
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@17e
    move-object/from16 v23, v0

    #@180
    aget-object v23, v23, v10

    #@182
    move-object/from16 v0, v23

    #@184
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@186
    move/from16 v24, v0

    #@188
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@18c
    move-object/from16 v25, v0

    #@18e
    aget-object v25, v25, v10

    #@190
    move-object/from16 v0, v25

    #@192
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@194
    move/from16 v25, v0

    #@196
    sub-int v24, v24, v25

    #@198
    move/from16 v0, v24

    #@19a
    move-object/from16 v1, v23

    #@19c
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@19e
    .line 1204
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1a2
    move-object/from16 v23, v0

    #@1a4
    aget-object v23, v23, v10

    #@1a6
    const/16 v24, 0x0

    #@1a8
    move/from16 v0, v24

    #@1aa
    move-object/from16 v1, v23

    #@1ac
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@1ae
    .line 1206
    :cond_9
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1b2
    move-object/from16 v23, v0

    #@1b4
    aget-object v23, v23, v10

    #@1b6
    move-object/from16 v0, v23

    #@1b8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1ba
    move/from16 v23, v0

    #@1bc
    move/from16 v0, v23

    #@1be
    if-le v0, v8, :cond_a

    #@1c0
    .line 1207
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1c4
    move-object/from16 v23, v0

    #@1c6
    aget-object v23, v23, v10

    #@1c8
    move-object/from16 v0, v23

    #@1ca
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1cc
    move/from16 v24, v0

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1d2
    move-object/from16 v25, v0

    #@1d4
    aget-object v25, v25, v10

    #@1d6
    move-object/from16 v0, v25

    #@1d8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1da
    move/from16 v25, v0

    #@1dc
    sub-int v25, v25, v8

    #@1de
    sub-int v24, v24, v25

    #@1e0
    move/from16 v0, v24

    #@1e2
    move-object/from16 v1, v23

    #@1e4
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@1e6
    .line 1208
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@1ea
    move-object/from16 v23, v0

    #@1ec
    aget-object v23, v23, v10

    #@1ee
    move-object/from16 v0, v23

    #@1f0
    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    #@1f2
    .line 1212
    .end local v12    # "overflowedHeight":I
    :cond_a
    int-to-float v0, v8

    #@1f3
    move/from16 v23, v0

    #@1f5
    sub-float v24, v15, v17

    #@1f7
    mul-float v23, v23, v24

    #@1f9
    move/from16 v0, v23

    #@1fb
    float-to-int v0, v0

    #@1fc
    move/from16 v23, v0

    #@1fe
    const/high16 v24, 0x40000000    # 2.0f

    #@200
    .line 1211
    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@203
    move-result v5

    #@204
    .line 1213
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    #@207
    .line 1154
    add-int/lit8 v10, v10, 0x1

    #@209
    goto/16 :goto_0

    #@20b
    .line 1218
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childWidthSpec":I
    .end local v14    # "scaleEndCol":F
    .end local v15    # "scaleEndRow":F
    .end local v16    # "scaleStartCol":F
    .end local v17    # "scaleStartRow":F
    :cond_b
    const/16 v19, 0x0

    #@20d
    .line 1219
    .local v19, "visibleRectCount":I
    new-array v0, v7, [I

    #@20f
    move-object/from16 v20, v0

    #@211
    .line 1220
    .local v20, "visibleRectGroup":[I
    new-array v0, v7, [Landroid/graphics/Rect;

    #@213
    move-object/from16 v18, v0

    #@215
    .line 1221
    .local v18, "visibleRectArray":[Landroid/graphics/Rect;
    const/4 v10, 0x0

    #@216
    :goto_1
    if-ge v10, v7, :cond_d

    #@218
    .line 1222
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@21d
    move-result-object v23

    #@21e
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    #@221
    move-result v23

    #@222
    if-nez v23, :cond_c

    #@224
    .line 1223
    aput v19, v20, v19

    #@226
    .line 1224
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    #@22a
    move-object/from16 v23, v0

    #@22c
    aget-object v23, v23, v10

    #@22e
    aput-object v23, v18, v19

    #@230
    .line 1225
    add-int/lit8 v19, v19, 0x1

    #@232
    .line 1221
    :cond_c
    add-int/lit8 v10, v10, 0x1

    #@234
    goto :goto_1

    #@235
    .line 1228
    :cond_d
    sget-object v23, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    #@237
    const/16 v24, 0x0

    #@239
    move-object/from16 v0, v18

    #@23b
    move/from16 v1, v24

    #@23d
    move/from16 v2, v19

    #@23f
    move-object/from16 v3, v23

    #@241
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@244
    .line 1231
    const/4 v10, 0x0

    #@245
    :goto_2
    add-int/lit8 v23, v19, -0x1

    #@247
    move/from16 v0, v23

    #@249
    if-ge v10, v0, :cond_10

    #@24b
    .line 1232
    add-int/lit8 v11, v10, 0x1

    #@24d
    .local v11, "j":I
    :goto_3
    move/from16 v0, v19

    #@24f
    if-ge v11, v0, :cond_f

    #@251
    .line 1233
    aget-object v23, v18, v10

    #@253
    aget-object v24, v18, v11

    #@255
    invoke-static/range {v23 .. v24}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@258
    move-result v23

    #@259
    if-eqz v23, :cond_e

    #@25b
    .line 1234
    aget v23, v20, v10

    #@25d
    aput v23, v20, v11

    #@25f
    .line 1235
    aget-object v23, v18, v11

    #@261
    aget-object v24, v18, v11

    #@263
    move-object/from16 v0, v24

    #@265
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@267
    move/from16 v24, v0

    #@269
    .line 1236
    aget-object v25, v18, v10

    #@26b
    move-object/from16 v0, v25

    #@26d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@26f
    move/from16 v25, v0

    #@271
    .line 1237
    aget-object v26, v18, v11

    #@273
    move-object/from16 v0, v26

    #@275
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@277
    move/from16 v26, v0

    #@279
    .line 1238
    aget-object v27, v18, v10

    #@27b
    move-object/from16 v0, v27

    #@27d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@27f
    move/from16 v27, v0

    #@281
    aget-object v28, v18, v11

    #@283
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    #@286
    move-result v28

    #@287
    add-int v27, v27, v28

    #@289
    .line 1235
    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    #@28c
    .line 1232
    :cond_e
    add-int/lit8 v11, v11, 0x1

    #@28e
    goto :goto_3

    #@28f
    .line 1231
    :cond_f
    add-int/lit8 v10, v10, 0x1

    #@291
    goto :goto_2

    #@292
    .line 1244
    .end local v11    # "j":I
    :cond_10
    add-int/lit8 v10, v19, -0x1

    #@294
    :goto_4
    if-ltz v10, :cond_13

    #@296
    .line 1245
    aget-object v23, v18, v10

    #@298
    move-object/from16 v0, v23

    #@29a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@29c
    move/from16 v23, v0

    #@29e
    move/from16 v0, v23

    #@2a0
    if-le v0, v8, :cond_12

    #@2a2
    .line 1246
    aget-object v23, v18, v10

    #@2a4
    move-object/from16 v0, v23

    #@2a6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2a8
    move/from16 v23, v0

    #@2aa
    sub-int v12, v23, v8

    #@2ac
    .line 1247
    .restart local v12    # "overflowedHeight":I
    const/4 v11, 0x0

    #@2ad
    .restart local v11    # "j":I
    :goto_5
    if-gt v11, v10, :cond_12

    #@2af
    .line 1248
    aget v23, v20, v10

    #@2b1
    aget v24, v20, v11

    #@2b3
    move/from16 v0, v23

    #@2b5
    move/from16 v1, v24

    #@2b7
    if-ne v0, v1, :cond_11

    #@2b9
    .line 1249
    aget-object v23, v18, v11

    #@2bb
    aget-object v24, v18, v11

    #@2bd
    move-object/from16 v0, v24

    #@2bf
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@2c1
    move/from16 v24, v0

    #@2c3
    .line 1250
    aget-object v25, v18, v11

    #@2c5
    move-object/from16 v0, v25

    #@2c7
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@2c9
    move/from16 v25, v0

    #@2cb
    sub-int v25, v25, v12

    #@2cd
    .line 1251
    aget-object v26, v18, v11

    #@2cf
    move-object/from16 v0, v26

    #@2d1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@2d3
    move/from16 v26, v0

    #@2d5
    .line 1252
    aget-object v27, v18, v11

    #@2d7
    move-object/from16 v0, v27

    #@2d9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2db
    move/from16 v27, v0

    #@2dd
    sub-int v27, v27, v12

    #@2df
    .line 1249
    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    #@2e2
    .line 1247
    :cond_11
    add-int/lit8 v11, v11, 0x1

    #@2e4
    goto :goto_5

    #@2e5
    .line 1244
    .end local v11    # "j":I
    .end local v12    # "overflowedHeight":I
    :cond_12
    add-int/lit8 v10, v10, -0x1

    #@2e7
    goto :goto_4

    #@2e8
    .line 1257
    :cond_13
    move-object/from16 v0, p0

    #@2ea
    move/from16 v1, v22

    #@2ec
    invoke-virtual {v0, v1, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    #@2ef
    .line 1144
    return-void
.end method
