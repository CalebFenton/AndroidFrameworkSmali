.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 6990
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    #@5
    .line 6991
    invoke-static {p1}, Landroid/widget/AbsListView;->-get1(Landroid/widget/AbsListView;)Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    #@13
    .line 6990
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    #@0
    .prologue
    .line 7184
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@4
    iget v6, v14, Landroid/widget/AbsListView;->mFirstPosition:I

    #@6
    .line 7185
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@a
    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    #@d
    move-result v5

    #@e
    .line 7186
    .local v5, "childCount":I
    add-int v14, v6, v5

    #@10
    add-int/lit8 v7, v14, -0x1

    #@12
    .line 7187
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@16
    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@18
    iget v9, v14, Landroid/graphics/Rect;->top:I

    #@1a
    .line 7188
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    #@1c
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1e
    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    #@21
    move-result v14

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v15, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@26
    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@28
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    #@2a
    sub-int v8, v14, v15

    #@2c
    .line 7190
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    #@2e
    if-lt v0, v6, :cond_0

    #@30
    move/from16 v0, p1

    #@32
    if-le v0, v7, :cond_1

    #@34
    .line 7191
    :cond_0
    const-string/jumbo v14, "AbsListView"

    #@37
    new-instance v15, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v16, "scrollToVisible called with targetPos "

    #@3f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v15

    #@43
    move/from16 v0, p1

    #@45
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v15

    #@49
    .line 7192
    const-string/jumbo v16, " not visible ["

    #@4c
    .line 7191
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v15

    #@50
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v15

    #@54
    .line 7192
    const-string/jumbo v16, ", "

    #@57
    .line 7191
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v15

    #@5b
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v15

    #@5f
    .line 7192
    const-string/jumbo v16, "]"

    #@62
    .line 7191
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v15

    #@6a
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 7194
    :cond_1
    move/from16 v0, p2

    #@6f
    if-lt v0, v6, :cond_2

    #@71
    move/from16 v0, p2

    #@73
    if-le v0, v7, :cond_3

    #@75
    .line 7196
    :cond_2
    const/16 p2, -0x1

    #@77
    .line 7199
    :cond_3
    move-object/from16 v0, p0

    #@79
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@7b
    sub-int v15, p1, v6

    #@7d
    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@80
    move-result-object v12

    #@81
    .line 7200
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    #@84
    move-result v13

    #@85
    .line 7201
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    #@88
    move-result v11

    #@89
    .line 7202
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    #@8a
    .line 7204
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    #@8c
    .line 7205
    sub-int v10, v11, v8

    #@8e
    .line 7207
    :cond_4
    if-ge v13, v9, :cond_5

    #@90
    .line 7208
    sub-int v10, v13, v9

    #@92
    .line 7211
    :cond_5
    if-nez v10, :cond_6

    #@94
    .line 7212
    return-void

    #@95
    .line 7215
    :cond_6
    if-ltz p2, :cond_7

    #@97
    .line 7216
    move-object/from16 v0, p0

    #@99
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@9b
    sub-int v15, p2, v6

    #@9d
    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@a0
    move-result-object v3

    #@a1
    .line 7217
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@a4
    move-result v4

    #@a5
    .line 7218
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@a8
    move-result v2

    #@a9
    .line 7219
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@ac
    move-result v1

    #@ad
    .line 7221
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    #@af
    add-int v14, v2, v1

    #@b1
    if-le v14, v8, :cond_8

    #@b3
    .line 7223
    sub-int v14, v2, v8

    #@b5
    const/4 v15, 0x0

    #@b6
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    #@b9
    move-result v10

    #@ba
    .line 7230
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    #@bc
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@be
    move/from16 v0, p3

    #@c0
    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    #@c3
    .line 7183
    return-void

    #@c4
    .line 7224
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    #@c6
    sub-int v14, v4, v1

    #@c8
    if-ge v14, v9, :cond_7

    #@ca
    .line 7226
    sub-int v14, v4, v9

    #@cc
    const/4 v15, 0x0

    #@cd
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    #@d0
    move-result v10

    #@d1
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 35

    #@0
    .prologue
    .line 7240
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@4
    move-object/from16 v31, v0

    #@6
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    #@9
    move-result v19

    #@a
    .line 7241
    .local v19, "listHeight":I
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@e
    move-object/from16 v31, v0

    #@10
    move-object/from16 v0, v31

    #@12
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@14
    .line 7243
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@18
    move/from16 v31, v0

    #@1a
    packed-switch v31, :pswitch_data_0

    #@1d
    .line 7239
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 7245
    :pswitch_0
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@22
    move-object/from16 v31, v0

    #@24
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    #@27
    move-result v31

    #@28
    add-int/lit8 v16, v31, -0x1

    #@2a
    .line 7246
    .local v16, "lastViewIndex":I
    add-int v12, v9, v16

    #@2c
    .line 7248
    .local v12, "lastPos":I
    if-gez v16, :cond_1

    #@2e
    .line 7249
    return-void

    #@2f
    .line 7252
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@33
    move/from16 v31, v0

    #@35
    move/from16 v0, v31

    #@37
    if-ne v12, v0, :cond_2

    #@39
    .line 7254
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@3d
    move-object/from16 v31, v0

    #@3f
    move-object/from16 v0, v31

    #@41
    move-object/from16 v1, p0

    #@43
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@46
    .line 7255
    return-void

    #@47
    .line 7258
    :cond_2
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@4b
    move-object/from16 v31, v0

    #@4d
    move-object/from16 v0, v31

    #@4f
    move/from16 v1, v16

    #@51
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@54
    move-result-object v13

    #@55
    .line 7259
    .local v13, "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    #@58
    move-result v15

    #@59
    .line 7260
    .local v15, "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    #@5c
    move-result v18

    #@5d
    .line 7261
    .local v18, "lastViewTop":I
    sub-int v17, v19, v18

    #@5f
    .line 7262
    .local v17, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@63
    move-object/from16 v31, v0

    #@65
    move-object/from16 v0, v31

    #@67
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@69
    move/from16 v31, v0

    #@6b
    add-int/lit8 v31, v31, -0x1

    #@6d
    move/from16 v0, v31

    #@6f
    if-ge v12, v0, :cond_3

    #@71
    .line 7263
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@75
    move-object/from16 v31, v0

    #@77
    move-object/from16 v0, v31

    #@79
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@7b
    move-object/from16 v31, v0

    #@7d
    move-object/from16 v0, v31

    #@7f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@81
    move/from16 v31, v0

    #@83
    move-object/from16 v0, p0

    #@85
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    #@87
    move/from16 v32, v0

    #@89
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@8c
    move-result v8

    #@8d
    .line 7265
    .local v8, "extraScroll":I
    :goto_1
    sub-int v31, v15, v17

    #@8f
    add-int v28, v31, v8

    #@91
    .line 7266
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@95
    move-object/from16 v31, v0

    #@97
    move-object/from16 v0, p0

    #@99
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@9b
    move/from16 v32, v0

    #@9d
    const/16 v33, 0x1

    #@9f
    move-object/from16 v0, v31

    #@a1
    move/from16 v1, v28

    #@a3
    move/from16 v2, v32

    #@a5
    move/from16 v3, v33

    #@a7
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@aa
    .line 7268
    move-object/from16 v0, p0

    #@ac
    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@ae
    .line 7269
    move-object/from16 v0, p0

    #@b0
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@b2
    move/from16 v31, v0

    #@b4
    move/from16 v0, v31

    #@b6
    if-ge v12, v0, :cond_0

    #@b8
    .line 7270
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@bc
    move-object/from16 v31, v0

    #@be
    move-object/from16 v0, v31

    #@c0
    move-object/from16 v1, p0

    #@c2
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 7263
    .end local v8    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_3
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@cb
    move-object/from16 v31, v0

    #@cd
    move-object/from16 v0, v31

    #@cf
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@d1
    move-object/from16 v31, v0

    #@d3
    move-object/from16 v0, v31

    #@d5
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@d7
    .restart local v8    # "extraScroll":I
    goto :goto_1

    #@d8
    .line 7276
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_1
    const/16 v24, 0x1

    #@da
    .line 7277
    .local v24, "nextViewIndex":I
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@de
    move-object/from16 v31, v0

    #@e0
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    #@e3
    move-result v5

    #@e4
    .line 7279
    .local v5, "childCount":I
    move-object/from16 v0, p0

    #@e6
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@e8
    move/from16 v31, v0

    #@ea
    move/from16 v0, v31

    #@ec
    if-eq v9, v0, :cond_4

    #@ee
    const/16 v31, 0x1

    #@f0
    move/from16 v0, v31

    #@f2
    if-gt v5, v0, :cond_5

    #@f4
    .line 7281
    :cond_4
    return-void

    #@f5
    .line 7280
    :cond_5
    add-int v31, v9, v5

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@fb
    move-object/from16 v32, v0

    #@fd
    move-object/from16 v0, v32

    #@ff
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@101
    move/from16 v32, v0

    #@103
    move/from16 v0, v31

    #@105
    move/from16 v1, v32

    #@107
    if-ge v0, v1, :cond_4

    #@109
    .line 7283
    add-int/lit8 v21, v9, 0x1

    #@10b
    .line 7285
    .local v21, "nextPos":I
    move-object/from16 v0, p0

    #@10d
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@10f
    move/from16 v31, v0

    #@111
    move/from16 v0, v21

    #@113
    move/from16 v1, v31

    #@115
    if-ne v0, v1, :cond_6

    #@117
    .line 7287
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@11b
    move-object/from16 v31, v0

    #@11d
    move-object/from16 v0, v31

    #@11f
    move-object/from16 v1, p0

    #@121
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@124
    .line 7288
    return-void

    #@125
    .line 7291
    :cond_6
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@129
    move-object/from16 v31, v0

    #@12b
    const/16 v32, 0x1

    #@12d
    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@130
    move-result-object v22

    #@131
    .line 7292
    .local v22, "nextView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    #@134
    move-result v23

    #@135
    .line 7293
    .local v23, "nextViewHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    #@138
    move-result v25

    #@139
    .line 7294
    .local v25, "nextViewTop":I
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@13d
    move-object/from16 v31, v0

    #@13f
    move-object/from16 v0, v31

    #@141
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@143
    move-object/from16 v31, v0

    #@145
    move-object/from16 v0, v31

    #@147
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@149
    move/from16 v31, v0

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    #@14f
    move/from16 v32, v0

    #@151
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@154
    move-result v8

    #@155
    .line 7295
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    #@157
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@159
    move/from16 v31, v0

    #@15b
    move/from16 v0, v21

    #@15d
    move/from16 v1, v31

    #@15f
    if-ge v0, v1, :cond_7

    #@161
    .line 7296
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@165
    move-object/from16 v31, v0

    #@167
    add-int v32, v23, v25

    #@169
    sub-int v32, v32, v8

    #@16b
    const/16 v33, 0x0

    #@16d
    move/from16 v0, v33

    #@16f
    move/from16 v1, v32

    #@171
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@174
    move-result v32

    #@175
    .line 7297
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@179
    move/from16 v33, v0

    #@17b
    const/16 v34, 0x1

    #@17d
    .line 7296
    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@180
    .line 7299
    move/from16 v0, v21

    #@182
    move-object/from16 v1, p0

    #@184
    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@186
    .line 7301
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@18a
    move-object/from16 v31, v0

    #@18c
    move-object/from16 v0, v31

    #@18e
    move-object/from16 v1, p0

    #@190
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@193
    goto/16 :goto_0

    #@195
    .line 7303
    :cond_7
    move/from16 v0, v25

    #@197
    if-le v0, v8, :cond_0

    #@199
    .line 7304
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@19d
    move-object/from16 v31, v0

    #@19f
    sub-int v32, v25, v8

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@1a5
    move/from16 v33, v0

    #@1a7
    const/16 v34, 0x1

    #@1a9
    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 7311
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v21    # "nextPos":I
    .end local v22    # "nextView":Landroid/view/View;
    .end local v23    # "nextViewHeight":I
    .end local v24    # "nextViewIndex":I
    .end local v25    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    #@1b0
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@1b2
    move/from16 v31, v0

    #@1b4
    move/from16 v0, v31

    #@1b6
    if-ne v9, v0, :cond_8

    #@1b8
    .line 7313
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1bc
    move-object/from16 v31, v0

    #@1be
    move-object/from16 v0, v31

    #@1c0
    move-object/from16 v1, p0

    #@1c2
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@1c5
    .line 7314
    return-void

    #@1c6
    .line 7317
    :cond_8
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1ca
    move-object/from16 v31, v0

    #@1cc
    const/16 v32, 0x0

    #@1ce
    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1d1
    move-result-object v10

    #@1d2
    .line 7318
    .local v10, "firstView":Landroid/view/View;
    if-nez v10, :cond_9

    #@1d4
    .line 7319
    return-void

    #@1d5
    .line 7321
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@1d8
    move-result v11

    #@1d9
    .line 7322
    .local v11, "firstViewTop":I
    if-lez v9, :cond_a

    #@1db
    .line 7323
    move-object/from16 v0, p0

    #@1dd
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    #@1df
    move/from16 v31, v0

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1e5
    move-object/from16 v32, v0

    #@1e7
    move-object/from16 v0, v32

    #@1e9
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@1eb
    move-object/from16 v32, v0

    #@1ed
    move-object/from16 v0, v32

    #@1ef
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1f1
    move/from16 v32, v0

    #@1f3
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@1f6
    move-result v8

    #@1f7
    .line 7325
    .restart local v8    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1fb
    move-object/from16 v31, v0

    #@1fd
    sub-int v32, v11, v8

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@203
    move/from16 v33, v0

    #@205
    const/16 v34, 0x1

    #@207
    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@20a
    .line 7327
    move-object/from16 v0, p0

    #@20c
    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@20e
    .line 7329
    move-object/from16 v0, p0

    #@210
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@212
    move/from16 v31, v0

    #@214
    move/from16 v0, v31

    #@216
    if-le v9, v0, :cond_0

    #@218
    .line 7330
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@21c
    move-object/from16 v31, v0

    #@21e
    move-object/from16 v0, v31

    #@220
    move-object/from16 v1, p0

    #@222
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@225
    goto/16 :goto_0

    #@227
    .line 7323
    .end local v8    # "extraScroll":I
    :cond_a
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@22b
    move-object/from16 v31, v0

    #@22d
    move-object/from16 v0, v31

    #@22f
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@231
    move-object/from16 v31, v0

    #@233
    move-object/from16 v0, v31

    #@235
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@237
    .restart local v8    # "extraScroll":I
    goto :goto_2

    #@238
    .line 7336
    .end local v8    # "extraScroll":I
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@23c
    move-object/from16 v31, v0

    #@23e
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    #@241
    move-result v31

    #@242
    add-int/lit8 v16, v31, -0x2

    #@244
    .line 7337
    .restart local v16    # "lastViewIndex":I
    if-gez v16, :cond_b

    #@246
    .line 7338
    return-void

    #@247
    .line 7340
    :cond_b
    add-int v12, v9, v16

    #@249
    .line 7342
    .restart local v12    # "lastPos":I
    move-object/from16 v0, p0

    #@24b
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@24d
    move/from16 v31, v0

    #@24f
    move/from16 v0, v31

    #@251
    if-ne v12, v0, :cond_c

    #@253
    .line 7344
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@257
    move-object/from16 v31, v0

    #@259
    move-object/from16 v0, v31

    #@25b
    move-object/from16 v1, p0

    #@25d
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@260
    .line 7345
    return-void

    #@261
    .line 7348
    :cond_c
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@265
    move-object/from16 v31, v0

    #@267
    move-object/from16 v0, v31

    #@269
    move/from16 v1, v16

    #@26b
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@26e
    move-result-object v13

    #@26f
    .line 7349
    .restart local v13    # "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    #@272
    move-result v15

    #@273
    .line 7350
    .restart local v15    # "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    #@276
    move-result v18

    #@277
    .line 7351
    .restart local v18    # "lastViewTop":I
    sub-int v17, v19, v18

    #@279
    .line 7352
    .restart local v17    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@27d
    move-object/from16 v31, v0

    #@27f
    move-object/from16 v0, v31

    #@281
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@283
    move-object/from16 v31, v0

    #@285
    move-object/from16 v0, v31

    #@287
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@289
    move/from16 v31, v0

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    #@28f
    move/from16 v32, v0

    #@291
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@294
    move-result v8

    #@295
    .line 7353
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    #@297
    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@299
    .line 7354
    move-object/from16 v0, p0

    #@29b
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@29d
    move/from16 v31, v0

    #@29f
    move/from16 v0, v31

    #@2a1
    if-le v12, v0, :cond_d

    #@2a3
    .line 7355
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2a7
    move-object/from16 v31, v0

    #@2a9
    sub-int v32, v17, v8

    #@2ab
    move/from16 v0, v32

    #@2ad
    neg-int v0, v0

    #@2ae
    move/from16 v32, v0

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@2b4
    move/from16 v33, v0

    #@2b6
    const/16 v34, 0x1

    #@2b8
    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@2bb
    .line 7356
    move-object/from16 v0, p0

    #@2bd
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2bf
    move-object/from16 v31, v0

    #@2c1
    move-object/from16 v0, v31

    #@2c3
    move-object/from16 v1, p0

    #@2c5
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@2c8
    goto/16 :goto_0

    #@2ca
    .line 7358
    :cond_d
    sub-int v4, v19, v8

    #@2cc
    .line 7359
    .local v4, "bottom":I
    add-int v14, v18, v15

    #@2ce
    .line 7360
    .local v14, "lastViewBottom":I
    if-le v4, v14, :cond_0

    #@2d0
    .line 7361
    move-object/from16 v0, p0

    #@2d2
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2d4
    move-object/from16 v31, v0

    #@2d6
    sub-int v32, v4, v14

    #@2d8
    move/from16 v0, v32

    #@2da
    neg-int v0, v0

    #@2db
    move/from16 v32, v0

    #@2dd
    move-object/from16 v0, p0

    #@2df
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@2e1
    move/from16 v33, v0

    #@2e3
    const/16 v34, 0x1

    #@2e5
    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@2e8
    goto/16 :goto_0

    #@2ea
    .line 7368
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v14    # "lastViewBottom":I
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    #@2ec
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@2ee
    move/from16 v31, v0

    #@2f0
    move/from16 v0, v31

    #@2f2
    if-ne v0, v9, :cond_e

    #@2f4
    .line 7370
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2f8
    move-object/from16 v31, v0

    #@2fa
    move-object/from16 v0, v31

    #@2fc
    move-object/from16 v1, p0

    #@2fe
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@301
    .line 7371
    return-void

    #@302
    .line 7374
    :cond_e
    move-object/from16 v0, p0

    #@304
    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@306
    .line 7376
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@30a
    move-object/from16 v31, v0

    #@30c
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getChildCount()I

    #@30f
    move-result v5

    #@310
    .line 7377
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    #@312
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@314
    move/from16 v26, v0

    #@316
    .line 7378
    .local v26, "position":I
    add-int v31, v9, v5

    #@318
    add-int/lit8 v12, v31, -0x1

    #@31a
    .line 7380
    .restart local v12    # "lastPos":I
    const/16 v30, 0x0

    #@31c
    .line 7381
    .local v30, "viewTravelCount":I
    move/from16 v0, v26

    #@31e
    if-ge v0, v9, :cond_10

    #@320
    .line 7382
    sub-int v31, v9, v26

    #@322
    add-int/lit8 v30, v31, 0x1

    #@324
    .line 7388
    :cond_f
    :goto_3
    move/from16 v0, v30

    #@326
    int-to-float v0, v0

    #@327
    move/from16 v31, v0

    #@329
    int-to-float v0, v5

    #@32a
    move/from16 v32, v0

    #@32c
    div-float v27, v31, v32

    #@32e
    .line 7390
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    #@331
    move-result v31

    #@332
    const/high16 v32, 0x3f800000    # 1.0f

    #@334
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    #@337
    move-result v20

    #@338
    .line 7391
    .local v20, "modifier":F
    move/from16 v0, v26

    #@33a
    if-ge v0, v9, :cond_11

    #@33c
    .line 7392
    move-object/from16 v0, p0

    #@33e
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@340
    move-object/from16 v31, v0

    #@342
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    #@345
    move-result v31

    #@346
    move/from16 v0, v31

    #@348
    neg-int v0, v0

    #@349
    move/from16 v31, v0

    #@34b
    move/from16 v0, v31

    #@34d
    int-to-float v0, v0

    #@34e
    move/from16 v31, v0

    #@350
    mul-float v31, v31, v20

    #@352
    move/from16 v0, v31

    #@354
    float-to-int v6, v0

    #@355
    .line 7393
    .local v6, "distance":I
    move-object/from16 v0, p0

    #@357
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@359
    move/from16 v31, v0

    #@35b
    move/from16 v0, v31

    #@35d
    int-to-float v0, v0

    #@35e
    move/from16 v31, v0

    #@360
    mul-float v31, v31, v20

    #@362
    move/from16 v0, v31

    #@364
    float-to-int v7, v0

    #@365
    .line 7394
    .local v7, "duration":I
    move-object/from16 v0, p0

    #@367
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@369
    move-object/from16 v31, v0

    #@36b
    const/16 v32, 0x1

    #@36d
    move-object/from16 v0, v31

    #@36f
    move/from16 v1, v32

    #@371
    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@374
    .line 7395
    move-object/from16 v0, p0

    #@376
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@378
    move-object/from16 v31, v0

    #@37a
    move-object/from16 v0, v31

    #@37c
    move-object/from16 v1, p0

    #@37e
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@381
    goto/16 :goto_0

    #@383
    .line 7383
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v20    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_10
    move/from16 v0, v26

    #@385
    if-le v0, v12, :cond_f

    #@387
    .line 7384
    sub-int v30, v26, v12

    #@389
    goto :goto_3

    #@38a
    .line 7396
    .restart local v20    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_11
    move/from16 v0, v26

    #@38c
    if-le v0, v12, :cond_12

    #@38e
    .line 7397
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@392
    move-object/from16 v31, v0

    #@394
    invoke-virtual/range {v31 .. v31}, Landroid/widget/AbsListView;->getHeight()I

    #@397
    move-result v31

    #@398
    move/from16 v0, v31

    #@39a
    int-to-float v0, v0

    #@39b
    move/from16 v31, v0

    #@39d
    mul-float v31, v31, v20

    #@39f
    move/from16 v0, v31

    #@3a1
    float-to-int v6, v0

    #@3a2
    .line 7398
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    #@3a4
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@3a6
    move/from16 v31, v0

    #@3a8
    move/from16 v0, v31

    #@3aa
    int-to-float v0, v0

    #@3ab
    move/from16 v31, v0

    #@3ad
    mul-float v31, v31, v20

    #@3af
    move/from16 v0, v31

    #@3b1
    float-to-int v7, v0

    #@3b2
    .line 7399
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@3b6
    move-object/from16 v31, v0

    #@3b8
    const/16 v32, 0x1

    #@3ba
    move-object/from16 v0, v31

    #@3bc
    move/from16 v1, v32

    #@3be
    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@3c1
    .line 7400
    move-object/from16 v0, p0

    #@3c3
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@3c5
    move-object/from16 v31, v0

    #@3c7
    move-object/from16 v0, v31

    #@3c9
    move-object/from16 v1, p0

    #@3cb
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@3ce
    goto/16 :goto_0

    #@3d0
    .line 7403
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_12
    move-object/from16 v0, p0

    #@3d2
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@3d4
    move-object/from16 v31, v0

    #@3d6
    sub-int v32, v26, v9

    #@3d8
    invoke-virtual/range {v31 .. v32}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@3db
    move-result-object v31

    #@3dc
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    #@3df
    move-result v29

    #@3e0
    .line 7404
    .local v29, "targetTop":I
    move-object/from16 v0, p0

    #@3e2
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    #@3e4
    move/from16 v31, v0

    #@3e6
    sub-int v6, v29, v31

    #@3e8
    .line 7405
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    #@3ea
    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@3ec
    move/from16 v31, v0

    #@3ee
    move/from16 v0, v31

    #@3f0
    int-to-float v0, v0

    #@3f1
    move/from16 v31, v0

    #@3f3
    .line 7406
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@3f6
    move-result v32

    #@3f7
    move/from16 v0, v32

    #@3f9
    int-to-float v0, v0

    #@3fa
    move/from16 v32, v0

    #@3fc
    move-object/from16 v0, p0

    #@3fe
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@400
    move-object/from16 v33, v0

    #@402
    invoke-virtual/range {v33 .. v33}, Landroid/widget/AbsListView;->getHeight()I

    #@405
    move-result v33

    #@406
    move/from16 v0, v33

    #@408
    int-to-float v0, v0

    #@409
    move/from16 v33, v0

    #@40b
    div-float v32, v32, v33

    #@40d
    .line 7405
    mul-float v31, v31, v32

    #@40f
    move/from16 v0, v31

    #@411
    float-to-int v7, v0

    #@412
    .line 7407
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    #@414
    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@416
    move-object/from16 v31, v0

    #@418
    const/16 v32, 0x1

    #@41a
    move-object/from16 v0, v31

    #@41c
    move/from16 v1, v32

    #@41e
    invoke-virtual {v0, v6, v7, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@421
    goto/16 :goto_0

    #@423
    .line 7243
    nop

    #@424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    #@0
    .prologue
    const/16 v8, 0xc8

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, -0x1

    #@4
    .line 6996
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    #@7
    .line 6998
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@9
    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 7000
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@f
    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    #@11
    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    #@14
    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@16
    .line 7005
    return-void

    #@17
    .line 7008
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@19
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    #@1c
    move-result v0

    #@1d
    .line 7009
    .local v0, "childCount":I
    if-nez v0, :cond_1

    #@1f
    .line 7011
    return-void

    #@20
    .line 7014
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@22
    iget v2, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    #@24
    .line 7015
    .local v2, "firstPos":I
    add-int v5, v2, v0

    #@26
    add-int/lit8 v3, v5, -0x1

    #@28
    .line 7018
    .local v3, "lastPos":I
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2a
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    #@2d
    move-result v5

    #@2e
    add-int/lit8 v5, v5, -0x1

    #@30
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v5

    #@34
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    #@37
    move-result v1

    #@38
    .line 7019
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    #@3a
    .line 7020
    sub-int v5, v2, v1

    #@3c
    add-int/lit8 v4, v5, 0x1

    #@3e
    .line 7021
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    #@3f
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@41
    .line 7030
    :goto_0
    if-lez v4, :cond_4

    #@43
    .line 7031
    div-int v5, v8, v4

    #@45
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@47
    .line 7035
    :goto_1
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@49
    .line 7036
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@4b
    .line 7037
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@4d
    .line 7039
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@52
    .line 6995
    return-void

    #@53
    .line 7022
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    #@55
    .line 7023
    sub-int v5, v1, v3

    #@57
    add-int/lit8 v4, v5, 0x1

    #@59
    .line 7024
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    #@5a
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@5c
    goto :goto_0

    #@5d
    .line 7026
    .end local v4    # "viewTravelCount":I
    :cond_3
    invoke-direct {p0, v1, v6, v8}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    #@60
    .line 7027
    return-void

    #@61
    .line 7033
    .restart local v4    # "viewTravelCount":I
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@63
    goto :goto_1
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    #@0
    .prologue
    .line 7044
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    #@3
    .line 7046
    const/4 v9, -0x1

    #@4
    if-ne p2, v9, :cond_0

    #@6
    .line 7047
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    #@9
    .line 7048
    return-void

    #@a
    .line 7051
    :cond_0
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@c
    iget-boolean v9, v9, Landroid/widget/AbsListView;->mDataChanged:Z

    #@e
    if-eqz v9, :cond_1

    #@10
    .line 7053
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@12
    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    #@14
    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    #@17
    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@19
    .line 7058
    return-void

    #@1a
    .line 7061
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@1c
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    #@1f
    move-result v3

    #@20
    .line 7062
    .local v3, "childCount":I
    if-nez v3, :cond_2

    #@22
    .line 7064
    return-void

    #@23
    .line 7067
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@25
    iget v5, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    #@27
    .line 7068
    .local v5, "firstPos":I
    add-int v9, v5, v3

    #@29
    add-int/lit8 v6, v9, -0x1

    #@2b
    .line 7071
    .local v6, "lastPos":I
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2d
    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCount()I

    #@30
    move-result v9

    #@31
    add-int/lit8 v9, v9, -0x1

    #@33
    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    #@36
    move-result v9

    #@37
    const/4 v10, 0x0

    #@38
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v4

    #@3c
    .line 7072
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_5

    #@3e
    .line 7073
    sub-int v1, v6, p2

    #@40
    .line 7074
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    #@41
    if-ge v1, v9, :cond_3

    #@43
    .line 7076
    return-void

    #@44
    .line 7079
    :cond_3
    sub-int v9, v5, v4

    #@46
    add-int/lit8 v7, v9, 0x1

    #@48
    .line 7080
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    #@4a
    .line 7081
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_4

    #@4c
    .line 7082
    move v8, v2

    #@4d
    .line 7083
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    #@4e
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@50
    .line 7109
    .end local v1    # "boundPosFromLast":I
    :goto_0
    if-lez v8, :cond_9

    #@52
    .line 7110
    const/16 v9, 0xc8

    #@54
    div-int/2addr v9, v8

    #@55
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@57
    .line 7114
    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@59
    .line 7115
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@5b
    .line 7116
    const/4 v9, -0x1

    #@5c
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@5e
    .line 7118
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@60
    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@63
    .line 7043
    return-void

    #@64
    .line 7085
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_4
    move v8, v7

    #@65
    .line 7086
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    #@66
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@68
    goto :goto_0

    #@69
    .line 7088
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_5
    if-le v4, v6, :cond_8

    #@6b
    .line 7089
    sub-int v0, p2, v5

    #@6d
    .line 7090
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    #@6e
    if-ge v0, v9, :cond_6

    #@70
    .line 7092
    return-void

    #@71
    .line 7095
    :cond_6
    sub-int v9, v4, v6

    #@73
    add-int/lit8 v7, v9, 0x1

    #@75
    .line 7096
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    #@77
    .line 7097
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_7

    #@79
    .line 7098
    move v8, v2

    #@7a
    .line 7099
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    #@7b
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@7d
    goto :goto_0

    #@7e
    .line 7101
    .end local v8    # "viewTravelCount":I
    :cond_7
    move v8, v7

    #@7f
    .line 7102
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    #@80
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@82
    goto :goto_0

    #@83
    .line 7105
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_8
    const/16 v9, 0xc8

    #@85
    invoke-direct {p0, v4, p2, v9}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    #@88
    .line 7106
    return-void

    #@89
    .line 7112
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_9
    const/16 v9, 0xc8

    #@8b
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@8d
    goto :goto_1
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 7123
    const/16 v0, 0xc8

    #@2
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    #@5
    .line 7122
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 7128
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    #@5
    .line 7130
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@7
    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 7132
    move v3, p2

    #@c
    .line 7133
    .local v3, "postOffset":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@e
    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    #@10
    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    #@13
    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@15
    .line 7138
    return-void

    #@16
    .line 7141
    .end local v3    # "postOffset":I
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@18
    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    #@1b
    move-result v0

    #@1c
    .line 7142
    .local v0, "childCount":I
    if-nez v0, :cond_1

    #@1e
    .line 7144
    return-void

    #@1f
    .line 7147
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@21
    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@24
    move-result v7

    #@25
    add-int/2addr p2, v7

    #@26
    .line 7149
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@28
    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCount()I

    #@2b
    move-result v7

    #@2c
    add-int/lit8 v7, v7, -0x1

    #@2e
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    #@31
    move-result v7

    #@32
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v7

    #@36
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@38
    .line 7150
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    #@3a
    .line 7151
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    #@3c
    .line 7152
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@3e
    .line 7153
    const/4 v7, 0x5

    #@3f
    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    #@41
    .line 7155
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@43
    iget v1, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    #@45
    .line 7156
    .local v1, "firstPos":I
    add-int v7, v1, v0

    #@47
    add-int/lit8 v2, v7, -0x1

    #@49
    .line 7159
    .local v2, "lastPos":I
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@4b
    if-ge v7, v1, :cond_2

    #@4d
    .line 7160
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@4f
    sub-int v6, v1, v7

    #@51
    .line 7171
    .local v6, "viewTravelCount":I
    :goto_0
    int-to-float v7, v6

    #@52
    int-to-float v8, v0

    #@53
    div-float v4, v7, v8

    #@55
    .line 7172
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    #@57
    cmpg-float v7, v4, v7

    #@59
    if-gez v7, :cond_4

    #@5b
    .end local p3    # "duration":I
    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    #@5d
    .line 7174
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    #@5f
    .line 7176
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@61
    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@64
    .line 7127
    return-void

    #@65
    .line 7161
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@67
    if-le v7, v2, :cond_3

    #@69
    .line 7162
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@6b
    sub-int v6, v7, v2

    #@6d
    .restart local v6    # "viewTravelCount":I
    goto :goto_0

    #@6e
    .line 7165
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@70
    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    #@72
    sub-int/2addr v8, v1

    #@73
    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@7a
    move-result v5

    #@7b
    .line 7166
    .local v5, "targetTop":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@7d
    sub-int v8, v5, p2

    #@7f
    const/4 v9, 0x1

    #@80
    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@83
    .line 7167
    return-void

    #@84
    .line 7173
    .end local v5    # "targetTop":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    #@85
    div-float/2addr v7, v4

    #@86
    float-to-int p3, v7

    #@87
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 7235
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 7234
    return-void
.end method
