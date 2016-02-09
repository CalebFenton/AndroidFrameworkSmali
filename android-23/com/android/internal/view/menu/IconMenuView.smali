.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$SavedState;,
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    }
.end annotation


# static fields
.field private static final ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private mAnimations:I

.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLastChildrenCaptionMode:Z

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItems:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBeingLongpressed:Z

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mNumActualItemsShown:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8
    .line 102
    iput-boolean v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    #@a
    .line 132
    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    #@c
    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x40

    #@12
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    #@18
    .line 134
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1b
    move-result v1

    #@1c
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    #@1e
    .line 135
    const/4 v1, 0x4

    #@1f
    const/4 v2, 0x6

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@23
    move-result v1

    #@24
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    #@26
    .line 136
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    #@2c
    .line 137
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    #@32
    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 140
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    #@37
    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@3a
    move-result-object v0

    #@3b
    .line 141
    const/4 v1, 0x5

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    #@42
    .line 142
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@45
    move-result-object v1

    #@46
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@48
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@4d
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    #@4f
    .line 144
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@55
    .line 145
    new-instance v1, Ljava/util/ArrayList;

    #@57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5a
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    #@5c
    .line 146
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5f
    move-result v1

    #@60
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    #@62
    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@65
    .line 149
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@67
    if-eqz v1, :cond_0

    #@69
    .line 150
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@6b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@6e
    move-result v1

    #@6f
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@71
    .line 152
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@73
    if-ne v1, v7, :cond_0

    #@75
    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@77
    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@79
    if-eqz v1, :cond_1

    #@7b
    .line 156
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@7d
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@80
    move-result v1

    #@81
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@83
    .line 158
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@85
    if-ne v1, v7, :cond_1

    #@87
    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@89
    .line 161
    :cond_1
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    #@8b
    new-array v1, v1, [I

    #@8d
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    #@8f
    .line 164
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    #@92
    .line 167
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    #@95
    .line 169
    const/high16 v1, 0x40000

    #@97
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    #@9a
    .line 128
    return-void
.end method

.method private calculateItemFittingMetadata(I)V
    .locals 7
    .param p1, "width"    # I

    #@0
    .prologue
    .line 658
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    #@2
    .line 659
    .local v3, "maxNumItemsPerRow":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@5
    move-result v4

    #@6
    .line 660
    .local v4, "numItems":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@9
    .line 661
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@13
    .line 663
    .local v2, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v5, 0x1

    #@14
    iput v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    #@16
    .line 664
    move v0, v3

    #@17
    .local v0, "curNumItemsPerRow":I
    :goto_1
    if-lez v0, :cond_0

    #@19
    .line 667
    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    #@1b
    div-int v6, p1, v0

    #@1d
    if-ge v5, v6, :cond_1

    #@1f
    .line 669
    iput v0, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    #@21
    .line 660
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 665
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_1

    #@27
    .line 657
    .end local v0    # "curNumItemsPerRow":I
    .end local v2    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_2
    return-void
.end method

.method private doItemsFit()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 252
    const/4 v1, 0x0

    #@3
    .line 254
    .local v1, "itemPos":I
    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    #@5
    .line 255
    .local v4, "layout":[I
    iget v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@7
    .line 256
    .local v7, "numRows":I
    const/4 v8, 0x0

    #@8
    .local v8, "row":I
    :goto_0
    if-ge v8, v7, :cond_2

    #@a
    .line 257
    aget v6, v4, v8

    #@c
    .line 263
    .local v6, "numItemsOnRow":I
    if-ne v6, v11, :cond_0

    #@e
    .line 264
    add-int/lit8 v1, v1, 0x1

    #@10
    .line 256
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@12
    goto :goto_0

    #@13
    .line 268
    :cond_0
    move v3, v6

    #@14
    .local v3, "itemsOnRowCounter":I
    move v2, v1

    #@15
    .end local v1    # "itemPos":I
    .local v2, "itemPos":I
    :goto_2
    if-lez v3, :cond_3

    #@17
    .line 270
    add-int/lit8 v1, v2, 0x1

    #@19
    .end local v2    # "itemPos":I
    .restart local v1    # "itemPos":I
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    .line 271
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@23
    .line 272
    .local v5, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v9, v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    #@25
    if-ge v9, v6, :cond_1

    #@27
    .line 273
    return v10

    #@28
    .line 269
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2a
    move v2, v1

    #@2b
    .end local v1    # "itemPos":I
    .restart local v2    # "itemPos":I
    goto :goto_2

    #@2c
    .line 278
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "itemPos":I
    .end local v3    # "itemsOnRowCounter":I
    .end local v5    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v6    # "numItemsOnRow":I
    .restart local v1    # "itemPos":I
    :cond_2
    return v11

    #@2d
    .end local v1    # "itemPos":I
    .restart local v2    # "itemPos":I
    .restart local v3    # "itemsOnRowCounter":I
    .restart local v6    # "numItemsOnRow":I
    :cond_3
    move v1, v2

    #@2e
    .end local v2    # "itemPos":I
    .restart local v1    # "itemPos":I
    goto :goto_1
.end method

.method private layoutItems(I)V
    .locals 4
    .param p1, "width"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 182
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 183
    .local v1, "numItems":I
    if-nez v1, :cond_0

    #@7
    .line 184
    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@9
    .line 185
    return-void

    #@a
    .line 190
    :cond_0
    int-to-float v2, v1

    #@b
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    #@d
    int-to-float v3, v3

    #@e
    div-float/2addr v2, v3

    #@f
    float-to-double v2, v2

    #@10
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@13
    move-result-wide v2

    #@14
    double-to-int v2, v2

    #@15
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    #@17
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v0

    #@1b
    .line 196
    .local v0, "curNumRows":I
    :goto_0
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    #@1d
    if-gt v0, v2, :cond_1

    #@1f
    .line 197
    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    #@22
    .line 199
    if-lt v0, v1, :cond_2

    #@24
    .line 181
    :cond_1
    return-void

    #@25
    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0
.end method

.method private layoutItemsUsingGravity(II)V
    .locals 6
    .param p1, "numRows"    # I
    .param p2, "numItems"    # I

    #@0
    .prologue
    .line 221
    div-int v2, p2, p1

    #@2
    .line 222
    .local v2, "numBaseItemsPerRow":I
    rem-int v3, p2, p1

    #@4
    .line 229
    .local v3, "numLeftoverItems":I
    sub-int v4, p1, v3

    #@6
    .line 231
    .local v4, "rowsThatGetALeftoverItem":I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    #@8
    .line 232
    .local v1, "layout":[I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@b
    .line 233
    aput v2, v1, v0

    #@d
    .line 236
    if-lt v0, v4, :cond_0

    #@f
    .line 237
    aget v5, v1, v0

    #@11
    add-int/lit8 v5, v5, 0x1

    #@13
    aput v5, v1, v0

    #@15
    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 241
    :cond_1
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@1a
    .line 220
    return-void
.end method

.method private positionChildren(II)V
    .locals 23
    .param p1, "menuWidth"    # I
    .param p2, "menuHeight"    # I

    #@0
    .prologue
    .line 327
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@4
    move-object/from16 v17, v0

    #@6
    if-eqz v17, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    #@c
    move-object/from16 v17, v0

    #@e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    #@11
    .line 328
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@15
    move-object/from16 v17, v0

    #@17
    if-eqz v17, :cond_1

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    #@1d
    move-object/from16 v17, v0

    #@1f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 331
    :cond_1
    move-object/from16 v0, p0

    #@24
    iget v14, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@26
    .line 332
    .local v14, "numRows":I
    add-int/lit8 v15, v14, -0x1

    #@28
    .line 333
    .local v15, "numRowsMinus1":I
    move-object/from16 v0, p0

    #@2a
    iget-object v13, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    #@2c
    .line 336
    .local v13, "numItemsForRow":[I
    const/4 v9, 0x0

    #@2d
    .line 338
    .local v9, "itemPos":I
    const/4 v6, 0x0

    #@2e
    .line 343
    .local v6, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v11, 0x0

    #@2f
    .line 347
    .local v11, "itemTop":F
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@33
    move/from16 v17, v0

    #@35
    add-int/lit8 v18, v14, -0x1

    #@37
    mul-int v17, v17, v18

    #@39
    sub-int v17, p2, v17

    #@3b
    move/from16 v0, v17

    #@3d
    int-to-float v0, v0

    #@3e
    move/from16 v17, v0

    #@40
    .line 348
    int-to-float v0, v14

    #@41
    move/from16 v18, v0

    #@43
    .line 347
    div-float v7, v17, v18

    #@45
    .line 350
    .local v7, "itemHeight":F
    const/16 v16, 0x0

    #@47
    .end local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .local v16, "row":I
    :goto_0
    move/from16 v0, v16

    #@49
    if-ge v0, v14, :cond_6

    #@4b
    .line 352
    const/4 v8, 0x0

    #@4c
    .line 355
    .local v8, "itemLeft":F
    move-object/from16 v0, p0

    #@4e
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@50
    move/from16 v17, v0

    #@52
    aget v18, v13, v16

    #@54
    add-int/lit8 v18, v18, -0x1

    #@56
    mul-int v17, v17, v18

    #@58
    sub-int v17, p1, v17

    #@5a
    move/from16 v0, v17

    #@5c
    int-to-float v0, v0

    #@5d
    move/from16 v17, v0

    #@5f
    .line 356
    aget v18, v13, v16

    #@61
    move/from16 v0, v18

    #@63
    int-to-float v0, v0

    #@64
    move/from16 v18, v0

    #@66
    .line 355
    div-float v12, v17, v18

    #@68
    .line 358
    .local v12, "itemWidth":F
    const/4 v10, 0x0

    #@69
    .local v10, "itemPosOnRow":I
    :goto_1
    aget v17, v13, v16

    #@6b
    move/from16 v0, v17

    #@6d
    if-ge v10, v0, :cond_3

    #@6f
    .line 360
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v9}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@74
    move-result-object v5

    #@75
    .line 361
    .local v5, "child":Landroid/view/View;
    float-to-int v0, v12

    #@76
    move/from16 v17, v0

    #@78
    const/high16 v18, 0x40000000    # 2.0f

    #@7a
    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@7d
    move-result v17

    #@7e
    .line 362
    float-to-int v0, v7

    #@7f
    move/from16 v18, v0

    #@81
    const/high16 v19, 0x40000000    # 2.0f

    #@83
    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@86
    move-result v18

    #@87
    .line 361
    move/from16 v0, v17

    #@89
    move/from16 v1, v18

    #@8b
    invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V

    #@8e
    .line 365
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@91
    move-result-object v6

    #@92
    check-cast v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@94
    .line 366
    .local v6, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    float-to-int v0, v8

    #@95
    move/from16 v17, v0

    #@97
    move/from16 v0, v17

    #@99
    iput v0, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    #@9b
    .line 367
    add-float v17, v8, v12

    #@9d
    move/from16 v0, v17

    #@9f
    float-to-int v0, v0

    #@a0
    move/from16 v17, v0

    #@a2
    move/from16 v0, v17

    #@a4
    iput v0, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    #@a6
    .line 368
    float-to-int v0, v11

    #@a7
    move/from16 v17, v0

    #@a9
    move/from16 v0, v17

    #@ab
    iput v0, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    #@ad
    .line 369
    add-float v17, v11, v7

    #@af
    move/from16 v0, v17

    #@b1
    float-to-int v0, v0

    #@b2
    move/from16 v17, v0

    #@b4
    move/from16 v0, v17

    #@b6
    iput v0, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    #@b8
    .line 372
    add-float/2addr v8, v12

    #@b9
    .line 373
    add-int/lit8 v9, v9, 0x1

    #@bb
    .line 376
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@bf
    move-object/from16 v17, v0

    #@c1
    if-eqz v17, :cond_2

    #@c3
    .line 377
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    #@c7
    move-object/from16 v17, v0

    #@c9
    new-instance v18, Landroid/graphics/Rect;

    #@cb
    float-to-int v0, v8

    #@cc
    move/from16 v19, v0

    #@ce
    .line 378
    float-to-int v0, v11

    #@cf
    move/from16 v20, v0

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@d5
    move/from16 v21, v0

    #@d7
    move/from16 v0, v21

    #@d9
    int-to-float v0, v0

    #@da
    move/from16 v21, v0

    #@dc
    add-float v21, v21, v8

    #@de
    move/from16 v0, v21

    #@e0
    float-to-int v0, v0

    #@e1
    move/from16 v21, v0

    #@e3
    .line 379
    add-float v22, v11, v7

    #@e5
    move/from16 v0, v22

    #@e7
    float-to-int v0, v0

    #@e8
    move/from16 v22, v0

    #@ea
    .line 377
    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    #@ed
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f0
    .line 385
    :cond_2
    move-object/from16 v0, p0

    #@f2
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    #@f4
    move/from16 v17, v0

    #@f6
    move/from16 v0, v17

    #@f8
    int-to-float v0, v0

    #@f9
    move/from16 v17, v0

    #@fb
    add-float v8, v8, v17

    #@fd
    .line 358
    add-int/lit8 v10, v10, 0x1

    #@ff
    goto/16 :goto_1

    #@101
    .line 389
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_3
    if-eqz v6, :cond_4

    #@103
    .line 390
    move/from16 v0, p1

    #@105
    iput v0, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    #@107
    .line 393
    :cond_4
    add-float/2addr v11, v7

    #@108
    .line 396
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@10c
    move-object/from16 v17, v0

    #@10e
    if-eqz v17, :cond_5

    #@110
    move/from16 v0, v16

    #@112
    if-ge v0, v15, :cond_5

    #@114
    .line 397
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    #@118
    move-object/from16 v17, v0

    #@11a
    new-instance v18, Landroid/graphics/Rect;

    #@11c
    float-to-int v0, v11

    #@11d
    move/from16 v19, v0

    #@11f
    .line 398
    move-object/from16 v0, p0

    #@121
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@123
    move/from16 v20, v0

    #@125
    move/from16 v0, v20

    #@127
    int-to-float v0, v0

    #@128
    move/from16 v20, v0

    #@12a
    add-float v20, v20, v11

    #@12c
    move/from16 v0, v20

    #@12e
    float-to-int v0, v0

    #@12f
    move/from16 v20, v0

    #@131
    .line 397
    const/16 v21, 0x0

    #@133
    move-object/from16 v0, v18

    #@135
    move/from16 v1, v21

    #@137
    move/from16 v2, v19

    #@139
    move/from16 v3, p1

    #@13b
    move/from16 v4, v20

    #@13d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@140
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@143
    .line 400
    move-object/from16 v0, p0

    #@145
    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@147
    move/from16 v17, v0

    #@149
    move/from16 v0, v17

    #@14b
    int-to-float v0, v0

    #@14c
    move/from16 v17, v0

    #@14e
    add-float v11, v11, v17

    #@150
    .line 350
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@152
    goto/16 :goto_0

    #@154
    .line 325
    .end local v8    # "itemLeft":F
    .end local v10    # "itemPosOnRow":I
    .end local v12    # "itemWidth":F
    :cond_6
    return-void
.end method

.method private setChildrenCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    #@0
    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    #@2
    .line 646
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 647
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    #@13
    .line 646
    add-int/lit8 v0, v0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 641
    :cond_0
    return-void
.end method

.method private setCycleShortcutCaptionMode(Z)V
    .locals 1
    .param p1, "cycleShortcutAndNormal"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 593
    if-nez p1, :cond_0

    #@3
    .line 598
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@6
    .line 599
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    #@9
    .line 600
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    #@b
    .line 591
    :goto_0
    return-void

    #@c
    .line 605
    :cond_0
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    #@10
    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 479
    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@2
    return v0
.end method

.method createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .locals 6

    #@0
    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 293
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v1

    #@8
    .line 296
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090066

    #@b
    const/4 v5, 0x0

    #@c
    .line 295
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/internal/view/menu/IconMenuItemView;

    #@12
    .line 298
    .local v2, "itemView":Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v3

    #@16
    .line 299
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x1040311

    #@19
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 303
    new-instance v4, Lcom/android/internal/view/menu/IconMenuView$1;

    #@24
    invoke-direct {v4, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    #@27
    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2a
    .line 311
    return-object v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x52

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 540
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@19
    .line 541
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@1c
    move-result v0

    #@1d
    int-to-long v0, v0

    #@1e
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@21
    .line 558
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 542
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@29
    move-result v0

    #@2a
    if-ne v0, v3, :cond_0

    #@2c
    .line 544
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 547
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    #@33
    .line 548
    return v3

    #@34
    .line 552
    :cond_2
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@37
    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 473
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getLayout()[I
    .locals 1

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    #@2
    return-object v0
.end method

.method public getLayoutNumRows()I
    .locals 1

    #@0
    .prologue
    .line 532
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@2
    return v0
.end method

.method getMaxItems()I
    .locals 1

    #@0
    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    #@2
    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    #@0
    .prologue
    .line 498
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    #@2
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    #@0
    .prologue
    .line 506
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    #@2
    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    .line 315
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method markStaleChildren()V
    .locals 1

    #@0
    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 487
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    #@7
    .line 488
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    #@a
    .line 485
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 563
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 565
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    #@6
    .line 562
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 570
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    #@4
    .line 571
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@7
    .line 569
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    #@2
    .line 447
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@4
    .line 449
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    #@6
    .line 450
    .local v2, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v1, v3, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@e
    .line 451
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@17
    .line 452
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1a
    .line 450
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 456
    .end local v1    # "i":I
    .end local v2    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 457
    if-eqz v0, :cond_1

    #@21
    .line 459
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    #@23
    .line 460
    .restart local v2    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v3

    #@27
    add-int/lit8 v1, v3, -0x1

    #@29
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@2b
    .line 461
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/graphics/Rect;

    #@31
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@34
    .line 462
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@37
    .line 460
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 445
    .end local v1    # "i":I
    .end local v2    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@3
    move-result v3

    #@4
    add-int/lit8 v2, v3, -0x1

    #@6
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@8
    .line 434
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 435
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@12
    .line 439
    .local v1, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    #@14
    iget v4, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    #@16
    iget v5, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    #@18
    .line 440
    iget v6, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    #@1a
    .line 439
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    #@1d
    .line 433
    add-int/lit8 v2, v2, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 429
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 407
    const v3, 0x7fffffff

    #@3
    invoke-static {v3, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    #@6
    move-result v2

    #@7
    .line 408
    .local v2, "measuredWidth":I
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    #@a
    .line 409
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    #@d
    .line 413
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    #@f
    .line 414
    .local v1, "layoutNumRows":I
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    #@11
    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@13
    add-int/2addr v3, v4

    #@14
    mul-int/2addr v3, v1

    #@15
    .line 415
    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    #@17
    .line 414
    sub-int v0, v3, v4

    #@19
    .line 419
    .local v0, "desiredHeight":I
    invoke-static {v0, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    #@1c
    move-result v3

    #@1d
    .line 418
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    #@20
    .line 422
    if-lez v1, :cond_0

    #@22
    .line 423
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    #@29
    move-result v4

    #@2a
    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    #@2d
    .line 406
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 693
    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    #@3
    .line 694
    .local v0, "ss":Lcom/android/internal/view/menu/IconMenuView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 696
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    #@c
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@f
    move-result v3

    #@10
    if-lt v2, v3, :cond_0

    #@12
    .line 697
    return-void

    #@13
    .line 700
    :cond_0
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    #@15
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    .line 701
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    #@1b
    .line 702
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@1e
    .line 692
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    #@0
    .prologue
    .line 678
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v2

    #@4
    .line 680
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 682
    .local v0, "focusedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v1, v3, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 683
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v3

    #@14
    if-ne v3, v0, :cond_0

    #@16
    .line 684
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    #@18
    invoke-direct {v3, v2, v1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    #@1b
    return-object v3

    #@1c
    .line 682
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 688
    :cond_1
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    #@21
    const/4 v4, -0x1

    #@22
    invoke-direct {v3, v2, v4}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    #@25
    return-object v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 577
    if-nez p1, :cond_0

    #@2
    .line 578
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    #@6
    .line 581
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    #@9
    .line 575
    return-void
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 618
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 621
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    #@d
    .line 631
    :goto_0
    const-wide/16 v0, 0x3e8

    #@f
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@12
    .line 616
    return-void

    #@13
    .line 626
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    #@15
    .line 627
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    #@18
    goto :goto_0
.end method

.method setNumActualItemsShown(I)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    .line 502
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    #@2
    .line 501
    return-void
.end method
