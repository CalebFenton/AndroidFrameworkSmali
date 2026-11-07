.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final greylist-max-o mHandleType:I

.field private greylist-max-o mInWord:Z

.field private greylist-max-o mLanguageDirectionChanged:Z

.field private greylist-max-o mPrevX:F

.field private final greylist-max-o mTextViewEdgeSlop:F

.field private final greylist-max-o mTextViewLocation:[I

.field private greylist-max-o mTouchWordDelta:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 12
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 6184
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 6185
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "this$0":Landroid/widget/Editor;
    .end local p2    # "drawableLtr":Landroid/graphics/drawable/Drawable;
    .end local p3    # "drawableRtl":Landroid/graphics/drawable/Drawable;
    .end local p4    # "id":I
    .local v1, "this$0":Landroid/widget/Editor;
    .local v2, "drawableLtr":Landroid/graphics/drawable/Drawable;
    .local v3, "drawableRtl":Landroid/graphics/drawable/Drawable;
    .local v4, "id":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V

    .line 6170
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6176
    iput-boolean p1, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6181
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, v0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 6186
    iput p5, v0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 6187
    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 6188
    .local p1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    iput p2, v0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 6189
    return-void
.end method

.method private greylist-max-o getHorizontal(Landroid/text/Layout;IZ)F
    .registers 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 6508
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 6510
    .local v0, "offsetTransformed":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6512
    .local v2, "line":I
    const/4 v3, 0x0

    if-eqz p3, :cond_14

    move v4, v0

    goto :goto_1a

    :cond_14
    add-int/lit8 v4, v0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6513
    .local v4, "offsetToCheck":I
    :goto_1a
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 6514
    .local v5, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    .line 6515
    .local v1, "isRtlParagraph":Z
    :goto_27
    if-eq v5, v1, :cond_2e

    .line 6516
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v3

    return v3

    .line 6518
    :cond_2e
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    return v3
.end method

.method private greylist-max-o isStartHandle()Z
    .registers 2

    .line 6192
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o positionAndAdjustForCrossingHandles(IZ)V
    .registers 15
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 6443
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6444
    .local v0, "anotherHandleOffset":I
    :goto_1b
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    if-ge p1, v0, :cond_2c

    .line 6445
    :cond_24
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_aa

    if-gt p1, v0, :cond_aa

    .line 6446
    :cond_2c
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6447
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 6448
    .local v1, "layout":Landroid/text/Layout;
    const/4 v3, 0x1

    if-eqz v1, :cond_9f

    if-eq p1, v0, :cond_9f

    .line 6449
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v4

    .line 6450
    .local v4, "horiz":F
    nop

    .line 6451
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    .line 6450
    xor-int/2addr v5, v3

    invoke-direct {p0, v1, v0, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v5

    .line 6452
    .local v5, "anotherHandleHoriz":F
    iget v6, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v6

    .line 6453
    .local v6, "currentHoriz":F
    cmpg-float v7, v6, v5

    if-gez v7, :cond_5a

    cmpg-float v7, v4, v5

    if-ltz v7, :cond_62

    :cond_5a
    cmpl-float v7, v6, v5

    if-lez v7, :cond_9f

    cmpl-float v7, v4, v5

    if-lez v7, :cond_9f

    .line 6457
    :cond_62
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v7

    .line 6458
    .local v7, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 6459
    move v8, v7

    goto :goto_74

    :cond_6e
    add-int/lit8 v8, v7, -0x1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6460
    .local v8, "offsetToGetRunRange":I
    :goto_74
    iget-object v9, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v9

    .line 6462
    .local v9, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 6463
    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_91

    .line 6465
    :cond_8d
    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 6467
    :goto_91
    iget-object v11, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, p1, v3}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result p1

    .line 6469
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6470
    return-void

    .line 6474
    .end local v4    # "horiz":F
    .end local v5    # "anotherHandleHoriz":F
    .end local v6    # "currentHoriz":F
    .end local v7    # "currentOffset":I
    .end local v8    # "offsetToGetRunRange":I
    .end local v9    # "range":J
    :cond_9f
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-static {v4, v0, v3}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 6476
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_aa
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6477
    return-void
.end method

.method private greylist-max-o positionNearEdgeOfScrollingView(FZ)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 6480
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6482
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_38

    .line 6483
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 6484
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 6485
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 6486
    .end local v0    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_37
    goto :goto_51

    .line 6487
    .end local v1    # "nearEdge":Z
    :cond_38
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 6488
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    .line 6490
    .end local v0    # "leftEdge":I
    .restart local v1    # "nearEdge":Z
    :goto_51
    return v1
.end method


# virtual methods
.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 6211
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .registers 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6504
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .line 6206
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    :goto_9
    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 6197
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_d

    .line 6198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 6200
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 6551
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6552
    const/4 v0, 0x1

    goto :goto_9

    .line 6553
    :cond_8
    const/4 v0, 0x2

    .line 6551
    :goto_9
    return v0
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 6523
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 6524
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 6525
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6526
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    return v1

    .line 6529
    :cond_20
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 6530
    .local v4, "secondaryOffset":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v5

    .line 6532
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 6533
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 6535
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_43

    .line 6536
    move v3, v2

    .local v3, "offset":I
    goto :goto_67

    .line 6537
    .end local v3    # "offset":I
    :cond_43
    if-le v6, v7, :cond_47

    .line 6538
    move v3, v4

    .restart local v3    # "offset":I
    goto :goto_67

    .line 6540
    .end local v3    # "offset":I
    :cond_47
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 6541
    move v8, v5

    goto :goto_55

    :cond_4f
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6542
    .local v8, "offsetToCheck":I
    :goto_55
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 6543
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_61

    move v3, v1

    .line 6544
    .local v3, "isRtlParagraph":Z
    :cond_61
    if-ne v9, v3, :cond_65

    move v10, v2

    goto :goto_66

    :cond_65
    move v10, v4

    :goto_66
    move v3, v10

    .line 6546
    .end local v8    # "offsetToCheck":I
    .end local v9    # "isRtlChar":Z
    .local v3, "offset":I
    :goto_67
    iget-object v8, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    return v1
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .registers 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6495
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6496
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v0

    .line 6497
    .local v0, "transformedOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v0

    goto :goto_19

    .line 6498
    :cond_13
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_19
    nop

    .line 6499
    .local v1, "offsetToCheck":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    return v2
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6414
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6415
    return v1

    .line 6417
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6419
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_2d

    .line 6429
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6430
    goto :goto_2d

    .line 6434
    :pswitch_1e
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_2d

    .line 6423
    :pswitch_22
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6424
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6425
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6426
    nop

    .line 6438
    :goto_2d
    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 6408
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6409
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6410
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 26
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 6231
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6232
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_22

    .line 6235
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6237
    return-void

    .line 6240
    :cond_22
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_33

    .line 6241
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6244
    :cond_33
    const/4 v5, 0x0

    .line 6246
    .local v5, "positionCursor":Z
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_45

    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    goto :goto_4f

    :cond_45
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6247
    .local v7, "anotherHandleOffset":I
    :goto_4f
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v8, v4, v9, v2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v8

    .line 6248
    .local v8, "currLine":I
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6250
    .local v9, "initialOffset":I
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_63

    if-ge v9, v7, :cond_6b

    .line 6251
    :cond_63
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_73

    if-gt v9, v7, :cond_73

    .line 6254
    :cond_6b
    invoke-virtual {v0, v4, v7}, Landroid/widget/Editor$SelectionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v8

    .line 6255
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6258
    :cond_73
    move v10, v9

    .line 6259
    .local v10, "offset":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v11

    .line 6260
    .local v11, "wordEnd":I
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v12

    .line 6262
    .local v12, "wordStart":I
    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_8a

    .line 6263
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6266
    :cond_8a
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v13

    .line 6267
    .local v13, "currentOffset":I
    invoke-virtual {v0, v4, v13}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v14

    .line 6268
    .local v14, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v15

    .line 6269
    .local v15, "atRtl":Z
    iget-object v6, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 6270
    const/4 v2, 0x1

    invoke-virtual {v6, v10, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v6

    .line 6269
    invoke-virtual {v4, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v6

    .line 6275
    .local v6, "isLvlBoundary":Z
    if-nez v6, :cond_2cd

    if-eqz v14, :cond_b0

    if-eqz v15, :cond_ac

    goto :goto_b0

    :cond_ac
    :goto_ac
    move/from16 v16, v5

    goto/16 :goto_2cf

    :cond_b0
    :goto_b0
    if-nez v14, :cond_b5

    if-eqz v15, :cond_b5

    goto :goto_ac

    .line 6284
    :cond_b5
    iget-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v19, v2

    if-eqz v19, :cond_c5

    .line 6287
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6288
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6289
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6290
    return-void

    .line 6294
    :cond_c5
    const/4 v2, 0x0

    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v2, v1, v2

    .line 6295
    .local v2, "xDiff":F
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v20

    if-eqz v20, :cond_da

    .line 6296
    move/from16 v20, v2

    .end local v2    # "xDiff":F
    .local v20, "xDiff":F
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v8, v2, :cond_d8

    const/4 v2, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    .local v2, "isExpanding":Z
    :goto_d9
    goto :goto_e3

    .line 6298
    .end local v20    # "xDiff":F
    .local v2, "xDiff":F
    :cond_da
    move/from16 v20, v2

    .end local v2    # "xDiff":F
    .restart local v20    # "xDiff":F
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v8, v2, :cond_e2

    const/4 v2, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v2, 0x0

    .line 6300
    .local v2, "isExpanding":Z
    :goto_e3
    move/from16 v21, v2

    .end local v2    # "isExpanding":Z
    .local v21, "isExpanding":Z
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-ne v15, v2, :cond_f7

    .line 6301
    const/16 v18, 0x0

    cmpl-float v2, v20, v18

    if-lez v2, :cond_f3

    const/4 v2, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v2, 0x0

    :goto_f4
    or-int v2, v21, v2

    .end local v21    # "isExpanding":Z
    .restart local v2    # "isExpanding":Z
    goto :goto_102

    .line 6303
    .end local v2    # "isExpanding":Z
    .restart local v21    # "isExpanding":Z
    :cond_f7
    const/16 v18, 0x0

    cmpg-float v2, v20, v18

    if-gez v2, :cond_ff

    const/4 v2, 0x1

    goto :goto_100

    :cond_ff
    const/4 v2, 0x0

    :goto_100
    or-int v2, v21, v2

    .line 6306
    .end local v21    # "isExpanding":Z
    .restart local v2    # "isExpanding":Z
    :goto_102
    move/from16 v21, v2

    .end local v2    # "isExpanding":Z
    .restart local v21    # "isExpanding":Z
    iget-object v2, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 6307
    invoke-direct {v0, v1, v15}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 6308
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_12c

    iget-object v2, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    if-nez v2, :cond_129

    goto :goto_12c

    :cond_129
    move/from16 v16, v5

    goto :goto_145

    .line 6309
    :cond_12c
    :goto_12c
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_174

    iget-object v2, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 6310
    move/from16 v16, v5

    if-eqz v15, :cond_13e

    const/4 v5, -0x1

    goto :goto_13f

    :cond_13e
    const/4 v5, 0x1

    .end local v5    # "positionCursor":Z
    .local v16, "positionCursor":Z
    :goto_13f
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_17c

    :goto_145
    if-eqz v21, :cond_157

    .line 6311
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_14f

    if-lt v10, v13, :cond_159

    .line 6312
    :cond_14f
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_157

    if-gt v10, v13, :cond_159

    :cond_157
    if-nez v21, :cond_17c

    .line 6317
    :cond_159
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6318
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-ne v15, v2, :cond_169

    .line 6319
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    goto :goto_16f

    .line 6320
    :cond_169
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    :goto_16f
    nop

    .line 6321
    .local v2, "nextOffset":I
    invoke-direct {v0, v2, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6322
    return-void

    .line 6309
    .end local v2    # "nextOffset":I
    .end local v16    # "positionCursor":Z
    .restart local v5    # "positionCursor":Z
    :cond_174
    move/from16 v16, v5

    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    goto :goto_17c

    .line 6307
    .end local v16    # "positionCursor":Z
    .restart local v5    # "positionCursor":Z
    :cond_177
    move/from16 v16, v5

    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    goto :goto_17c

    .line 6306
    .end local v16    # "positionCursor":Z
    .restart local v5    # "positionCursor":Z
    :cond_17a
    move/from16 v16, v5

    .line 6326
    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    :cond_17c
    :goto_17c
    if-eqz v21, :cond_22a

    .line 6328
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_186

    move v2, v12

    goto :goto_187

    :cond_186
    move v2, v11

    .line 6329
    .local v2, "wordBoundary":I
    :goto_187
    iget-boolean v5, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v5, :cond_19a

    .line 6330
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_196

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_1a3

    goto :goto_19a

    :cond_196
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_1a3

    .line 6331
    :cond_19a
    :goto_19a
    invoke-virtual {v0, v4, v2}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v5

    if-ne v15, v5, :cond_1a3

    const/16 v17, 0x1

    goto :goto_1a5

    :cond_1a3
    const/16 v17, 0x0

    .line 6332
    .local v17, "snapToWord":Z
    :goto_1a5
    if-eqz v17, :cond_1fe

    .line 6336
    invoke-virtual {v0, v4, v2}, Landroid/widget/Editor$SelectionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    if-eq v5, v8, :cond_1bd

    .line 6337
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_1b8

    .line 6338
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    goto :goto_1bc

    :cond_1b8
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    :goto_1bc
    move v2, v5

    .line 6340
    :cond_1bd
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_1ca

    .line 6341
    sub-int v5, v11, v2

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    goto :goto_1cf

    .line 6342
    :cond_1ca
    sub-int v5, v2, v12

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v12

    :goto_1cf
    nop

    .line 6343
    .local v5, "offsetThresholdToSnap":I
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v19

    if-eqz v19, :cond_1e6

    if-le v10, v5, :cond_1df

    move/from16 v19, v2

    .end local v2    # "wordBoundary":I
    .local v19, "wordBoundary":I
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v2, :cond_1e8

    goto :goto_1e1

    .end local v19    # "wordBoundary":I
    .restart local v2    # "wordBoundary":I
    :cond_1df
    move/from16 v19, v2

    .line 6347
    .end local v2    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :goto_1e1
    move v2, v12

    move v10, v2

    move/from16 v2, v19

    .end local v10    # "offset":I
    .local v2, "offset":I
    goto :goto_1fe

    .line 6343
    .end local v19    # "wordBoundary":I
    .local v2, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_1e6
    move/from16 v19, v2

    .line 6348
    .end local v2    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :cond_1e8
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_1f9

    if-ge v10, v5, :cond_1f4

    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v2, :cond_1f9

    .line 6352
    :cond_1f4
    move v2, v11

    move v10, v2

    move/from16 v2, v19

    .end local v10    # "offset":I
    .local v2, "offset":I
    goto :goto_1fe

    .line 6354
    .end local v2    # "offset":I
    .restart local v10    # "offset":I
    :cond_1f9
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v10, v2

    move/from16 v2, v19

    .line 6357
    .end local v5    # "offsetThresholdToSnap":I
    .end local v19    # "wordBoundary":I
    .local v2, "wordBoundary":I
    :cond_1fe
    :goto_1fe
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_206

    if-lt v10, v9, :cond_20e

    .line 6358
    :cond_206
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_222

    if-le v10, v9, :cond_222

    .line 6359
    :cond_20e
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    .line 6360
    .local v5, "adjustedX":F
    move/from16 v19, v2

    .end local v2    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    iget-object v2, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 6361
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v2

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6362
    .end local v5    # "adjustedX":F
    goto :goto_227

    .line 6358
    .end local v19    # "wordBoundary":I
    .restart local v2    # "wordBoundary":I
    :cond_222
    move/from16 v19, v2

    .line 6363
    .end local v2    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6365
    :goto_227
    const/4 v5, 0x1

    .line 6366
    .end local v16    # "positionCursor":Z
    .end local v17    # "snapToWord":Z
    .end local v19    # "wordBoundary":I
    .local v5, "positionCursor":Z
    goto/16 :goto_2c3

    .line 6367
    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    :cond_22a
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v2, v1, v2

    .line 6368
    invoke-virtual {v0, v4, v8, v2}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 6369
    .local v2, "adjustedOffset":I
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_247

    .line 6370
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v2, v5, :cond_244

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_241

    goto :goto_244

    :cond_241
    const/16 v17, 0x0

    goto :goto_255

    :cond_244
    :goto_244
    const/16 v17, 0x1

    goto :goto_255

    .line 6371
    :cond_247
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_253

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_250

    goto :goto_253

    :cond_250
    const/16 v17, 0x0

    goto :goto_255

    :cond_253
    :goto_253
    const/16 v17, 0x1

    :goto_255
    nop

    .line 6372
    .local v17, "shrinking":Z
    if-eqz v17, :cond_295

    .line 6374
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v8, v5, :cond_291

    .line 6376
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_264

    move v5, v12

    goto :goto_265

    :cond_264
    move v5, v11

    .line 6377
    .end local v10    # "offset":I
    .local v5, "offset":I
    :goto_265
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_26d

    if-lt v5, v9, :cond_275

    .line 6378
    :cond_26d
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_289

    if-le v5, v9, :cond_289

    .line 6379
    :cond_275
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    .line 6380
    .local v10, "adjustedX":F
    move/from16 v19, v5

    .end local v5    # "offset":I
    .local v19, "offset":I
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6381
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v10

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6382
    .end local v10    # "adjustedX":F
    goto :goto_28e

    .line 6378
    .end local v19    # "offset":I
    .restart local v5    # "offset":I
    :cond_289
    move/from16 v19, v5

    .line 6383
    .end local v5    # "offset":I
    .restart local v19    # "offset":I
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6388
    :goto_28e
    move/from16 v10, v19

    goto :goto_293

    .line 6386
    .end local v19    # "offset":I
    .local v10, "offset":I
    :cond_291
    move v5, v2

    move v10, v5

    .line 6388
    :goto_293
    const/4 v5, 0x1

    .end local v16    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto :goto_2c3

    .line 6389
    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    :cond_295
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_29f

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_2a9

    .line 6390
    :cond_29f
    invoke-direct {v0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_2bf

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v2, v5, :cond_2bf

    .line 6393
    :cond_2a9
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    move/from16 v18, v2

    .end local v2    # "adjustedOffset":I
    .local v18, "adjustedOffset":I
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 6394
    invoke-virtual {v0, v4, v2}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    sub-float/2addr v5, v2

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    goto :goto_2c1

    .line 6390
    .end local v18    # "adjustedOffset":I
    .restart local v2    # "adjustedOffset":I
    :cond_2bf
    move/from16 v18, v2

    .line 6398
    .end local v2    # "adjustedOffset":I
    .end local v17    # "shrinking":Z
    :goto_2c1
    move/from16 v5, v16

    .end local v16    # "positionCursor":Z
    .restart local v5    # "positionCursor":Z
    :goto_2c3
    if-eqz v5, :cond_2ca

    .line 6399
    iput v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6400
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6402
    :cond_2ca
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6403
    return-void

    .line 6275
    .end local v20    # "xDiff":F
    .end local v21    # "isExpanding":Z
    :cond_2cd
    move/from16 v16, v5

    .line 6278
    .end local v5    # "positionCursor":Z
    .restart local v16    # "positionCursor":Z
    :goto_2cf
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6279
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6280
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6281
    return-void
.end method

.method protected greylist-max-o updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 6216
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6217
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6218
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 6217
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_39

    .line 6220
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6221
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6220
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6223
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 6224
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 6225
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6227
    :cond_4a
    return-void
.end method
