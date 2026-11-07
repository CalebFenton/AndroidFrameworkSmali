.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$TabClickListener;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-q mDrawBottomStrips:Z

.field private greylist-max-o mImposedTabWidths:[I

.field private greylist-max-o mImposedTabsHeight:I

.field private greylist-max-o mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mRightStrip:Landroid/graphics/drawable/Drawable;

.field private greylist-max-q mSelectedTab:I

.field private greylist-max-o mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private greylist-max-o mStripMoved:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSelectionChangedListener(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .registers 1

    iget-object p0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 95
    iput v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 113
    sget-object v0, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 115
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/TabWidget;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 118
    const/4 p1, 0x3

    iget-boolean p2, v2, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v2, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 123
    nop

    .line 124
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 p2, 0x4

    if-gt p1, p2, :cond_37

    move p1, v1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    .line 126
    .local p1, "isTargetSdkDonutOrLower":Z
    :goto_38
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    .line 127
    .local p2, "hasExplicitLeft":Z
    if-eqz p2, :cond_45

    .line 128
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 129
    :cond_45
    if-eqz p1, :cond_51

    .line 130
    const p3, 0x1080a35

    invoke-virtual {v3, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 132
    :cond_51
    const p3, 0x1080a34

    invoke-virtual {v3, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 135
    :goto_5a
    const/4 p3, 0x2

    invoke-virtual {v6, p3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p4

    .line 136
    .local p4, "hasExplicitRight":Z
    if-eqz p4, :cond_68

    .line 137
    invoke-virtual {v6, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_7d

    .line 138
    :cond_68
    if-eqz p1, :cond_74

    .line 139
    const p3, 0x1080a37

    invoke-virtual {v3, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_7d

    .line 141
    :cond_74
    const p3, 0x1080a36

    invoke-virtual {v3, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v2, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 144
    :goto_7d
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_15

    .line 528
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 530
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 536
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 542
    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    if-nez v1, :cond_35

    .line 543
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 546
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget-IA;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    return-void
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 376
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_11

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 378
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 380
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 385
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 388
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 392
    :cond_a
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-nez v0, :cond_f

    .line 394
    return-void

    .line 397
    :cond_f
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 400
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 402
    .local v2, "rightStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_22

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 405
    :cond_22
    if-eqz v2, :cond_2b

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 409
    :cond_2b
    iget-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v3, :cond_78

    .line 410
    iget-object v3, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 411
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 413
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v4

    .line 414
    .local v4, "myHeight":I
    const/4 v5, 0x0

    if-eqz v1, :cond_5a

    .line 415
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 416
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 415
    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    :cond_5a
    if-eqz v2, :cond_76

    .line 419
    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    .line 420
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 419
    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    :cond_76
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 426
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "myHeight":I
    :cond_78
    if-eqz v1, :cond_7d

    .line 427
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    :cond_7d
    if-eqz v2, :cond_82

    .line 430
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    :cond_82
    return-void
.end method

.method public whitelist focusCurrentTab(I)V
    .registers 4
    .param p1, "index"    # I

    .line 502
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 505
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 508
    if-eq v0, p1, :cond_e

    .line 509
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 511
    :cond_e
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 476
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 158
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 159
    return p2

    .line 163
    :cond_6
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_d

    .line 164
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return v0

    .line 165
    :cond_d
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_14

    .line 166
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 168
    :cond_14
    return p2
.end method

.method public whitelist getChildTabViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 243
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTabCount()I
    .registers 2

    .line 252
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist isStripEnabled()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 176
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_1e

    .line 177
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 179
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    move v3, p3

    move v5, p5

    goto :goto_20

    .line 183
    :cond_1e
    move v3, p3

    move v5, p5

    .end local p3    # "widthMeasureSpec":I
    .end local p5    # "heightMeasureSpec":I
    .local v3, "widthMeasureSpec":I
    .local v5, "heightMeasureSpec":I
    :goto_20
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v6, p6

    .end local p1    # "child":Landroid/view/View;
    .end local p2    # "childIndex":I
    .end local p4    # "totalWidth":I
    .end local p6    # "totalHeight":I
    .local v1, "child":Landroid/view/View;
    .local v2, "childIndex":I
    .local v4, "totalWidth":I
    .local v6, "totalHeight":I
    invoke-super/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 185
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 189
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 190
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 191
    return-void

    .line 195
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 196
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 198
    .local v3, "unspecifiedWidth":I
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 199
    move/from16 v4, p2

    invoke-super {v0, v3, v4}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 201
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    .line 202
    .local v5, "extraWidth":I
    if-lez v5, :cond_7f

    .line 203
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    .line 205
    .local v6, "count":I
    const/4 v7, 0x0

    .line 206
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    const/16 v9, 0x8

    if-ge v8, v6, :cond_3e

    .line 207
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 208
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_39

    goto :goto_3b

    .line 209
    :cond_39
    add-int/lit8 v7, v7, 0x1

    .line 206
    .end local v10    # "child":Landroid/view/View;
    :goto_3b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 212
    .end local v8    # "i":I
    :cond_3e
    if-lez v7, :cond_7f

    .line 213
    iget-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v8, :cond_49

    iget-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v8, v8

    if-eq v8, v6, :cond_4d

    .line 214
    :cond_49
    new-array v8, v6, [I

    iput-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 216
    :cond_4d
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4e
    if-ge v8, v6, :cond_7f

    .line 217
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 218
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_5b

    goto :goto_7c

    .line 219
    :cond_5b
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 220
    .local v11, "childWidth":I
    div-int v12, v5, v7

    .line 221
    .local v12, "delta":I
    sub-int v13, v11, v12

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 222
    .local v13, "newWidth":I
    iget-object v14, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v13, v14, v8

    .line 224
    sub-int v14, v11, v13

    sub-int/2addr v5, v14

    .line 225
    add-int/lit8 v7, v7, -0x1

    .line 226
    iget v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 216
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childWidth":I
    .end local v12    # "delta":I
    .end local v13    # "newWidth":I
    :goto_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 233
    .end local v6    # "count":I
    .end local v7    # "childCount":I
    .end local v8    # "i":I
    :cond_7f
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 234
    return-void
.end method

.method public whitelist onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 583
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 482
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 483
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 484
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 485
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 561
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 154
    return-void
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 555
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 557
    return-void
.end method

.method public whitelist setCurrentTab(I)V
    .registers 4
    .param p1, "index"    # I

    .line 462
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_2b

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_d

    goto :goto_2b

    .line 466
    :cond_d
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 467
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 469
    :cond_1c
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 470
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 471
    iput-boolean v1, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 472
    return-void

    .line 463
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist setDividerDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 273
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 515
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 518
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 519
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 520
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 522
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist setLeftStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 300
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void
.end method

.method public whitelist setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 285
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 286
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 287
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 288
    return-void
.end method

.method public whitelist setRightStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 339
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method public whitelist setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 324
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 325
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 326
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 327
    return-void
.end method

.method public whitelist setStripEnabled(Z)V
    .registers 2
    .param p1, "stripEnabled"    # Z

    .line 362
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 363
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 364
    return-void
.end method

.method greylist-max-q setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 577
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 578
    return-void
.end method
