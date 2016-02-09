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
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 73
    const v0, 0x1010083

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 54
    iput v3, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@7
    .line 59
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@9
    .line 62
    new-instance v1, Landroid/graphics/Rect;

    #@b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@e
    iput-object v1, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    #@10
    .line 65
    iput v3, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@12
    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    #@14
    .line 83
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    #@20
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@27
    .line 88
    const/4 v1, 0x2

    #@28
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2f
    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 92
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    #@35
    .line 80
    return-void
.end method

.method private initTabWidget()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 119
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    #@4
    .line 121
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@6
    .line 125
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v1

    #@a
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@c
    const/4 v2, 0x4

    #@d
    if-gt v1, v2, :cond_2

    #@f
    .line 127
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@11
    if-nez v1, :cond_0

    #@13
    .line 129
    const v1, 0x10806c7

    #@16
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@1c
    .line 131
    :cond_0
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 133
    const v1, 0x10806c9

    #@23
    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@29
    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->setFocusable(Z)V

    #@2c
    .line 150
    invoke-virtual {p0, p0}, Landroid/widget/TabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@2f
    .line 118
    return-void

    #@30
    .line 137
    :cond_2
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@32
    if-nez v1, :cond_3

    #@34
    .line 139
    const v1, 0x10806c6

    #@37
    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@3d
    .line 141
    :cond_3
    iget-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@3f
    if-nez v1, :cond_1

    #@41
    .line 143
    const v1, 0x10806c8

    #@44
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@4a
    goto :goto_0
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
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 484
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@b
    .line 486
    const/4 v1, -0x1

    #@c
    const/high16 v2, 0x3f800000    # 1.0f

    #@e
    .line 484
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@11
    .line 487
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    #@14
    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@17
    .line 492
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    #@1a
    .line 493
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    #@1d
    .line 495
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@20
    .line 499
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
    .line 500
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@31
    .line 482
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 316
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
    .line 318
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@11
    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    #@14
    .line 315
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 325
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 328
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    return-void

    #@b
    .line 332
    :cond_0
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@d
    if-nez v5, :cond_1

    #@f
    .line 334
    return-void

    #@10
    .line 337
    :cond_1
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@12
    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    .line 339
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    #@18
    .line 340
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 342
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@21
    .line 343
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@28
    .line 345
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 346
    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    #@2e
    .line 347
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@31
    move-result v5

    #@32
    iput v5, v0, Landroid/graphics/Rect;->left:I

    #@34
    .line 348
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@37
    move-result v5

    #@38
    iput v5, v0, Landroid/graphics/Rect;->right:I

    #@3a
    .line 349
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    #@3d
    move-result v2

    #@3e
    .line 350
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
    .line 351
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4c
    move-result v6

    #@4d
    sub-int v6, v2, v6

    #@4f
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@51
    .line 350
    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@54
    .line 352
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@56
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@59
    move-result v6

    #@5a
    sub-int v6, v2, v6

    #@5c
    .line 353
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
    .line 352
    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@6e
    .line 354
    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@70
    .line 357
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@73
    .line 358
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@76
    .line 324
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 408
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@4
    .line 410
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@6
    const/4 v2, -0x1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 411
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@b
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 412
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 413
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@1a
    move-result v1

    #@1b
    return v1

    #@1c
    .line 416
    .end local v0    # "tabView":Landroid/view/View;
    :cond_0
    return v3
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 459
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@2
    .line 462
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    #@5
    .line 465
    if-eq v0, p1, :cond_0

    #@7
    .line 466
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@e
    .line 458
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 421
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
    .line 103
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 104
    return p2

    #@6
    .line 108
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@8
    if-ne p2, v0, :cond_1

    #@a
    .line 109
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@c
    return v0

    #@d
    .line 110
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@f
    if-lt p2, v0, :cond_2

    #@11
    .line 111
    add-int/lit8 v0, p2, 0x1

    #@13
    return v0

    #@14
    .line 113
    :cond_2
    return p2
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    #@0
    .prologue
    .line 231
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
    .line 311
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
    .line 157
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
    .line 159
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@e
    aget v0, v0, p2

    #@10
    add-int/2addr v0, p4

    #@11
    .line 158
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@14
    move-result p3

    #@15
    .line 160
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@17
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a
    move-result p5

    #@1b
    .line 164
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@1e
    .line 156
    return-void
.end method

