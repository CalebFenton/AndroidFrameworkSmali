.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method static synthetic -get0(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 78
    const v0, 0x1010083

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v6, 0x1

    #@3
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 55
    new-instance v4, Landroid/graphics/Rect;

    #@8
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v4, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    #@d
    .line 60
    iput v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@f
    .line 65
    iput-boolean v6, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@11
    .line 70
    iput v5, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@13
    .line 89
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    #@15
    .line 88
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@18
    move-result-object v0

    #@19
    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v4, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@1b
    const/4 v5, 0x3

    #@1c
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f
    move-result v4

    #@20
    iput-boolean v4, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@22
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@25
    move-result-object v4

    #@26
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@28
    const/4 v5, 0x4

    #@29
    if-gt v4, v5, :cond_0

    #@2b
    const/4 v3, 0x1

    #@2c
    .line 99
    .local v3, "isTargetSdkDonutOrLower":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@2f
    move-result v1

    #@30
    .line 100
    .local v1, "hasExplicitLeft":Z
    if-eqz v1, :cond_1

    #@32
    .line 101
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v4

    #@36
    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@38
    .line 108
    :goto_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@3b
    move-result v2

    #@3c
    .line 109
    .local v2, "hasExplicitRight":Z
    if-eqz v2, :cond_3

    #@3e
    .line 110
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@41
    move-result-object v4

    #@42
    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@44
    .line 117
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@47
    .line 119
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    #@4a
    .line 85
    return-void

    #@4b
    .line 97
    .end local v1    # "hasExplicitLeft":Z
    .end local v2    # "hasExplicitRight":Z
    .end local v3    # "isTargetSdkDonutOrLower":Z
    :cond_0
    const/4 v3, 0x0

    #@4c
    .restart local v3    # "isTargetSdkDonutOrLower":Z
    goto :goto_0

    #@4d
    .line 102
    .restart local v1    # "hasExplicitLeft":Z
    :cond_1
    if-eqz v3, :cond_2

    #@4f
    .line 103
    const v4, 0x1080744

    #@52
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@55
    move-result-object v4

    #@56
    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@58
    goto :goto_1

    #@59
    .line 105
    :cond_2
    const v4, 0x1080743

    #@5c
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v4

    #@60
    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@62
    goto :goto_1

    #@63
    .line 111
    .restart local v2    # "hasExplicitRight":Z
    :cond_3
    if-eqz v3, :cond_4

    #@65
    .line 112
    const v4, 0x1080746

    #@68
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object v4

    #@6c
    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@6e
    goto :goto_2

    #@6f
    .line 114
    :cond_4
    const v4, 0x1080745

    #@72
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@75
    move-result-object v4

    #@76
    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@78
    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 487
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@b
    .line 488
    const/4 v1, -0x1

    #@c
    const/high16 v2, 0x3f800000    # 1.0f

    #@e
    .line 487
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@11
    .line 489
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    #@14
    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@17
    .line 494
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    #@1a
    .line 495
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    #@1d
    .line 497
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@20
    .line 501
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    #@22
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@25
    move-result v2

    #@26
    add-int/lit8 v2, v2, -0x1

    #@28
    invoke-direct {v1, p0, v2, v5}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$TabClickListener;)V

    #@2b
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2e
    .line 485
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-ne p1, v0, :cond_0

    #@e
    .line 351
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@11
    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    #@14
    .line 348
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 358
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 361
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    return-void

    #@b
    .line 365
    :cond_0
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@d
    if-nez v5, :cond_1

    #@f
    .line 367
    return-void

    #@10
    .line 370
    :cond_1
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@12
    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    .line 372
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@18
    .line 373
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 375
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@21
    .line 376
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@28
    .line 378
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 379
    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    #@2e
    .line 380
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@31
    move-result v5

    #@32
    iput v5, v0, Landroid/graphics/Rect;->left:I

    #@34
    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@37
    move-result v5

    #@38
    iput v5, v0, Landroid/graphics/Rect;->right:I

    #@3a
    .line 382
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    #@3d
    move-result v2

    #@3e
    .line 383
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@40
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@43
    move-result v6

    #@44
    sub-int/2addr v5, v6

    #@45
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    #@48
    move-result v5

    #@49
    .line 384
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4c
    move-result v6

    #@4d
    sub-int v6, v2, v6

    #@4f
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@51
    .line 383
    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@54
    .line 385
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@56
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@59
    move-result v6

    #@5a
    sub-int v6, v2, v6

    #@5c
    .line 386
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    #@5f
    move-result v7

    #@60
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@62
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@65
    move-result v9

    #@66
    add-int/2addr v8, v9

    #@67
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@6a
    move-result v7

    #@6b
    .line 385
    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@6e
    .line 387
    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@70
    .line 390
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@73
    .line 391
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@76
    .line 357
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@2
    .line 465
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    #@5
    .line 468
    if-eq v0, p1, :cond_0

    #@7
    .line 469
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@e
    .line 461
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 436
    const-class v0, Landroid/widget/TabWidget;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 131
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 132
    return p2

    #@6
    .line 136
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@8
    if-ne p2, v0, :cond_1

    #@a
    .line 137
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@c
    return v0

    #@d
    .line 138
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@f
    if-lt p2, v0, :cond_2

    #@11
    .line 139
    add-int/lit8 v0, p2, 0x1

    #@13
    return v0

    #@14
    .line 141
    :cond_2
    return p2
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    #@0
    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@2
    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    #@0
    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    #@2
    .line 149
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@a
    if-ltz v0, :cond_0

    #@c
    .line 151
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@e
    aget v0, v0, p2

    #@10
    add-int/2addr v0, p4

    #@11
    .line 150
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@14
    move-result p3

    #@15
    .line 152
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@17
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a
    move-result p5

    #@1b
    .line 156
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@1e
    .line 148
    return-void
