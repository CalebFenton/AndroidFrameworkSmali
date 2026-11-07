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
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7809
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7810
    # getter for: Landroid/widget/AbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 7811
    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .registers 21
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .line 8003
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8004
    .local v3, "firstPos":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 8005
    .local v4, "childCount":I
    add-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    .line 8006
    .local v5, "lastPos":I
    iget-object v6, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 8007
    .local v6, "paddedTop":I
    iget-object v7, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 8009
    .local v7, "paddedBottom":I
    if-lt v1, v3, :cond_2b

    if-le v1, v5, :cond_5e

    .line 8010
    :cond_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scrollToVisible called with targetPos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not visible ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AbsListView"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8013
    :cond_5e
    if-lt v2, v3, :cond_62

    if-le v2, v5, :cond_63

    .line 8015
    :cond_62
    const/4 v2, -0x1

    .line 8018
    .end local p2    # "boundPos":I
    .local v2, "boundPos":I
    :cond_63
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v9, v1, v3

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8019
    .local v8, "targetChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 8020
    .local v9, "targetTop":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 8021
    .local v10, "targetBottom":I
    const/4 v11, 0x0

    .line 8023
    .local v11, "scrollBy":I
    if-le v10, v7, :cond_78

    .line 8024
    sub-int v11, v10, v7

    .line 8026
    :cond_78
    if-ge v9, v6, :cond_7c

    .line 8027
    sub-int v11, v9, v6

    .line 8030
    :cond_7c
    if-nez v11, :cond_7f

    .line 8031
    return-void

    .line 8034
    :cond_7f
    if-ltz v2, :cond_b5

    .line 8035
    iget-object v12, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v13, v2, v3

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 8036
    .local v12, "boundChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 8037
    .local v13, "boundTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 8038
    .local v14, "boundBottom":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 8040
    .local v15, "absScroll":I
    if-gez v11, :cond_a5

    add-int v1, v14, v15

    if-le v1, v7, :cond_a5

    .line 8042
    sub-int v1, v14, v7

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "boundPos":I
    .local v16, "boundPos":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_b7

    .line 8040
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_a5
    move/from16 v16, v2

    .line 8043
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    if-lez v11, :cond_b7

    sub-int v1, v13, v15

    if-ge v1, v6, :cond_b7

    .line 8045
    sub-int v1, v13, v6

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_b7

    .line 8034
    .end local v12    # "boundChild":Landroid/view/View;
    .end local v13    # "boundTop":I
    .end local v14    # "boundBottom":I
    .end local v15    # "absScroll":I
    .end local v16    # "boundPos":I
    .restart local v2    # "boundPos":I
    :cond_b5
    move/from16 v16, v2

    .line 8049
    .end local v2    # "boundPos":I
    .restart local v16    # "boundPos":I
    :cond_b7
    :goto_b7
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v2, p3

    invoke-virtual {v1, v11, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8050
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 23

    .line 8059
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 8060
    .local v1, "listHeight":I
    iget-object v2, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8062
    .local v2, "firstPos":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_29c

    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .local v18, "listHeight":I
    goto/16 :goto_29a

    .line 8194
    .end local v18    # "listHeight":I
    .restart local v1    # "listHeight":I
    :pswitch_17
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v2, :cond_21

    .line 8196
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8197
    return-void

    .line 8200
    :cond_21
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8202
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8204
    .local v3, "childCount":I
    if-gtz v3, :cond_2c

    .line 8205
    return-void

    .line 8208
    :cond_2c
    iget v6, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8209
    .local v6, "position":I
    add-int v7, v2, v3

    sub-int/2addr v7, v5

    .line 8213
    .local v7, "lastPos":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8214
    .local v8, "firstChild":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 8215
    .local v9, "firstChildHeight":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 8216
    .local v10, "lastChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 8217
    .local v11, "lastChildHeight":I
    int-to-float v12, v9

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v12, :cond_51

    move v12, v14

    goto :goto_59

    .line 8218
    :cond_51
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    int-to-float v15, v9

    div-float/2addr v12, v15

    :goto_59
    nop

    .line 8219
    .local v12, "firstPositionVisiblePart":F
    int-to-float v15, v11

    cmpl-float v13, v15, v13

    if-nez v13, :cond_61

    move v13, v14

    goto :goto_70

    .line 8221
    :cond_61
    iget-object v13, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 8220
    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v13, v15

    int-to-float v13, v13

    int-to-float v15, v11

    div-float/2addr v13, v15

    :goto_70
    nop

    .line 8223
    .local v13, "lastPositionVisiblePart":F
    const/4 v15, 0x0

    .line 8224
    .local v15, "viewTravelCount":F
    if-ge v6, v2, :cond_7e

    .line 8225
    sub-int v4, v2, v6

    int-to-float v4, v4

    sub-float v17, v14, v12

    add-float v4, v4, v17

    add-float v15, v4, v14

    goto :goto_87

    .line 8226
    :cond_7e
    if-le v6, v7, :cond_87

    .line 8227
    sub-int v4, v6, v7

    int-to-float v4, v4

    sub-float v17, v14, v13

    add-float v15, v4, v17

    .line 8231
    :cond_87
    :goto_87
    int-to-float v4, v3

    div-float v4, v15, v4

    .line 8233
    .local v4, "screenTravelCount":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 8234
    .local v5, "modifier":F
    if-ge v6, v2, :cond_b6

    .line 8235
    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    .line 8236
    .local v14, "distance":I
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget v1, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 8237
    .local v1, "duration":I
    move/from16 v19, v3

    .end local v3    # "childCount":I
    .local v19, "childCount":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "screenTravelCount":F
    .local v20, "screenTravelCount":F
    invoke-virtual {v3, v14, v1, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8238
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8239
    .end local v1    # "duration":I
    .end local v14    # "distance":I
    goto/16 :goto_29a

    .end local v18    # "listHeight":I
    .end local v19    # "childCount":I
    .end local v20    # "screenTravelCount":F
    .local v1, "listHeight":I
    .restart local v3    # "childCount":I
    .restart local v4    # "screenTravelCount":F
    :cond_b6
    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v1    # "listHeight":I
    .end local v3    # "childCount":I
    .end local v4    # "screenTravelCount":F
    .restart local v18    # "listHeight":I
    .restart local v19    # "childCount":I
    .restart local v20    # "screenTravelCount":F
    if-le v6, v7, :cond_d9

    .line 8240
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 8241
    .local v1, "distance":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 8242
    .local v3, "duration":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v4, v1, v3, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8243
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8244
    .end local v1    # "distance":I
    .end local v3    # "duration":I
    goto/16 :goto_29a

    .line 8246
    :cond_d9
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v3, v6, v2

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 8247
    .local v1, "targetTop":I
    iget v3, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int v3, v1, v3

    .line 8248
    .local v3, "distance":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v4, v4

    .line 8249
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v1

    .end local v1    # "targetTop":I
    .local v21, "targetTop":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v14, v1

    mul-float/2addr v4, v14

    float-to-int v1, v4

    .line 8250
    .local v1, "duration":I
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v16, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    .end local v5    # "modifier":F
    .local v16, "modifier":F
    invoke-virtual {v4, v3, v1, v5, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8252
    .end local v1    # "duration":I
    .end local v3    # "distance":I
    .end local v21    # "targetTop":I
    goto/16 :goto_29a

    .line 8159
    .end local v6    # "position":I
    .end local v7    # "lastPos":I
    .end local v8    # "firstChild":Landroid/view/View;
    .end local v9    # "firstChildHeight":I
    .end local v10    # "lastChild":Landroid/view/View;
    .end local v11    # "lastChildHeight":I
    .end local v12    # "firstPositionVisiblePart":F
    .end local v13    # "lastPositionVisiblePart":F
    .end local v15    # "viewTravelCount":F
    .end local v16    # "modifier":F
    .end local v18    # "listHeight":I
    .end local v19    # "childCount":I
    .end local v20    # "screenTravelCount":F
    .local v1, "listHeight":I
    :pswitch_108
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 8160
    .local v1, "lastViewIndex":I
    if-gez v1, :cond_115

    .line 8161
    return-void

    .line 8163
    :cond_115
    add-int v3, v2, v1

    .line 8165
    .local v3, "lastPos":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v4, :cond_121

    .line 8167
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8168
    return-void

    .line 8171
    :cond_121
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8172
    .local v4, "lastView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8173
    .local v5, "lastViewHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 8174
    .local v6, "lastViewTop":I
    sub-int v7, v18, v6

    .line 8175
    .local v7, "lastViewPixelsShowing":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8176
    .local v8, "extraScroll":I
    iput v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8177
    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v3, v9, :cond_155

    .line 8178
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v10, v7, v8

    neg-int v10, v10

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x1

    invoke-virtual {v9, v10, v11, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8180
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_29a

    .line 8182
    :cond_155
    sub-int v9, v18, v8

    .line 8183
    .local v9, "bottom":I
    add-int v10, v6, v5

    .line 8184
    .local v10, "lastViewBottom":I
    if-le v9, v10, :cond_168

    .line 8185
    iget-object v11, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v12, v9, v10

    neg-int v12, v12

    iget v13, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto :goto_16e

    .line 8187
    :cond_168
    const/4 v14, 0x0

    iget-object v11, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v11, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8190
    .end local v9    # "bottom":I
    .end local v10    # "lastViewBottom":I
    :goto_16e
    goto/16 :goto_29a

    .line 8095
    .end local v3    # "lastPos":I
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "lastViewHeight":I
    .end local v6    # "lastViewTop":I
    .end local v7    # "lastViewPixelsShowing":I
    .end local v8    # "extraScroll":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_170
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    const/4 v1, 0x1

    .line 8096
    .local v1, "nextViewIndex":I
    iget-object v3, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8098
    .local v3, "childCount":I
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v4, :cond_1e5

    const/4 v14, 0x1

    if-le v3, v14, :cond_1e5

    add-int v4, v2, v3

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v5, :cond_18a

    const/4 v14, 0x0

    goto :goto_1e6

    .line 8103
    :cond_18a
    add-int/lit8 v4, v2, 0x1

    .line 8105
    .local v4, "nextPos":I
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v4, v5, :cond_196

    .line 8107
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8108
    return-void

    .line 8111
    :cond_196
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8112
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 8113
    .local v6, "nextViewHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 8114
    .local v7, "nextViewTop":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8115
    .restart local v8    # "extraScroll":I
    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v4, v9, :cond_1ce

    .line 8116
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int v10, v6, v7

    sub-int/2addr v10, v8

    const/4 v14, 0x0

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x1

    invoke-virtual {v9, v10, v11, v14, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8119
    iput v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8121
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_29a

    .line 8123
    :cond_1ce
    if-le v7, v8, :cond_1dd

    .line 8124
    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v10, v7, v8

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v9, v10, v11, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_29a

    .line 8126
    :cond_1dd
    const/4 v14, 0x0

    iget-object v9, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8129
    goto/16 :goto_29a

    .line 8098
    .end local v4    # "nextPos":I
    .end local v5    # "nextView":Landroid/view/View;
    .end local v6    # "nextViewHeight":I
    .end local v7    # "nextViewTop":I
    .end local v8    # "extraScroll":I
    :cond_1e5
    const/4 v14, 0x0

    .line 8100
    :goto_1e6
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v14}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8101
    return-void

    .line 8133
    .end local v3    # "childCount":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_1ec
    move/from16 v18, v1

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget v1, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v1, :cond_1f8

    .line 8135
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8136
    return-void

    .line 8139
    :cond_1f8
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8140
    .local v1, "firstView":Landroid/view/View;
    if-nez v1, :cond_202

    .line 8141
    return-void

    .line 8143
    :cond_202
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 8144
    .local v3, "firstViewTop":I
    if-lez v2, :cond_215

    .line 8145
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_21b

    :cond_215
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 8147
    .local v4, "extraScroll":I
    :goto_21b
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v6, v3, v4

    iget v7, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v8, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v8, :cond_226

    const/4 v14, 0x1

    :cond_226
    const/4 v15, 0x1

    invoke-virtual {v5, v6, v7, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8150
    iput v2, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8152
    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v5, :cond_29a

    .line 8153
    iget-object v5, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_29a

    .line 8064
    .end local v3    # "firstViewTop":I
    .end local v4    # "extraScroll":I
    .end local v18    # "listHeight":I
    .local v1, "listHeight":I
    :pswitch_236
    move/from16 v18, v1

    move v14, v4

    .end local v1    # "listHeight":I
    .restart local v18    # "listHeight":I
    iget-object v1, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 8065
    .local v1, "lastViewIndex":I
    add-int v3, v2, v1

    .line 8067
    .local v3, "lastPos":I
    if-gez v1, :cond_248

    .line 8068
    return-void

    .line 8071
    :cond_248
    iget v4, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v3, v4, :cond_252

    .line 8073
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8074
    return-void

    .line 8077
    :cond_252
    iget-object v4, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 8078
    .local v4, "lastView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 8079
    .local v5, "lastViewHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 8080
    .local v6, "lastViewTop":I
    sub-int v7, v18, v6

    .line 8081
    .local v7, "lastViewPixelsShowing":I
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mItemCount:I

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_279

    .line 8082
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_27f

    :cond_279
    iget-object v8, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 8084
    .restart local v8    # "extraScroll":I
    :goto_27f
    sub-int v9, v5, v7

    add-int/2addr v9, v8

    .line 8085
    .local v9, "scrollBy":I
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v11, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v12, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v3, v12, :cond_28b

    const/4 v14, 0x1

    :cond_28b
    const/4 v15, 0x1

    invoke-virtual {v10, v9, v11, v15, v14}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 8087
    iput v3, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 8088
    iget v10, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v3, v10, :cond_29a

    .line 8089
    iget-object v10, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 8258
    .end local v1    # "lastViewIndex":I
    .end local v3    # "lastPos":I
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "lastViewHeight":I
    .end local v6    # "lastViewTop":I
    .end local v7    # "lastViewPixelsShowing":I
    .end local v8    # "extraScroll":I
    .end local v9    # "scrollBy":I
    :cond_29a
    :goto_29a
    return-void

    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_236
        :pswitch_1ec
        :pswitch_170
        :pswitch_108
        :pswitch_17
    .end packed-switch
.end method

.method public greylist-max-o start(I)V
    .registers 10
    .param p1, "position"    # I

    .line 7815
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7817
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_13

    .line 7819
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7824
    return-void

    .line 7827
    :cond_13
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7828
    .local v0, "childCount":I
    if-nez v0, :cond_1c

    .line 7830
    return-void

    .line 7833
    :cond_1c
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7834
    .local v1, "firstPos":I
    add-int v2, v1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 7837
    .local v2, "lastPos":I
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7838
    .local v4, "clampedPosition":I
    const/16 v5, 0xc8

    const/4 v6, -0x1

    if-ge v4, v1, :cond_40

    .line 7839
    sub-int v7, v1, v4

    add-int/2addr v7, v3

    .line 7840
    .local v7, "viewTravelCount":I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_47

    .line 7841
    .end local v7    # "viewTravelCount":I
    :cond_40
    if-le v4, v2, :cond_5b

    .line 7842
    sub-int v7, v4, v2

    add-int/2addr v7, v3

    .line 7843
    .restart local v7    # "viewTravelCount":I
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7849
    :goto_47
    if-lez v7, :cond_4d

    .line 7850
    div-int/2addr v5, v7

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_4f

    .line 7852
    :cond_4d
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7854
    :goto_4f
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7855
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7856
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7858
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7859
    return-void

    .line 7845
    .end local v7    # "viewTravelCount":I
    :cond_5b
    invoke-direct {p0, v4, v6, v5}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7846
    return-void
.end method

.method public greylist-max-o start(II)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 7863
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7865
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 7866
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7867
    return-void

    .line 7870
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1a

    .line 7872
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7877
    return-void

    .line 7880
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7881
    .local v1, "childCount":I
    if-nez v1, :cond_23

    .line 7883
    return-void

    .line 7886
    :cond_23
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7887
    .local v2, "firstPos":I
    add-int v3, v2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 7890
    .local v3, "lastPos":I
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 7891
    .local v5, "clampedPosition":I
    const/16 v6, 0xc8

    if-ge v5, v2, :cond_55

    .line 7892
    sub-int v7, v3, p2

    .line 7893
    .local v7, "boundPosFromLast":I
    if-ge v7, v4, :cond_44

    .line 7895
    return-void

    .line 7898
    :cond_44
    sub-int v8, v2, v5

    add-int/2addr v8, v4

    .line 7899
    .local v8, "posTravel":I
    add-int/lit8 v4, v7, -0x1

    .line 7900
    .local v4, "boundTravel":I
    if-ge v4, v8, :cond_50

    .line 7901
    move v9, v4

    .line 7902
    .local v9, "viewTravelCount":I
    const/4 v10, 0x4

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_54

    .line 7904
    .end local v9    # "viewTravelCount":I
    :cond_50
    move v9, v8

    .line 7905
    .restart local v9    # "viewTravelCount":I
    const/4 v10, 0x2

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7907
    .end local v4    # "boundTravel":I
    .end local v7    # "boundPosFromLast":I
    .end local v8    # "posTravel":I
    :goto_54
    goto :goto_6d

    .end local v9    # "viewTravelCount":I
    :cond_55
    if-le v5, v3, :cond_81

    .line 7908
    sub-int v7, p2, v2

    .line 7909
    .local v7, "boundPosFromFirst":I
    if-ge v7, v4, :cond_5c

    .line 7911
    return-void

    .line 7914
    :cond_5c
    sub-int v8, v5, v3

    add-int/2addr v8, v4

    .line 7915
    .restart local v8    # "posTravel":I
    add-int/lit8 v9, v7, -0x1

    .line 7916
    .local v9, "boundTravel":I
    if-ge v9, v8, :cond_68

    .line 7917
    move v4, v9

    .line 7918
    .local v4, "viewTravelCount":I
    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_6c

    .line 7920
    .end local v4    # "viewTravelCount":I
    :cond_68
    move v10, v8

    .line 7921
    .local v10, "viewTravelCount":I
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move v9, v10

    .line 7923
    .end local v7    # "boundPosFromFirst":I
    .end local v8    # "posTravel":I
    .end local v10    # "viewTravelCount":I
    .local v9, "viewTravelCount":I
    :goto_6c
    nop

    .line 7928
    :goto_6d
    if-lez v9, :cond_73

    .line 7929
    div-int/2addr v6, v9

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_75

    .line 7931
    :cond_73
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7933
    :goto_75
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7934
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7935
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7937
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7938
    return-void

    .line 7924
    .end local v9    # "viewTravelCount":I
    :cond_81
    invoke-direct {p0, v5, p2, v6}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7925
    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 7942
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 7943
    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 7947
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7949
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_14

    .line 7951
    move v0, p2

    .line 7952
    .local v0, "postOffset":I
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v2, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v2, p0, p1, v0, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v2, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7957
    return-void

    .line 7960
    .end local v0    # "postOffset":I
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7961
    .local v0, "childCount":I
    if-nez v0, :cond_1d

    .line 7963
    return-void

    .line 7966
    :cond_1d
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 7968
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7969
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 7970
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7971
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7972
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7974
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7975
    .local v4, "firstPos":I
    add-int v5, v4, v0

    sub-int/2addr v5, v2

    .line 7978
    .local v5, "lastPos":I
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v6, v4, :cond_51

    .line 7979
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v2, v4, v2

    .local v2, "viewTravelCount":I
    goto :goto_58

    .line 7980
    .end local v2    # "viewTravelCount":I
    :cond_51
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v6, v5, :cond_70

    .line 7981
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v2, v5

    .line 7990
    .restart local v2    # "viewTravelCount":I
    :goto_58
    int-to-float v3, v2

    int-to-float v6, v0

    div-float/2addr v3, v6

    .line 7991
    .local v3, "screenTravelCount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_63

    .line 7992
    move v6, p3

    goto :goto_66

    :cond_63
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    :goto_66
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7993
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7995
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7996
    return-void

    .line 7984
    .end local v2    # "viewTravelCount":I
    .end local v3    # "screenTravelCount":F
    :cond_70
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 7985
    .local v1, "targetTop":I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v1, p2

    invoke-virtual {v6, v7, p3, v2, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7986
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 8054
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8055
    return-void
.end method
