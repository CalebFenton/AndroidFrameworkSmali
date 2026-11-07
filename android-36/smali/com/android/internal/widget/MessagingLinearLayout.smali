.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# static fields
.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mMaxDisplayedLines:I

.field private blacklist mSpacing:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 57
    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 62
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_27

    .line 63
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 64
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_2c

    goto :goto_24

    .line 66
    :pswitch_1e
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 62
    .end local v4    # "attr":I
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 71
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method public static blacklist isGone(Landroid/view/View;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 323
    return v2

    .line 325
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 326
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_1a

    .line 328
    return v2

    .line 330
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist trackMeasureSpecs(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 261
    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_5

    .line 262
    return-void

    .line 265
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 266
    .local v0, "availableWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 267
    .local v1, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 268
    .local v2, "availableHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 269
    .local v3, "heightMode":I
    const-string v4, "MessagingLinearLayout#onMeasure_widthMeasureSpecSize"

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 271
    const-string v4, "MessagingLinearLayout#onMeasure_widthMeasureSpecMode"

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 273
    const-string v4, "MessagingLinearLayout#onMeasure_heightMeasureSpecSize"

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 275
    const-string v4, "MessagingLinearLayout#onMeasure_heightMeasureSpecMode"

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 277
    return-void
.end method


# virtual methods
.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 282
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_15

    .line 283
    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 284
    .local v1, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_15

    .line 285
    const/4 v2, 0x1

    return v2

    .line 288
    .end local v1    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4

    .line 308
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 303
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 5
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 314
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_13

    .line 316
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 318
    :cond_13
    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 7

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v0

    .line 362
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_28

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 365
    nop

    .line 362
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 367
    .restart local v2    # "child":Landroid/view/View;
    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 368
    .local v3, "childBaseline":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 369
    return v4

    .line 371
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 372
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v3

    return v5

    .line 374
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childBaseline":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_28
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    return v1
.end method

.method public blacklist getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;
    .registers 4

    .line 342
    move-object v0, p0

    .line 344
    .local v0, "view":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 345
    .local v1, "p":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_15

    .line 346
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 347
    instance-of v2, v0, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v2, :cond_14

    .line 348
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IMessagingLayout;

    return-object v2

    .line 353
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_14
    goto :goto_1

    .line 351
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_15
    const/4 v2, 0x0

    return-object v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 201
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 206
    .local v1, "paddingLeft":I
    sub-int v2, p4, p2

    .line 207
    .local v2, "width":I
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v2, v3

    .line 209
    .local v3, "childRight":I
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v4

    .line 210
    .local v4, "layoutDirection":I
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    .line 212
    .local v5, "count":I
    iget v6, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 214
    .local v6, "childTop":I
    const/4 v7, 0x1

    .line 215
    .local v7, "first":Z
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v8

    .line 216
    .local v8, "shown":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1a
    if-ge v9, v5, :cond_93

    .line 217
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 218
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2d

    .line 219
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_8c

    .line 221
    :cond_2d
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 222
    .local v11, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    move-object v12, v10

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 224
    .local v12, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 225
    .local v13, "childWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 228
    .local v14, "childHeight":I
    const/4 v15, 0x1

    if-ne v4, v15, :cond_4a

    .line 229
    sub-int v16, v3, v13

    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v15

    move/from16 v15, v16

    .local v16, "childLeft":I
    goto :goto_50

    .line 231
    .end local v16    # "childLeft":I
    :cond_4a
    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v15

    move/from16 v15, v16

    .line 233
    .local v15, "childLeft":I
    :goto_50
    move/from16 v16, v1

    .end local v1    # "paddingLeft":I
    .local v16, "paddingLeft":I
    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_70

    .line 234
    if-eqz v8, :cond_6a

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_6a

    .line 236
    add-int v1, v15, v13

    move/from16 v17, v2

    .end local v2    # "width":I
    .local v17, "width":I
    iget v2, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 238
    invoke-interface {v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    goto :goto_6c

    .line 234
    .end local v17    # "width":I
    .restart local v2    # "width":I
    :cond_6a
    move/from16 v17, v2

    .line 240
    .end local v2    # "width":I
    .restart local v17    # "width":I
    :goto_6c
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 241
    goto :goto_8c

    .line 243
    .end local v17    # "width":I
    .restart local v2    # "width":I
    :cond_70
    move/from16 v17, v2

    .end local v2    # "width":I
    .restart local v17    # "width":I
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 244
    iput v14, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    .line 247
    if-nez v7, :cond_7c

    .line 248
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v6, v1

    .line 251
    :cond_7c
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v1

    .line 252
    add-int v1, v15, v13

    add-int v2, v6, v14

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 254
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v14

    add-int/2addr v6, v1

    .line 256
    const/4 v1, 0x0

    move v7, v1

    .line 216
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v12    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "childLeft":I
    :goto_8c
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1a

    .line 258
    .end local v9    # "i":I
    .end local v16    # "paddingLeft":I
    .end local v17    # "width":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "width":I
    :cond_93
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 32
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 76
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v1, :cond_e

    .line 77
    const-string v1, "MessagingLinearLayout#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 78
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/MessagingLinearLayout;->trackMeasureSpecs(II)V

    .line 82
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 83
    .local v1, "targetHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1c2

    move v6, v1

    goto :goto_1f

    .line 85
    :pswitch_1b
    const v1, 0x7fffffff

    move v6, v1

    .line 90
    .end local v1    # "targetHeight":I
    .local v6, "targetHeight":I
    :goto_1f
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    .line 91
    .local v1, "measuredWidth":I
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v7

    .line 93
    .local v7, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    const/4 v8, 0x1

    if-ge v2, v7, :cond_4e

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 96
    .local v4, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iput-boolean v8, v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 98
    invoke-static {}, Landroid/widget/flags/Flags;->messagingChildRequestLayout()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 101
    :cond_41
    instance-of v5, v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v5, :cond_4b

    .line 102
    move-object v5, v3

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 104
    .local v5, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v5, v8}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 93
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v5    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 108
    .end local v2    # "i":I
    :cond_4e
    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    .line 109
    .local v2, "totalHeight":I
    const/4 v3, 0x1

    .line 110
    .local v3, "first":Z
    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 113
    .local v4, "linesRemaining":I
    const/4 v5, 0x0

    .line 114
    .local v5, "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    const/4 v9, 0x0

    .line 115
    .local v9, "previousView":Landroid/view/View;
    const/4 v10, 0x0

    .line 116
    .local v10, "previousChildHeight":I
    const/4 v11, 0x0

    .line 117
    .local v11, "previousTotalHeight":I
    const/4 v12, 0x0

    .line 118
    .local v12, "previousLinesConsumed":I
    add-int/lit8 v13, v7, -0x1

    move-object v14, v9

    move v9, v1

    move-object v1, v14

    move v14, v10

    move v15, v11

    move/from16 v16, v12

    move v10, v2

    move v11, v3

    move v12, v4

    move v2, v13

    move-object v13, v5

    .end local v3    # "first":Z
    .end local v4    # "linesRemaining":I
    .end local v5    # "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v1, "previousView":Landroid/view/View;
    .local v2, "i":I
    .local v9, "measuredWidth":I
    .local v10, "totalHeight":I
    .local v11, "first":Z
    .local v12, "linesRemaining":I
    .local v13, "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v14, "previousChildHeight":I
    .local v15, "previousTotalHeight":I
    .local v16, "previousLinesConsumed":I
    :goto_69
    if-ltz v2, :cond_19d

    if-ge v10, v6, :cond_19d

    .line 119
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7d

    .line 120
    move/from16 v20, v2

    goto/16 :goto_172

    .line 122
    :cond_7d
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 124
    .local v4, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/16 v17, 0x0

    .line 125
    .local v17, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 126
    .local v5, "spacing":I
    const/16 v18, 0x0

    .line 127
    .local v18, "previousChildIncrease":I
    instance-of v8, v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    move-object/from16 v20, v3

    .end local v3    # "child":Landroid/view/View;
    .local v20, "child":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v8, :cond_df

    .line 129
    if-eqz v13, :cond_c6

    invoke-interface {v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 130
    invoke-interface {v13, v3}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 131
    move v8, v3

    const/4 v3, 0x0

    move/from16 v21, v5

    .end local v5    # "spacing":I
    .local v21, "spacing":I
    sub-int v5, v15, v14

    move-object v8, v4

    move-object/from16 v22, v20

    move/from16 v4, p2

    move/from16 v20, v2

    move/from16 v2, p1

    .end local v2    # "i":I
    .end local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v8, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v20, "i":I
    .local v22, "child":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 133
    move-object/from16 v24, v1

    .end local v1    # "previousView":Landroid/view/View;
    .local v24, "previousView":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v14

    .line 134
    .end local v18    # "previousChildIncrease":I
    .local v1, "previousChildIncrease":I
    invoke-interface {v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v2

    sub-int v2, v2, v16

    sub-int/2addr v12, v2

    move/from16 v18, v1

    goto :goto_cf

    .line 129
    .end local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v21    # "spacing":I
    .end local v22    # "child":Landroid/view/View;
    .end local v24    # "previousView":Landroid/view/View;
    .local v1, "previousView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v5    # "spacing":I
    .restart local v18    # "previousChildIncrease":I
    .local v20, "child":Landroid/view/View;
    :cond_c6
    move-object/from16 v24, v1

    move-object v8, v4

    move/from16 v21, v5

    move-object/from16 v22, v20

    move/from16 v20, v2

    .line 136
    .end local v1    # "previousView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v5    # "spacing":I
    .restart local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v20, "i":I
    .restart local v21    # "spacing":I
    .restart local v22    # "child":Landroid/view/View;
    .restart local v24    # "previousView":Landroid/view/View;
    :goto_cf
    move-object/from16 v1, v22

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 137
    .end local v17    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v1, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v1, v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    .line 138
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v2

    add-int v5, v21, v2

    move-object/from16 v17, v1

    .end local v21    # "spacing":I
    .restart local v5    # "spacing":I
    goto :goto_e8

    .line 127
    .end local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v22    # "child":Landroid/view/View;
    .end local v24    # "previousView":Landroid/view/View;
    .local v1, "previousView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v17    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v20, "child":Landroid/view/View;
    :cond_df
    move-object/from16 v24, v1

    move-object v8, v4

    move/from16 v21, v5

    move-object/from16 v22, v20

    move/from16 v20, v2

    .line 140
    .end local v1    # "previousView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v4    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v20, "i":I
    .restart local v22    # "child":Landroid/view/View;
    .restart local v24    # "previousView":Landroid/view/View;
    :goto_e8
    if-eqz v11, :cond_ec

    const/4 v3, 0x0

    goto :goto_ed

    :cond_ec
    move v3, v5

    :goto_ed
    move/from16 v21, v3

    .line 141
    .end local v5    # "spacing":I
    .restart local v21    # "spacing":I
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v1, v10, v1

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    add-int v5, v1, v21

    const/4 v3, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v1, v22

    .end local v22    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 144
    .end local v1    # "child":Landroid/view/View;
    .restart local v22    # "child":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    .line 145
    .local v25, "childHeight":I
    add-int v1, v10, v25

    iget v2, v8, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v8, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int v1, v1, v21

    add-int v1, v1, v18

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 147
    .local v1, "newHeight":I
    const/4 v2, 0x0

    .line 148
    .local v2, "measureType":I
    if-eqz v17, :cond_11d

    .line 149
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v2

    .line 153
    :cond_11d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_124

    if-nez v11, :cond_124

    const/4 v4, 0x1

    goto :goto_125

    :cond_124
    const/4 v4, 0x0

    :goto_125
    move/from16 v26, v4

    .line 154
    .local v26, "isTooSmall":Z
    const/4 v4, 0x1

    if-eq v2, v4, :cond_131

    if-ne v2, v3, :cond_12f

    if-eqz v11, :cond_12f

    goto :goto_131

    :cond_12f
    const/4 v3, 0x0

    goto :goto_132

    :cond_131
    :goto_131
    const/4 v3, 0x1

    :goto_132
    move/from16 v27, v3

    .line 156
    .local v27, "isShortened":Z
    if-gt v1, v6, :cond_13a

    if-nez v26, :cond_13a

    const/4 v3, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v3, 0x0

    :goto_13b
    move/from16 v28, v3

    .line 157
    .local v28, "showView":Z
    if-eqz v28, :cond_179

    .line 158
    if-eqz v17, :cond_14f

    .line 159
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v16

    .line 160
    sub-int v12, v12, v16

    .line 161
    move-object/from16 v13, v17

    .line 162
    move-object/from16 v3, v22

    .line 163
    .end local v24    # "previousView":Landroid/view/View;
    .local v3, "previousView":Landroid/view/View;
    move/from16 v14, v25

    .line 164
    move v15, v10

    goto :goto_151

    .line 158
    .end local v3    # "previousView":Landroid/view/View;
    .restart local v24    # "previousView":Landroid/view/View;
    :cond_14f
    move-object/from16 v3, v24

    .line 166
    .end local v24    # "previousView":Landroid/view/View;
    .restart local v3    # "previousView":Landroid/view/View;
    :goto_151
    move v10, v1

    .line 167
    nop

    .line 168
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v8, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v8, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    .line 167
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 170
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 171
    if-nez v27, :cond_177

    if-gtz v12, :cond_16f

    .line 172
    goto :goto_177

    .line 187
    :cond_16f
    const/4 v4, 0x0

    move-object v1, v3

    move v11, v4

    .line 118
    .end local v2    # "measureType":I
    .end local v3    # "previousView":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v17    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v18    # "previousChildIncrease":I
    .end local v21    # "spacing":I
    .end local v22    # "child":Landroid/view/View;
    .end local v25    # "childHeight":I
    .end local v26    # "isTooSmall":Z
    .end local v27    # "isShortened":Z
    .end local v28    # "showView":Z
    .local v1, "previousView":Landroid/view/View;
    :goto_172
    add-int/lit8 v2, v20, -0x1

    const/4 v8, 0x1

    .end local v20    # "i":I
    .local v2, "i":I
    goto/16 :goto_69

    .line 190
    .end local v1    # "previousView":Landroid/view/View;
    .end local v2    # "i":I
    .restart local v3    # "previousView":Landroid/view/View;
    :cond_177
    :goto_177
    move-object v1, v3

    goto :goto_19f

    .line 177
    .end local v3    # "previousView":Landroid/view/View;
    .local v1, "newHeight":I
    .local v2, "measureType":I
    .restart local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v17    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .restart local v18    # "previousChildIncrease":I
    .restart local v20    # "i":I
    .restart local v21    # "spacing":I
    .restart local v22    # "child":Landroid/view/View;
    .restart local v24    # "previousView":Landroid/view/View;
    .restart local v25    # "childHeight":I
    .restart local v26    # "isTooSmall":Z
    .restart local v27    # "isShortened":Z
    .restart local v28    # "showView":Z
    :cond_179
    if-eqz v13, :cond_196

    invoke-interface {v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v3

    if-eqz v3, :cond_196

    .line 178
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 180
    const/4 v3, 0x0

    sub-int v5, v15, v14

    move/from16 v4, p2

    move/from16 v19, v1

    move/from16 v23, v2

    move-object/from16 v1, v24

    move/from16 v2, p1

    .end local v2    # "measureType":I
    .end local v24    # "previousView":Landroid/view/View;
    .local v1, "previousView":Landroid/view/View;
    .local v19, "newHeight":I
    .local v23, "measureType":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_19f

    .line 177
    .end local v19    # "newHeight":I
    .end local v23    # "measureType":I
    .local v1, "newHeight":I
    .restart local v2    # "measureType":I
    .restart local v24    # "previousView":Landroid/view/View;
    :cond_196
    move/from16 v19, v1

    move/from16 v23, v2

    move-object/from16 v1, v24

    .end local v2    # "measureType":I
    .end local v24    # "previousView":Landroid/view/View;
    .local v1, "previousView":Landroid/view/View;
    .restart local v19    # "newHeight":I
    .restart local v23    # "measureType":I
    goto :goto_19f

    .line 118
    .end local v8    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v17    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v18    # "previousChildIncrease":I
    .end local v19    # "newHeight":I
    .end local v20    # "i":I
    .end local v21    # "spacing":I
    .end local v22    # "child":Landroid/view/View;
    .end local v23    # "measureType":I
    .end local v25    # "childHeight":I
    .end local v26    # "isTooSmall":Z
    .end local v27    # "isShortened":Z
    .end local v28    # "showView":Z
    .local v2, "i":I
    :cond_19d
    move/from16 v20, v2

    .line 190
    .end local v2    # "i":I
    :goto_19f
    nop

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    .line 193
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 190
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    .line 194
    sget-boolean v2, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v2, :cond_1c0

    .line 195
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 197
    :cond_1c0
    return-void

    nop

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 338
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 339
    return-void
.end method

.method public blacklist setSpacing(I)V
    .registers 3
    .param p1, "spacing"    # I

    .line 295
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    if-eq v0, p1, :cond_9

    .line 296
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->requestLayout()V

    .line 299
    :cond_9
    return-void
.end method
