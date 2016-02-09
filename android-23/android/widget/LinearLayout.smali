.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 195
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 106
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@8
    .line 116
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@a
    .line 124
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@c
    .line 161
    const v3, 0x800033

    #@f
    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@11
    .line 188
    iput v6, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@13
    .line 206
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    #@15
    .line 205
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@18
    move-result-object v0

    #@19
    .line 208
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1c
    move-result v2

    #@1d
    .line 209
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@1f
    .line 210
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@22
    .line 213
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result v2

    #@26
    .line 214
    if-ltz v2, :cond_1

    #@28
    .line 215
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@2b
    .line 218
    :cond_1
    const/4 v3, 0x2

    #@2c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2f
    move-result v1

    #@30
    .line 219
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    #@32
    .line 220
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    #@35
    .line 223
    :cond_2
    const/4 v3, 0x4

    #@36
    const/high16 v4, -0x40800000    # -1.0f

    #@38
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3b
    move-result v3

    #@3c
    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@3e
    .line 226
    const/4 v3, 0x3

    #@3f
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@42
    move-result v3

    #@43
    .line 225
    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@45
    .line 228
    const/4 v3, 0x6

    #@46
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@49
    move-result v3

    #@4a
    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@4c
    .line 230
    const/4 v3, 0x5

    #@4d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@54
    .line 231
    const/4 v3, 0x7

    #@55
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@58
    move-result v3

    #@59
    iput v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@5b
    .line 232
    const/16 v3, 0x8

    #@5d
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@60
    move-result v3

    #@61
    iput v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@63
    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@66
    .line 202
    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 661
    add-int/lit8 v1, p1, -0x1

    #@3
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@5
    .line 662
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    .line 663
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    const/16 v3, 0x8

    #@11
    if-eq v2, v3, :cond_0

    #@13
    .line 664
    return v4

    #@14
    .line 661
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@16
    goto :goto_0

    #@17
    .line 667
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x1

    #@18
    return v2
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1405
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    #@4
    move-result v0

    #@5
    .line 1406
    const/high16 v2, 0x40000000    # 2.0f

    #@7
    .line 1405
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v4

    #@b
    .line 1407
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 1408
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 1409
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v0

    #@16
    const/16 v2, 0x8

    #@18
    if-eq v0, v2, :cond_0

    #@1a
    .line 1410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@20
    .line 1412
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@22
    const/4 v2, -0x1

    #@23
    if-ne v0, v2, :cond_0

    #@25
    .line 1415
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@27
    .line 1416
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@2a
    move-result v0

    #@2b
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@2d
    move-object v0, p0

    #@2e
    move v2, p2

    #@2f
    move v5, v3

    #@30
    .line 1419
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@33
    .line 1420
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@35
    .line 1407
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1401
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 980
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@4
    move-result v0

    #@5
    .line 981
    const/high16 v4, 0x40000000    # 2.0f

    #@7
    .line 980
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v2

    #@b
    .line 982
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 983
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 984
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@15
    move-result v0

    #@16
    const/16 v4, 0x8

    #@18
    if-eq v0, v4, :cond_0

    #@1a
    .line 985
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@20
    .line 987
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@22
    const/4 v4, -0x1

    #@23
    if-ne v0, v4, :cond_0

    #@25
    .line 990
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@27
    .line 991
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@2a
    move-result v0

    #@2b
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@2d
    move-object v0, p0

    #@2e
    move v4, p2

    #@2f
    move v5, v3

    #@30
    .line 994
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@33
    .line 995
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@35
    .line 982
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@37
    goto :goto_0

    #@38
    .line 978
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 379
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v1, v2, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@9
    .line 380
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 381
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@12
    move-result v2

    #@13
    const/16 v3, 0x8

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 382
    return-object v0

    #@18
    .line 379
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 385
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 1743
    add-int v0, p2, p4

    #@2
    add-int v1, p3, p5

    #@4
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@7
    .line 1742
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1846
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@3
    move-result v1

    #@4
    .line 390
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    #@7
    move-result v3

    #@8
    .line 391
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@b
    .line 392
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 394
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v6

    #@15
    const/16 v7, 0x8

    #@17
    if-eq v6, v7, :cond_0

    #@19
    .line 395
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@25
    .line 398
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    #@27
    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@2a
    move-result v6

    #@2b
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2d
    add-int v5, v6, v7

    #@2f
    .line 403
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@32
    .line 391
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 401
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@38
    move-result v6

    #@39
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@3b
    sub-int/2addr v6, v7

    #@3c
    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@3e
    sub-int v5, v6, v7

    #@40
    .restart local v5    # "position":I
    goto :goto_1

    #@41
    .line 408
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_3

    #@47
    .line 409
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    #@4a
    move-result-object v0

    #@4b
    .line 411
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    #@4d
    .line 412
    if-eqz v3, :cond_4

    #@4f
    .line 413
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    #@52
    move-result v5

    #@53
    .line 425
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@56
    .line 388
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    #@57
    .line 415
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    #@5a
    move-result v6

    #@5b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    #@5e
    move-result v7

    #@5f
    sub-int/2addr v6, v7

    #@60
    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@62
    sub-int v5, v6, v7

    #@64
    .restart local v5    # "position":I
    goto :goto_2

    #@65
    .line 418
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@6b
    .line 419
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    #@6d
    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@70
    move-result v6

    #@71
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@73
    sub-int/2addr v6, v7

    #@74
    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@76
    sub-int v5, v6, v7

    #@78
    .restart local v5    # "position":I
    goto :goto_2

    #@79
    .line 422
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@7c
    move-result v6

    #@7d
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@7f
    add-int v5, v6, v7

    #@81
    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@3
    move-result v2

    #@4
    .line 349
    .local v2, "count":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@7
    .line 350
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 352
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@10
    move-result v6

    #@11
    const/16 v7, 0x8

    #@13
    if-eq v6, v7, :cond_0

    #@15
    .line 353
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_0

    #@1b
    .line 354
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@21
    .line 355
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@24
    move-result v6

    #@25
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@27
    sub-int/2addr v6, v7

    #@28
    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@2a
    sub-int v5, v6, v7

    #@2c
    .line 356
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@2f
    .line 349
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 361
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 362
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    #@3b
    move-result-object v1

    #@3c
    .line 363
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    #@3d
    .line 364
    .local v0, "bottom":I
    if-nez v1, :cond_3

    #@3f
    .line 365
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    #@42
    move-result v6

    #@43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    #@46
    move-result v7

    #@47
    sub-int/2addr v6, v7

    #@48
    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@4a
    sub-int v0, v6, v7

    #@4c
    .line 370
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@4f
    .line 347
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    #@50
    .line 367
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@56
    .line 368
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@59
    move-result v6

    #@5a
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@5c
    add-int v0, v6, v7

    #@5e
    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@8
    add-int/2addr v1, v2

    #@9
    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    #@10
    move-result v3

    #@11
    sub-int/2addr v2, v3

    #@12
    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@14
    sub-int/2addr v2, v3

    #@15
    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@17
    add-int/2addr v3, p2

    #@18
    .line 430
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 432
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    .line 429
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@8
    add-int/2addr v1, v2

    #@9
    .line 437
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@b
    add-int/2addr v2, p2

    #@c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    #@f
    move-result v3

    #@10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    #@13
    move-result v4

    #@14
    sub-int/2addr v3, v4

    #@15
    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@17
    sub-int/2addr v3, v4

    #@18
    .line 436
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 438
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    .line 435
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1857
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1858
    const-string/jumbo v0, "layout:baselineAligned"

    #@6
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 1859
    const-string/jumbo v0, "layout:baselineAlignedChildIndex"

    #@e
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 1860
    const-string/jumbo v0, "measurement:baselineChildTop"

    #@16
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1b
    .line 1861
    const-string/jumbo v0, "measurement:orientation"

    #@1e
    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@23
    .line 1862
    const-string/jumbo v0, "measurement:gravity"

    #@26
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2b
    .line 1863
    const-string/jumbo v0, "measurement:totalLength"

    #@2e
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@33
    .line 1864
    const-string/jumbo v0, "layout:totalLength"

    #@36
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@3b
    .line 1865
    const-string/jumbo v0, "layout:useLargestChild"

    #@3e
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@43
    .line 1856
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 1828
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 1829
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1830
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@7
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@a
    return-object v0

    #@b
    .line 1831
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@d
    const/4 v1, 0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 1832
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@16
    return-object v0

    #@17
    .line 1834
    :cond_1
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1815
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1838
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1816
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1839
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1851
    const-class v0, Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 498
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@3
    if-gez v5, :cond_0

    #@5
    .line 499
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 502
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@d
    move-result v5

    #@e
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@10
    if-gt v5, v6, :cond_1

    #@12
    .line 503
    new-instance v5, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    #@17
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v5

    #@1b
    .line 507
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@1d
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 508
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@24
    move-result v1

    #@25
    .line 510
    .local v1, "childBaseline":I
    if-ne v1, v7, :cond_3

    #@27
    .line 511
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@29
    if-nez v5, :cond_2

    #@2b
    .line 513
    return v7

    #@2c
    .line 517
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    #@31
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v5

    #@35
    .line 527
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@37
    .line 529
    .local v2, "childTop":I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@39
    const/4 v6, 0x1

    #@3a
    if-ne v5, v6, :cond_4

    #@3c
    .line 530
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@3e
    and-int/lit8 v4, v5, 0x70

    #@40
    .line 531
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    #@42
    if-eq v4, v5, :cond_4

    #@44
    .line 532
    sparse-switch v4, :sswitch_data_0

    #@47
    .line 545
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    #@4d
    .line 546
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@4f
    add-int/2addr v5, v2

    #@50
    add-int/2addr v5, v1

    #@51
    return v5

    #@52
    .line 534
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    #@54
    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    #@56
    sub-int/2addr v5, v6

    #@57
    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@59
    sub-int/2addr v5, v6

    #@5a
    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5c
    sub-int v2, v5, v6

    #@5e
    .line 535
    goto :goto_0

    #@5f
    .line 538
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    #@61
    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    #@63
    sub-int/2addr v5, v6

    #@64
    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@66
    sub-int/2addr v5, v6

    #@67
    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@69
    sub-int/2addr v5, v6

    #@6a
    .line 539
    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@6c
    .line 538
    sub-int/2addr v5, v6

    #@6d
    div-int/lit8 v5, v5, 0x2

    #@6f
    add-int/2addr v2, v5

    #@70
    .line 540
    goto :goto_0

    #@71
    .line 532
    nop

    #@72
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    #@0
    .prologue
    .line 555
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@2
    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1435
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    #@0
    .prologue
    .line 322
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@2
    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    #@0
    .prologue
    .line 331
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@2
    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1477
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1489
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOrientation()I
    .locals 1

    #@0
    .prologue
    .line 1767
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    return v0
.end method