.method measureHorizontal(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v10

    #@4
    if-nez v10, :cond_0

    #@6
    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@9
    .line 172
    return-void

    #@a
    .line 176
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v9

    #@e
    .line 178
    .local v9, "width":I
    const/4 v10, 0x0

    #@f
    .line 177
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@12
    move-result v8

    #@13
    .line 179
    .local v8, "unspecifiedWidth":I
    const/4 v10, -0x1

    #@14
    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    #@16
    .line 180
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@19
    .line 182
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    #@1c
    move-result v10

    #@1d
    sub-int v5, v10, v9

    #@1f
    .line 183
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    #@21
    .line 184
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    #@24
    move-result v3

    #@25
    .line 186
    .local v3, "count":I
    const/4 v1, 0x0

    #@26
    .line 187
    .local v1, "childCount":I
    const/4 v6, 0x0

    #@27
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    #@29
    .line 188
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 189
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@30
    move-result v10

    #@31
    const/16 v11, 0x8

    #@33
    if-ne v10, v11, :cond_1

    #@35
    .line 187
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 193
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v1, :cond_6

    #@3d
    .line 194
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
    .line 195
    :cond_3
    new-array v10, v3, [I

    #@48
    iput-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@4a
    .line 197
    :cond_4
    const/4 v6, 0x0

    #@4b
    :goto_2
    if-ge v6, v3, :cond_6

    #@4d
    .line 198
    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    #@50
    move-result-object v0

    #@51
    .line 199
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@54
    move-result v10

    #@55
    const/16 v11, 0x8

    #@57
    if-ne v10, v11, :cond_5

    #@59
    .line 197
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 200
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@5f
    move-result v2

    #@60
    .line 201
    .local v2, "childWidth":I
    div-int v4, v5, v1

    #@62
    .line 202
    .local v4, "delta":I
    sub-int v10, v2, v4

    #@64
    const/4 v11, 0x0

    #@65
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@68
    move-result v7

    #@69
    .line 203
    .local v7, "newWidth":I
    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    #@6b
    aput v7, v10, v6

    #@6d
    .line 205
    sub-int v10, v2, v7

    #@6f
    sub-int/2addr v5, v10

    #@70
    .line 206
    add-int/lit8 v1, v1, -0x1

    #@72
    .line 207
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
    .line 213
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
    .line 169
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 518
    if-ne p1, p0, :cond_0

    #@3
    if-eqz p2, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@8
    move-result v2

    #@9
    if-lez v2, :cond_0

    #@b
    .line 519
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@d
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@14
    .line 520
    return-void

    #@15
    .line 523
    :cond_0
    if-eqz p2, :cond_1

    #@17
    .line 524
    const/4 v0, 0x0

    #@18
    .line 525
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@1b
    move-result v1

    #@1c
    .line 526
    .local v1, "numTabs":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1e
    .line 527
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    if-ne v2, p1, :cond_2

    #@24
    .line 528
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    #@27
    .line 529
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@29
    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    #@2c
    .line 530
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 532
    const/16 v2, 0x8

    #@34
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    #@37
    .line 517
    .end local v0    # "i":I
    .end local v1    # "numTabs":I
    :cond_1
    return-void

    #@38
    .line 536
    .restart local v0    # "i":I
    .restart local v1    # "numTabs":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 428
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@a
    .line 429
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    #@f
    .line 426
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
    .line 97
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@3
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    #@6
    .line 96
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    #@0
    .prologue
    .line 505
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@3
    .line 506
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@6
    .line 504
    return-void
.end method

.method public sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isFocused()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 438
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    #@11
    .line 439
    return-void

    #@12
    .line 441
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@15
    .line 435
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
    .line 389
    if-ltz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 390
    :cond_0
    return-void

    #@b
    .line 389
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 393
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@11
    const/4 v1, -0x1

    #@12
    if-eq v0, v1, :cond_2

    #@14
    .line 394
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    #@1d
    .line 396
    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@1f
    .line 397
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    #@21
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    #@28
    .line 398
    iput-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    #@2a
    .line 400
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isShown()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 401
    const/4 v0, 0x4

    #@31
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->sendAccessibilityEvent(I)V

    #@34
    .line 388
    :cond_3
    return-void
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 248
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 239
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@3
    .line 474
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    #@6
    move-result v1

    #@7
    .line 475
    .local v1, "count":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@a
    .line 476
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 477
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@11
    .line 475
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 471
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 269
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
    .line 291
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 290
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 279
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    #@2
    .line 280
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    #@5
    .line 281
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@8
    .line 278
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    #@0
    .prologue
    .line 302
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    #@2
    .line 303
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    #@5
    .line 301
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@0
    .prologue
    .line 513
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    #@2
    .line 512
    return-void
.end method