.end method

.method measureHorizontal(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v10

    #@4
    if-nez v10, :cond_0

    #@6
    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@9
    .line 164
    return-void

    #@a
    .line 168
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v9

    #@e
    .line 170
    .local v9, "width":I
    const/4 v10, 0x0

    #@f
    .line 169
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@12
    move-result v8

    #@13
    .line 171
    .local v8, "unspecifiedWidth":I
    const/4 v10, -0x1

    #@14
    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@16
    .line 172
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@19
    .line 174
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    #@1c
    move-result v10

    #@1d
    sub-int v5, v10, v9

    #@1f
    .line 175
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    #@21
    .line 176
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    #@24
    move-result v3

    #@25
    .line 178
    .local v3, "count":I
    const/4 v1, 0x0

    #@26
    .line 179
    .local v1, "childCount":I
    const/4 v6, 0x0

    #@27
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    #@29
    .line 180
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 181
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@30
    move-result v10

    #@31
    const/16 v11, 0x8

    #@33
    if-ne v10, v11, :cond_1

    #@35
    .line 179
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 185
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    #@3d
    .line 186
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@3f
    if-eqz v10, :cond_3

    #@41
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@43
    array-length v10, v10

    #@44
    if-eq v10, v3, :cond_4

    #@46
    .line 187
    :cond_3
    new-array v10, v3, [I

    #@48
    iput-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@4a
    .line 189
    :cond_4
    const/4 v6, 0x0

    #@4b
    :goto_2
    if-ge v6, v3, :cond_6

    #@4d
    .line 190
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@50
    move-result-object v0

    #@51
    .line 191
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@54
    move-result v10

    #@55
    const/16 v11, 0x8

    #@57
    if-ne v10, v11, :cond_5

    #@59
    .line 189
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 192
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@5f
    move-result v2

    #@60
    .line 193
    .local v2, "childWidth":I
    div-int v4, v5, v1

    #@62
    .line 194
    .local v4, "delta":I
    sub-int v10, v2, v4

    #@64
    const/4 v11, 0x0

    #@65
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@68
    move-result v7

    #@69
    .line 195
    .local v7, "newWidth":I
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@6b
    aput v7, v10, v6

    #@6d
    .line 197
    sub-int v10, v2, v7

    #@6f
    sub-int/2addr v5, v10

    #@70
    .line 198
    add-int/lit8 v1, v1, -0x1

    #@72
    .line 199
    iget v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@77
    move-result v11

    #@78
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@7b
    move-result v10

    #@7c
    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@7e
    goto :goto_3

    #@7f
    .line 206
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@82
    .line 161
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    .line 519
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 443
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@a
    .line 444
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    #@f
    .line 441
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@3
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    #@6
    .line 123
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    #@0
    .prologue
    .line 506
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@3
    .line 507
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@6
    .line 505
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 422
    if-ltz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 423
    :cond_0
    return-void

    #@b
    .line 422
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 426
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@11
    const/4 v1, -0x1

    #@12
    if-eq v0, v1, :cond_2

    #@14
    .line 427
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    #@1d
    .line 429
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@1f
    .line 430
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@21
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    #@28
    .line 431
    iput-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@2a
    .line 421
    return-void
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 245
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 235
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@3
    .line 477
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@6
    move-result v1

    #@7
    .line 478
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 479
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 480
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@11
    .line 478
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 474
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 272
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 258
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@2
    .line 259
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    #@5
    .line 260
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@8
    .line 257
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 311
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@2
    .line 298
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    #@5
    .line 299
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@8
    .line 296
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    #@0
    .prologue
    .line 335
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@2
    .line 336
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@5
    .line 334
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@0
    .prologue
    .line 515
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@2
    .line 514
    return-void
.end method