.method public getShowDividers()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@2
    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    #@0
    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getWeightSum()F
    .locals 1

    #@0
    .prologue
    .line 607
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@2
    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 644
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@5
    move-result v3

    #@6
    if-ne p1, v3, :cond_1

    #@8
    .line 646
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@a
    and-int/lit8 v3, v3, 0x4

    #@c
    if-eqz v3, :cond_0

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    move v1, v2

    #@10
    goto :goto_0

    #@11
    .line 648
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    #@14
    move-result v0

    #@15
    .line 649
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_3

    #@17
    .line 651
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@19
    and-int/lit8 v3, v3, 0x1

    #@1b
    if-eqz v3, :cond_2

    #@1d
    :goto_1
    return v1

    #@1e
    :cond_2
    move v1, v2

    #@1f
    goto :goto_1

    #@20
    .line 653
    :cond_3
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@22
    and-int/lit8 v3, v3, 0x2

    #@24
    if-eqz v3, :cond_4

    #@26
    :goto_2
    return v1

    #@27
    :cond_4
    move v1, v2

    #@28
    goto :goto_2
.end method

.method public isBaselineAligned()Z
    .locals 1

    #@0
    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@2
    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 476
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@2
    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 1619
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    #@3
    move-result v20

    #@4
    .line 1620
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@8
    move/from16 v27, v0

    #@a
    .line 1626
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    #@c
    .line 1627
    .local v18, "height":I
    move-object/from16 v0, p0

    #@e
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@10
    sub-int v10, v18, v2

    #@12
    .line 1630
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    #@14
    move-object/from16 v0, p0

    #@16
    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@18
    sub-int v13, v2, v4

    #@1a
    .line 1632
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@1d
    move-result v14

    #@1e
    .line 1634
    .local v14, "count":I
    move-object/from16 v0, p0

    #@20
    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@22
    const v4, 0x800007

    #@25
    and-int v23, v2, v4

    #@27
    .line 1635
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    #@29
    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@2b
    and-int/lit8 v26, v2, 0x70

    #@2d
    .line 1637
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    #@2f
    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@31
    .line 1639
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@35
    move-object/from16 v24, v0

    #@37
    .line 1640
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@3b
    move-object/from16 v25, v0

    #@3d
    .line 1642
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    #@40
    move-result v21

    #@41
    .line 1643
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    #@43
    move/from16 v1, v21

    #@45
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@48
    move-result v2

    #@49
    sparse-switch v2, :sswitch_data_0

    #@4c
    .line 1656
    move-object/from16 v0, p0

    #@4e
    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@50
    .line 1660
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    #@52
    .line 1661
    .local v28, "start":I
    const/16 v16, 0x1

    #@54
    .line 1663
    .local v16, "dir":I
    if-eqz v20, :cond_0

    #@56
    .line 1664
    add-int/lit8 v28, v14, -0x1

    #@58
    .line 1665
    const/16 v16, -0x1

    #@5a
    .line 1668
    :cond_0
    const/16 v19, 0x0

    #@5c
    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    #@5e
    if-ge v0, v14, :cond_7

    #@60
    .line 1669
    mul-int v2, v16, v19

    #@62
    add-int v11, v28, v2

    #@64
    .line 1670
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@69
    move-result-object v3

    #@6a
    .line 1672
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    #@6c
    .line 1673
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@71
    move-result v2

    #@72
    add-int/2addr v12, v2

    #@73
    .line 1668
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    #@75
    goto :goto_1

    #@76
    .line 1646
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    move-object/from16 v0, p0

    #@78
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@7a
    add-int v2, v2, p3

    #@7c
    sub-int v2, v2, p1

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@82
    sub-int v12, v2, v4

    #@84
    .line 1647
    .restart local v12    # "childLeft":I
    goto :goto_0

    #@85
    .line 1651
    .end local v12    # "childLeft":I
    :sswitch_1
    move-object/from16 v0, p0

    #@87
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@89
    sub-int v4, p3, p1

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@8f
    move/from16 v29, v0

    #@91
    sub-int v4, v4, v29

    #@93
    div-int/lit8 v4, v4, 0x2

    #@95
    add-int v12, v2, v4

    #@97
    .line 1652
    .restart local v12    # "childLeft":I
    goto :goto_0

    #@98
    .line 1674
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@9b
    move-result v2

    #@9c
    const/16 v4, 0x8

    #@9e
    if-eq v2, v4, :cond_1

    #@a0
    .line 1675
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@a3
    move-result v6

    #@a4
    .line 1676
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@a7
    move-result v7

    #@a8
    .line 1677
    .local v7, "childHeight":I
    const/4 v9, -0x1

    #@a9
    .line 1680
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ac
    move-result-object v22

    #@ad
    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    #@af
    .line 1682
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    #@b1
    move-object/from16 v0, v22

    #@b3
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@b5
    const/4 v4, -0x1

    #@b6
    if-eq v2, v4, :cond_3

    #@b8
    .line 1683
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    #@bb
    move-result v9

    #@bc
    .line 1686
    :cond_3
    move-object/from16 v0, v22

    #@be
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@c0
    move/from16 v17, v0

    #@c2
    .line 1687
    .local v17, "gravity":I
    if-gez v17, :cond_4

    #@c4
    .line 1688
    move/from16 v17, v26

    #@c6
    .line 1691
    :cond_4
    and-int/lit8 v2, v17, 0x70

    #@c8
    sparse-switch v2, :sswitch_data_1

    #@cb
    .line 1723
    move/from16 v5, v27

    #@cd
    .line 1727
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@cf
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@d2
    move-result v2

    #@d3
    if-eqz v2, :cond_6

    #@d5
    .line 1728
    move-object/from16 v0, p0

    #@d7
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@d9
    add-int/2addr v12, v2

    #@da
    .line 1731
    :cond_6
    move-object/from16 v0, v22

    #@dc
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@de
    add-int/2addr v12, v2

    #@df
    .line 1732
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    #@e4
    move-result v2

    #@e5
    add-int v4, v12, v2

    #@e7
    move-object/from16 v2, p0

    #@e9
    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    #@ec
    .line 1734
    move-object/from16 v0, v22

    #@ee
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@f0
    add-int/2addr v2, v6

    #@f1
    .line 1735
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@f6
    move-result v4

    #@f7
    .line 1734
    add-int/2addr v2, v4

    #@f8
    add-int/2addr v12, v2

    #@f9
    .line 1737
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@fe
    move-result v2

    #@ff
    add-int v19, v19, v2

    #@101
    goto/16 :goto_2

    #@103
    .line 1693
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    #@105
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@107
    add-int v5, v27, v2

    #@109
    .line 1694
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    #@10a
    if-eq v9, v2, :cond_5

    #@10c
    .line 1695
    const/4 v2, 0x1

    #@10d
    aget v2, v24, v2

    #@10f
    sub-int/2addr v2, v9

    #@110
    add-int/2addr v5, v2

    #@111
    goto :goto_3

    #@112
    .line 1711
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    #@114
    div-int/lit8 v2, v2, 0x2

    #@116
    add-int v2, v2, v27

    #@118
    .line 1712
    move-object/from16 v0, v22

    #@11a
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@11c
    .line 1711
    add-int/2addr v2, v4

    #@11d
    .line 1712
    move-object/from16 v0, v22

    #@11f
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@121
    .line 1711
    sub-int v5, v2, v4

    #@123
    .line 1713
    .restart local v5    # "childTop":I
    goto :goto_3

    #@124
    .line 1716
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    #@126
    move-object/from16 v0, v22

    #@128
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@12a
    sub-int v5, v2, v4

    #@12c
    .line 1717
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    #@12d
    if-eq v9, v2, :cond_5

    #@12f
    .line 1718
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@132
    move-result v2

    #@133
    sub-int v15, v2, v9

    #@135
    .line 1719
    .local v15, "descent":I
    const/4 v2, 0x2

    #@136
    aget v2, v25, v2

    #@138
    sub-int/2addr v2, v15

    #@139
    sub-int/2addr v5, v2

    #@13a
    goto :goto_3

    #@13b
    .line 1618
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    #@13c
    .line 1643
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    #@146
    .line 1691
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 1514
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@4
    move/from16 v18, v0

    #@6
    .line 1520
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    #@8
    .line 1521
    .local v19, "width":I
    move-object/from16 v0, p0

    #@a
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@c
    sub-int v8, v19, v1

    #@e
    .line 1524
    .local v8, "childRight":I
    sub-int v1, v19, v18

    #@10
    move-object/from16 v0, p0

    #@12
    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@14
    sub-int v9, v1, v4

    #@16
    .line 1526
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@19
    move-result v11

    #@1a
    .line 1528
    .local v11, "count":I
    move-object/from16 v0, p0

    #@1c
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@1e
    and-int/lit8 v16, v1, 0x70

    #@20
    .line 1529
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    #@22
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@24
    const v4, 0x800007

    #@27
    and-int v17, v1, v4

    #@29
    .line 1531
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    #@2c
    .line 1544
    move-object/from16 v0, p0

    #@2e
    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@30
    .line 1548
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    #@31
    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    #@33
    .line 1549
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@38
    move-result-object v2

    #@39
    .line 1550
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    #@3b
    .line 1551
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@40
    move-result v1

    #@41
    add-int/2addr v10, v1

    #@42
    .line 1548
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    #@44
    goto :goto_1

    #@45
    .line 1534
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    move-object/from16 v0, p0

    #@47
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@49
    add-int v1, v1, p4

    #@4b
    sub-int v1, v1, p2

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@51
    sub-int v10, v1, v4

    #@53
    .line 1535
    .restart local v10    # "childTop":I
    goto :goto_0

    #@54
    .line 1539
    .end local v10    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    #@56
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@58
    sub-int v4, p4, p2

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5e
    move/from16 v20, v0

    #@60
    sub-int v4, v4, v20

    #@62
    div-int/lit8 v4, v4, 0x2

    #@64
    add-int v10, v1, v4

    #@66
    .line 1540
    .restart local v10    # "childTop":I
    goto :goto_0

    #@67
    .line 1552
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@6a
    move-result v1

    #@6b
    const/16 v4, 0x8

    #@6d
    if-eq v1, v4, :cond_0

    #@6f
    .line 1553
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@72
    move-result v5

    #@73
    .line 1554
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@76
    move-result v6

    #@77
    .line 1557
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7a
    move-result-object v15

    #@7b
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    #@7d
    .line 1559
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@7f
    .line 1560
    .local v12, "gravity":I
    if-gez v12, :cond_2

    #@81
    .line 1561
    move/from16 v12, v17

    #@83
    .line 1563
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    #@86
    move-result v14

    #@87
    .line 1564
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@8a
    move-result v7

    #@8b
    .line 1565
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    #@8d
    sparse-switch v1, :sswitch_data_1

    #@90
    .line 1577
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@92
    add-int v3, v18, v1

    #@94
    .line 1581
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_3

    #@9c
    .line 1582
    move-object/from16 v0, p0

    #@9e
    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@a0
    add-int/2addr v10, v1

    #@a1
    .line 1585
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@a3
    add-int/2addr v10, v1

    #@a4
    .line 1586
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    #@a9
    move-result v1

    #@aa
    add-int v4, v10, v1

    #@ac
    move-object/from16 v1, p0

    #@ae
    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    #@b1
    .line 1588
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@b3
    add-int/2addr v1, v6

    #@b4
    move-object/from16 v0, p0

    #@b6
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@b9
    move-result v4

    #@ba
    add-int/2addr v1, v4

    #@bb
    add-int/2addr v10, v1

    #@bc
    .line 1590
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@c1
    move-result v1

    #@c2
    add-int/2addr v13, v1

    #@c3
    goto/16 :goto_2

    #@c5
    .line 1567
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    #@c7
    div-int/lit8 v1, v1, 0x2

    #@c9
    add-int v1, v1, v18

    #@cb
    .line 1568
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@cd
    .line 1567
    add-int/2addr v1, v4

    #@ce
    .line 1568
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@d0
    .line 1567
    sub-int v3, v1, v4

    #@d2
    .line 1569
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@d3
    .line 1572
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    #@d5
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@d7
    sub-int v3, v1, v4

    #@d9
    .line 1573
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@da
    .line 1513
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    #@db
    .line 1531
    nop

    #@dc
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    #@e6
    .line 1565
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move v5, p6

    #@6
    .line 1465
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@9
    .line 1464
    return-void
