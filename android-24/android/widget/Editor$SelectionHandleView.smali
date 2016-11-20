.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final mHandleType:I

.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4650
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3
    .line 4652
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    #@c
    .line 4637
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    #@e
    .line 4643
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    #@10
    .line 4648
    const/4 v0, 0x2

    #@11
    new-array v0, v0, [I

    #@13
    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    #@15
    .line 4653
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    #@17
    .line 4654
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@22
    move-result-object v6

    #@23
    .line 4655
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@26
    move-result v0

    #@27
    mul-int/lit8 v0, v0, 0x4

    #@29
    int-to-float v0, v0

    #@2a
    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    #@2c
    .line 4651
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4947
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@4
    move-result v2

    #@5
    .line 4948
    .local v2, "line":I
    if-eqz p3, :cond_1

    #@7
    move v3, p2

    #@8
    .line 4949
    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@b
    move-result v0

    #@c
    .line 4950
    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@f
    move-result v4

    #@10
    const/4 v5, -0x1

    #@11
    if-ne v4, v5, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    .line 4951
    .local v1, "isRtlParagraph":Z
    :cond_0
    if-ne v0, v1, :cond_2

    #@16
    .line 4952
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@19
    move-result v4

    #@1a
    .line 4951
    :goto_1
    return v4

    #@1b
    .line 4948
    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_1
    add-int/lit8 v4, p2, -0x1

    #@1d
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v3

    #@21
    goto :goto_0

    #@22
    .line 4952
    .restart local v0    # "isRtlChar":Z
    .restart local v1    # "isRtlParagraph":Z
    .restart local v3    # "offsetToCheck":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    #@25
    move-result v4

    #@26
    goto :goto_1
.end method

.method private isStartHandle()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4659
    iget v1, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 13
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 4888
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@5
    move-result v7

    #@6
    if-eqz v7, :cond_2

    #@8
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@a
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    #@11
    move-result v1

    #@12
    .line 4889
    .local v1, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_3

    #@18
    if-lt p1, v1, :cond_3

    #@1a
    .line 4891
    :cond_0
    const/4 v7, 0x0

    #@1b
    iput v7, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@1d
    .line 4892
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@1f
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@26
    move-result-object v5

    #@27
    .line 4893
    .local v5, "layout":Landroid/text/Layout;
    if-eqz v5, :cond_7

    #@29
    if-eq p1, v1, :cond_7

    #@2b
    .line 4894
    invoke-virtual {p0, v5, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@2e
    move-result v4

    #@2f
    .line 4896
    .local v4, "horiz":F
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_5

    #@35
    move v7, v10

    #@36
    .line 4895
    :goto_1
    invoke-direct {p0, v5, v1, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    #@39
    move-result v0

    #@3a
    .line 4897
    .local v0, "anotherHandleHoriz":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@3c
    invoke-virtual {p0, v5, v7}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@3f
    move-result v2

    #@40
    .line 4898
    .local v2, "currentHoriz":F
    cmpg-float v7, v2, v0

    #@42
    if-gez v7, :cond_6

    #@44
    cmpg-float v7, v4, v0

    #@46
    if-gez v7, :cond_6

    #@48
    .line 4902
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    #@4b
    move-result v3

    #@4c
    .line 4903
    .local v3, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_9

    #@52
    move v6, v3

    #@53
    .line 4905
    .local v6, "offsetToGetRunRange":I
    :goto_2
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getRunRange(I)J

    #@56
    move-result-wide v8

    #@57
    .line 4906
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_a

    #@5d
    .line 4907
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@60
    move-result p1

    #@61
    .line 4911
    :goto_3
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    #@64
    .line 4912
    return-void

    #@65
    .line 4888
    .end local v0    # "anotherHandleHoriz":F
    .end local v1    # "anotherHandleOffset":I
    .end local v2    # "currentHoriz":F
    .end local v3    # "currentOffset":I
    .end local v4    # "horiz":F
    .end local v5    # "layout":Landroid/text/Layout;
    .end local v6    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@67
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    #@6e
    move-result v1

    #@6f
    .restart local v1    # "anotherHandleOffset":I
    goto :goto_0

    #@70
    .line 4890
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@73
    move-result v7

    #@74
    if-nez v7, :cond_4

    #@76
    if-le p1, v1, :cond_0

    #@78
    .line 4918
    :cond_4
    :goto_4
    invoke-virtual {p0, p1, v10}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    #@7b
    .line 4886
    return-void

    #@7c
    .restart local v4    # "horiz":F
    .restart local v5    # "layout":Landroid/text/Layout;
    :cond_5
    move v7, v11

    #@7d
    .line 4896
    goto :goto_1

    #@7e
    .line 4899
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    :cond_6
    cmpl-float v7, v2, v0

    #@80
    if-lez v7, :cond_7

    #@82
    cmpl-float v7, v4, v0

    #@84
    if-gtz v7, :cond_1

    #@86
    .line 4916
    .end local v0    # "anotherHandleHoriz":F
    .end local v2    # "currentHoriz":F
    .end local v4    # "horiz":F
    :cond_7
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@88
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@8b
    move-result v12

    #@8c
    if-eqz v12, :cond_8

    #@8e
    move v11, v10

    #@8f
    :cond_8
    invoke-static {v7, v1, v11}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;IZ)I

    #@92
    move-result p1

    #@93
    goto :goto_4

    #@94
    .line 4904
    .restart local v0    # "anotherHandleHoriz":F
    .restart local v2    # "currentHoriz":F
    .restart local v3    # "currentOffset":I
    .restart local v4    # "horiz":F
    :cond_9
    add-int/lit8 v7, v3, -0x1

    #@96
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@99
    move-result v6

    #@9a
    goto :goto_2

    #@9b
    .line 4909
    .restart local v6    # "offsetToGetRunRange":I
    .restart local v8    # "range":J
    :cond_a
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@9e
    move-result p1

    #@9f
    goto :goto_3
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4922
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    #@9
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 4924
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@f
    move-result v3

    #@10
    if-ne p2, v3, :cond_1

    #@12
    .line 4925
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    #@14
    aget v3, v3, v5

    #@16
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@18
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v4

    #@20
    add-int/2addr v3, v4

    #@21
    .line 4926
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@23
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    #@2a
    move-result v4

    #@2b
    .line 4925
    sub-int v2, v3, v4

    #@2d
    .line 4927
    .local v2, "rightEdge":I
    int-to-float v3, v2

    #@2e
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    #@30
    sub-float/2addr v3, v4

    #@31
    cmpl-float v3, p1, v3

    #@33
    if-lez v3, :cond_0

    #@35
    const/4 v1, 0x1

    #@36
    .line 4932
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    #@37
    .line 4927
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    #@38
    .restart local v1    # "nearEdge":Z
    goto :goto_0

    #@39
    .line 4929
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    #@3b
    aget v3, v3, v5

    #@3d
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3f
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    #@46
    move-result v4

    #@47
    add-int v0, v3, v4

    #@49
    .line 4930
    .local v0, "leftEdge":I
    int-to-float v3, v0

    #@4a
    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    #@4c
    add-float/2addr v3, v4

    #@4d
    cmpg-float v3, p1, v3

    #@4f
    if-gez v3, :cond_2

    #@51
    const/4 v1, 0x1

    #@52
    .restart local v1    # "nearEdge":Z
    goto :goto_0

    #@53
    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    #@54
    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 4678
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@13
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4943
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4673
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    const/4 v0, 0x3

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x5

    #@9
    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    #@0
    .prologue
    .line 4664
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v0

    #@4
    if-ne p2, v0, :cond_0

    #@6
    .line 4665
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v0

    #@a
    div-int/lit8 v0, v0, 0x4

    #@c
    return v0

    #@d
    .line 4667
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@10
    move-result v0

    #@11
    mul-int/lit8 v0, v0, 0x3

    #@13
    div-int/lit8 v0, v0, 0x4

    #@15
    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 4957
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v10

    #@8
    invoke-virtual {v10, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@b
    move-result v3

    #@c
    .line 4958
    .local v3, "localX":F
    invoke-virtual {p1, p2, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    #@f
    move-result v6

    #@10
    .line 4959
    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@13
    move-result v10

    #@14
    if-nez v10, :cond_0

    #@16
    .line 4960
    return v6

    #@17
    .line 4962
    :cond_0
    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    #@1a
    move-result v8

    #@1b
    .line 4963
    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    #@1e
    move-result v0

    #@1f
    .line 4964
    .local v0, "currentOffset":I
    sub-int v10, v6, v0

    #@21
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@24
    move-result v5

    #@25
    .line 4965
    .local v5, "primaryDiff":I
    sub-int v10, v8, v0

    #@27
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@2a
    move-result v7

    #@2b
    .line 4966
    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    #@2d
    .line 4967
    return v6

    #@2e
    .line 4968
    :cond_1
    if-le v5, v7, :cond_2

    #@30
    .line 4969
    return v8

    #@31
    .line 4971
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_3

    #@37
    move v4, v0

    #@38
    .line 4973
    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@3b
    move-result v1

    #@3c
    .line 4974
    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@3f
    move-result v10

    #@40
    const/4 v11, -0x1

    #@41
    if-ne v10, v11, :cond_4

    #@43
    .line 4975
    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    #@45
    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    #@46
    .line 4972
    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    #@48
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@4b
    move-result v4

    #@4c
    goto :goto_0

    #@4d
    .restart local v1    # "isRtlChar":Z
    .restart local v4    # "offsetToCheck":I
    :cond_4
    move v2, v9

    #@4e
    .line 4974
    goto :goto_1

    #@4f
    .restart local v2    # "isRtlParagraph":Z
    :cond_5
    move v6, v8

    #@50
    .line 4975
    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4937
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    move v0, p2

    #@7
    .line 4938
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 4937
    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4876
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    .line 4877
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 4880
    const/4 v1, 0x0

    #@b
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@d
    .line 4881
    const/high16 v1, -0x40800000    # -1.0f

    #@f
    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    #@11
    .line 4883
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4870
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    #@4
    .line 4871
    const/4 v1, -0x1

    #@5
    if-eq p1, v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@9
    invoke-static {v1}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    #@15
    .line 4869
    return-void

    #@16
    .line 4871
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 4698
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@4
    move-object/from16 v24, v0

    #@6
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v24

    #@a
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@d
    move-result-object v12

    #@e
    .line 4699
    .local v12, "layout":Landroid/text/Layout;
    if-nez v12, :cond_0

    #@10
    .line 4702
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@14
    move-object/from16 v24, v0

    #@16
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v24

    #@1a
    move-object/from16 v0, v24

    #@1c
    move/from16 v1, p1

    #@1e
    move/from16 v2, p2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@23
    move-result v24

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v24

    #@28
    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@2b
    .line 4703
    return-void

    #@2c
    .line 4706
    :cond_0
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@30
    move/from16 v24, v0

    #@32
    const/16 v25, -0x1

    #@34
    move/from16 v0, v24

    #@36
    move/from16 v1, v25

    #@38
    if-ne v0, v1, :cond_1

    #@3a
    .line 4707
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3e
    move-object/from16 v24, v0

    #@40
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@43
    move-result-object v24

    #@44
    move-object/from16 v0, v24

    #@46
    move/from16 v1, p2

    #@48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@4b
    move-result v24

    #@4c
    move/from16 v0, v24

    #@4e
    move-object/from16 v1, p0

    #@50
    iput v0, v1, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@52
    .line 4710
    :cond_1
    const/16 v16, 0x0

    #@54
    .line 4712
    .local v16, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@57
    move-result v24

    #@58
    if-eqz v24, :cond_6

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@5e
    move-object/from16 v24, v0

    #@60
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@63
    move-result-object v24

    #@64
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionEnd()I

    #@67
    move-result v5

    #@68
    .line 4713
    .local v5, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@6c
    move-object/from16 v24, v0

    #@6e
    move-object/from16 v0, p0

    #@70
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@72
    move/from16 v25, v0

    #@74
    move-object/from16 v0, v24

    #@76
    move/from16 v1, v25

    #@78
    move/from16 v2, p2

    #@7a
    invoke-static {v0, v12, v1, v2}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@7d
    move-result v7

    #@7e
    .line 4714
    .local v7, "currLine":I
    move-object/from16 v0, p0

    #@80
    move/from16 v1, p1

    #@82
    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    #@85
    move-result v9

    #@86
    .line 4716
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@89
    move-result v24

    #@8a
    if-eqz v24, :cond_7

    #@8c
    if-lt v9, v5, :cond_7

    #@8e
    .line 4720
    :goto_1
    invoke-virtual {v12, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    #@91
    move-result v7

    #@92
    .line 4721
    move-object/from16 v0, p0

    #@94
    move/from16 v1, p1

    #@96
    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    #@99
    move-result v9

    #@9a
    .line 4724
    :cond_2
    move v14, v9

    #@9b
    .line 4725
    .local v14, "offset":I
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@9f
    move-object/from16 v24, v0

    #@a1
    move-object/from16 v0, v24

    #@a3
    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap15(Landroid/widget/Editor;I)I

    #@a6
    move-result v21

    #@a7
    .line 4726
    .local v21, "wordEnd":I
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@ab
    move-object/from16 v24, v0

    #@ad
    move-object/from16 v0, v24

    #@af
    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;I)I

    #@b2
    move-result v22

    #@b3
    .line 4728
    .local v22, "wordStart":I
    move-object/from16 v0, p0

    #@b5
    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    #@b7
    move/from16 v24, v0

    #@b9
    const/high16 v25, -0x40800000    # -1.0f

    #@bb
    cmpl-float v24, v24, v25

    #@bd
    if-nez v24, :cond_3

    #@bf
    .line 4729
    move/from16 v0, p1

    #@c1
    move-object/from16 v1, p0

    #@c3
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    #@c5
    .line 4732
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    #@c8
    move-result v8

    #@c9
    .line 4733
    .local v8, "currentOffset":I
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v12, v8}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    #@ce
    move-result v17

    #@cf
    .line 4734
    .local v17, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    #@d4
    move-result v6

    #@d5
    .line 4735
    .local v6, "atRtl":Z
    invoke-virtual {v12, v14}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@d8
    move-result v11

    #@d9
    .line 4740
    .local v11, "isLvlBoundary":Z
    if-nez v11, :cond_5

    #@db
    if-eqz v17, :cond_4

    #@dd
    if-eqz v6, :cond_5

    #@df
    :cond_4
    if-nez v17, :cond_8

    #@e1
    if-eqz v6, :cond_8

    #@e3
    .line 4743
    :cond_5
    const/16 v24, 0x1

    #@e5
    move/from16 v0, v24

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    #@eb
    .line 4744
    const/16 v24, 0x0

    #@ed
    move/from16 v0, v24

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@f3
    .line 4745
    move-object/from16 v0, p0

    #@f5
    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@f8
    .line 4746
    return-void

    #@f9
    .line 4712
    .end local v5    # "anotherHandleOffset":I
    .end local v6    # "atRtl":Z
    .end local v7    # "currLine":I
    .end local v8    # "currentOffset":I
    .end local v9    # "initialOffset":I
    .end local v11    # "isLvlBoundary":Z
    .end local v14    # "offset":I
    .end local v17    # "rtlAtCurrentOffset":Z
    .end local v21    # "wordEnd":I
    .end local v22    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@fd
    move-object/from16 v24, v0

    #@ff
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@102
    move-result-object v24

    #@103
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getSelectionStart()I

    #@106
    move-result v5

    #@107
    .restart local v5    # "anotherHandleOffset":I
    goto/16 :goto_0

    #@109
    .line 4717
    .restart local v7    # "currLine":I
    .restart local v9    # "initialOffset":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@10c
    move-result v24

    #@10d
    if-nez v24, :cond_2

    #@10f
    if-gt v9, v5, :cond_2

    #@111
    goto/16 :goto_1

    #@113
    .line 4747
    .restart local v6    # "atRtl":Z
    .restart local v8    # "currentOffset":I
    .restart local v11    # "isLvlBoundary":Z
    .restart local v14    # "offset":I
    .restart local v17    # "rtlAtCurrentOffset":Z
    .restart local v21    # "wordEnd":I
    .restart local v22    # "wordStart":I
    :cond_8
    move-object/from16 v0, p0

    #@115
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    #@117
    move/from16 v24, v0

    #@119
    if-eqz v24, :cond_9

    #@11b
    if-eqz v11, :cond_c

    #@11d
    .line 4757
    :cond_9
    move-object/from16 v0, p0

    #@11f
    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    #@121
    move/from16 v24, v0

    #@123
    sub-float v23, p1, v24

    #@125
    .line 4758
    .local v23, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@128
    move-result v24

    #@129
    if-eqz v24, :cond_e

    #@12b
    .line 4759
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@12f
    move/from16 v24, v0

    #@131
    move/from16 v0, v24

    #@133
    if-ge v7, v0, :cond_d

    #@135
    const/4 v10, 0x1

    #@136
    .line 4763
    .local v10, "isExpanding":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@139
    move-result v24

    #@13a
    move/from16 v0, v24

    #@13c
    if-ne v6, v0, :cond_11

    #@13e
    .line 4764
    const/16 v24, 0x0

    #@140
    cmpl-float v24, v23, v24

    #@142
    if-lez v24, :cond_10

    #@144
    const/16 v24, 0x1

    #@146
    :goto_3
    or-int v10, v10, v24

    #@148
    .line 4769
    .local v10, "isExpanding":Z
    :goto_4
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@14c
    move-object/from16 v24, v0

    #@14e
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@151
    move-result-object v24

    #@152
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    #@155
    move-result v24

    #@156
    if-eqz v24, :cond_14

    #@158
    .line 4770
    move-object/from16 v0, p0

    #@15a
    move/from16 v1, p1

    #@15c
    invoke-direct {v0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    #@15f
    move-result v24

    #@160
    if-eqz v24, :cond_14

    #@162
    .line 4771
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@165
    move-result v24

    #@166
    if-eqz v24, :cond_13

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@16c
    move-object/from16 v24, v0

    #@16e
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@171
    move-result-object v24

    #@172
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getScrollX()I

    #@175
    move-result v24

    #@176
    if-eqz v24, :cond_13

    #@178
    .line 4774
    :cond_a
    if-eqz v10, :cond_1e

    #@17a
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@17d
    move-result v24

    #@17e
    if-eqz v24, :cond_1d

    #@180
    if-ge v14, v8, :cond_1d

    #@182
    .line 4780
    :cond_b
    const/16 v24, 0x0

    #@184
    move/from16 v0, v24

    #@186
    move-object/from16 v1, p0

    #@188
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@18a
    .line 4781
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@18d
    move-result v24

    #@18e
    move/from16 v0, v24

    #@190
    if-ne v6, v0, :cond_1f

    #@192
    .line 4782
    move-object/from16 v0, p0

    #@194
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@196
    move/from16 v24, v0

    #@198
    move/from16 v0, v24

    #@19a
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@19d
    move-result v13

    #@19e
    .line 4784
    .local v13, "nextOffset":I
    :goto_5
    move-object/from16 v0, p0

    #@1a0
    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@1a3
    .line 4785
    return-void

    #@1a4
    .line 4750
    .end local v10    # "isExpanding":Z
    .end local v13    # "nextOffset":I
    .end local v23    # "xDiff":F
    :cond_c
    move-object/from16 v0, p0

    #@1a6
    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@1a9
    .line 4751
    const/16 v24, 0x0

    #@1ab
    move/from16 v0, v24

    #@1ad
    move-object/from16 v1, p0

    #@1af
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@1b1
    .line 4752
    const/16 v24, 0x0

    #@1b3
    move/from16 v0, v24

    #@1b5
    move-object/from16 v1, p0

    #@1b7
    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    #@1b9
    .line 4753
    return-void

    #@1ba
    .line 4759
    .restart local v23    # "xDiff":F
    :cond_d
    const/4 v10, 0x0

    #@1bb
    .local v10, "isExpanding":Z
    goto/16 :goto_2

    #@1bd
    .line 4761
    .end local v10    # "isExpanding":Z
    :cond_e
    move-object/from16 v0, p0

    #@1bf
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@1c1
    move/from16 v24, v0

    #@1c3
    move/from16 v0, v24

    #@1c5
    if-le v7, v0, :cond_f

    #@1c7
    const/4 v10, 0x1

    #@1c8
    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    #@1ca
    .end local v10    # "isExpanding":Z
    :cond_f
    const/4 v10, 0x0

    #@1cb
    .restart local v10    # "isExpanding":Z
    goto/16 :goto_2

    #@1cd
    .line 4764
    :cond_10
    const/16 v24, 0x0

    #@1cf
    goto/16 :goto_3

    #@1d1
    .line 4766
    :cond_11
    const/16 v24, 0x0

    #@1d3
    cmpg-float v24, v23, v24

    #@1d5
    if-gez v24, :cond_12

    #@1d7
    const/16 v24, 0x1

    #@1d9
    :goto_6
    or-int v10, v10, v24

    #@1db
    .local v10, "isExpanding":Z
    goto/16 :goto_4

    #@1dd
    .local v10, "isExpanding":Z
    :cond_12
    const/16 v24, 0x0

    #@1df
    goto :goto_6

    #@1e0
    .line 4772
    .local v10, "isExpanding":Z
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@1e3
    move-result v24

    #@1e4
    if-nez v24, :cond_14

    #@1e6
    .line 4773
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@1ea
    move-object/from16 v24, v0

    #@1ec
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1ef
    move-result-object v25

    #@1f0
    if-eqz v6, :cond_1c

    #@1f2
    const/16 v24, -0x1

    #@1f4
    :goto_7
    move-object/from16 v0, v25

    #@1f6
    move/from16 v1, v24

    #@1f8
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@1fb
    move-result v24

    #@1fc
    .line 4770
    if-nez v24, :cond_a

    #@1fe
    .line 4789
    :cond_14
    :goto_8
    if-eqz v10, :cond_2b

    #@200
    .line 4791
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@203
    move-result v24

    #@204
    if-eqz v24, :cond_20

    #@206
    move/from16 v20, v22

    #@208
    .line 4792
    .local v20, "wordBoundary":I
    :goto_9
    move-object/from16 v0, p0

    #@20a
    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    #@20c
    move/from16 v24, v0

    #@20e
    if-eqz v24, :cond_15

    #@210
    .line 4793
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@213
    move-result v24

    #@214
    if-eqz v24, :cond_21

    #@216
    move-object/from16 v0, p0

    #@218
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@21a
    move/from16 v24, v0

    #@21c
    move/from16 v0, v24

    #@21e
    if-ge v7, v0, :cond_22

    #@220
    .line 4794
    :cond_15
    move-object/from16 v0, p0

    #@222
    move/from16 v1, v20

    #@224
    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    #@227
    move-result v24

    #@228
    move/from16 v0, v24

    #@22a
    if-ne v6, v0, :cond_23

    #@22c
    const/16 v24, 0x1

    #@22e
    :goto_a
    move/from16 v19, v24

    #@230
    .line 4795
    .local v19, "snapToWord":Z
    :goto_b
    if-eqz v19, :cond_18

    #@232
    .line 4799
    move/from16 v0, v20

    #@234
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@237
    move-result v24

    #@238
    move/from16 v0, v24

    #@23a
    if-eq v0, v7, :cond_16

    #@23c
    .line 4800
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@23f
    move-result v24

    #@240
    if-eqz v24, :cond_24

    #@242
    .line 4801
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineStart(I)I

    #@245
    move-result v20

    #@246
    .line 4803
    :cond_16
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@249
    move-result v24

    #@24a
    if-eqz v24, :cond_25

    #@24c
    .line 4804
    sub-int v24, v21, v20

    #@24e
    div-int/lit8 v24, v24, 0x2

    #@250
    sub-int v15, v21, v24

    #@252
    .line 4806
    .local v15, "offsetThresholdToSnap":I
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@255
    move-result v24

    #@256
    if-eqz v24, :cond_26

    #@258
    .line 4807
    if-le v14, v15, :cond_17

    #@25a
    move-object/from16 v0, p0

    #@25c
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@25e
    move/from16 v24, v0

    #@260
    move/from16 v0, v24

    #@262
    if-ge v7, v0, :cond_26

    #@264
    .line 4810
    :cond_17
    move/from16 v14, v22

    #@266
    .line 4820
    .end local v15    # "offsetThresholdToSnap":I
    :cond_18
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@269
    move-result v24

    #@26a
    if-eqz v24, :cond_29

    #@26c
    if-ge v14, v9, :cond_29

    #@26e
    .line 4822
    :cond_19
    move-object/from16 v0, p0

    #@270
    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@273
    move-result v4

    #@274
    .line 4824
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    #@276
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@278
    move-object/from16 v24, v0

    #@27a
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27d
    move-result-object v24

    #@27e
    move-object/from16 v0, v24

    #@280
    move/from16 v1, p1

    #@282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@285
    move-result v24

    #@286
    sub-float v24, v24, v4

    #@288
    .line 4823
    move/from16 v0, v24

    #@28a
    move-object/from16 v1, p0

    #@28c
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@28e
    .line 4828
    .end local v4    # "adjustedX":F
    :goto_f
    const/16 v16, 0x1

    #@290
    .line 4861
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_1a
    :goto_10
    if-eqz v16, :cond_1b

    #@292
    .line 4862
    move-object/from16 v0, p0

    #@294
    iput v7, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    #@296
    .line 4863
    move-object/from16 v0, p0

    #@298
    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    #@29b
    .line 4865
    :cond_1b
    move/from16 v0, p1

    #@29d
    move-object/from16 v1, p0

    #@29f
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    #@2a1
    .line 4697
    return-void

    #@2a2
    .line 4773
    :cond_1c
    const/16 v24, 0x1

    #@2a4
    goto/16 :goto_7

    #@2a6
    .line 4775
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@2a9
    move-result v24

    #@2aa
    if-nez v24, :cond_1e

    #@2ac
    if-gt v14, v8, :cond_b

    #@2ae
    .line 4776
    :cond_1e
    if-eqz v10, :cond_b

    #@2b0
    goto/16 :goto_8

    #@2b2
    .line 4783
    :cond_1f
    move-object/from16 v0, p0

    #@2b4
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@2b6
    move/from16 v24, v0

    #@2b8
    move/from16 v0, v24

    #@2ba
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@2bd
    move-result v13

    #@2be
    goto/16 :goto_5

    #@2c0
    .line 4791
    :cond_20
    move/from16 v20, v21

    #@2c2
    .restart local v20    # "wordBoundary":I
    goto/16 :goto_9

    #@2c4
    .line 4793
    :cond_21
    move-object/from16 v0, p0

    #@2c6
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@2c8
    move/from16 v24, v0

    #@2ca
    move/from16 v0, v24

    #@2cc
    if-gt v7, v0, :cond_15

    #@2ce
    .line 4792
    :cond_22
    const/16 v19, 0x0

    #@2d0
    goto/16 :goto_b

    #@2d2
    .line 4794
    :cond_23
    const/16 v24, 0x0

    #@2d4
    goto/16 :goto_a

    #@2d6
    .line 4801
    .restart local v19    # "snapToWord":Z
    :cond_24
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineEnd(I)I

    #@2d9
    move-result v20

    #@2da
    goto/16 :goto_c

    #@2dc
    .line 4805
    :cond_25
    sub-int v24, v20, v22

    #@2de
    div-int/lit8 v24, v24, 0x2

    #@2e0
    add-int v15, v22, v24

    #@2e2
    .restart local v15    # "offsetThresholdToSnap":I
    goto/16 :goto_d

    #@2e4
    .line 4811
    :cond_26
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@2e7
    move-result v24

    #@2e8
    if-nez v24, :cond_28

    #@2ea
    .line 4812
    if-ge v14, v15, :cond_27

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@2f0
    move/from16 v24, v0

    #@2f2
    move/from16 v0, v24

    #@2f4
    if-le v7, v0, :cond_28

    #@2f6
    .line 4815
    :cond_27
    move/from16 v14, v21

    #@2f8
    .line 4812
    goto/16 :goto_e

    #@2fa
    .line 4817
    :cond_28
    move-object/from16 v0, p0

    #@2fc
    iget v14, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@2fe
    goto/16 :goto_e

    #@300
    .line 4821
    .end local v15    # "offsetThresholdToSnap":I
    :cond_29
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@303
    move-result v24

    #@304
    if-nez v24, :cond_2a

    #@306
    if-gt v14, v9, :cond_19

    #@308
    .line 4826
    :cond_2a
    const/16 v24, 0x0

    #@30a
    move/from16 v0, v24

    #@30c
    move-object/from16 v1, p0

    #@30e
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@310
    goto/16 :goto_f

    #@312
    .line 4831
    .end local v19    # "snapToWord":Z
    .end local v20    # "wordBoundary":I
    :cond_2b
    move-object/from16 v0, p0

    #@314
    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@316
    move/from16 v24, v0

    #@318
    sub-float v24, p1, v24

    #@31a
    move-object/from16 v0, p0

    #@31c
    move/from16 v1, v24

    #@31e
    invoke-virtual {v0, v12, v7, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    #@321
    move-result v3

    #@322
    .line 4832
    .local v3, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@325
    move-result v24

    #@326
    if-eqz v24, :cond_2f

    #@328
    .line 4833
    move-object/from16 v0, p0

    #@32a
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@32c
    move/from16 v24, v0

    #@32e
    move/from16 v0, v24

    #@330
    if-gt v3, v0, :cond_2c

    #@332
    move-object/from16 v0, p0

    #@334
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@336
    move/from16 v24, v0

    #@338
    move/from16 v0, v24

    #@33a
    if-le v7, v0, :cond_2e

    #@33c
    :cond_2c
    const/16 v18, 0x1

    #@33e
    .line 4835
    .local v18, "shrinking":Z
    :goto_11
    if-eqz v18, :cond_36

    #@340
    .line 4837
    move-object/from16 v0, p0

    #@342
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@344
    move/from16 v24, v0

    #@346
    move/from16 v0, v24

    #@348
    if-eq v7, v0, :cond_35

    #@34a
    .line 4839
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@34d
    move-result v24

    #@34e
    if-eqz v24, :cond_32

    #@350
    move/from16 v14, v22

    #@352
    .line 4840
    :goto_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@355
    move-result v24

    #@356
    if-eqz v24, :cond_33

    #@358
    if-ge v14, v9, :cond_33

    #@35a
    .line 4842
    :cond_2d
    move-object/from16 v0, p0

    #@35c
    invoke-virtual {v0, v12, v14}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@35f
    move-result v4

    #@360
    .line 4844
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@364
    move-object/from16 v24, v0

    #@366
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@369
    move-result-object v24

    #@36a
    move-object/from16 v0, v24

    #@36c
    move/from16 v1, p1

    #@36e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@371
    move-result v24

    #@372
    sub-float v24, v24, v4

    #@374
    .line 4843
    move/from16 v0, v24

    #@376
    move-object/from16 v1, p0

    #@378
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@37a
    .line 4851
    .end local v4    # "adjustedX":F
    :goto_13
    const/16 v16, 0x1

    #@37c
    goto/16 :goto_10

    #@37e
    .line 4833
    .end local v18    # "shrinking":Z
    :cond_2e
    const/16 v18, 0x0

    #@380
    goto :goto_11

    #@381
    .line 4834
    :cond_2f
    move-object/from16 v0, p0

    #@383
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@385
    move/from16 v24, v0

    #@387
    move/from16 v0, v24

    #@389
    if-lt v3, v0, :cond_30

    #@38b
    move-object/from16 v0, p0

    #@38d
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    #@38f
    move/from16 v24, v0

    #@391
    move/from16 v0, v24

    #@393
    if-ge v7, v0, :cond_31

    #@395
    :cond_30
    const/16 v18, 0x1

    #@397
    goto :goto_11

    #@398
    :cond_31
    const/16 v18, 0x0

    #@39a
    goto :goto_11

    #@39b
    .line 4839
    .restart local v18    # "shrinking":Z
    :cond_32
    move/from16 v14, v21

    #@39d
    goto :goto_12

    #@39e
    .line 4841
    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3a1
    move-result v24

    #@3a2
    if-nez v24, :cond_34

    #@3a4
    if-gt v14, v9, :cond_2d

    #@3a6
    .line 4846
    :cond_34
    const/16 v24, 0x0

    #@3a8
    move/from16 v0, v24

    #@3aa
    move-object/from16 v1, p0

    #@3ac
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@3ae
    goto :goto_13

    #@3af
    .line 4849
    :cond_35
    move v14, v3

    #@3b0
    goto :goto_13

    #@3b1
    .line 4852
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3b4
    move-result v24

    #@3b5
    if-eqz v24, :cond_37

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@3bb
    move/from16 v24, v0

    #@3bd
    move/from16 v0, v24

    #@3bf
    if-ge v3, v0, :cond_37

    #@3c1
    .line 4856
    :goto_14
    move-object/from16 v0, p0

    #@3c3
    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3c5
    move-object/from16 v24, v0

    #@3c7
    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3ca
    move-result-object v24

    #@3cb
    move-object/from16 v0, v24

    #@3cd
    move/from16 v1, p1

    #@3cf
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@3d2
    move-result v24

    #@3d3
    .line 4857
    move-object/from16 v0, p0

    #@3d5
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@3d7
    move/from16 v25, v0

    #@3d9
    move-object/from16 v0, p0

    #@3db
    move/from16 v1, v25

    #@3dd
    invoke-virtual {v0, v12, v1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    #@3e0
    move-result v25

    #@3e1
    .line 4856
    sub-float v24, v24, v25

    #@3e3
    move/from16 v0, v24

    #@3e5
    move-object/from16 v1, p0

    #@3e7
    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    #@3e9
    goto/16 :goto_10

    #@3eb
    .line 4853
    :cond_37
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3ee
    move-result v24

    #@3ef
    if-nez v24, :cond_1a

    #@3f1
    move-object/from16 v0, p0

    #@3f3
    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    #@3f5
    move/from16 v24, v0

    #@3f7
    move/from16 v0, v24

    #@3f9
    if-le v3, v0, :cond_1a

    #@3fb
    goto :goto_14
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4683
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 4684
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/text/Spannable;

    #@12
    .line 4685
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@14
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1b
    move-result v1

    #@1c
    .line 4684
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@1f
    .line 4690
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    #@22
    .line 4691
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@24
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 4692
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@2a
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2c
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@2f
    .line 4682
    :cond_0
    return-void

    #@30
    .line 4687
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@32
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/text/Spannable;

    #@3c
    .line 4688
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    #@3e
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@45
    move-result v1

    #@46
    .line 4687
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@49
    goto :goto_0
.end method
