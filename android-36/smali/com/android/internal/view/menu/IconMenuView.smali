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
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private blacklist mAnimations:I

.field private blacklist mHasStaleChildren:Z

.field private blacklist mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private blacklist mHorizontalDividerHeight:I

.field private blacklist mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mItemBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastChildrenCaptionMode:Z

.field private blacklist mLayout:[I

.field private blacklist mLayoutNumRows:I

.field private greylist mMaxItems:I

.field private blacklist mMaxItemsPerRow:I

.field private blacklist mMaxRows:I

.field private greylist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mMenuBeingLongpressed:Z

.field private blacklist mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mNumActualItemsShown:I

.field private blacklist mRowHeight:I

.field private blacklist mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private blacklist mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVerticalDividerWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenu(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 135
    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    .line 136
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    .line 138
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    .line 139
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .line 140
    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 141
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    sget-object v5, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 145
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    .line 151
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, -0x1

    if-eqz v3, :cond_77

    .line 154
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 156
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne v3, v4, :cond_77

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 159
    :cond_77
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_89

    .line 160
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 162
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne v3, v4, :cond_89

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 165
    :cond_89
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    .line 173
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    .line 174
    return-void
.end method

.method private blacklist calculateItemFittingMetadata(I)V
    .registers 9
    .param p1, "width"    # I

    .line 664
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 665
    .local v0, "maxNumItemsPerRow":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    .line 666
    .local v1, "numItems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_28

    .line 667
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 669
    .local v3, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 670
    move v4, v0

    .local v4, "curNumItemsPerRow":I
    :goto_17
    if-lez v4, :cond_25

    .line 673
    iget v5, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v4

    if-ge v5, v6, :cond_22

    .line 675
    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 676
    goto :goto_25

    .line 671
    :cond_22
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 666
    .end local v3    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v4    # "curNumItemsPerRow":I
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 680
    .end local v2    # "i":I
    :cond_28
    return-void
.end method

.method private blacklist doItemsFit()Z
    .registers 10

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "itemPos":I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 259
    .local v1, "layout":[I
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 260
    .local v2, "numRows":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_6
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2c

    .line 261
    aget v5, v1, v3

    .line 267
    .local v5, "numItemsOnRow":I
    if-ne v5, v4, :cond_10

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 269
    goto :goto_29

    .line 272
    :cond_10
    move v4, v5

    .local v4, "itemsOnRowCounter":I
    :goto_11
    if-lez v4, :cond_29

    .line 274
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "itemPos":I
    .local v6, "itemPos":I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 276
    .local v7, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v8, v7, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v8, v5, :cond_25

    .line 277
    const/4 v8, 0x0

    return v8

    .line 273
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_25
    add-int/lit8 v4, v4, -0x1

    move v0, v6

    goto :goto_11

    .line 260
    .end local v4    # "itemsOnRowCounter":I
    .end local v5    # "numItemsOnRow":I
    .end local v6    # "itemPos":I
    .local v0, "itemPos":I
    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 282
    .end local v3    # "row":I
    :cond_2c
    return v4
.end method

.method private blacklist layoutItems(I)V
    .registers 5
    .param p1, "width"    # I

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    .line 187
    .local v0, "numItems":I
    if-nez v0, :cond_a

    .line 188
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 189
    return-void

    .line 193
    :cond_a
    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 200
    .local v1, "curNumRows":I
    :goto_1b
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v1, v2, :cond_2f

    .line 201
    invoke-direct {p0, v1, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    .line 203
    if-lt v1, v0, :cond_25

    .line 205
    goto :goto_2f

    .line 208
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 210
    goto :goto_2f

    .line 200
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 213
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist layoutItemsUsingGravity(II)V
    .registers 9
    .param p1, "numRows"    # I
    .param p2, "numItems"    # I

    .line 225
    div-int v0, p2, p1

    .line 226
    .local v0, "numBaseItemsPerRow":I
    rem-int v1, p2, p1

    .line 233
    .local v1, "numLeftoverItems":I
    sub-int v2, p1, v1

    .line 235
    .local v2, "rowsThatGetALeftoverItem":I
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 236
    .local v3, "layout":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, p1, :cond_18

    .line 237
    aput v0, v3, v4

    .line 240
    if-lt v4, v2, :cond_15

    .line 241
    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 236
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 245
    .end local v4    # "i":I
    :cond_18
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 246
    return-void
.end method

.method private blacklist positionChildren(II)V
    .registers 23
    .param p1, "menuWidth"    # I
    .param p2, "menuHeight"    # I

    .line 332
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 333
    :cond_d
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 336
    :cond_16
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 337
    .local v2, "numRows":I
    add-int/lit8 v3, v2, -0x1

    .line 338
    .local v3, "numRowsMinus1":I
    iget-object v4, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 341
    .local v4, "numItemsForRow":[I
    const/4 v5, 0x0

    .line 343
    .local v5, "itemPos":I
    const/4 v6, 0x0

    .line 348
    .local v6, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v7, 0x0

    .line 352
    .local v7, "itemTop":F
    iget v8, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/lit8 v9, v2, -0x1

    mul-int/2addr v8, v9

    sub-int v8, p2, v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 355
    .local v8, "itemHeight":F
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_2a
    if-ge v9, v2, :cond_cf

    .line 357
    const/4 v10, 0x0

    .line 360
    .local v10, "itemLeft":F
    iget v11, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    aget v12, v4, v9

    add-int/lit8 v12, v12, -0x1

    mul-int/2addr v11, v12

    sub-int v11, v1, v11

    int-to-float v11, v11

    aget v12, v4, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 363
    .local v11, "itemWidth":F
    const/4 v12, 0x0

    .local v12, "itemPosOnRow":I
    :goto_3c
    aget v13, v4, v9

    if-ge v12, v13, :cond_a3

    .line 365
    invoke-virtual {v0, v5}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 366
    .local v13, "child":Landroid/view/View;
    float-to-int v14, v11

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move/from16 v16, v2

    .end local v2    # "numRows":I
    .local v16, "numRows":I
    float-to-int v2, v8

    .line 367
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 366
    invoke-virtual {v13, v14, v2}, Landroid/view/View;->measure(II)V

    .line 370
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 371
    float-to-int v2, v10

    iput v2, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    .line 372
    add-float v2, v10, v11

    float-to-int v2, v2

    iput v2, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 373
    float-to-int v2, v7

    iput v2, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    .line 374
    add-float v2, v7, v8

    float-to-int v2, v2

    iput v2, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    .line 377
    add-float/2addr v10, v11

    .line 378
    add-int/lit8 v5, v5, 0x1

    .line 381
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8e

    .line 382
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    new-instance v14, Landroid/graphics/Rect;

    float-to-int v15, v10

    move-object/from16 v17, v4

    .end local v4    # "numItemsForRow":[I
    .local v17, "numItemsForRow":[I
    float-to-int v4, v7

    move/from16 v18, v5

    .end local v5    # "itemPos":I
    .local v18, "itemPos":I
    iget v5, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    move-object/from16 v19, v6

    .end local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .local v19, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    add-float v6, v7, v8

    float-to-int v6, v6

    invoke-direct {v14, v15, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 381
    .end local v17    # "numItemsForRow":[I
    .end local v18    # "itemPos":I
    .end local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v4    # "numItemsForRow":[I
    .restart local v5    # "itemPos":I
    .restart local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_8e
    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    .line 390
    .end local v4    # "numItemsForRow":[I
    .end local v5    # "itemPos":I
    .end local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v17    # "numItemsForRow":[I
    .restart local v18    # "itemPos":I
    .restart local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :goto_94
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 363
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_3c

    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "numRows":I
    .end local v17    # "numItemsForRow":[I
    .end local v18    # "itemPos":I
    .end local v19    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v2    # "numRows":I
    .restart local v4    # "numItemsForRow":[I
    .restart local v5    # "itemPos":I
    .restart local v6    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_a3
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 394
    .end local v2    # "numRows":I
    .end local v4    # "numItemsForRow":[I
    .end local v12    # "itemPosOnRow":I
    .restart local v16    # "numRows":I
    .restart local v17    # "numItemsForRow":[I
    if-eqz v6, :cond_ab

    .line 395
    iput v1, v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 398
    :cond_ab
    add-float/2addr v7, v8

    .line 401
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c7

    if-ge v9, v3, :cond_c7

    .line 402
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v12, v7

    iget v13, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v13, v13

    add-float/2addr v13, v7

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-direct {v4, v14, v12, v1, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v2, v2

    add-float/2addr v7, v2

    .line 355
    :cond_c7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_2a

    .line 408
    .end local v9    # "row":I
    .end local v10    # "itemLeft":F
    .end local v11    # "itemWidth":F
    .end local v16    # "numRows":I
    .end local v17    # "numItemsForRow":[I
    .restart local v2    # "numRows":I
    .restart local v4    # "numItemsForRow":[I
    :cond_cf
    return-void
.end method

.method private blacklist setChildrenCaptionMode(Z)V
    .registers 4
    .param p1, "shortcut"    # Z

    .line 650
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_16

    .line 653
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 652
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 655
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method private blacklist setCycleShortcutCaptionMode(Z)V
    .registers 3
    .param p1, "cycleShortcutAndNormal"    # Z

    .line 599
    if-nez p1, :cond_c

    .line 604
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 606
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    goto :goto_10

    .line 611
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 614
    :goto_10
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 484
    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method greylist createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .registers 7

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 300
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 303
    .local v2, "itemView":Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 304
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x104068c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 308
    new-instance v4, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    return-object v2
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_33

    .line 545
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 546
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 547
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 548
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 550
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_30

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 554
    return v1

    .line 558
    :cond_30
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 564
    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
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

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 478
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method blacklist getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLayout()[I
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public blacklist getLayoutNumRows()I
    .registers 2

    .line 538
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method blacklist getMaxItems()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    return v0
.end method

.method greylist getNumActualItemsShown()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public blacklist getWindowAnimations()I
    .registers 2

    .line 512
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public blacklist initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 321
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 322
    return-void
.end method

.method public blacklist invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 473
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method blacklist markStaleChildren()V
    .registers 2

    .line 491
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_a

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    .line 495
    :cond_a
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 569
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    .line 572
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 577
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 578
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 451
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 452
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1d

    .line 454
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 455
    .local v1, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1d

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 461
    .end local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v2    # "i":I
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 462
    if-eqz v0, :cond_3a

    .line 464
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 465
    .restart local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_29
    if-ltz v2, :cond_3a

    .line 466
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 470
    .end local v1    # "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_21

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 440
    .local v1, "child":Landroid/view/View;
    nop

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 444
    .local v2, "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v3, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget v4, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget v6, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 438
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 447
    .end local v0    # "i":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLayoutParams":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_21
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 412
    const v0, 0x7fffffff

    invoke-static {v0, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v0

    .line 413
    .local v0, "measuredWidth":I
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    .line 414
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    .line 418
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 419
    .local v1, "layoutNumRows":I
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int/2addr v2, v3

    .line 423
    .local v2, "desiredHeight":I
    nop

    .line 424
    invoke-static {v2, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v3

    .line 423
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    .line 427
    if-lez v1, :cond_2d

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    .line 430
    :cond_2d
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 699
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    .line 700
    .local v0, "ss":Lcom/android/internal/view/menu/IconMenuView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 702
    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_13

    .line 703
    return-void

    .line 706
    :cond_13
    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 707
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1e

    .line 708
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 710
    :cond_1e
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 684
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 686
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 688
    .local v1, "focusedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_1f

    .line 689
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_1c

    .line 690
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v3

    .line 688
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 694
    .end local v2    # "i":I
    :cond_1f
    new-instance v2, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v2
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 583
    if-nez p1, :cond_6

    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 587
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 588
    return-void
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 624
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 627
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_11

    .line 632
    :cond_c
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 633
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 637
    :goto_11
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return-void
.end method

.method blacklist setNumActualItemsShown(I)V
    .registers 2
    .param p1, "count"    # I

    .line 508
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    .line 509
    return-void
.end method