.end method

.method measureHorizontal(II)V
    .locals 48
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1013
    const/4 v3, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5
    .line 1014
    const/16 v36, 0x0

    #@7
    .line 1015
    .local v36, "maxHeight":I
    const/16 v18, 0x0

    #@9
    .line 1016
    .local v18, "childState":I
    const/4 v11, 0x0

    #@a
    .line 1017
    .local v11, "alternativeMaxHeight":I
    const/16 v44, 0x0

    #@c
    .line 1018
    .local v44, "weightedMaxHeight":I
    const/4 v10, 0x1

    #@d
    .line 1019
    .local v10, "allFillParent":Z
    const/16 v41, 0x0

    #@f
    .line 1021
    .local v41, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@12
    move-result v20

    #@13
    .line 1023
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@16
    move-result v45

    #@17
    .line 1024
    .local v45, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1a
    move-result v26

    #@1b
    .line 1026
    .local v26, "heightMode":I
    const/16 v32, 0x0

    #@1d
    .line 1027
    .local v32, "matchHeight":Z
    const/16 v39, 0x0

    #@1f
    .line 1029
    .local v39, "skippedMeasure":Z
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@23
    if-eqz v3, :cond_0

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@29
    if-nez v3, :cond_1

    #@2b
    .line 1030
    :cond_0
    const/4 v3, 0x4

    #@2c
    new-array v3, v3, [I

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@32
    .line 1031
    const/4 v3, 0x4

    #@33
    new-array v3, v3, [I

    #@35
    move-object/from16 v0, p0

    #@37
    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@39
    .line 1034
    :cond_1
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@3d
    move-object/from16 v34, v0

    #@3f
    .line 1035
    .local v34, "maxAscent":[I
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@43
    move-object/from16 v35, v0

    #@45
    .line 1037
    .local v35, "maxDescent":[I
    const/4 v3, -0x1

    #@46
    const/4 v6, 0x3

    #@47
    aput v3, v34, v6

    #@49
    const/4 v3, -0x1

    #@4a
    const/4 v6, 0x2

    #@4b
    aput v3, v34, v6

    #@4d
    const/4 v3, -0x1

    #@4e
    const/4 v6, 0x1

    #@4f
    aput v3, v34, v6

    #@51
    const/4 v3, -0x1

    #@52
    const/4 v6, 0x0

    #@53
    aput v3, v34, v6

    #@55
    .line 1038
    const/4 v3, -0x1

    #@56
    const/4 v6, 0x3

    #@57
    aput v3, v35, v6

    #@59
    const/4 v3, -0x1

    #@5a
    const/4 v6, 0x2

    #@5b
    aput v3, v35, v6

    #@5d
    const/4 v3, -0x1

    #@5e
    const/4 v6, 0x1

    #@5f
    aput v3, v35, v6

    #@61
    const/4 v3, -0x1

    #@62
    const/4 v6, 0x0

    #@63
    aput v3, v35, v6

    #@65
    .line 1040
    move-object/from16 v0, p0

    #@67
    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@69
    .line 1041
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    #@6b
    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@6d
    move/from16 v42, v0

    #@6f
    .line 1043
    .local v42, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@71
    move/from16 v0, v45

    #@73
    if-ne v0, v3, :cond_2

    #@75
    const/16 v28, 0x1

    #@77
    .line 1045
    .local v28, "isExactly":Z
    :goto_0
    const/high16 v29, -0x80000000

    #@79
    .line 1048
    .local v29, "largestChildWidth":I
    const/4 v5, 0x0

    #@7a
    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    #@7c
    if-ge v5, v0, :cond_15

    #@7e
    .line 1049
    move-object/from16 v0, p0

    #@80
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@83
    move-result-object v4

    #@84
    .line 1051
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    #@86
    .line 1052
    move-object/from16 v0, p0

    #@88
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@8a
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@8f
    move-result v6

    #@90
    add-int/2addr v3, v6

    #@91
    move-object/from16 v0, p0

    #@93
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@95
    .line 1048
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@97
    goto :goto_1

    #@98
    .line 1043
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v28    # "isExactly":Z
    .end local v29    # "largestChildWidth":I
    :cond_2
    const/16 v28, 0x0

    #@9a
    .restart local v28    # "isExactly":Z
    goto :goto_0

    #@9b
    .line 1056
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v29    # "largestChildWidth":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@9e
    move-result v3

    #@9f
    const/16 v6, 0x8

    #@a1
    if-ne v3, v6, :cond_4

    #@a3
    .line 1057
    move-object/from16 v0, p0

    #@a5
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@a8
    move-result v3

    #@a9
    add-int/2addr v5, v3

    #@aa
    .line 1058
    goto :goto_2

    #@ab
    .line 1061
    :cond_4
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@b0
    move-result v3

    #@b1
    if-eqz v3, :cond_5

    #@b3
    .line 1062
    move-object/from16 v0, p0

    #@b5
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@bb
    add-int/2addr v3, v6

    #@bc
    move-object/from16 v0, p0

    #@be
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@c0
    .line 1066
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c3
    move-result-object v30

    #@c4
    .line 1065
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    #@c6
    .line 1068
    .local v30, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    #@c8
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@ca
    add-float v41, v41, v3

    #@cc
    .line 1070
    const/high16 v3, 0x40000000    # 2.0f

    #@ce
    move/from16 v0, v45

    #@d0
    if-ne v0, v3, :cond_b

    #@d2
    move-object/from16 v0, v30

    #@d4
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@d6
    if-nez v3, :cond_b

    #@d8
    move-object/from16 v0, v30

    #@da
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@dc
    const/4 v6, 0x0

    #@dd
    cmpl-float v3, v3, v6

    #@df
    if-lez v3, :cond_b

    #@e1
    .line 1074
    if-eqz v28, :cond_9

    #@e3
    .line 1075
    move-object/from16 v0, p0

    #@e5
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@e7
    move-object/from16 v0, v30

    #@e9
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@eb
    move-object/from16 v0, v30

    #@ed
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@ef
    add-int/2addr v6, v7

    #@f0
    add-int/2addr v3, v6

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@f5
    .line 1087
    :goto_3
    if-eqz v13, :cond_a

    #@f7
    .line 1089
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@fa
    move-result v3

    #@fb
    const/4 v6, 0x0

    #@fc
    .line 1088
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@ff
    move-result v24

    #@100
    .line 1091
    .local v24, "freeWidthSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@103
    move-result v3

    #@104
    const/4 v6, 0x0

    #@105
    .line 1090
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@108
    move-result v23

    #@109
    .line 1092
    .local v23, "freeHeightSpec":I
    move/from16 v0, v24

    #@10b
    move/from16 v1, v23

    #@10d
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    #@110
    .line 1135
    .end local v23    # "freeHeightSpec":I
    .end local v24    # "freeWidthSpec":I
    :cond_6
    :goto_4
    const/16 v33, 0x0

    #@112
    .line 1136
    .local v33, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@114
    move/from16 v0, v26

    #@116
    if-eq v0, v3, :cond_7

    #@118
    move-object/from16 v0, v30

    #@11a
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@11c
    const/4 v6, -0x1

    #@11d
    if-ne v3, v6, :cond_7

    #@11f
    .line 1140
    const/16 v32, 0x1

    #@121
    .line 1141
    const/16 v33, 0x1

    #@123
    .line 1144
    :cond_7
    move-object/from16 v0, v30

    #@125
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@127
    move-object/from16 v0, v30

    #@129
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@12b
    add-int v31, v3, v6

    #@12d
    .line 1145
    .local v31, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@130
    move-result v3

    #@131
    add-int v16, v3, v31

    #@133
    .line 1146
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@136
    move-result v3

    #@137
    move/from16 v0, v18

    #@139
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@13c
    move-result v18

    #@13d
    .line 1148
    if-eqz v13, :cond_8

    #@13f
    .line 1149
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    #@142
    move-result v14

    #@143
    .line 1150
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    #@144
    if-eq v14, v3, :cond_8

    #@146
    .line 1153
    move-object/from16 v0, v30

    #@148
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@14a
    if-gez v3, :cond_10

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@150
    :goto_5
    and-int/lit8 v25, v3, 0x70

    #@152
    .line 1155
    .local v25, "gravity":I
    shr-int/lit8 v3, v25, 0x4

    #@154
    and-int/lit8 v3, v3, -0x2

    #@156
    shr-int/lit8 v27, v3, 0x1

    #@158
    .line 1158
    .local v27, "index":I
    aget v3, v34, v27

    #@15a
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@15d
    move-result v3

    #@15e
    aput v3, v34, v27

    #@160
    .line 1159
    aget v3, v35, v27

    #@162
    sub-int v6, v16, v14

    #@164
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@167
    move-result v3

    #@168
    aput v3, v35, v27

    #@16a
    .line 1163
    .end local v14    # "childBaseline":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    :cond_8
    move/from16 v0, v36

    #@16c
    move/from16 v1, v16

    #@16e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@171
    move-result v36

    #@172
    .line 1165
    if-eqz v10, :cond_11

    #@174
    move-object/from16 v0, v30

    #@176
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@178
    const/4 v6, -0x1

    #@179
    if-ne v3, v6, :cond_11

    #@17b
    const/4 v10, 0x1

    #@17c
    .line 1166
    :goto_6
    move-object/from16 v0, v30

    #@17e
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@180
    const/4 v6, 0x0

    #@181
    cmpl-float v3, v3, v6

    #@183
    if-lez v3, :cond_13

    #@185
    .line 1172
    if-eqz v33, :cond_12

    #@187
    .line 1171
    .end local v31    # "margin":I
    :goto_7
    move/from16 v0, v44

    #@189
    move/from16 v1, v31

    #@18b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@18e
    move-result v44

    #@18f
    .line 1178
    :goto_8
    move-object/from16 v0, p0

    #@191
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@194
    move-result v3

    #@195
    add-int/2addr v5, v3

    #@196
    goto/16 :goto_2

    #@198
    .line 1077
    .end local v16    # "childHeight":I
    .end local v33    # "matchHeightLocally":Z
    :cond_9
    move-object/from16 v0, p0

    #@19a
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@19c
    move/from16 v40, v0

    #@19e
    .line 1079
    .local v40, "totalLength":I
    move-object/from16 v0, v30

    #@1a0
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@1a2
    .line 1078
    add-int v3, v3, v40

    #@1a4
    .line 1079
    move-object/from16 v0, v30

    #@1a6
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@1a8
    .line 1078
    add-int/2addr v3, v6

    #@1a9
    move/from16 v0, v40

    #@1ab
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@1ae
    move-result v3

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1b3
    goto/16 :goto_3

    #@1b5
    .line 1094
    .end local v40    # "totalLength":I
    :cond_a
    const/16 v39, 0x1

    #@1b7
    goto/16 :goto_4

    #@1b9
    .line 1097
    :cond_b
    const/high16 v37, -0x80000000

    #@1bb
    .line 1099
    .local v37, "oldWidth":I
    move-object/from16 v0, v30

    #@1bd
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1bf
    if-nez v3, :cond_c

    #@1c1
    move-object/from16 v0, v30

    #@1c3
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@1c5
    const/4 v6, 0x0

    #@1c6
    cmpl-float v3, v3, v6

    #@1c8
    if-lez v3, :cond_c

    #@1ca
    .line 1104
    const/16 v37, 0x0

    #@1cc
    .line 1105
    const/4 v3, -0x2

    #@1cd
    move-object/from16 v0, v30

    #@1cf
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1d1
    .line 1113
    :cond_c
    const/4 v3, 0x0

    #@1d2
    cmpl-float v3, v41, v3

    #@1d4
    if-nez v3, :cond_e

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1da
    .line 1114
    :goto_9
    const/4 v9, 0x0

    #@1db
    move-object/from16 v3, p0

    #@1dd
    move/from16 v6, p1

    #@1df
    move/from16 v8, p2

    #@1e1
    .line 1112
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@1e4
    .line 1116
    const/high16 v3, -0x80000000

    #@1e6
    move/from16 v0, v37

    #@1e8
    if-eq v0, v3, :cond_d

    #@1ea
    .line 1117
    move/from16 v0, v37

    #@1ec
    move-object/from16 v1, v30

    #@1ee
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1f0
    .line 1120
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@1f3
    move-result v19

    #@1f4
    .line 1121
    .local v19, "childWidth":I
    if-eqz v28, :cond_f

    #@1f6
    .line 1122
    move-object/from16 v0, p0

    #@1f8
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1fa
    move-object/from16 v0, v30

    #@1fc
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@1fe
    add-int v6, v6, v19

    #@200
    move-object/from16 v0, v30

    #@202
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@204
    add-int/2addr v6, v7

    #@205
    .line 1123
    move-object/from16 v0, p0

    #@207
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@20a
    move-result v7

    #@20b
    .line 1122
    add-int/2addr v6, v7

    #@20c
    add-int/2addr v3, v6

    #@20d
    move-object/from16 v0, p0

    #@20f
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@211
    .line 1130
    :goto_a
    if-eqz v42, :cond_6

    #@213
    .line 1131
    move/from16 v0, v19

    #@215
    move/from16 v1, v29

    #@217
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@21a
    move-result v29

    #@21b
    goto/16 :goto_4

    #@21d
    .line 1113
    .end local v19    # "childWidth":I
    :cond_e
    const/4 v7, 0x0

    #@21e
    goto :goto_9

    #@21f
    .line 1125
    .restart local v19    # "childWidth":I
    :cond_f
    move-object/from16 v0, p0

    #@221
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@223
    move/from16 v40, v0

    #@225
    .line 1126
    .restart local v40    # "totalLength":I
    add-int v3, v40, v19

    #@227
    move-object/from16 v0, v30

    #@229
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@22b
    add-int/2addr v3, v6

    #@22c
    .line 1127
    move-object/from16 v0, v30

    #@22e
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@230
    .line 1126
    add-int/2addr v3, v6

    #@231
    .line 1127
    move-object/from16 v0, p0

    #@233
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@236
    move-result v6

    #@237
    .line 1126
    add-int/2addr v3, v6

    #@238
    move/from16 v0, v40

    #@23a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@23d
    move-result v3

    #@23e
    move-object/from16 v0, p0

    #@240
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@242
    goto :goto_a

    #@243
    .line 1153
    .end local v19    # "childWidth":I
    .end local v37    # "oldWidth":I
    .end local v40    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_10
    move-object/from16 v0, v30

    #@245
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@247
    goto/16 :goto_5

    #@249
    .line 1165
    .end local v14    # "childBaseline":I
    :cond_11
    const/4 v10, 0x0

    #@24a
    goto/16 :goto_6

    #@24c
    :cond_12
    move/from16 v31, v16

    #@24e
    .line 1172
    goto/16 :goto_7

    #@250
    .line 1175
    :cond_13
    if-eqz v33, :cond_14

    #@252
    .line 1174
    .end local v31    # "margin":I
    :goto_b
    move/from16 v0, v31

    #@254
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@257
    move-result v11

    #@258
    goto/16 :goto_8

    #@25a
    .restart local v31    # "margin":I
    :cond_14
    move/from16 v31, v16

    #@25c
    .line 1175
    goto :goto_b

    #@25d
    .line 1181
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "margin":I
    .end local v33    # "matchHeightLocally":Z
    :cond_15
    move-object/from16 v0, p0

    #@25f
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@261
    if-lez v3, :cond_16

    #@263
    move-object/from16 v0, p0

    #@265
    move/from16 v1, v20

    #@267
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@26a
    move-result v3

    #@26b
    if-eqz v3, :cond_16

    #@26d
    .line 1182
    move-object/from16 v0, p0

    #@26f
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@271
    move-object/from16 v0, p0

    #@273
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@275
    add-int/2addr v3, v6

    #@276
    move-object/from16 v0, p0

    #@278
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@27a
    .line 1187
    :cond_16
    const/4 v3, 0x1

    #@27b
    aget v3, v34, v3

    #@27d
    const/4 v6, -0x1

    #@27e
    if-ne v3, v6, :cond_17

    #@280
    .line 1188
    const/4 v3, 0x0

    #@281
    aget v3, v34, v3

    #@283
    const/4 v6, -0x1

    #@284
    if-eq v3, v6, :cond_1a

    #@286
    .line 1191
    :cond_17
    :goto_c
    const/4 v3, 0x3

    #@287
    aget v3, v34, v3

    #@289
    .line 1192
    const/4 v6, 0x0

    #@28a
    aget v6, v34, v6

    #@28c
    .line 1193
    const/4 v7, 0x1

    #@28d
    aget v7, v34, v7

    #@28f
    const/4 v8, 0x2

    #@290
    aget v8, v34, v8

    #@292
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@295
    move-result v7

    #@296
    .line 1192
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@299
    move-result v6

    #@29a
    .line 1191
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@29d
    move-result v12

    #@29e
    .line 1194
    .local v12, "ascent":I
    const/4 v3, 0x3

    #@29f
    aget v3, v35, v3

    #@2a1
    .line 1195
    const/4 v6, 0x0

    #@2a2
    aget v6, v35, v6

    #@2a4
    .line 1196
    const/4 v7, 0x1

    #@2a5
    aget v7, v35, v7

    #@2a7
    const/4 v8, 0x2

    #@2a8
    aget v8, v35, v8

    #@2aa
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@2ad
    move-result v7

    #@2ae
    .line 1195
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@2b1
    move-result v6

    #@2b2
    .line 1194
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@2b5
    move-result v22

    #@2b6
    .line 1197
    .local v22, "descent":I
    add-int v3, v12, v22

    #@2b8
    move/from16 v0, v36

    #@2ba
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@2bd
    move-result v36

    #@2be
    .line 1200
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_18
    if-eqz v42, :cond_1e

    #@2c0
    .line 1201
    const/high16 v3, -0x80000000

    #@2c2
    move/from16 v0, v45

    #@2c4
    if-eq v0, v3, :cond_19

    #@2c6
    if-nez v45, :cond_1e

    #@2c8
    .line 1202
    :cond_19
    const/4 v3, 0x0

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2cd
    .line 1204
    const/4 v5, 0x0

    #@2ce
    :goto_d
    move/from16 v0, v20

    #@2d0
    if-ge v5, v0, :cond_1e

    #@2d2
    .line 1205
    move-object/from16 v0, p0

    #@2d4
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@2d7
    move-result-object v4

    #@2d8
    .line 1207
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1b

    #@2da
    .line 1208
    move-object/from16 v0, p0

    #@2dc
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2de
    move-object/from16 v0, p0

    #@2e0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@2e3
    move-result v6

    #@2e4
    add-int/2addr v3, v6

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2e9
    .line 1204
    :goto_e
    add-int/lit8 v5, v5, 0x1

    #@2eb
    goto :goto_d

    #@2ec
    .line 1189
    .end local v4    # "child":Landroid/view/View;
    :cond_1a
    const/4 v3, 0x2

    #@2ed
    aget v3, v34, v3

    #@2ef
    const/4 v6, -0x1

    #@2f0
    if-ne v3, v6, :cond_17

    #@2f2
    .line 1190
    const/4 v3, 0x3

    #@2f3
    aget v3, v34, v3

    #@2f5
    const/4 v6, -0x1

    #@2f6
    if-eq v3, v6, :cond_18

    #@2f8
    goto :goto_c

    #@2f9
    .line 1212
    .restart local v4    # "child":Landroid/view/View;
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@2fc
    move-result v3

    #@2fd
    const/16 v6, 0x8

    #@2ff
    if-ne v3, v6, :cond_1c

    #@301
    .line 1213
    move-object/from16 v0, p0

    #@303
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@306
    move-result v3

    #@307
    add-int/2addr v5, v3

    #@308
    .line 1214
    goto :goto_e

    #@309
    .line 1218
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@30c
    move-result-object v30

    #@30d
    .line 1217
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    #@30f
    .line 1219
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v28, :cond_1d

    #@311
    .line 1220
    move-object/from16 v0, p0

    #@313
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@315
    move-object/from16 v0, v30

    #@317
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@319
    add-int v6, v6, v29

    #@31b
    move-object/from16 v0, v30

    #@31d
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@31f
    add-int/2addr v6, v7

    #@320
    .line 1221
    move-object/from16 v0, p0

    #@322
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@325
    move-result v7

    #@326
    .line 1220
    add-int/2addr v6, v7

    #@327
    add-int/2addr v3, v6

    #@328
    move-object/from16 v0, p0

    #@32a
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@32c
    goto :goto_e

    #@32d
    .line 1223
    :cond_1d
    move-object/from16 v0, p0

    #@32f
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@331
    move/from16 v40, v0

    #@333
    .line 1224
    .restart local v40    # "totalLength":I
    add-int v3, v40, v29

    #@335
    .line 1225
    move-object/from16 v0, v30

    #@337
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@339
    .line 1224
    add-int/2addr v3, v6

    #@33a
    .line 1225
    move-object/from16 v0, v30

    #@33c
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@33e
    .line 1224
    add-int/2addr v3, v6

    #@33f
    .line 1225
    move-object/from16 v0, p0

    #@341
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@344
    move-result v6

    #@345
    .line 1224
    add-int/2addr v3, v6

    #@346
    move/from16 v0, v40

    #@348
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@34b
    move-result v3

    #@34c
    move-object/from16 v0, p0

    #@34e
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@350
    goto :goto_e

    #@351
    .line 1231
    .end local v4    # "child":Landroid/view/View;
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "totalLength":I
    :cond_1e
    move-object/from16 v0, p0

    #@353
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@355
    move-object/from16 v0, p0

    #@357
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@359
    move-object/from16 v0, p0

    #@35b
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@35d
    add-int/2addr v6, v7

    #@35e
    add-int/2addr v3, v6

    #@35f
    move-object/from16 v0, p0

    #@361
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@363
    .line 1233
    move-object/from16 v0, p0

    #@365
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@367
    move/from16 v46, v0

    #@369
    .line 1236
    .local v46, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    #@36c
    move-result v3

    #@36d
    move/from16 v0, v46

    #@36f
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@372
    move-result v46

    #@373
    .line 1239
    const/4 v3, 0x0

    #@374
    move/from16 v0, v46

    #@376
    move/from16 v1, p1

    #@378
    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@37b
    move-result v47

    #@37c
    .line 1240
    .local v47, "widthSizeAndState":I
    const v3, 0xffffff

    #@37f
    and-int v46, v47, v3

    #@381
    .line 1245
    move-object/from16 v0, p0

    #@383
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@385
    sub-int v21, v46, v3

    #@387
    .line 1246
    .local v21, "delta":I
    if-nez v39, :cond_1f

    #@389
    if-eqz v21, :cond_34

    #@38b
    const/4 v3, 0x0

    #@38c
    cmpl-float v3, v41, v3

    #@38e
    if-lez v3, :cond_34

    #@390
    .line 1247
    :cond_1f
    move-object/from16 v0, p0

    #@392
    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@394
    const/4 v6, 0x0

    #@395
    cmpl-float v3, v3, v6

    #@397
    if-lez v3, :cond_21

    #@399
    move-object/from16 v0, p0

    #@39b
    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@39d
    move/from16 v43, v0

    #@39f
    .line 1249
    .local v43, "weightSum":F
    :goto_f
    const/4 v3, -0x1

    #@3a0
    const/4 v6, 0x3

    #@3a1
    aput v3, v34, v6

    #@3a3
    const/4 v3, -0x1

    #@3a4
    const/4 v6, 0x2

    #@3a5
    aput v3, v34, v6

    #@3a7
    const/4 v3, -0x1

    #@3a8
    const/4 v6, 0x1

    #@3a9
    aput v3, v34, v6

    #@3ab
    const/4 v3, -0x1

    #@3ac
    const/4 v6, 0x0

    #@3ad
    aput v3, v34, v6

    #@3af
    .line 1250
    const/4 v3, -0x1

    #@3b0
    const/4 v6, 0x3

    #@3b1
    aput v3, v35, v6

    #@3b3
    const/4 v3, -0x1

    #@3b4
    const/4 v6, 0x2

    #@3b5
    aput v3, v35, v6

    #@3b7
    const/4 v3, -0x1

    #@3b8
    const/4 v6, 0x1

    #@3b9
    aput v3, v35, v6

    #@3bb
    const/4 v3, -0x1

    #@3bc
    const/4 v6, 0x0

    #@3bd
    aput v3, v35, v6

    #@3bf
    .line 1251
    const/16 v36, -0x1

    #@3c1
    .line 1253
    const/4 v3, 0x0

    #@3c2
    move-object/from16 v0, p0

    #@3c4
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@3c6
    .line 1255
    const/4 v5, 0x0

    #@3c7
    :goto_10
    move/from16 v0, v20

    #@3c9
    if-ge v5, v0, :cond_2e

    #@3cb
    .line 1256
    move-object/from16 v0, p0

    #@3cd
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@3d0
    move-result-object v4

    #@3d1
    .line 1258
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_20

    #@3d3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@3d6
    move-result v3

    #@3d7
    const/16 v6, 0x8

    #@3d9
    if-ne v3, v6, :cond_22

    #@3db
    .line 1255
    :cond_20
    :goto_11
    add-int/lit8 v5, v5, 0x1

    #@3dd
    goto :goto_10

    #@3de
    .line 1247
    .end local v4    # "child":Landroid/view/View;
    .end local v43    # "weightSum":F
    :cond_21
    move/from16 v43, v41

    #@3e0
    .restart local v43    # "weightSum":F
    goto :goto_f

    #@3e1
    .line 1263
    .restart local v4    # "child":Landroid/view/View;
    :cond_22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3e4
    move-result-object v30

    #@3e5
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    #@3e7
    .line 1265
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    #@3e9
    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@3eb
    .line 1266
    .local v15, "childExtra":F
    const/4 v3, 0x0

    #@3ec
    cmpl-float v3, v15, v3

    #@3ee
    if-lez v3, :cond_25

    #@3f0
    .line 1268
    move/from16 v0, v21

    #@3f2
    int-to-float v3, v0

    #@3f3
    mul-float/2addr v3, v15

    #@3f4
    div-float v3, v3, v43

    #@3f6
    float-to-int v0, v3

    #@3f7
    move/from16 v38, v0

    #@3f9
    .line 1269
    .local v38, "share":I
    sub-float v43, v43, v15

    #@3fb
    .line 1270
    sub-int v21, v21, v38

    #@3fd
    .line 1274
    move-object/from16 v0, p0

    #@3ff
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@401
    move-object/from16 v0, p0

    #@403
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@405
    add-int/2addr v3, v6

    #@406
    move-object/from16 v0, v30

    #@408
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@40a
    add-int/2addr v3, v6

    #@40b
    move-object/from16 v0, v30

    #@40d
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@40f
    add-int/2addr v3, v6

    #@410
    .line 1275
    move-object/from16 v0, v30

    #@412
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@414
    .line 1272
    move/from16 v0, p2

    #@416
    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    #@419
    move-result v17

    #@41a
    .line 1279
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v30

    #@41c
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@41e
    if-nez v3, :cond_23

    #@420
    const/high16 v3, 0x40000000    # 2.0f

    #@422
    move/from16 v0, v45

    #@424
    if-eq v0, v3, :cond_26

    #@426
    .line 1282
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@429
    move-result v3

    #@42a
    add-int v19, v3, v38

    #@42c
    .line 1283
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_24

    #@42e
    .line 1284
    const/16 v19, 0x0

    #@430
    .line 1288
    :cond_24
    const/high16 v3, 0x40000000    # 2.0f

    #@432
    move/from16 v0, v19

    #@434
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@437
    move-result v3

    #@438
    .line 1287
    move/from16 v0, v17

    #@43a
    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    #@43d
    .line 1299
    .end local v19    # "childWidth":I
    .end local v38    # "share":I
    :goto_12
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@440
    move-result v3

    #@441
    const/high16 v6, -0x1000000

    #@443
    and-int/2addr v3, v6

    #@444
    .line 1298
    move/from16 v0, v18

    #@446
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@449
    move-result v18

    #@44a
    .line 1302
    .end local v17    # "childHeightMeasureSpec":I
    :cond_25
    if-eqz v28, :cond_28

    #@44c
    .line 1303
    move-object/from16 v0, p0

    #@44e
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@450
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@453
    move-result v6

    #@454
    move-object/from16 v0, v30

    #@456
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@458
    add-int/2addr v6, v7

    #@459
    move-object/from16 v0, v30

    #@45b
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@45d
    add-int/2addr v6, v7

    #@45e
    .line 1304
    move-object/from16 v0, p0

    #@460
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@463
    move-result v7

    #@464
    .line 1303
    add-int/2addr v6, v7

    #@465
    add-int/2addr v3, v6

    #@466
    move-object/from16 v0, p0

    #@468
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@46a
    .line 1311
    :goto_13
    const/high16 v3, 0x40000000    # 2.0f

    #@46c
    move/from16 v0, v26

    #@46e
    if-eq v0, v3, :cond_2a

    #@470
    .line 1312
    move-object/from16 v0, v30

    #@472
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@474
    const/4 v6, -0x1

    #@475
    if-ne v3, v6, :cond_29

    #@477
    const/16 v33, 0x1

    #@479
    .line 1314
    .restart local v33    # "matchHeightLocally":Z
    :goto_14
    move-object/from16 v0, v30

    #@47b
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@47d
    move-object/from16 v0, v30

    #@47f
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@481
    add-int v31, v3, v6

    #@483
    .line 1315
    .restart local v31    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@486
    move-result v3

    #@487
    add-int v16, v3, v31

    #@489
    .line 1316
    .restart local v16    # "childHeight":I
    move/from16 v0, v36

    #@48b
    move/from16 v1, v16

    #@48d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@490
    move-result v36

    #@491
    .line 1318
    if-eqz v33, :cond_2b

    #@493
    .line 1317
    .end local v31    # "margin":I
    :goto_15
    move/from16 v0, v31

    #@495
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@498
    move-result v11

    #@499
    .line 1320
    if-eqz v10, :cond_2c

    #@49b
    move-object/from16 v0, v30

    #@49d
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@49f
    const/4 v6, -0x1

    #@4a0
    if-ne v3, v6, :cond_2c

    #@4a2
    const/4 v10, 0x1

    #@4a3
    .line 1322
    :goto_16
    if-eqz v13, :cond_20

    #@4a5
    .line 1323
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    #@4a8
    move-result v14

    #@4a9
    .line 1324
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    #@4aa
    if-eq v14, v3, :cond_20

    #@4ac
    .line 1326
    move-object/from16 v0, v30

    #@4ae
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@4b0
    if-gez v3, :cond_2d

    #@4b2
    move-object/from16 v0, p0

    #@4b4
    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@4b6
    :goto_17
    and-int/lit8 v25, v3, 0x70

    #@4b8
    .line 1328
    .restart local v25    # "gravity":I
    shr-int/lit8 v3, v25, 0x4

    #@4ba
    and-int/lit8 v3, v3, -0x2

    #@4bc
    shr-int/lit8 v27, v3, 0x1

    #@4be
    .line 1331
    .restart local v27    # "index":I
    aget v3, v34, v27

    #@4c0
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@4c3
    move-result v3

    #@4c4
    aput v3, v34, v27

    #@4c6
    .line 1332
    aget v3, v35, v27

    #@4c8
    .line 1333
    sub-int v6, v16, v14

    #@4ca
    .line 1332
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@4cd
    move-result v3

    #@4ce
    aput v3, v35, v27

    #@4d0
    goto/16 :goto_11

    #@4d2
    .line 1293
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v25    # "gravity":I
    .end local v27    # "index":I
    .end local v33    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v38    # "share":I
    :cond_26
    if-lez v38, :cond_27

    #@4d4
    .end local v38    # "share":I
    :goto_18
    const/high16 v3, 0x40000000    # 2.0f

    #@4d6
    .line 1292
    move/from16 v0, v38

    #@4d8
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4db
    move-result v3

    #@4dc
    move/from16 v0, v17

    #@4de
    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    #@4e1
    goto/16 :goto_12

    #@4e3
    .line 1293
    .restart local v38    # "share":I
    :cond_27
    const/16 v38, 0x0

    #@4e5
    goto :goto_18

    #@4e6
    .line 1306
    .end local v17    # "childHeightMeasureSpec":I
    .end local v38    # "share":I
    :cond_28
    move-object/from16 v0, p0

    #@4e8
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@4ea
    move/from16 v40, v0

    #@4ec
    .line 1307
    .restart local v40    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@4ef
    move-result v3

    #@4f0
    add-int v3, v3, v40

    #@4f2
    .line 1308
    move-object/from16 v0, v30

    #@4f4
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@4f6
    .line 1307
    add-int/2addr v3, v6

    #@4f7
    .line 1308
    move-object/from16 v0, v30

    #@4f9
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@4fb
    .line 1307
    add-int/2addr v3, v6

    #@4fc
    .line 1308
    move-object/from16 v0, p0

    #@4fe
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@501
    move-result v6

    #@502
    .line 1307
    add-int/2addr v3, v6

    #@503
    move/from16 v0, v40

    #@505
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@508
    move-result v3

    #@509
    move-object/from16 v0, p0

    #@50b
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@50d
    goto/16 :goto_13

    #@50f
    .line 1312
    .end local v40    # "totalLength":I
    :cond_29
    const/16 v33, 0x0

    #@511
    .restart local v33    # "matchHeightLocally":Z
    goto/16 :goto_14

    #@513
    .line 1311
    .end local v33    # "matchHeightLocally":Z
    :cond_2a
    const/16 v33, 0x0

    #@515
    .restart local v33    # "matchHeightLocally":Z
    goto/16 :goto_14

    #@517
    .restart local v16    # "childHeight":I
    .restart local v31    # "margin":I
    :cond_2b
    move/from16 v31, v16

    #@519
    .line 1318
    goto/16 :goto_15

    #@51b
    .line 1320
    .end local v31    # "margin":I
    :cond_2c
    const/4 v10, 0x0

    #@51c
    goto :goto_16

    #@51d
    .line 1326
    .restart local v14    # "childBaseline":I
    :cond_2d
    move-object/from16 v0, v30

    #@51f
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@521
    goto :goto_17

    #@522
    .line 1339
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_2e
    move-object/from16 v0, p0

    #@524
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@526
    move-object/from16 v0, p0

    #@528
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@52a
    move-object/from16 v0, p0

    #@52c
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@52e
    add-int/2addr v6, v7

    #@52f
    add-int/2addr v3, v6

    #@530
    move-object/from16 v0, p0

    #@532
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@534
    .line 1344
    const/4 v3, 0x1

    #@535
    aget v3, v34, v3

    #@537
    const/4 v6, -0x1

    #@538
    if-ne v3, v6, :cond_2f

    #@53a
    .line 1345
    const/4 v3, 0x0

    #@53b
    aget v3, v34, v3

    #@53d
    const/4 v6, -0x1

    #@53e
    if-eq v3, v6, :cond_33

    #@540
    .line 1348
    :cond_2f
    :goto_19
    const/4 v3, 0x3

    #@541
    aget v3, v34, v3

    #@543
    .line 1349
    const/4 v6, 0x0

    #@544
    aget v6, v34, v6

    #@546
    .line 1350
    const/4 v7, 0x1

    #@547
    aget v7, v34, v7

    #@549
    const/4 v8, 0x2

    #@54a
    aget v8, v34, v8

    #@54c
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@54f
    move-result v7

    #@550
    .line 1349
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@553
    move-result v6

    #@554
    .line 1348
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@557
    move-result v12

    #@558
    .line 1351
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    #@559
    aget v3, v35, v3

    #@55b
    .line 1352
    const/4 v6, 0x0

    #@55c
    aget v6, v35, v6

    #@55e
    .line 1353
    const/4 v7, 0x1

    #@55f
    aget v7, v35, v7

    #@561
    const/4 v8, 0x2

    #@562
    aget v8, v35, v8

    #@564
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@567
    move-result v7

    #@568
    .line 1352
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@56b
    move-result v6

    #@56c
    .line 1351
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@56f
    move-result v22

    #@570
    .line 1354
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    #@572
    move/from16 v0, v36

    #@574
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@577
    move-result v36

    #@578
    .line 1383
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v43    # "weightSum":F
    :cond_30
    if-nez v10, :cond_31

    #@57a
    const/high16 v3, 0x40000000    # 2.0f

    #@57c
    move/from16 v0, v26

    #@57e
    if-eq v0, v3, :cond_31

    #@580
    .line 1384
    move/from16 v36, v11

    #@582
    .line 1387
    :cond_31
    move-object/from16 v0, p0

    #@584
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@586
    move-object/from16 v0, p0

    #@588
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@58a
    add-int/2addr v3, v6

    #@58b
    add-int v36, v36, v3

    #@58d
    .line 1390
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    #@590
    move-result v3

    #@591
    move/from16 v0, v36

    #@593
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@596
    move-result v36

    #@597
    .line 1392
    const/high16 v3, -0x1000000

    #@599
    and-int v3, v3, v18

    #@59b
    or-int v3, v3, v47

    #@59d
    .line 1394
    shl-int/lit8 v6, v18, 0x10

    #@59f
    .line 1393
    move/from16 v0, v36

    #@5a1
    move/from16 v1, p2

    #@5a3
    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@5a6
    move-result v6

    #@5a7
    .line 1392
    move-object/from16 v0, p0

    #@5a9
    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    #@5ac
    .line 1396
    if-eqz v32, :cond_32

    #@5ae
    .line 1397
    move-object/from16 v0, p0

    #@5b0
    move/from16 v1, v20

    #@5b2
    move/from16 v2, p1

    #@5b4
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    #@5b7
    .line 1012
    :cond_32
    return-void

    #@5b8
    .line 1346
    .restart local v43    # "weightSum":F
    :cond_33
    const/4 v3, 0x2

    #@5b9
    aget v3, v34, v3

    #@5bb
    const/4 v6, -0x1

    #@5bc
    if-ne v3, v6, :cond_2f

    #@5be
    .line 1347
    const/4 v3, 0x3

    #@5bf
    aget v3, v34, v3

    #@5c1
    const/4 v6, -0x1

    #@5c2
    if-eq v3, v6, :cond_30

    #@5c4
    goto/16 :goto_19

    #@5c6
    .line 1357
    .end local v43    # "weightSum":F
    :cond_34
    move/from16 v0, v44

    #@5c8
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@5cb
    move-result v11

    #@5cc
    .line 1361
    if-eqz v42, :cond_30

    #@5ce
    const/high16 v3, 0x40000000    # 2.0f

    #@5d0
    move/from16 v0, v45

    #@5d2
    if-eq v0, v3, :cond_30

    #@5d4
    .line 1362
    const/4 v5, 0x0

    #@5d5
    :goto_1a
    move/from16 v0, v20

    #@5d7
    if-ge v5, v0, :cond_30

    #@5d9
    .line 1363
    move-object/from16 v0, p0

    #@5db
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@5de
    move-result-object v4

    #@5df
    .line 1365
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_35

    #@5e1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@5e4
    move-result v3

    #@5e5
    const/16 v6, 0x8

    #@5e7
    if-ne v3, v6, :cond_36

    #@5e9
    .line 1362
    :cond_35
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    #@5eb
    goto :goto_1a

    #@5ec
    .line 1370
    :cond_36
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5ef
    move-result-object v30

    #@5f0
    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    #@5f2
    .line 1372
    .restart local v30    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    #@5f4
    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@5f6
    .line 1373
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    #@5f7
    cmpl-float v3, v15, v3

    #@5f9
    if-lez v3, :cond_35

    #@5fb
    .line 1375
    const/high16 v3, 0x40000000    # 2.0f

    #@5fd
    move/from16 v0, v29

    #@5ff
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@602
    move-result v3

    #@603
    .line 1376
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@606
    move-result v6

    #@607
    .line 1377
    const/high16 v7, 0x40000000    # 2.0f

    #@609
    .line 1376
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@60c
    move-result v6

    #@60d
    .line 1374
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    #@610
    goto :goto_1b
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    #@0
    .prologue
    .line 1446
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 682
    const/4 v3, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5
    .line 683
    const/16 v27, 0x0

    #@7
    .line 684
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    #@8
    .line 685
    .local v15, "childState":I
    const/4 v11, 0x0

    #@9
    .line 686
    .local v11, "alternativeMaxWidth":I
    const/16 v36, 0x0

    #@b
    .line 687
    .local v36, "weightedMaxWidth":I
    const/4 v10, 0x1

    #@c
    .line 688
    .local v10, "allFillParent":Z
    const/16 v33, 0x0

    #@e
    .line 690
    .local v33, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@11
    move-result v17

    #@12
    .line 692
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@15
    move-result v37

    #@16
    .line 693
    .local v37, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@19
    move-result v19

    #@1a
    .line 695
    .local v19, "heightMode":I
    const/16 v25, 0x0

    #@1c
    .line 696
    .local v25, "matchWidth":Z
    const/16 v31, 0x0

    #@1e
    .line 698
    .local v31, "skippedMeasure":Z
    move-object/from16 v0, p0

    #@20
    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@22
    .line 699
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    #@24
    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@26
    move/from16 v34, v0

    #@28
    .line 701
    .local v34, "useLargestChild":Z
    const/high16 v22, -0x80000000

    #@2a
    .line 704
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    #@2b
    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    #@2d
    if-ge v5, v0, :cond_f

    #@2f
    .line 705
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@34
    move-result-object v4

    #@35
    .line 707
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    #@37
    .line 708
    move-object/from16 v0, p0

    #@39
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@3b
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@40
    move-result v6

    #@41
    add-int/2addr v3, v6

    #@42
    move-object/from16 v0, p0

    #@44
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@46
    .line 704
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@48
    goto :goto_0

    #@49
    .line 712
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@4c
    move-result v3

    #@4d
    const/16 v6, 0x8

    #@4f
    if-ne v3, v6, :cond_1

    #@51
    .line 713
    move-object/from16 v0, p0

    #@53
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@56
    move-result v3

    #@57
    add-int/2addr v5, v3

    #@58
    .line 714
    goto :goto_1

    #@59
    .line 717
    :cond_1
    move-object/from16 v0, p0

    #@5b
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_2

    #@61
    .line 718
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@65
    move-object/from16 v0, p0

    #@67
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@69
    add-int/2addr v3, v6

    #@6a
    move-object/from16 v0, p0

    #@6c
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@6e
    .line 721
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@71
    move-result-object v23

    #@72
    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    #@74
    .line 723
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    #@76
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@78
    add-float v33, v33, v3

    #@7a
    .line 725
    const/high16 v3, 0x40000000    # 2.0f

    #@7c
    move/from16 v0, v19

    #@7e
    if-ne v0, v3, :cond_5

    #@80
    move-object/from16 v0, v23

    #@82
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@84
    if-nez v3, :cond_5

    #@86
    move-object/from16 v0, v23

    #@88
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@8a
    const/4 v6, 0x0

    #@8b
    cmpl-float v3, v3, v6

    #@8d
    if-lez v3, :cond_5

    #@8f
    .line 729
    move-object/from16 v0, p0

    #@91
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@93
    move/from16 v32, v0

    #@95
    .line 730
    .local v32, "totalLength":I
    move-object/from16 v0, v23

    #@97
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@99
    add-int v3, v3, v32

    #@9b
    move-object/from16 v0, v23

    #@9d
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@9f
    add-int/2addr v3, v6

    #@a0
    move/from16 v0, v32

    #@a2
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@a5
    move-result v3

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@aa
    .line 731
    const/16 v31, 0x1

    #@ac
    .line 770
    :cond_3
    :goto_2
    if-ltz v12, :cond_4

    #@ae
    add-int/lit8 v3, v5, 0x1

    #@b0
    if-ne v12, v3, :cond_4

    #@b2
    .line 771
    move-object/from16 v0, p0

    #@b4
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@ba
    .line 777
    :cond_4
    if-ge v5, v12, :cond_9

    #@bc
    move-object/from16 v0, v23

    #@be
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@c0
    const/4 v6, 0x0

    #@c1
    cmpl-float v3, v3, v6

    #@c3
    if-lez v3, :cond_9

    #@c5
    .line 778
    new-instance v3, Ljava/lang/RuntimeException;

    #@c7
    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    #@ca
    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v3

    #@ce
    .line 733
    .end local v32    # "totalLength":I
    :cond_5
    const/high16 v29, -0x80000000

    #@d0
    .line 735
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    #@d2
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@d4
    if-nez v3, :cond_6

    #@d6
    move-object/from16 v0, v23

    #@d8
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@da
    const/4 v6, 0x0

    #@db
    cmpl-float v3, v3, v6

    #@dd
    if-lez v3, :cond_6

    #@df
    .line 740
    const/16 v29, 0x0

    #@e1
    .line 741
    const/4 v3, -0x2

    #@e2
    move-object/from16 v0, v23

    #@e4
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@e6
    .line 750
    :cond_6
    const/4 v3, 0x0

    #@e7
    cmpl-float v3, v33, v3

    #@e9
    if-nez v3, :cond_8

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@ef
    .line 749
    :goto_3
    const/4 v7, 0x0

    #@f0
    move-object/from16 v3, p0

    #@f2
    move/from16 v6, p1

    #@f4
    move/from16 v8, p2

    #@f6
    .line 748
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@f9
    .line 752
    const/high16 v3, -0x80000000

    #@fb
    move/from16 v0, v29

    #@fd
    if-eq v0, v3, :cond_7

    #@ff
    .line 753
    move/from16 v0, v29

    #@101
    move-object/from16 v1, v23

    #@103
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@105
    .line 756
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@108
    move-result v14

    #@109
    .line 757
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    #@10b
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@10d
    move/from16 v32, v0

    #@10f
    .line 758
    .restart local v32    # "totalLength":I
    add-int v3, v32, v14

    #@111
    move-object/from16 v0, v23

    #@113
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@115
    add-int/2addr v3, v6

    #@116
    .line 759
    move-object/from16 v0, v23

    #@118
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@11a
    .line 758
    add-int/2addr v3, v6

    #@11b
    .line 759
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@120
    move-result v6

    #@121
    .line 758
    add-int/2addr v3, v6

    #@122
    move/from16 v0, v32

    #@124
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@127
    move-result v3

    #@128
    move-object/from16 v0, p0

    #@12a
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@12c
    .line 761
    if-eqz v34, :cond_3

    #@12e
    .line 762
    move/from16 v0, v22

    #@130
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@133
    move-result v22

    #@134
    goto/16 :goto_2

    #@136
    .line 750
    .end local v14    # "childHeight":I
    .end local v32    # "totalLength":I
    :cond_8
    const/4 v9, 0x0

    #@137
    goto :goto_3

    #@138
    .line 784
    .end local v29    # "oldHeight":I
    .restart local v32    # "totalLength":I
    :cond_9
    const/16 v26, 0x0

    #@13a
    .line 785
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@13c
    move/from16 v0, v37

    #@13e
    if-eq v0, v3, :cond_a

    #@140
    move-object/from16 v0, v23

    #@142
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@144
    const/4 v6, -0x1

    #@145
    if-ne v3, v6, :cond_a

    #@147
    .line 790
    const/16 v25, 0x1

    #@149
    .line 791
    const/16 v26, 0x1

    #@14b
    .line 794
    :cond_a
    move-object/from16 v0, v23

    #@14d
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@14f
    move-object/from16 v0, v23

    #@151
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@153
    add-int v24, v3, v6

    #@155
    .line 795
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@158
    move-result v3

    #@159
    add-int v28, v3, v24

    #@15b
    .line 796
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    #@15e
    move-result v27

    #@15f
    .line 797
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@162
    move-result v3

    #@163
    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@166
    move-result v15

    #@167
    .line 799
    if-eqz v10, :cond_b

    #@169
    move-object/from16 v0, v23

    #@16b
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@16d
    const/4 v6, -0x1

    #@16e
    if-ne v3, v6, :cond_b

    #@170
    const/4 v10, 0x1

    #@171
    .line 800
    :goto_4
    move-object/from16 v0, v23

    #@173
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@175
    const/4 v6, 0x0

    #@176
    cmpl-float v3, v3, v6

    #@178
    if-lez v3, :cond_d

    #@17a
    .line 806
    if-eqz v26, :cond_c

    #@17c
    .line 805
    .end local v24    # "margin":I
    :goto_5
    move/from16 v0, v36

    #@17e
    move/from16 v1, v24

    #@180
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@183
    move-result v36

    #@184
    .line 812
    :goto_6
    move-object/from16 v0, p0

    #@186
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@189
    move-result v3

    #@18a
    add-int/2addr v5, v3

    #@18b
    goto/16 :goto_1

    #@18d
    .line 799
    .restart local v24    # "margin":I
    :cond_b
    const/4 v10, 0x0

    #@18e
    goto :goto_4

    #@18f
    :cond_c
    move/from16 v24, v28

    #@191
    .line 806
    goto :goto_5

    #@192
    .line 809
    :cond_d
    if-eqz v26, :cond_e

    #@194
    .line 808
    .end local v24    # "margin":I
    :goto_7
    move/from16 v0, v24

    #@196
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@199
    move-result v11

    #@19a
    goto :goto_6

    #@19b
    .restart local v24    # "margin":I
    :cond_e
    move/from16 v24, v28

    #@19d
    .line 809
    goto :goto_7

    #@19e
    .line 815
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    :cond_f
    move-object/from16 v0, p0

    #@1a0
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1a2
    if-lez v3, :cond_10

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    move/from16 v1, v17

    #@1a8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@1ab
    move-result v3

    #@1ac
    if-eqz v3, :cond_10

    #@1ae
    .line 816
    move-object/from16 v0, p0

    #@1b0
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@1b6
    add-int/2addr v3, v6

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1bb
    .line 819
    :cond_10
    if-eqz v34, :cond_14

    #@1bd
    .line 820
    const/high16 v3, -0x80000000

    #@1bf
    move/from16 v0, v19

    #@1c1
    if-eq v0, v3, :cond_11

    #@1c3
    if-nez v19, :cond_14

    #@1c5
    .line 821
    :cond_11
    const/4 v3, 0x0

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1ca
    .line 823
    const/4 v5, 0x0

    #@1cb
    :goto_8
    move/from16 v0, v17

    #@1cd
    if-ge v5, v0, :cond_14

    #@1cf
    .line 824
    move-object/from16 v0, p0

    #@1d1
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@1d4
    move-result-object v4

    #@1d5
    .line 826
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_12

    #@1d7
    .line 827
    move-object/from16 v0, p0

    #@1d9
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1db
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@1e0
    move-result v6

    #@1e1
    add-int/2addr v3, v6

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1e6
    .line 823
    :goto_9
    add-int/lit8 v5, v5, 0x1

    #@1e8
    goto :goto_8

    #@1e9
    .line 831
    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@1ec
    move-result v3

    #@1ed
    const/16 v6, 0x8

    #@1ef
    if-ne v3, v6, :cond_13

    #@1f1
    .line 832
    move-object/from16 v0, p0

    #@1f3
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@1f6
    move-result v3

    #@1f7
    add-int/2addr v5, v3

    #@1f8
    .line 833
    goto :goto_9

    #@1f9
    .line 837
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1fc
    move-result-object v23

    #@1fd
    .line 836
    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    #@1ff
    .line 839
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@203
    move/from16 v32, v0

    #@205
    .line 840
    .restart local v32    # "totalLength":I
    add-int v3, v32, v22

    #@207
    .line 841
    move-object/from16 v0, v23

    #@209
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@20b
    .line 840
    add-int/2addr v3, v6

    #@20c
    .line 841
    move-object/from16 v0, v23

    #@20e
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@210
    .line 840
    add-int/2addr v3, v6

    #@211
    .line 841
    move-object/from16 v0, p0

    #@213
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@216
    move-result v6

    #@217
    .line 840
    add-int/2addr v3, v6

    #@218
    move/from16 v0, v32

    #@21a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@21d
    move-result v3

    #@21e
    move-object/from16 v0, p0

    #@220
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@222
    goto :goto_9

    #@223
    .line 846
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "totalLength":I
    :cond_14
    move-object/from16 v0, p0

    #@225
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@227
    move-object/from16 v0, p0

    #@229
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@22b
    move-object/from16 v0, p0

    #@22d
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@22f
    add-int/2addr v6, v7

    #@230
    add-int/2addr v3, v6

    #@231
    move-object/from16 v0, p0

    #@233
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@235
    .line 848
    move-object/from16 v0, p0

    #@237
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@239
    move/from16 v20, v0

    #@23b
    .line 851
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    #@23e
    move-result v3

    #@23f
    move/from16 v0, v20

    #@241
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@244
    move-result v20

    #@245
    .line 854
    const/4 v3, 0x0

    #@246
    move/from16 v0, v20

    #@248
    move/from16 v1, p2

    #@24a
    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@24d
    move-result v21

    #@24e
    .line 855
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    #@251
    and-int v20, v21, v3

    #@253
    .line 860
    move-object/from16 v0, p0

    #@255
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@257
    sub-int v18, v20, v3

    #@259
    .line 861
    .local v18, "delta":I
    if-nez v31, :cond_15

    #@25b
    if-eqz v18, :cond_25

    #@25d
    const/4 v3, 0x0

    #@25e
    cmpl-float v3, v33, v3

    #@260
    if-lez v3, :cond_25

    #@262
    .line 862
    :cond_15
    move-object/from16 v0, p0

    #@264
    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@266
    const/4 v6, 0x0

    #@267
    cmpl-float v3, v3, v6

    #@269
    if-lez v3, :cond_16

    #@26b
    move-object/from16 v0, p0

    #@26d
    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@26f
    move/from16 v35, v0

    #@271
    .line 864
    .local v35, "weightSum":F
    :goto_a
    const/4 v3, 0x0

    #@272
    move-object/from16 v0, p0

    #@274
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@276
    .line 866
    const/4 v5, 0x0

    #@277
    :goto_b
    move/from16 v0, v17

    #@279
    if-ge v5, v0, :cond_21

    #@27b
    .line 867
    move-object/from16 v0, p0

    #@27d
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@280
    move-result-object v4

    #@281
    .line 869
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@284
    move-result v3

    #@285
    const/16 v6, 0x8

    #@287
    if-ne v3, v6, :cond_17

    #@289
    .line 866
    :goto_c
    add-int/lit8 v5, v5, 0x1

    #@28b
    goto :goto_b

    #@28c
    .line 862
    .end local v4    # "child":Landroid/view/View;
    .end local v35    # "weightSum":F
    :cond_16
    move/from16 v35, v33

    #@28e
    .restart local v35    # "weightSum":F
    goto :goto_a

    #@28f
    .line 873
    .restart local v4    # "child":Landroid/view/View;
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@292
    move-result-object v23

    #@293
    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    #@295
    .line 875
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    #@297
    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@299
    .line 876
    .local v13, "childExtra":F
    const/4 v3, 0x0

    #@29a
    cmpl-float v3, v13, v3

    #@29c
    if-lez v3, :cond_1a

    #@29e
    .line 878
    move/from16 v0, v18

    #@2a0
    int-to-float v3, v0

    #@2a1
    mul-float/2addr v3, v13

    #@2a2
    div-float v3, v3, v35

    #@2a4
    float-to-int v0, v3

    #@2a5
    move/from16 v30, v0

    #@2a7
    .line 879
    .local v30, "share":I
    sub-float v35, v35, v13

    #@2a9
    .line 880
    sub-int v18, v18, v30

    #@2ab
    .line 883
    move-object/from16 v0, p0

    #@2ad
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@2af
    move-object/from16 v0, p0

    #@2b1
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@2b3
    add-int/2addr v3, v6

    #@2b4
    .line 884
    move-object/from16 v0, v23

    #@2b6
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@2b8
    .line 883
    add-int/2addr v3, v6

    #@2b9
    .line 884
    move-object/from16 v0, v23

    #@2bb
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2bd
    .line 883
    add-int/2addr v3, v6

    #@2be
    .line 884
    move-object/from16 v0, v23

    #@2c0
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@2c2
    .line 882
    move/from16 v0, p1

    #@2c4
    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    #@2c7
    move-result v16

    #@2c8
    .line 888
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    #@2ca
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@2cc
    if-nez v3, :cond_18

    #@2ce
    const/high16 v3, 0x40000000    # 2.0f

    #@2d0
    move/from16 v0, v19

    #@2d2
    if-eq v0, v3, :cond_1b

    #@2d4
    .line 891
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@2d7
    move-result v3

    #@2d8
    add-int v14, v3, v30

    #@2da
    .line 892
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_19

    #@2dc
    .line 893
    const/4 v14, 0x0

    #@2dd
    .line 897
    :cond_19
    const/high16 v3, 0x40000000    # 2.0f

    #@2df
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2e2
    move-result v3

    #@2e3
    .line 896
    move/from16 v0, v16

    #@2e5
    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    #@2e8
    .line 907
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@2eb
    move-result v3

    #@2ec
    and-int/lit16 v3, v3, -0x100

    #@2ee
    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@2f1
    move-result v15

    #@2f2
    .line 911
    .end local v16    # "childWidthMeasureSpec":I
    :cond_1a
    move-object/from16 v0, v23

    #@2f4
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@2f6
    move-object/from16 v0, v23

    #@2f8
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2fa
    add-int v24, v3, v6

    #@2fc
    .line 912
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@2ff
    move-result v3

    #@300
    add-int v28, v3, v24

    #@302
    .line 913
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    #@305
    move-result v27

    #@306
    .line 915
    const/high16 v3, 0x40000000    # 2.0f

    #@308
    move/from16 v0, v37

    #@30a
    if-eq v0, v3, :cond_1e

    #@30c
    .line 916
    move-object/from16 v0, v23

    #@30e
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@310
    const/4 v6, -0x1

    #@311
    if-ne v3, v6, :cond_1d

    #@313
    const/16 v26, 0x1

    #@315
    .line 919
    .restart local v26    # "matchWidthLocally":Z
    :goto_e
    if-eqz v26, :cond_1f

    #@317
    .line 918
    .end local v24    # "margin":I
    :goto_f
    move/from16 v0, v24

    #@319
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@31c
    move-result v11

    #@31d
    .line 921
    if-eqz v10, :cond_20

    #@31f
    move-object/from16 v0, v23

    #@321
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@323
    const/4 v6, -0x1

    #@324
    if-ne v3, v6, :cond_20

    #@326
    const/4 v10, 0x1

    #@327
    .line 923
    :goto_10
    move-object/from16 v0, p0

    #@329
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@32b
    move/from16 v32, v0

    #@32d
    .line 924
    .restart local v32    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@330
    move-result v3

    #@331
    add-int v3, v3, v32

    #@333
    .line 925
    move-object/from16 v0, v23

    #@335
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@337
    .line 924
    add-int/2addr v3, v6

    #@338
    .line 925
    move-object/from16 v0, v23

    #@33a
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@33c
    .line 924
    add-int/2addr v3, v6

    #@33d
    .line 925
    move-object/from16 v0, p0

    #@33f
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@342
    move-result v6

    #@343
    .line 924
    add-int/2addr v3, v6

    #@344
    move/from16 v0, v32

    #@346
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@349
    move-result v3

    #@34a
    move-object/from16 v0, p0

    #@34c
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@34e
    goto/16 :goto_c

    #@350
    .line 902
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v30    # "share":I
    :cond_1b
    if-lez v30, :cond_1c

    #@352
    .line 903
    .end local v30    # "share":I
    :goto_11
    const/high16 v3, 0x40000000    # 2.0f

    #@354
    .line 902
    move/from16 v0, v30

    #@356
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@359
    move-result v3

    #@35a
    .line 901
    move/from16 v0, v16

    #@35c
    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    #@35f
    goto :goto_d

    #@360
    .line 902
    .restart local v30    # "share":I
    :cond_1c
    const/16 v30, 0x0

    #@362
    goto :goto_11

    #@363
    .line 916
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_1d
    const/16 v26, 0x0

    #@365
    .restart local v26    # "matchWidthLocally":Z
    goto :goto_e

    #@366
    .line 915
    .end local v26    # "matchWidthLocally":Z
    :cond_1e
    const/16 v26, 0x0

    #@368
    .restart local v26    # "matchWidthLocally":Z
    goto :goto_e

    #@369
    :cond_1f
    move/from16 v24, v28

    #@36b
    .line 919
    goto :goto_f

    #@36c
    .line 921
    .end local v24    # "margin":I
    :cond_20
    const/4 v10, 0x0

    #@36d
    goto :goto_10

    #@36e
    .line 929
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_21
    move-object/from16 v0, p0

    #@370
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@372
    move-object/from16 v0, p0

    #@374
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@376
    move-object/from16 v0, p0

    #@378
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@37a
    add-int/2addr v6, v7

    #@37b
    add-int/2addr v3, v6

    #@37c
    move-object/from16 v0, p0

    #@37e
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@380
    .line 961
    .end local v35    # "weightSum":F
    :cond_22
    if-nez v10, :cond_23

    #@382
    const/high16 v3, 0x40000000    # 2.0f

    #@384
    move/from16 v0, v37

    #@386
    if-eq v0, v3, :cond_23

    #@388
    .line 962
    move/from16 v27, v11

    #@38a
    .line 965
    :cond_23
    move-object/from16 v0, p0

    #@38c
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@38e
    move-object/from16 v0, p0

    #@390
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@392
    add-int/2addr v3, v6

    #@393
    add-int v27, v27, v3

    #@395
    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    #@398
    move-result v3

    #@399
    move/from16 v0, v27

    #@39b
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@39e
    move-result v27

    #@39f
    .line 970
    move/from16 v0, v27

    #@3a1
    move/from16 v1, p1

    #@3a3
    invoke-static {v0, v1, v15}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@3a6
    move-result v3

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    move/from16 v1, v21

    #@3ab
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    #@3ae
    .line 973
    if-eqz v25, :cond_24

    #@3b0
    .line 974
    move-object/from16 v0, p0

    #@3b2
    move/from16 v1, v17

    #@3b4
    move/from16 v2, p2

    #@3b6
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    #@3b9
    .line 681
    :cond_24
    return-void

    #@3ba
    .line 932
    :cond_25
    move/from16 v0, v36

    #@3bc
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@3bf
    move-result v11

    #@3c0
    .line 938
    if-eqz v34, :cond_22

    #@3c2
    const/high16 v3, 0x40000000    # 2.0f

    #@3c4
    move/from16 v0, v19

    #@3c6
    if-eq v0, v3, :cond_22

    #@3c8
    .line 939
    const/4 v5, 0x0

    #@3c9
    :goto_12
    move/from16 v0, v17

    #@3cb
    if-ge v5, v0, :cond_22

    #@3cd
    .line 940
    move-object/from16 v0, p0

    #@3cf
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@3d2
    move-result-object v4

    #@3d3
    .line 942
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_26

    #@3d5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@3d8
    move-result v3

    #@3d9
    const/16 v6, 0x8

    #@3db
    if-ne v3, v6, :cond_27

    #@3dd
    .line 939
    :cond_26
    :goto_13
    add-int/lit8 v5, v5, 0x1

    #@3df
    goto :goto_12

    #@3e0
    .line 947
    :cond_27
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3e3
    move-result-object v23

    #@3e4
    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    #@3e6
    .line 949
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    #@3e8
    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@3ea
    .line 950
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    #@3eb
    cmpl-float v3, v13, v3

    #@3ed
    if-lez v3, :cond_26

    #@3ef
    .line 952
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@3f2
    move-result v3

    #@3f3
    .line 953
    const/high16 v6, 0x40000000    # 2.0f

    #@3f5
    .line 952
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3f8
    move-result v3

    #@3f9
    .line 955
    const/high16 v6, 0x40000000    # 2.0f

    #@3fb
    .line 954
    move/from16 v0, v22

    #@3fd
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@400
    move-result v6

    #@401
    .line 951
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    #@404
    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 337
    return-void

    #@5
    .line 340
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 341
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    #@d
    .line 335
    :goto_0
    return-void

    #@e
    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    #@11
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1494
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1495
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    #@8
    .line 1493
    :goto_0
    return-void

    #@9
    .line 1497
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    #@c
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 629
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 630
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    #@8
    .line 628
    :goto_0
    return-void

    #@9
    .line 632
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    #@c
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1597
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@3
    .line 1598
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 1599
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@9
    .line 1600
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1601
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@10
    .line 1596
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@2
    .line 461
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 566
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 567
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "base aligned child index out of range (0, "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 568
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@19
    move-result v2

    #@1a
    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 568
    const-string/jumbo v2, ")"

    #@21
    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 570
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@2f
    .line 565
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 286
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 287
    return-void

    #@6
    .line 289
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@8
    .line 290
    if-eqz p1, :cond_2

    #@a
    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@10
    .line 292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@16
    .line 297
    :goto_0
    if-nez p1, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    #@1c
    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@1f
    .line 285
    return-void

    #@20
    .line 294
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@22
    .line 295
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@24
    goto :goto_0
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    #@0
    .prologue
    .line 311
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@2
    .line 310
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1782
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 1783
    const v0, 0x800007

    #@7
    and-int/2addr v0, p1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1784
    const v0, 0x800003

    #@d
    or-int/2addr p1, v0

    #@e
    .line 1787
    :cond_0
    and-int/lit8 v0, p1, 0x70

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1788
    or-int/lit8 p1, p1, 0x30

    #@14
    .line 1791
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@16
    .line 1792
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@19
    .line 1781
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const v2, 0x800007

    #@3
    .line 1798
    and-int v0, p1, v2

    #@5
    .line 1799
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@7
    and-int/2addr v1, v2

    #@8
    if-eq v1, v0, :cond_0

    #@a
    .line 1800
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@c
    const v2, -0x800008

    #@f
    and-int/2addr v1, v2

    #@10
    or-int/2addr v1, v0

    #@11
    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@13
    .line 1801
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@16
    .line 1797
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 493
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@2
    .line 492
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 1754
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1755
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@6
    .line 1756
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@9
    .line 1753
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 246
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@7
    .line 248
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@9
    .line 244
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1807
    and-int/lit8 v0, p1, 0x70

    #@2
    .line 1808
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@4
    and-int/lit8 v1, v1, 0x70

    #@6
    if-eq v1, v0, :cond_0

    #@8
    .line 1809
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@a
    and-int/lit8 v1, v1, -0x71

    #@c
    or-int/2addr v1, v0

    #@d
    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@f
    .line 1810
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@12
    .line 1806
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 624
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@7
    .line 623
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    return v0
.end method
