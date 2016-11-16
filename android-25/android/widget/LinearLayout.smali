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
.field private final mAllowInconsistentMeasurement:Z

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
    .line 199
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 114
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@8
    .line 124
    iput v8, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@a
    .line 132
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@c
    .line 169
    const v6, 0x800033

    #@f
    iput v6, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@11
    .line 196
    iput v8, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@13
    .line 214
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    #@15
    .line 213
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@18
    move-result-object v0

    #@19
    .line 216
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1c
    move-result v2

    #@1d
    .line 217
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@1f
    .line 218
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@22
    .line 221
    :cond_0
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result v2

    #@26
    .line 222
    if-ltz v2, :cond_1

    #@28
    .line 223
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@2b
    .line 226
    :cond_1
    const/4 v6, 0x2

    #@2c
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2f
    move-result v1

    #@30
    .line 227
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    #@32
    .line 228
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    #@35
    .line 231
    :cond_2
    const/4 v6, 0x4

    #@36
    const/high16 v7, -0x40800000    # -1.0f

    #@38
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3b
    move-result v6

    #@3c
    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@3e
    .line 234
    const/4 v6, 0x3

    #@3f
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@42
    move-result v6

    #@43
    .line 233
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@45
    .line 236
    const/4 v6, 0x6

    #@46
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@49
    move-result v6

    #@4a
    iput-boolean v6, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@4c
    .line 238
    const/4 v6, 0x5

    #@4d
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    #@54
    .line 239
    const/4 v6, 0x7

    #@55
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@58
    move-result v6

    #@59
    iput v6, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@5b
    .line 240
    const/16 v6, 0x8

    #@5d
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@60
    move-result v6

    #@61
    iput v6, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@63
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@66
    move-result-object v6

    #@67
    iget v3, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@69
    .line 243
    .local v3, "version":I
    const/16 v6, 0x17

    #@6b
    if-gt v3, v6, :cond_3

    #@6d
    :goto_0
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    #@6f
    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@72
    .line 210
    return-void

    #@73
    :cond_3
    move v4, v5

    #@74
    .line 243
    goto :goto_0
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 671
    add-int/lit8 v1, p1, -0x1

    #@3
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@5
    .line 672
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    .line 673
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
    .line 674
    return v4

    #@14
    .line 671
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@16
    goto :goto_0

    #@17
    .line 677
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
    .line 1404
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    #@4
    move-result v0

    #@5
    .line 1405
    const/high16 v2, 0x40000000    # 2.0f

    #@7
    .line 1404
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v4

    #@b
    .line 1406
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 1407
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 1408
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@17
    move-result v0

    #@18
    const/16 v2, 0x8

    #@1a
    if-eq v0, v2, :cond_0

    #@1c
    .line 1409
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v7

    #@20
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@22
    .line 1411
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@24
    const/4 v2, -0x1

    #@25
    if-ne v0, v2, :cond_0

    #@27
    .line 1414
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@29
    .line 1415
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@2c
    move-result v0

    #@2d
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@2f
    move-object v0, p0

    #@30
    move v2, p2

    #@31
    move v5, v3

    #@32
    .line 1418
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@35
    .line 1419
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@37
    .line 1406
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1400
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
    .line 986
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@4
    move-result v0

    #@5
    .line 987
    const/high16 v4, 0x40000000    # 2.0f

    #@7
    .line 986
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v2

    #@b
    .line 988
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    #@e
    .line 989
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 990
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@17
    move-result v0

    #@18
    const/16 v4, 0x8

    #@1a
    if-eq v0, v4, :cond_0

    #@1c
    .line 991
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v7

    #@20
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    #@22
    .line 993
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@24
    const/4 v4, -0x1

    #@25
    if-ne v0, v4, :cond_0

    #@27
    .line 996
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@29
    .line 997
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@2c
    move-result v0

    #@2d
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@2f
    move-object v0, p0

    #@30
    move v4, p2

    #@31
    move v5, v3

    #@32
    .line 1000
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@35
    .line 1001
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@37
    .line 988
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 984
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
    .line 389
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
    .line 390
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 391
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
    .line 392
    return-object v0

    #@18
    .line 389
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 395
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
    .line 1741
    add-int v0, p2, p4

    #@2
    add-int v1, p3, p5

    #@4
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@7
    .line 1740
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1861
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@3
    move-result v1

    #@4
    .line 400
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    #@7
    move-result v3

    #@8
    .line 401
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@b
    .line 402
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 403
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
    .line 404
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@25
    .line 407
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    #@27
    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@2a
    move-result v6

    #@2b
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2d
    add-int v5, v6, v7

    #@2f
    .line 412
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@32
    .line 401
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 410
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
    .line 417
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
    .line 418
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    #@4a
    move-result-object v0

    #@4b
    .line 420
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    #@4d
    .line 421
    if-eqz v3, :cond_4

    #@4f
    .line 422
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    #@52
    move-result v5

    #@53
    .line 434
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    #@56
    .line 398
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    #@57
    .line 424
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
    .line 427
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@6b
    .line 428
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    #@6d
    .line 429
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
    .line 431
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
    .line 359
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@3
    move-result v2

    #@4
    .line 360
    .local v2, "count":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@7
    .line 361
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 362
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
    .line 363
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_0

    #@1b
    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@21
    .line 365
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
    .line 366
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@2f
    .line 360
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 371
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 372
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    #@3b
    move-result-object v1

    #@3c
    .line 373
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    #@3d
    .line 374
    .local v0, "bottom":I
    if-nez v1, :cond_3

    #@3f
    .line 375
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
    .line 380
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    #@4f
    .line 358
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    #@50
    .line 377
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    #@56
    .line 378
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
    .line 439
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
    .line 440
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
    .line 439
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 441
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    .line 438
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    #@0
    .prologue
    .line 445
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
    .line 446
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
    .line 445
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 447
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@20
    .line 444
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1872
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1873
    const-string/jumbo v0, "layout:baselineAligned"

    #@6
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 1874
    const-string/jumbo v0, "layout:baselineAlignedChildIndex"

    #@e
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 1875
    const-string/jumbo v0, "measurement:baselineChildTop"

    #@16
    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1b
    .line 1876
    const-string/jumbo v0, "measurement:orientation"

    #@1e
    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@23
    .line 1877
    const-string/jumbo v0, "measurement:gravity"

    #@26
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2b
    .line 1878
    const-string/jumbo v0, "measurement:totalLength"

    #@2e
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@33
    .line 1879
    const-string/jumbo v0, "layout:totalLength"

    #@36
    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@3b
    .line 1880
    const-string/jumbo v0, "layout:useLargestChild"

    #@3e
    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@43
    .line 1871
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 1836
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
    .line 1837
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1838
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@7
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@a
    return-object v0

    #@b
    .line 1839
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@d
    const/4 v1, 0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 1840
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@16
    return-object v0

    #@17
    .line 1842
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
    .line 1823
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1846
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
    .line 1824
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
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1847
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1848
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1849
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@a
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    #@c
    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    #@f
    return-object v0

    #@10
    .line 1850
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1851
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@16
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@18
    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@1b
    return-object v0

    #@1c
    .line 1854
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@1e
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@21
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1866
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
    .line 507
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@3
    if-gez v5, :cond_0

    #@5
    .line 508
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 511
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@d
    move-result v5

    #@e
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@10
    if-gt v5, v6, :cond_1

    #@12
    .line 512
    new-instance v5, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    #@17
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v5

    #@1b
    .line 516
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@1d
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 517
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@24
    move-result v1

    #@25
    .line 519
    .local v1, "childBaseline":I
    if-ne v1, v7, :cond_3

    #@27
    .line 520
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@29
    if-nez v5, :cond_2

    #@2b
    .line 522
    return v7

    #@2c
    .line 526
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    #@31
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v5

    #@35
    .line 536
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@37
    .line 538
    .local v2, "childTop":I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@39
    const/4 v6, 0x1

    #@3a
    if-ne v5, v6, :cond_4

    #@3c
    .line 539
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@3e
    and-int/lit8 v4, v5, 0x70

    #@40
    .line 540
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    #@42
    if-eq v4, v5, :cond_4

    #@44
    .line 541
    sparse-switch v4, :sswitch_data_0

    #@47
    .line 554
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    #@4d
    .line 555
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@4f
    add-int/2addr v5, v2

    #@50
    add-int/2addr v5, v1

    #@51
    return v5

    #@52
    .line 543
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
    .line 544
    goto :goto_0

    #@5f
    .line 547
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
    .line 548
    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@6c
    .line 547
    sub-int/2addr v5, v6

    #@6d
    div-int/lit8 v5, v5, 0x2

    #@6f
    add-int/2addr v2, v5

    #@70
    .line 549
    goto :goto_0

    #@71
    .line 541
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
    .line 564
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
    .line 1434
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    #@0
    .prologue
    .line 333
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@2
    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    #@0
    .prologue
    .line 342
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 1801
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@2
    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1476
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1488
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOrientation()I
    .locals 1

    #@0
    .prologue
    .line 1765
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    return v0
.end method

.method public getShowDividers()I
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@2
    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 593
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
    .line 606
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
    .line 617
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
    .line 654
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@5
    move-result v3

    #@6
    if-ne p1, v3, :cond_1

    #@8
    .line 656
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
    .line 658
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    #@14
    move-result v0

    #@15
    .line 659
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_3

    #@17
    .line 661
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
    .line 663
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
    .line 457
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@2
    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 485
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
    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    #@3
    move-result v20

    #@4
    .line 1619
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@8
    move/from16 v27, v0

    #@a
    .line 1625
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    #@c
    .line 1626
    .local v18, "height":I
    move-object/from16 v0, p0

    #@e
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@10
    sub-int v10, v18, v2

    #@12
    .line 1629
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    #@14
    move-object/from16 v0, p0

    #@16
    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@18
    sub-int v13, v2, v4

    #@1a
    .line 1631
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@1d
    move-result v14

    #@1e
    .line 1633
    .local v14, "count":I
    move-object/from16 v0, p0

    #@20
    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@22
    const v4, 0x800007

    #@25
    and-int v23, v2, v4

    #@27
    .line 1634
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    #@29
    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@2b
    and-int/lit8 v26, v2, 0x70

    #@2d
    .line 1636
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    #@2f
    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@31
    .line 1638
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@35
    move-object/from16 v24, v0

    #@37
    .line 1639
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@3b
    move-object/from16 v25, v0

    #@3d
    .line 1641
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    #@40
    move-result v21

    #@41
    .line 1642
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
    .line 1655
    move-object/from16 v0, p0

    #@4e
    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@50
    .line 1659
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    #@52
    .line 1660
    .local v28, "start":I
    const/16 v16, 0x1

    #@54
    .line 1662
    .local v16, "dir":I
    if-eqz v20, :cond_0

    #@56
    .line 1663
    add-int/lit8 v28, v14, -0x1

    #@58
    .line 1664
    const/16 v16, -0x1

    #@5a
    .line 1667
    :cond_0
    const/16 v19, 0x0

    #@5c
    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    #@5e
    if-ge v0, v14, :cond_7

    #@60
    .line 1668
    mul-int v2, v16, v19

    #@62
    add-int v11, v28, v2

    #@64
    .line 1669
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@69
    move-result-object v3

    #@6a
    .line 1670
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    #@6c
    .line 1671
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@71
    move-result v2

    #@72
    add-int/2addr v12, v2

    #@73
    .line 1667
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    #@75
    goto :goto_1

    #@76
    .line 1645
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
    .line 1646
    .restart local v12    # "childLeft":I
    goto :goto_0

    #@85
    .line 1650
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
    .line 1651
    .restart local v12    # "childLeft":I
    goto :goto_0

    #@98
    .line 1672
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
    .line 1673
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@a3
    move-result v6

    #@a4
    .line 1674
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@a7
    move-result v7

    #@a8
    .line 1675
    .local v7, "childHeight":I
    const/4 v9, -0x1

    #@a9
    .line 1678
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ac
    move-result-object v22

    #@ad
    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    #@af
    .line 1680
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
    .line 1681
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    #@bb
    move-result v9

    #@bc
    .line 1684
    :cond_3
    move-object/from16 v0, v22

    #@be
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@c0
    move/from16 v17, v0

    #@c2
    .line 1685
    .local v17, "gravity":I
    if-gez v17, :cond_4

    #@c4
    .line 1686
    move/from16 v17, v26

    #@c6
    .line 1689
    :cond_4
    and-int/lit8 v2, v17, 0x70

    #@c8
    sparse-switch v2, :sswitch_data_1

    #@cb
    .line 1721
    move/from16 v5, v27

    #@cd
    .line 1725
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
    .line 1726
    move-object/from16 v0, p0

    #@d7
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@d9
    add-int/2addr v12, v2

    #@da
    .line 1729
    :cond_6
    move-object/from16 v0, v22

    #@dc
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@de
    add-int/2addr v12, v2

    #@df
    .line 1730
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
    .line 1732
    move-object/from16 v0, v22

    #@ee
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@f0
    add-int/2addr v2, v6

    #@f1
    .line 1733
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@f6
    move-result v4

    #@f7
    .line 1732
    add-int/2addr v2, v4

    #@f8
    add-int/2addr v12, v2

    #@f9
    .line 1735
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
    .line 1691
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    #@105
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@107
    add-int v5, v27, v2

    #@109
    .line 1692
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    #@10a
    if-eq v9, v2, :cond_5

    #@10c
    .line 1693
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
    .line 1709
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    #@114
    div-int/lit8 v2, v2, 0x2

    #@116
    add-int v2, v2, v27

    #@118
    .line 1710
    move-object/from16 v0, v22

    #@11a
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@11c
    .line 1709
    add-int/2addr v2, v4

    #@11d
    .line 1710
    move-object/from16 v0, v22

    #@11f
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@121
    .line 1709
    sub-int v5, v2, v4

    #@123
    .line 1711
    .restart local v5    # "childTop":I
    goto :goto_3

    #@124
    .line 1714
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
    .line 1715
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    #@12d
    if-eq v9, v2, :cond_5

    #@12f
    .line 1716
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@132
    move-result v2

    #@133
    sub-int v15, v2, v9

    #@135
    .line 1717
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
    .line 1617
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
    .line 1642
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    #@146
    .line 1689
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
    .line 1513
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@4
    move/from16 v18, v0

    #@6
    .line 1519
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    #@8
    .line 1520
    .local v19, "width":I
    move-object/from16 v0, p0

    #@a
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@c
    sub-int v8, v19, v1

    #@e
    .line 1523
    .local v8, "childRight":I
    sub-int v1, v19, v18

    #@10
    move-object/from16 v0, p0

    #@12
    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@14
    sub-int v9, v1, v4

    #@16
    .line 1525
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@19
    move-result v11

    #@1a
    .line 1527
    .local v11, "count":I
    move-object/from16 v0, p0

    #@1c
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@1e
    and-int/lit8 v16, v1, 0x70

    #@20
    .line 1528
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    #@22
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@24
    const v4, 0x800007

    #@27
    and-int v17, v1, v4

    #@29
    .line 1530
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    #@2c
    .line 1543
    move-object/from16 v0, p0

    #@2e
    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@30
    .line 1547
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    #@31
    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    #@33
    .line 1548
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@38
    move-result-object v2

    #@39
    .line 1549
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    #@3b
    .line 1550
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@40
    move-result v1

    #@41
    add-int/2addr v10, v1

    #@42
    .line 1547
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    #@44
    goto :goto_1

    #@45
    .line 1533
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
    .line 1534
    .restart local v10    # "childTop":I
    goto :goto_0

    #@54
    .line 1538
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
    .line 1539
    .restart local v10    # "childTop":I
    goto :goto_0

    #@67
    .line 1551
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
    .line 1552
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@72
    move-result v5

    #@73
    .line 1553
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@76
    move-result v6

    #@77
    .line 1556
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7a
    move-result-object v15

    #@7b
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    #@7d
    .line 1558
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@7f
    .line 1559
    .local v12, "gravity":I
    if-gez v12, :cond_2

    #@81
    .line 1560
    move/from16 v12, v17

    #@83
    .line 1562
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    #@86
    move-result v14

    #@87
    .line 1563
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@8a
    move-result v7

    #@8b
    .line 1564
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    #@8d
    sparse-switch v1, :sswitch_data_1

    #@90
    .line 1576
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@92
    add-int v3, v18, v1

    #@94
    .line 1580
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
    .line 1581
    move-object/from16 v0, p0

    #@9e
    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@a0
    add-int/2addr v10, v1

    #@a1
    .line 1584
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@a3
    add-int/2addr v10, v1

    #@a4
    .line 1585
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
    .line 1587
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
    .line 1589
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
    .line 1566
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    #@c7
    div-int/lit8 v1, v1, 0x2

    #@c9
    add-int v1, v1, v18

    #@cb
    .line 1567
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@cd
    .line 1566
    add-int/2addr v1, v4

    #@ce
    .line 1567
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@d0
    .line 1566
    sub-int v3, v1, v4

    #@d2
    .line 1568
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@d3
    .line 1571
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    #@d5
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@d7
    sub-int v3, v1, v4

    #@d9
    .line 1572
    .restart local v3    # "childLeft":I
    goto :goto_3

    #@da
    .line 1512
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
    .line 1530
    nop

    #@dc
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    #@e6
    .line 1564
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
    .line 1464
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@9
    .line 1463
    return-void
.end method

.method measureHorizontal(II)V
    .locals 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1019
    const/4 v3, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5
    .line 1020
    const/16 v37, 0x0

    #@7
    .line 1021
    .local v37, "maxHeight":I
    const/16 v18, 0x0

    #@9
    .line 1022
    .local v18, "childState":I
    const/4 v11, 0x0

    #@a
    .line 1023
    .local v11, "alternativeMaxHeight":I
    const/16 v47, 0x0

    #@c
    .line 1024
    .local v47, "weightedMaxHeight":I
    const/4 v10, 0x1

    #@d
    .line 1025
    .local v10, "allFillParent":Z
    const/16 v43, 0x0

    #@f
    .line 1027
    .local v43, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@12
    move-result v22

    #@13
    .line 1029
    .local v22, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@16
    move-result v48

    #@17
    .line 1030
    .local v48, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1a
    move-result v27

    #@1b
    .line 1032
    .local v27, "heightMode":I
    const/16 v33, 0x0

    #@1d
    .line 1033
    .local v33, "matchHeight":Z
    const/16 v41, 0x0

    #@1f
    .line 1035
    .local v41, "skippedMeasure":Z
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
    .line 1036
    :cond_0
    const/4 v3, 0x4

    #@2c
    new-array v3, v3, [I

    #@2e
    move-object/from16 v0, p0

    #@30
    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@32
    .line 1037
    const/4 v3, 0x4

    #@33
    new-array v3, v3, [I

    #@35
    move-object/from16 v0, p0

    #@37
    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@39
    .line 1040
    :cond_1
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    #@3d
    move-object/from16 v35, v0

    #@3f
    .line 1041
    .local v35, "maxAscent":[I
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    #@43
    move-object/from16 v36, v0

    #@45
    .line 1043
    .local v36, "maxDescent":[I
    const/4 v3, -0x1

    #@46
    const/4 v6, 0x3

    #@47
    aput v3, v35, v6

    #@49
    const/4 v3, -0x1

    #@4a
    const/4 v6, 0x2

    #@4b
    aput v3, v35, v6

    #@4d
    const/4 v3, -0x1

    #@4e
    const/4 v6, 0x1

    #@4f
    aput v3, v35, v6

    #@51
    const/4 v3, -0x1

    #@52
    const/4 v6, 0x0

    #@53
    aput v3, v35, v6

    #@55
    .line 1044
    const/4 v3, -0x1

    #@56
    const/4 v6, 0x3

    #@57
    aput v3, v36, v6

    #@59
    const/4 v3, -0x1

    #@5a
    const/4 v6, 0x2

    #@5b
    aput v3, v36, v6

    #@5d
    const/4 v3, -0x1

    #@5e
    const/4 v6, 0x1

    #@5f
    aput v3, v36, v6

    #@61
    const/4 v3, -0x1

    #@62
    const/4 v6, 0x0

    #@63
    aput v3, v36, v6

    #@65
    .line 1046
    move-object/from16 v0, p0

    #@67
    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@69
    .line 1047
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    #@6b
    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@6d
    move/from16 v45, v0

    #@6f
    .line 1049
    .local v45, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@71
    move/from16 v0, v48

    #@73
    if-ne v0, v3, :cond_2

    #@75
    const/16 v29, 0x1

    #@77
    .line 1051
    .local v29, "isExactly":Z
    :goto_0
    const/high16 v30, -0x80000000

    #@79
    .line 1052
    .local v30, "largestChildWidth":I
    const/16 v46, 0x0

    #@7b
    .line 1055
    .local v46, "usedExcessSpace":I
    const/4 v5, 0x0

    #@7c
    .local v5, "i":I
    :goto_1
    move/from16 v0, v22

    #@7e
    if-ge v5, v0, :cond_16

    #@80
    .line 1056
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@85
    move-result-object v4

    #@86
    .line 1057
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    #@88
    .line 1058
    move-object/from16 v0, p0

    #@8a
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@8c
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@91
    move-result v6

    #@92
    add-int/2addr v3, v6

    #@93
    move-object/from16 v0, p0

    #@95
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@97
    .line 1055
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 1049
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v29    # "isExactly":Z
    .end local v30    # "largestChildWidth":I
    .end local v46    # "usedExcessSpace":I
    :cond_2
    const/16 v29, 0x0

    #@9c
    .restart local v29    # "isExactly":Z
    goto :goto_0

    #@9d
    .line 1062
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v30    # "largestChildWidth":I
    .restart local v46    # "usedExcessSpace":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@a0
    move-result v3

    #@a1
    const/16 v6, 0x8

    #@a3
    if-ne v3, v6, :cond_4

    #@a5
    .line 1063
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@aa
    move-result v3

    #@ab
    add-int/2addr v5, v3

    #@ac
    .line 1064
    goto :goto_2

    #@ad
    .line 1067
    :cond_4
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_5

    #@b5
    .line 1068
    move-object/from16 v0, p0

    #@b7
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@bd
    add-int/2addr v3, v6

    #@be
    move-object/from16 v0, p0

    #@c0
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@c2
    .line 1071
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c5
    move-result-object v31

    #@c6
    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    #@c8
    .line 1073
    .local v31, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    #@ca
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@cc
    add-float v43, v43, v3

    #@ce
    .line 1075
    move-object/from16 v0, v31

    #@d0
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@d2
    if-nez v3, :cond_9

    #@d4
    move-object/from16 v0, v31

    #@d6
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@d8
    const/4 v6, 0x0

    #@d9
    cmpl-float v3, v3, v6

    #@db
    if-lez v3, :cond_9

    #@dd
    const/16 v44, 0x1

    #@df
    .line 1076
    .local v44, "useExcessSpace":Z
    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    #@e1
    move/from16 v0, v48

    #@e3
    if-ne v0, v3, :cond_c

    #@e5
    if-eqz v44, :cond_c

    #@e7
    .line 1080
    if-eqz v29, :cond_a

    #@e9
    .line 1081
    move-object/from16 v0, p0

    #@eb
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@ed
    move-object/from16 v0, v31

    #@ef
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@f1
    move-object/from16 v0, v31

    #@f3
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@f5
    add-int/2addr v6, v8

    #@f6
    add-int/2addr v3, v6

    #@f7
    move-object/from16 v0, p0

    #@f9
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@fb
    .line 1093
    :goto_4
    if-eqz v13, :cond_b

    #@fd
    .line 1095
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@100
    move-result v3

    #@101
    const/4 v6, 0x0

    #@102
    .line 1094
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@105
    move-result v25

    #@106
    .line 1097
    .local v25, "freeWidthSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@109
    move-result v3

    #@10a
    const/4 v6, 0x0

    #@10b
    .line 1096
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@10e
    move-result v24

    #@10f
    .line 1098
    .local v24, "freeHeightSpec":I
    move/from16 v0, v25

    #@111
    move/from16 v1, v24

    #@113
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    #@116
    .line 1143
    .end local v24    # "freeHeightSpec":I
    .end local v25    # "freeWidthSpec":I
    :cond_6
    :goto_5
    const/16 v34, 0x0

    #@118
    .line 1144
    .local v34, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@11a
    move/from16 v0, v27

    #@11c
    if-eq v0, v3, :cond_7

    #@11e
    move-object/from16 v0, v31

    #@120
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@122
    const/4 v6, -0x1

    #@123
    if-ne v3, v6, :cond_7

    #@125
    .line 1148
    const/16 v33, 0x1

    #@127
    .line 1149
    const/16 v34, 0x1

    #@129
    .line 1152
    :cond_7
    move-object/from16 v0, v31

    #@12b
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@12d
    move-object/from16 v0, v31

    #@12f
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@131
    add-int v32, v3, v6

    #@133
    .line 1153
    .local v32, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@136
    move-result v3

    #@137
    add-int v16, v3, v32

    #@139
    .line 1154
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@13c
    move-result v3

    #@13d
    move/from16 v0, v18

    #@13f
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@142
    move-result v18

    #@143
    .line 1156
    if-eqz v13, :cond_8

    #@145
    .line 1157
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    #@148
    move-result v14

    #@149
    .line 1158
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    #@14a
    if-eq v14, v3, :cond_8

    #@14c
    .line 1161
    move-object/from16 v0, v31

    #@14e
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@150
    if-gez v3, :cond_11

    #@152
    move-object/from16 v0, p0

    #@154
    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@156
    :goto_6
    and-int/lit8 v26, v3, 0x70

    #@158
    .line 1163
    .local v26, "gravity":I
    shr-int/lit8 v3, v26, 0x4

    #@15a
    and-int/lit8 v3, v3, -0x2

    #@15c
    shr-int/lit8 v28, v3, 0x1

    #@15e
    .line 1166
    .local v28, "index":I
    aget v3, v35, v28

    #@160
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@163
    move-result v3

    #@164
    aput v3, v35, v28

    #@166
    .line 1167
    aget v3, v36, v28

    #@168
    sub-int v6, v16, v14

    #@16a
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@16d
    move-result v3

    #@16e
    aput v3, v36, v28

    #@170
    .line 1171
    .end local v14    # "childBaseline":I
    .end local v26    # "gravity":I
    .end local v28    # "index":I
    :cond_8
    move/from16 v0, v37

    #@172
    move/from16 v1, v16

    #@174
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@177
    move-result v37

    #@178
    .line 1173
    if-eqz v10, :cond_12

    #@17a
    move-object/from16 v0, v31

    #@17c
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@17e
    const/4 v6, -0x1

    #@17f
    if-ne v3, v6, :cond_12

    #@181
    const/4 v10, 0x1

    #@182
    .line 1174
    :goto_7
    move-object/from16 v0, v31

    #@184
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@186
    const/4 v6, 0x0

    #@187
    cmpl-float v3, v3, v6

    #@189
    if-lez v3, :cond_14

    #@18b
    .line 1180
    if-eqz v34, :cond_13

    #@18d
    .line 1179
    .end local v32    # "margin":I
    :goto_8
    move/from16 v0, v47

    #@18f
    move/from16 v1, v32

    #@191
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@194
    move-result v47

    #@195
    .line 1186
    :goto_9
    move-object/from16 v0, p0

    #@197
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@19a
    move-result v3

    #@19b
    add-int/2addr v5, v3

    #@19c
    goto/16 :goto_2

    #@19e
    .line 1075
    .end local v16    # "childHeight":I
    .end local v34    # "matchHeightLocally":Z
    .end local v44    # "useExcessSpace":Z
    :cond_9
    const/16 v44, 0x0

    #@1a0
    .restart local v44    # "useExcessSpace":Z
    goto/16 :goto_3

    #@1a2
    .line 1083
    :cond_a
    move-object/from16 v0, p0

    #@1a4
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1a6
    move/from16 v42, v0

    #@1a8
    .line 1085
    .local v42, "totalLength":I
    move-object/from16 v0, v31

    #@1aa
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@1ac
    .line 1084
    add-int v3, v3, v42

    #@1ae
    .line 1085
    move-object/from16 v0, v31

    #@1b0
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@1b2
    .line 1084
    add-int/2addr v3, v6

    #@1b3
    move/from16 v0, v42

    #@1b5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@1b8
    move-result v3

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1bd
    goto/16 :goto_4

    #@1bf
    .line 1100
    .end local v42    # "totalLength":I
    :cond_b
    const/16 v41, 0x1

    #@1c1
    goto/16 :goto_5

    #@1c3
    .line 1103
    :cond_c
    if-eqz v44, :cond_d

    #@1c5
    .line 1109
    const/4 v3, -0x2

    #@1c6
    move-object/from16 v0, v31

    #@1c8
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1ca
    .line 1116
    :cond_d
    const/4 v3, 0x0

    #@1cb
    cmpl-float v3, v43, v3

    #@1cd
    if-nez v3, :cond_f

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1d3
    .line 1118
    .local v7, "usedWidth":I
    :goto_a
    const/4 v9, 0x0

    #@1d4
    move-object/from16 v3, p0

    #@1d6
    move/from16 v6, p1

    #@1d8
    move/from16 v8, p2

    #@1da
    .line 1117
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@1dd
    .line 1120
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@1e0
    move-result v20

    #@1e1
    .line 1121
    .local v20, "childWidth":I
    if-eqz v44, :cond_e

    #@1e3
    .line 1125
    const/4 v3, 0x0

    #@1e4
    move-object/from16 v0, v31

    #@1e6
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1e8
    .line 1126
    add-int v46, v46, v20

    #@1ea
    .line 1129
    :cond_e
    if-eqz v29, :cond_10

    #@1ec
    .line 1130
    move-object/from16 v0, p0

    #@1ee
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1f0
    move-object/from16 v0, v31

    #@1f2
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@1f4
    add-int v6, v6, v20

    #@1f6
    move-object/from16 v0, v31

    #@1f8
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@1fa
    add-int/2addr v6, v8

    #@1fb
    .line 1131
    move-object/from16 v0, p0

    #@1fd
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@200
    move-result v8

    #@201
    .line 1130
    add-int/2addr v6, v8

    #@202
    add-int/2addr v3, v6

    #@203
    move-object/from16 v0, p0

    #@205
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@207
    .line 1138
    :goto_b
    if-eqz v45, :cond_6

    #@209
    .line 1139
    move/from16 v0, v20

    #@20b
    move/from16 v1, v30

    #@20d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@210
    move-result v30

    #@211
    goto/16 :goto_5

    #@213
    .line 1116
    .end local v7    # "usedWidth":I
    .end local v20    # "childWidth":I
    :cond_f
    const/4 v7, 0x0

    #@214
    goto :goto_a

    #@215
    .line 1133
    .restart local v7    # "usedWidth":I
    .restart local v20    # "childWidth":I
    :cond_10
    move-object/from16 v0, p0

    #@217
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@219
    move/from16 v42, v0

    #@21b
    .line 1134
    .restart local v42    # "totalLength":I
    add-int v3, v42, v20

    #@21d
    move-object/from16 v0, v31

    #@21f
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@221
    add-int/2addr v3, v6

    #@222
    .line 1135
    move-object/from16 v0, v31

    #@224
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@226
    .line 1134
    add-int/2addr v3, v6

    #@227
    .line 1135
    move-object/from16 v0, p0

    #@229
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@22c
    move-result v6

    #@22d
    .line 1134
    add-int/2addr v3, v6

    #@22e
    move/from16 v0, v42

    #@230
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@233
    move-result v3

    #@234
    move-object/from16 v0, p0

    #@236
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@238
    goto :goto_b

    #@239
    .line 1161
    .end local v7    # "usedWidth":I
    .end local v20    # "childWidth":I
    .end local v42    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v32    # "margin":I
    .restart local v34    # "matchHeightLocally":Z
    :cond_11
    move-object/from16 v0, v31

    #@23b
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@23d
    goto/16 :goto_6

    #@23f
    .line 1173
    .end local v14    # "childBaseline":I
    :cond_12
    const/4 v10, 0x0

    #@240
    goto/16 :goto_7

    #@242
    :cond_13
    move/from16 v32, v16

    #@244
    .line 1180
    goto/16 :goto_8

    #@246
    .line 1183
    :cond_14
    if-eqz v34, :cond_15

    #@248
    .line 1182
    .end local v32    # "margin":I
    :goto_c
    move/from16 v0, v32

    #@24a
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@24d
    move-result v11

    #@24e
    goto/16 :goto_9

    #@250
    .restart local v32    # "margin":I
    :cond_15
    move/from16 v32, v16

    #@252
    .line 1183
    goto :goto_c

    #@253
    .line 1189
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "margin":I
    .end local v34    # "matchHeightLocally":Z
    .end local v44    # "useExcessSpace":Z
    :cond_16
    move-object/from16 v0, p0

    #@255
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@257
    if-lez v3, :cond_17

    #@259
    move-object/from16 v0, p0

    #@25b
    move/from16 v1, v22

    #@25d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@260
    move-result v3

    #@261
    if-eqz v3, :cond_17

    #@263
    .line 1190
    move-object/from16 v0, p0

    #@265
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@267
    move-object/from16 v0, p0

    #@269
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@26b
    add-int/2addr v3, v6

    #@26c
    move-object/from16 v0, p0

    #@26e
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@270
    .line 1195
    :cond_17
    const/4 v3, 0x1

    #@271
    aget v3, v35, v3

    #@273
    const/4 v6, -0x1

    #@274
    if-ne v3, v6, :cond_18

    #@276
    .line 1196
    const/4 v3, 0x0

    #@277
    aget v3, v35, v3

    #@279
    const/4 v6, -0x1

    #@27a
    if-eq v3, v6, :cond_1b

    #@27c
    .line 1199
    :cond_18
    :goto_d
    const/4 v3, 0x3

    #@27d
    aget v3, v35, v3

    #@27f
    .line 1200
    const/4 v6, 0x0

    #@280
    aget v6, v35, v6

    #@282
    .line 1201
    const/4 v8, 0x1

    #@283
    aget v8, v35, v8

    #@285
    const/4 v9, 0x2

    #@286
    aget v9, v35, v9

    #@288
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@28b
    move-result v8

    #@28c
    .line 1200
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@28f
    move-result v6

    #@290
    .line 1199
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@293
    move-result v12

    #@294
    .line 1202
    .local v12, "ascent":I
    const/4 v3, 0x3

    #@295
    aget v3, v36, v3

    #@297
    .line 1203
    const/4 v6, 0x0

    #@298
    aget v6, v36, v6

    #@29a
    .line 1204
    const/4 v8, 0x1

    #@29b
    aget v8, v36, v8

    #@29d
    const/4 v9, 0x2

    #@29e
    aget v9, v36, v9

    #@2a0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@2a3
    move-result v8

    #@2a4
    .line 1203
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@2a7
    move-result v6

    #@2a8
    .line 1202
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@2ab
    move-result v23

    #@2ac
    .line 1205
    .local v23, "descent":I
    add-int v3, v12, v23

    #@2ae
    move/from16 v0, v37

    #@2b0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@2b3
    move-result v37

    #@2b4
    .line 1208
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    :cond_19
    if-eqz v45, :cond_1f

    #@2b6
    .line 1209
    const/high16 v3, -0x80000000

    #@2b8
    move/from16 v0, v48

    #@2ba
    if-eq v0, v3, :cond_1a

    #@2bc
    if-nez v48, :cond_1f

    #@2be
    .line 1210
    :cond_1a
    const/4 v3, 0x0

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2c3
    .line 1212
    const/4 v5, 0x0

    #@2c4
    :goto_e
    move/from16 v0, v22

    #@2c6
    if-ge v5, v0, :cond_1f

    #@2c8
    .line 1213
    move-object/from16 v0, p0

    #@2ca
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@2cd
    move-result-object v4

    #@2ce
    .line 1214
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1c

    #@2d0
    .line 1215
    move-object/from16 v0, p0

    #@2d2
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@2d9
    move-result v6

    #@2da
    add-int/2addr v3, v6

    #@2db
    move-object/from16 v0, p0

    #@2dd
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@2df
    .line 1212
    :goto_f
    add-int/lit8 v5, v5, 0x1

    #@2e1
    goto :goto_e

    #@2e2
    .line 1197
    .end local v4    # "child":Landroid/view/View;
    :cond_1b
    const/4 v3, 0x2

    #@2e3
    aget v3, v35, v3

    #@2e5
    const/4 v6, -0x1

    #@2e6
    if-ne v3, v6, :cond_18

    #@2e8
    .line 1198
    const/4 v3, 0x3

    #@2e9
    aget v3, v35, v3

    #@2eb
    const/4 v6, -0x1

    #@2ec
    if-eq v3, v6, :cond_19

    #@2ee
    goto :goto_d

    #@2ef
    .line 1219
    .restart local v4    # "child":Landroid/view/View;
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@2f2
    move-result v3

    #@2f3
    const/16 v6, 0x8

    #@2f5
    if-ne v3, v6, :cond_1d

    #@2f7
    .line 1220
    move-object/from16 v0, p0

    #@2f9
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@2fc
    move-result v3

    #@2fd
    add-int/2addr v5, v3

    #@2fe
    .line 1221
    goto :goto_f

    #@2ff
    .line 1225
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@302
    move-result-object v31

    #@303
    .line 1224
    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    #@305
    .line 1226
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v29, :cond_1e

    #@307
    .line 1227
    move-object/from16 v0, p0

    #@309
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@30b
    move-object/from16 v0, v31

    #@30d
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@30f
    add-int v6, v6, v30

    #@311
    move-object/from16 v0, v31

    #@313
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@315
    add-int/2addr v6, v8

    #@316
    .line 1228
    move-object/from16 v0, p0

    #@318
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@31b
    move-result v8

    #@31c
    .line 1227
    add-int/2addr v6, v8

    #@31d
    add-int/2addr v3, v6

    #@31e
    move-object/from16 v0, p0

    #@320
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@322
    goto :goto_f

    #@323
    .line 1230
    :cond_1e
    move-object/from16 v0, p0

    #@325
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@327
    move/from16 v42, v0

    #@329
    .line 1231
    .restart local v42    # "totalLength":I
    add-int v3, v42, v30

    #@32b
    .line 1232
    move-object/from16 v0, v31

    #@32d
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@32f
    .line 1231
    add-int/2addr v3, v6

    #@330
    .line 1232
    move-object/from16 v0, v31

    #@332
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@334
    .line 1231
    add-int/2addr v3, v6

    #@335
    .line 1232
    move-object/from16 v0, p0

    #@337
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@33a
    move-result v6

    #@33b
    .line 1231
    add-int/2addr v3, v6

    #@33c
    move/from16 v0, v42

    #@33e
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@341
    move-result v3

    #@342
    move-object/from16 v0, p0

    #@344
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@346
    goto :goto_f

    #@347
    .line 1238
    .end local v4    # "child":Landroid/view/View;
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v42    # "totalLength":I
    :cond_1f
    move-object/from16 v0, p0

    #@349
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@34b
    move-object/from16 v0, p0

    #@34d
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@34f
    move-object/from16 v0, p0

    #@351
    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@353
    add-int/2addr v6, v8

    #@354
    add-int/2addr v3, v6

    #@355
    move-object/from16 v0, p0

    #@357
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@359
    .line 1240
    move-object/from16 v0, p0

    #@35b
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@35d
    move/from16 v49, v0

    #@35f
    .line 1243
    .local v49, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    #@362
    move-result v3

    #@363
    move/from16 v0, v49

    #@365
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@368
    move-result v49

    #@369
    .line 1246
    const/4 v3, 0x0

    #@36a
    move/from16 v0, v49

    #@36c
    move/from16 v1, p1

    #@36e
    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@371
    move-result v50

    #@372
    .line 1247
    .local v50, "widthSizeAndState":I
    const v3, 0xffffff

    #@375
    and-int v49, v50, v3

    #@377
    .line 1252
    move-object/from16 v0, p0

    #@379
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@37b
    sub-int v3, v49, v3

    #@37d
    .line 1253
    move-object/from16 v0, p0

    #@37f
    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    #@381
    if-eqz v6, :cond_20

    #@383
    const/16 v46, 0x0

    #@385
    .line 1252
    .end local v46    # "usedExcessSpace":I
    :cond_20
    add-int v38, v3, v46

    #@387
    .line 1254
    .local v38, "remainingExcess":I
    if-nez v41, :cond_21

    #@389
    if-eqz v38, :cond_35

    #@38b
    const/4 v3, 0x0

    #@38c
    cmpl-float v3, v43, v3

    #@38e
    if-lez v3, :cond_35

    #@390
    .line 1255
    :cond_21
    move-object/from16 v0, p0

    #@392
    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@394
    const/4 v6, 0x0

    #@395
    cmpl-float v3, v3, v6

    #@397
    if-lez v3, :cond_23

    #@399
    move-object/from16 v0, p0

    #@39b
    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@39d
    move/from16 v39, v0

    #@39f
    .line 1257
    .local v39, "remainingWeightSum":F
    :goto_10
    const/4 v3, -0x1

    #@3a0
    const/4 v6, 0x3

    #@3a1
    aput v3, v35, v6

    #@3a3
    const/4 v3, -0x1

    #@3a4
    const/4 v6, 0x2

    #@3a5
    aput v3, v35, v6

    #@3a7
    const/4 v3, -0x1

    #@3a8
    const/4 v6, 0x1

    #@3a9
    aput v3, v35, v6

    #@3ab
    const/4 v3, -0x1

    #@3ac
    const/4 v6, 0x0

    #@3ad
    aput v3, v35, v6

    #@3af
    .line 1258
    const/4 v3, -0x1

    #@3b0
    const/4 v6, 0x3

    #@3b1
    aput v3, v36, v6

    #@3b3
    const/4 v3, -0x1

    #@3b4
    const/4 v6, 0x2

    #@3b5
    aput v3, v36, v6

    #@3b7
    const/4 v3, -0x1

    #@3b8
    const/4 v6, 0x1

    #@3b9
    aput v3, v36, v6

    #@3bb
    const/4 v3, -0x1

    #@3bc
    const/4 v6, 0x0

    #@3bd
    aput v3, v36, v6

    #@3bf
    .line 1259
    const/16 v37, -0x1

    #@3c1
    .line 1261
    const/4 v3, 0x0

    #@3c2
    move-object/from16 v0, p0

    #@3c4
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@3c6
    .line 1263
    const/4 v5, 0x0

    #@3c7
    :goto_11
    move/from16 v0, v22

    #@3c9
    if-ge v5, v0, :cond_2f

    #@3cb
    .line 1264
    move-object/from16 v0, p0

    #@3cd
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@3d0
    move-result-object v4

    #@3d1
    .line 1265
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_22

    #@3d3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@3d6
    move-result v3

    #@3d7
    const/16 v6, 0x8

    #@3d9
    if-ne v3, v6, :cond_24

    #@3db
    .line 1263
    :cond_22
    :goto_12
    add-int/lit8 v5, v5, 0x1

    #@3dd
    goto :goto_11

    #@3de
    .line 1255
    .end local v4    # "child":Landroid/view/View;
    .end local v39    # "remainingWeightSum":F
    :cond_23
    move/from16 v39, v43

    #@3e0
    .restart local v39    # "remainingWeightSum":F
    goto :goto_10

    #@3e1
    .line 1269
    .restart local v4    # "child":Landroid/view/View;
    :cond_24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3e4
    move-result-object v31

    #@3e5
    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    #@3e7
    .line 1270
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    #@3e9
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@3eb
    move/from16 v19, v0

    #@3ed
    .line 1271
    .local v19, "childWeight":F
    const/4 v3, 0x0

    #@3ee
    cmpl-float v3, v19, v3

    #@3f0
    if-lez v3, :cond_25

    #@3f2
    .line 1272
    move/from16 v0, v38

    #@3f4
    int-to-float v3, v0

    #@3f5
    mul-float v3, v3, v19

    #@3f7
    div-float v3, v3, v39

    #@3f9
    float-to-int v0, v3

    #@3fa
    move/from16 v40, v0

    #@3fc
    .line 1273
    .local v40, "share":I
    sub-int v38, v38, v40

    #@3fe
    .line 1274
    sub-float v39, v39, v19

    #@400
    .line 1277
    move-object/from16 v0, p0

    #@402
    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@404
    if-eqz v3, :cond_26

    #@406
    const/high16 v3, 0x40000000    # 2.0f

    #@408
    move/from16 v0, v48

    #@40a
    if-eq v0, v3, :cond_26

    #@40c
    .line 1278
    move/from16 v20, v30

    #@40e
    .line 1291
    .restart local v20    # "childWidth":I
    :goto_13
    const/4 v3, 0x0

    #@40f
    move/from16 v0, v20

    #@411
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@414
    move-result v3

    #@415
    const/high16 v6, 0x40000000    # 2.0f

    #@417
    .line 1290
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41a
    move-result v21

    #@41b
    .line 1293
    .local v21, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    #@41d
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@41f
    move-object/from16 v0, p0

    #@421
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@423
    add-int/2addr v3, v6

    #@424
    move-object/from16 v0, v31

    #@426
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@428
    add-int/2addr v3, v6

    #@429
    move-object/from16 v0, v31

    #@42b
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@42d
    add-int/2addr v3, v6

    #@42e
    .line 1294
    move-object/from16 v0, v31

    #@430
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@432
    .line 1292
    move/from16 v0, p2

    #@434
    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    #@437
    move-result v17

    #@438
    .line 1295
    .local v17, "childHeightMeasureSpec":I
    move/from16 v0, v21

    #@43a
    move/from16 v1, v17

    #@43c
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    #@43f
    .line 1299
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@442
    move-result v3

    #@443
    const/high16 v6, -0x1000000

    #@445
    and-int/2addr v3, v6

    #@446
    .line 1298
    move/from16 v0, v18

    #@448
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@44b
    move-result v18

    #@44c
    .line 1302
    .end local v17    # "childHeightMeasureSpec":I
    .end local v20    # "childWidth":I
    .end local v21    # "childWidthMeasureSpec":I
    .end local v40    # "share":I
    :cond_25
    if-eqz v29, :cond_29

    #@44e
    .line 1303
    move-object/from16 v0, p0

    #@450
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@452
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@455
    move-result v6

    #@456
    move-object/from16 v0, v31

    #@458
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@45a
    add-int/2addr v6, v8

    #@45b
    move-object/from16 v0, v31

    #@45d
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@45f
    add-int/2addr v6, v8

    #@460
    .line 1304
    move-object/from16 v0, p0

    #@462
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@465
    move-result v8

    #@466
    .line 1303
    add-int/2addr v6, v8

    #@467
    add-int/2addr v3, v6

    #@468
    move-object/from16 v0, p0

    #@46a
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@46c
    .line 1311
    :goto_14
    const/high16 v3, 0x40000000    # 2.0f

    #@46e
    move/from16 v0, v27

    #@470
    if-eq v0, v3, :cond_2b

    #@472
    .line 1312
    move-object/from16 v0, v31

    #@474
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@476
    const/4 v6, -0x1

    #@477
    if-ne v3, v6, :cond_2a

    #@479
    const/16 v34, 0x1

    #@47b
    .line 1314
    .restart local v34    # "matchHeightLocally":Z
    :goto_15
    move-object/from16 v0, v31

    #@47d
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@47f
    move-object/from16 v0, v31

    #@481
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@483
    add-int v32, v3, v6

    #@485
    .line 1315
    .restart local v32    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@488
    move-result v3

    #@489
    add-int v16, v3, v32

    #@48b
    .line 1316
    .restart local v16    # "childHeight":I
    move/from16 v0, v37

    #@48d
    move/from16 v1, v16

    #@48f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@492
    move-result v37

    #@493
    .line 1318
    if-eqz v34, :cond_2c

    #@495
    .line 1317
    .end local v32    # "margin":I
    :goto_16
    move/from16 v0, v32

    #@497
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@49a
    move-result v11

    #@49b
    .line 1320
    if-eqz v10, :cond_2d

    #@49d
    move-object/from16 v0, v31

    #@49f
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@4a1
    const/4 v6, -0x1

    #@4a2
    if-ne v3, v6, :cond_2d

    #@4a4
    const/4 v10, 0x1

    #@4a5
    .line 1322
    :goto_17
    if-eqz v13, :cond_22

    #@4a7
    .line 1323
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    #@4aa
    move-result v14

    #@4ab
    .line 1324
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    #@4ac
    if-eq v14, v3, :cond_22

    #@4ae
    .line 1326
    move-object/from16 v0, v31

    #@4b0
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@4b2
    if-gez v3, :cond_2e

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    #@4b8
    :goto_18
    and-int/lit8 v26, v3, 0x70

    #@4ba
    .line 1328
    .restart local v26    # "gravity":I
    shr-int/lit8 v3, v26, 0x4

    #@4bc
    and-int/lit8 v3, v3, -0x2

    #@4be
    shr-int/lit8 v28, v3, 0x1

    #@4c0
    .line 1331
    .restart local v28    # "index":I
    aget v3, v35, v28

    #@4c2
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@4c5
    move-result v3

    #@4c6
    aput v3, v35, v28

    #@4c8
    .line 1332
    aget v3, v36, v28

    #@4ca
    .line 1333
    sub-int v6, v16, v14

    #@4cc
    .line 1332
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@4cf
    move-result v3

    #@4d0
    aput v3, v36, v28

    #@4d2
    goto/16 :goto_12

    #@4d4
    .line 1279
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v26    # "gravity":I
    .end local v28    # "index":I
    .end local v34    # "matchHeightLocally":Z
    .restart local v40    # "share":I
    :cond_26
    move-object/from16 v0, v31

    #@4d6
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@4d8
    if-nez v3, :cond_28

    #@4da
    move-object/from16 v0, p0

    #@4dc
    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    #@4de
    if-eqz v3, :cond_27

    #@4e0
    .line 1280
    const/high16 v3, 0x40000000    # 2.0f

    #@4e2
    move/from16 v0, v48

    #@4e4
    if-ne v0, v3, :cond_28

    #@4e6
    .line 1283
    :cond_27
    move/from16 v20, v40

    #@4e8
    .line 1280
    .restart local v20    # "childWidth":I
    goto/16 :goto_13

    #@4ea
    .line 1287
    .end local v20    # "childWidth":I
    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@4ed
    move-result v3

    #@4ee
    add-int v20, v3, v40

    #@4f0
    .restart local v20    # "childWidth":I
    goto/16 :goto_13

    #@4f2
    .line 1306
    .end local v20    # "childWidth":I
    .end local v40    # "share":I
    :cond_29
    move-object/from16 v0, p0

    #@4f4
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@4f6
    move/from16 v42, v0

    #@4f8
    .line 1307
    .restart local v42    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@4fb
    move-result v3

    #@4fc
    add-int v3, v3, v42

    #@4fe
    .line 1308
    move-object/from16 v0, v31

    #@500
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@502
    .line 1307
    add-int/2addr v3, v6

    #@503
    .line 1308
    move-object/from16 v0, v31

    #@505
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@507
    .line 1307
    add-int/2addr v3, v6

    #@508
    .line 1308
    move-object/from16 v0, p0

    #@50a
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@50d
    move-result v6

    #@50e
    .line 1307
    add-int/2addr v3, v6

    #@50f
    move/from16 v0, v42

    #@511
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@514
    move-result v3

    #@515
    move-object/from16 v0, p0

    #@517
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@519
    goto/16 :goto_14

    #@51b
    .line 1312
    .end local v42    # "totalLength":I
    :cond_2a
    const/16 v34, 0x0

    #@51d
    .restart local v34    # "matchHeightLocally":Z
    goto/16 :goto_15

    #@51f
    .line 1311
    .end local v34    # "matchHeightLocally":Z
    :cond_2b
    const/16 v34, 0x0

    #@521
    .restart local v34    # "matchHeightLocally":Z
    goto/16 :goto_15

    #@523
    .restart local v16    # "childHeight":I
    .restart local v32    # "margin":I
    :cond_2c
    move/from16 v32, v16

    #@525
    .line 1318
    goto/16 :goto_16

    #@527
    .line 1320
    .end local v32    # "margin":I
    :cond_2d
    const/4 v10, 0x0

    #@528
    goto/16 :goto_17

    #@52a
    .line 1326
    .restart local v14    # "childBaseline":I
    :cond_2e
    move-object/from16 v0, v31

    #@52c
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    #@52e
    goto :goto_18

    #@52f
    .line 1339
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v19    # "childWeight":F
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "matchHeightLocally":Z
    :cond_2f
    move-object/from16 v0, p0

    #@531
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@533
    move-object/from16 v0, p0

    #@535
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@537
    move-object/from16 v0, p0

    #@539
    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@53b
    add-int/2addr v6, v8

    #@53c
    add-int/2addr v3, v6

    #@53d
    move-object/from16 v0, p0

    #@53f
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@541
    .line 1344
    const/4 v3, 0x1

    #@542
    aget v3, v35, v3

    #@544
    const/4 v6, -0x1

    #@545
    if-ne v3, v6, :cond_30

    #@547
    .line 1345
    const/4 v3, 0x0

    #@548
    aget v3, v35, v3

    #@54a
    const/4 v6, -0x1

    #@54b
    if-eq v3, v6, :cond_34

    #@54d
    .line 1348
    :cond_30
    :goto_19
    const/4 v3, 0x3

    #@54e
    aget v3, v35, v3

    #@550
    .line 1349
    const/4 v6, 0x0

    #@551
    aget v6, v35, v6

    #@553
    .line 1350
    const/4 v8, 0x1

    #@554
    aget v8, v35, v8

    #@556
    const/4 v9, 0x2

    #@557
    aget v9, v35, v9

    #@559
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@55c
    move-result v8

    #@55d
    .line 1349
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@560
    move-result v6

    #@561
    .line 1348
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@564
    move-result v12

    #@565
    .line 1351
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    #@566
    aget v3, v36, v3

    #@568
    .line 1352
    const/4 v6, 0x0

    #@569
    aget v6, v36, v6

    #@56b
    .line 1353
    const/4 v8, 0x1

    #@56c
    aget v8, v36, v8

    #@56e
    const/4 v9, 0x2

    #@56f
    aget v9, v36, v9

    #@571
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@574
    move-result v8

    #@575
    .line 1352
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@578
    move-result v6

    #@579
    .line 1351
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@57c
    move-result v23

    #@57d
    .line 1354
    .restart local v23    # "descent":I
    add-int v3, v12, v23

    #@57f
    move/from16 v0, v37

    #@581
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@584
    move-result v37

    #@585
    .line 1382
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    .end local v39    # "remainingWeightSum":F
    :cond_31
    if-nez v10, :cond_32

    #@587
    const/high16 v3, 0x40000000    # 2.0f

    #@589
    move/from16 v0, v27

    #@58b
    if-eq v0, v3, :cond_32

    #@58d
    .line 1383
    move/from16 v37, v11

    #@58f
    .line 1386
    :cond_32
    move-object/from16 v0, p0

    #@591
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@593
    move-object/from16 v0, p0

    #@595
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@597
    add-int/2addr v3, v6

    #@598
    add-int v37, v37, v3

    #@59a
    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    #@59d
    move-result v3

    #@59e
    move/from16 v0, v37

    #@5a0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@5a3
    move-result v37

    #@5a4
    .line 1391
    const/high16 v3, -0x1000000

    #@5a6
    and-int v3, v3, v18

    #@5a8
    or-int v3, v3, v50

    #@5aa
    .line 1393
    shl-int/lit8 v6, v18, 0x10

    #@5ac
    .line 1392
    move/from16 v0, v37

    #@5ae
    move/from16 v1, p2

    #@5b0
    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@5b3
    move-result v6

    #@5b4
    .line 1391
    move-object/from16 v0, p0

    #@5b6
    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    #@5b9
    .line 1395
    if-eqz v33, :cond_33

    #@5bb
    .line 1396
    move-object/from16 v0, p0

    #@5bd
    move/from16 v1, v22

    #@5bf
    move/from16 v2, p1

    #@5c1
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    #@5c4
    .line 1018
    :cond_33
    return-void

    #@5c5
    .line 1346
    .restart local v39    # "remainingWeightSum":F
    :cond_34
    const/4 v3, 0x2

    #@5c6
    aget v3, v35, v3

    #@5c8
    const/4 v6, -0x1

    #@5c9
    if-ne v3, v6, :cond_30

    #@5cb
    .line 1347
    const/4 v3, 0x3

    #@5cc
    aget v3, v35, v3

    #@5ce
    const/4 v6, -0x1

    #@5cf
    if-eq v3, v6, :cond_31

    #@5d1
    goto/16 :goto_19

    #@5d3
    .line 1357
    .end local v39    # "remainingWeightSum":F
    :cond_35
    move/from16 v0, v47

    #@5d5
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@5d8
    move-result v11

    #@5d9
    .line 1361
    if-eqz v45, :cond_31

    #@5db
    const/high16 v3, 0x40000000    # 2.0f

    #@5dd
    move/from16 v0, v48

    #@5df
    if-eq v0, v3, :cond_31

    #@5e1
    .line 1362
    const/4 v5, 0x0

    #@5e2
    :goto_1a
    move/from16 v0, v22

    #@5e4
    if-ge v5, v0, :cond_31

    #@5e6
    .line 1363
    move-object/from16 v0, p0

    #@5e8
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@5eb
    move-result-object v4

    #@5ec
    .line 1364
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_36

    #@5ee
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@5f1
    move-result v3

    #@5f2
    const/16 v6, 0x8

    #@5f4
    if-ne v3, v6, :cond_37

    #@5f6
    .line 1362
    :cond_36
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    #@5f8
    goto :goto_1a

    #@5f9
    .line 1369
    :cond_37
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5fc
    move-result-object v31

    #@5fd
    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    #@5ff
    .line 1371
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    #@601
    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@603
    .line 1372
    .local v15, "childExtra":F
    const/4 v3, 0x0

    #@604
    cmpl-float v3, v15, v3

    #@606
    if-lez v3, :cond_36

    #@608
    .line 1374
    const/high16 v3, 0x40000000    # 2.0f

    #@60a
    move/from16 v0, v30

    #@60c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@60f
    move-result v3

    #@610
    .line 1375
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@613
    move-result v6

    #@614
    .line 1376
    const/high16 v8, 0x40000000    # 2.0f

    #@616
    .line 1375
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@619
    move-result v6

    #@61a
    .line 1373
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    #@61d
    goto :goto_1b
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    #@0
    .prologue
    .line 1445
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method measureVertical(II)V
    .locals 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 692
    const/4 v3, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@5
    .line 693
    const/16 v29, 0x0

    #@7
    .line 694
    .local v29, "maxWidth":I
    const/16 v16, 0x0

    #@9
    .line 695
    .local v16, "childState":I
    const/4 v11, 0x0

    #@a
    .line 696
    .local v11, "alternativeMaxWidth":I
    const/16 v39, 0x0

    #@c
    .line 697
    .local v39, "weightedMaxWidth":I
    const/4 v10, 0x1

    #@d
    .line 698
    .local v10, "allFillParent":Z
    const/16 v36, 0x0

    #@f
    .line 700
    .local v36, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    #@12
    move-result v20

    #@13
    .line 702
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@16
    move-result v40

    #@17
    .line 703
    .local v40, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1a
    move-result v21

    #@1b
    .line 705
    .local v21, "heightMode":I
    const/16 v27, 0x0

    #@1d
    .line 706
    .local v27, "matchWidth":Z
    const/16 v34, 0x0

    #@1f
    .line 708
    .local v34, "skippedMeasure":Z
    move-object/from16 v0, p0

    #@21
    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@23
    .line 709
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    #@25
    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@27
    move/from16 v38, v0

    #@29
    .line 711
    .local v38, "useLargestChild":Z
    const/high16 v24, -0x80000000

    #@2b
    .line 712
    .local v24, "largestChildHeight":I
    const/16 v19, 0x0

    #@2d
    .line 715
    .local v19, "consumedExcessSpace":I
    const/4 v5, 0x0

    #@2e
    .local v5, "i":I
    :goto_0
    move/from16 v0, v20

    #@30
    if-ge v5, v0, :cond_10

    #@32
    .line 716
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@37
    move-result-object v4

    #@38
    .line 717
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    #@3a
    .line 718
    move-object/from16 v0, p0

    #@3c
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@43
    move-result v6

    #@44
    add-int/2addr v3, v6

    #@45
    move-object/from16 v0, p0

    #@47
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@49
    .line 715
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 722
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@4f
    move-result v3

    #@50
    const/16 v6, 0x8

    #@52
    if-ne v3, v6, :cond_1

    #@54
    .line 723
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@59
    move-result v3

    #@5a
    add-int/2addr v5, v3

    #@5b
    .line 724
    goto :goto_1

    #@5c
    .line 727
    :cond_1
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_2

    #@64
    .line 728
    move-object/from16 v0, p0

    #@66
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@68
    move-object/from16 v0, p0

    #@6a
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@6c
    add-int/2addr v3, v6

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@71
    .line 731
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@74
    move-result-object v25

    #@75
    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    #@77
    .line 733
    .local v25, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    #@79
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@7b
    add-float v36, v36, v3

    #@7d
    .line 735
    move-object/from16 v0, v25

    #@7f
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@81
    if-nez v3, :cond_5

    #@83
    move-object/from16 v0, v25

    #@85
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@87
    const/4 v6, 0x0

    #@88
    cmpl-float v3, v3, v6

    #@8a
    if-lez v3, :cond_5

    #@8c
    const/16 v37, 0x1

    #@8e
    .line 736
    .local v37, "useExcessSpace":Z
    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    #@90
    move/from16 v0, v21

    #@92
    if-ne v0, v3, :cond_6

    #@94
    if-eqz v37, :cond_6

    #@96
    .line 740
    move-object/from16 v0, p0

    #@98
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@9a
    move/from16 v35, v0

    #@9c
    .line 741
    .local v35, "totalLength":I
    move-object/from16 v0, v25

    #@9e
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@a0
    add-int v3, v3, v35

    #@a2
    move-object/from16 v0, v25

    #@a4
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@a6
    add-int/2addr v3, v6

    #@a7
    move/from16 v0, v35

    #@a9
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@ac
    move-result v3

    #@ad
    move-object/from16 v0, p0

    #@af
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@b1
    .line 742
    const/16 v34, 0x1

    #@b3
    .line 783
    :cond_3
    :goto_3
    if-ltz v12, :cond_4

    #@b5
    add-int/lit8 v3, v5, 0x1

    #@b7
    if-ne v12, v3, :cond_4

    #@b9
    .line 784
    move-object/from16 v0, p0

    #@bb
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    #@c1
    .line 790
    :cond_4
    if-ge v5, v12, :cond_a

    #@c3
    move-object/from16 v0, v25

    #@c5
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@c7
    const/4 v6, 0x0

    #@c8
    cmpl-float v3, v3, v6

    #@ca
    if-lez v3, :cond_a

    #@cc
    .line 791
    new-instance v3, Ljava/lang/RuntimeException;

    #@ce
    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    #@d1
    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v3

    #@d5
    .line 735
    .end local v35    # "totalLength":I
    .end local v37    # "useExcessSpace":Z
    :cond_5
    const/16 v37, 0x0

    #@d7
    .restart local v37    # "useExcessSpace":Z
    goto :goto_2

    #@d8
    .line 744
    :cond_6
    if-eqz v37, :cond_7

    #@da
    .line 750
    const/4 v3, -0x2

    #@db
    move-object/from16 v0, v25

    #@dd
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@df
    .line 757
    :cond_7
    const/4 v3, 0x0

    #@e0
    cmpl-float v3, v36, v3

    #@e2
    if-nez v3, :cond_9

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@e8
    .line 758
    .local v9, "usedHeight":I
    :goto_4
    const/4 v7, 0x0

    #@e9
    move-object/from16 v3, p0

    #@eb
    move/from16 v6, p1

    #@ed
    move/from16 v8, p2

    #@ef
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    #@f2
    .line 761
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@f5
    move-result v14

    #@f6
    .line 762
    .local v14, "childHeight":I
    if-eqz v37, :cond_8

    #@f8
    .line 766
    const/4 v3, 0x0

    #@f9
    move-object/from16 v0, v25

    #@fb
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@fd
    .line 767
    add-int v19, v19, v14

    #@ff
    .line 770
    :cond_8
    move-object/from16 v0, p0

    #@101
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@103
    move/from16 v35, v0

    #@105
    .line 771
    .restart local v35    # "totalLength":I
    add-int v3, v35, v14

    #@107
    move-object/from16 v0, v25

    #@109
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@10b
    add-int/2addr v3, v6

    #@10c
    .line 772
    move-object/from16 v0, v25

    #@10e
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@110
    .line 771
    add-int/2addr v3, v6

    #@111
    .line 772
    move-object/from16 v0, p0

    #@113
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@116
    move-result v6

    #@117
    .line 771
    add-int/2addr v3, v6

    #@118
    move/from16 v0, v35

    #@11a
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@11d
    move-result v3

    #@11e
    move-object/from16 v0, p0

    #@120
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@122
    .line 774
    if-eqz v38, :cond_3

    #@124
    .line 775
    move/from16 v0, v24

    #@126
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@129
    move-result v24

    #@12a
    goto :goto_3

    #@12b
    .line 757
    .end local v9    # "usedHeight":I
    .end local v14    # "childHeight":I
    .end local v35    # "totalLength":I
    :cond_9
    const/4 v9, 0x0

    #@12c
    goto :goto_4

    #@12d
    .line 797
    .restart local v35    # "totalLength":I
    :cond_a
    const/16 v28, 0x0

    #@12f
    .line 798
    .local v28, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    #@131
    move/from16 v0, v40

    #@133
    if-eq v0, v3, :cond_b

    #@135
    move-object/from16 v0, v25

    #@137
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@139
    const/4 v6, -0x1

    #@13a
    if-ne v3, v6, :cond_b

    #@13c
    .line 803
    const/16 v27, 0x1

    #@13e
    .line 804
    const/16 v28, 0x1

    #@140
    .line 807
    :cond_b
    move-object/from16 v0, v25

    #@142
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@144
    move-object/from16 v0, v25

    #@146
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@148
    add-int v26, v3, v6

    #@14a
    .line 808
    .local v26, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@14d
    move-result v3

    #@14e
    add-int v30, v3, v26

    #@150
    .line 809
    .local v30, "measuredWidth":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    #@153
    move-result v29

    #@154
    .line 810
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@157
    move-result v3

    #@158
    move/from16 v0, v16

    #@15a
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@15d
    move-result v16

    #@15e
    .line 812
    if-eqz v10, :cond_c

    #@160
    move-object/from16 v0, v25

    #@162
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@164
    const/4 v6, -0x1

    #@165
    if-ne v3, v6, :cond_c

    #@167
    const/4 v10, 0x1

    #@168
    .line 813
    :goto_5
    move-object/from16 v0, v25

    #@16a
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@16c
    const/4 v6, 0x0

    #@16d
    cmpl-float v3, v3, v6

    #@16f
    if-lez v3, :cond_e

    #@171
    .line 819
    if-eqz v28, :cond_d

    #@173
    .line 818
    .end local v26    # "margin":I
    :goto_6
    move/from16 v0, v39

    #@175
    move/from16 v1, v26

    #@177
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@17a
    move-result v39

    #@17b
    .line 825
    :goto_7
    move-object/from16 v0, p0

    #@17d
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@180
    move-result v3

    #@181
    add-int/2addr v5, v3

    #@182
    goto/16 :goto_1

    #@184
    .line 812
    .restart local v26    # "margin":I
    :cond_c
    const/4 v10, 0x0

    #@185
    goto :goto_5

    #@186
    :cond_d
    move/from16 v26, v30

    #@188
    .line 819
    goto :goto_6

    #@189
    .line 822
    :cond_e
    if-eqz v28, :cond_f

    #@18b
    .line 821
    .end local v26    # "margin":I
    :goto_8
    move/from16 v0, v26

    #@18d
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@190
    move-result v11

    #@191
    goto :goto_7

    #@192
    .restart local v26    # "margin":I
    :cond_f
    move/from16 v26, v30

    #@194
    .line 822
    goto :goto_8

    #@195
    .line 828
    .end local v4    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "margin":I
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    .end local v35    # "totalLength":I
    .end local v37    # "useExcessSpace":Z
    :cond_10
    move-object/from16 v0, p0

    #@197
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@199
    if-lez v3, :cond_11

    #@19b
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v20

    #@19f
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    #@1a2
    move-result v3

    #@1a3
    if-eqz v3, :cond_11

    #@1a5
    .line 829
    move-object/from16 v0, p0

    #@1a7
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@1ad
    add-int/2addr v3, v6

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1b2
    .line 832
    :cond_11
    if-eqz v38, :cond_15

    #@1b4
    .line 833
    const/high16 v3, -0x80000000

    #@1b6
    move/from16 v0, v21

    #@1b8
    if-eq v0, v3, :cond_12

    #@1ba
    if-nez v21, :cond_15

    #@1bc
    .line 834
    :cond_12
    const/4 v3, 0x0

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1c1
    .line 836
    const/4 v5, 0x0

    #@1c2
    :goto_9
    move/from16 v0, v20

    #@1c4
    if-ge v5, v0, :cond_15

    #@1c6
    .line 837
    move-object/from16 v0, p0

    #@1c8
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@1cb
    move-result-object v4

    #@1cc
    .line 838
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_13

    #@1ce
    .line 839
    move-object/from16 v0, p0

    #@1d0
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    #@1d7
    move-result v6

    #@1d8
    add-int/2addr v3, v6

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1dd
    .line 836
    :goto_a
    add-int/lit8 v5, v5, 0x1

    #@1df
    goto :goto_9

    #@1e0
    .line 843
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@1e3
    move-result v3

    #@1e4
    const/16 v6, 0x8

    #@1e6
    if-ne v3, v6, :cond_14

    #@1e8
    .line 844
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    #@1ed
    move-result v3

    #@1ee
    add-int/2addr v5, v3

    #@1ef
    .line 845
    goto :goto_a

    #@1f0
    .line 849
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f3
    move-result-object v25

    #@1f4
    .line 848
    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    #@1f6
    .line 851
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    #@1f8
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@1fa
    move/from16 v35, v0

    #@1fc
    .line 852
    .restart local v35    # "totalLength":I
    add-int v3, v35, v24

    #@1fe
    .line 853
    move-object/from16 v0, v25

    #@200
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@202
    .line 852
    add-int/2addr v3, v6

    #@203
    .line 853
    move-object/from16 v0, v25

    #@205
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@207
    .line 852
    add-int/2addr v3, v6

    #@208
    .line 853
    move-object/from16 v0, p0

    #@20a
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@20d
    move-result v6

    #@20e
    .line 852
    add-int/2addr v3, v6

    #@20f
    move/from16 v0, v35

    #@211
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@214
    move-result v3

    #@215
    move-object/from16 v0, p0

    #@217
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@219
    goto :goto_a

    #@21a
    .line 858
    .end local v4    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v35    # "totalLength":I
    :cond_15
    move-object/from16 v0, p0

    #@21c
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@21e
    move-object/from16 v0, p0

    #@220
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@222
    move-object/from16 v0, p0

    #@224
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@226
    add-int/2addr v6, v7

    #@227
    add-int/2addr v3, v6

    #@228
    move-object/from16 v0, p0

    #@22a
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@22c
    .line 860
    move-object/from16 v0, p0

    #@22e
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@230
    move/from16 v22, v0

    #@232
    .line 863
    .local v22, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    #@235
    move-result v3

    #@236
    move/from16 v0, v22

    #@238
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@23b
    move-result v22

    #@23c
    .line 866
    const/4 v3, 0x0

    #@23d
    move/from16 v0, v22

    #@23f
    move/from16 v1, p2

    #@241
    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@244
    move-result v23

    #@245
    .line 867
    .local v23, "heightSizeAndState":I
    const v3, 0xffffff

    #@248
    and-int v22, v23, v3

    #@24a
    .line 872
    move-object/from16 v0, p0

    #@24c
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@24e
    sub-int v3, v22, v3

    #@250
    .line 873
    move-object/from16 v0, p0

    #@252
    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    #@254
    if-eqz v6, :cond_16

    #@256
    const/16 v19, 0x0

    #@258
    .line 872
    .end local v19    # "consumedExcessSpace":I
    :cond_16
    add-int v31, v3, v19

    #@25a
    .line 874
    .local v31, "remainingExcess":I
    if-nez v34, :cond_17

    #@25c
    if-eqz v31, :cond_27

    #@25e
    const/4 v3, 0x0

    #@25f
    cmpl-float v3, v36, v3

    #@261
    if-lez v3, :cond_27

    #@263
    .line 875
    :cond_17
    move-object/from16 v0, p0

    #@265
    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@267
    const/4 v6, 0x0

    #@268
    cmpl-float v3, v3, v6

    #@26a
    if-lez v3, :cond_19

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@270
    move/from16 v32, v0

    #@272
    .line 877
    .local v32, "remainingWeightSum":F
    :goto_b
    const/4 v3, 0x0

    #@273
    move-object/from16 v0, p0

    #@275
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@277
    .line 879
    const/4 v5, 0x0

    #@278
    :goto_c
    move/from16 v0, v20

    #@27a
    if-ge v5, v0, :cond_23

    #@27c
    .line 880
    move-object/from16 v0, p0

    #@27e
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@281
    move-result-object v4

    #@282
    .line 881
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_18

    #@284
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@287
    move-result v3

    #@288
    const/16 v6, 0x8

    #@28a
    if-ne v3, v6, :cond_1a

    #@28c
    .line 879
    :cond_18
    :goto_d
    add-int/lit8 v5, v5, 0x1

    #@28e
    goto :goto_c

    #@28f
    .line 875
    .end local v4    # "child":Landroid/view/View;
    .end local v32    # "remainingWeightSum":F
    :cond_19
    move/from16 v32, v36

    #@291
    .restart local v32    # "remainingWeightSum":F
    goto :goto_b

    #@292
    .line 885
    .restart local v4    # "child":Landroid/view/View;
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@295
    move-result-object v25

    #@296
    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    #@298
    .line 886
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    #@29a
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@29c
    move/from16 v17, v0

    #@29e
    .line 887
    .local v17, "childWeight":F
    const/4 v3, 0x0

    #@29f
    cmpl-float v3, v17, v3

    #@2a1
    if-lez v3, :cond_1b

    #@2a3
    .line 888
    move/from16 v0, v31

    #@2a5
    int-to-float v3, v0

    #@2a6
    mul-float v3, v3, v17

    #@2a8
    div-float v3, v3, v32

    #@2aa
    float-to-int v0, v3

    #@2ab
    move/from16 v33, v0

    #@2ad
    .line 889
    .local v33, "share":I
    sub-int v31, v31, v33

    #@2af
    .line 890
    sub-float v32, v32, v17

    #@2b1
    .line 893
    move-object/from16 v0, p0

    #@2b3
    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@2b5
    if-eqz v3, :cond_1c

    #@2b7
    const/high16 v3, 0x40000000    # 2.0f

    #@2b9
    move/from16 v0, v21

    #@2bb
    if-eq v0, v3, :cond_1c

    #@2bd
    .line 894
    move/from16 v14, v24

    #@2bf
    .line 907
    .restart local v14    # "childHeight":I
    :goto_e
    const/4 v3, 0x0

    #@2c0
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@2c3
    move-result v3

    #@2c4
    const/high16 v6, 0x40000000    # 2.0f

    #@2c6
    .line 906
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c9
    move-result v15

    #@2ca
    .line 909
    .local v15, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    #@2cc
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@2ce
    move-object/from16 v0, p0

    #@2d0
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@2d2
    add-int/2addr v3, v6

    #@2d3
    move-object/from16 v0, v25

    #@2d5
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@2d7
    add-int/2addr v3, v6

    #@2d8
    move-object/from16 v0, v25

    #@2da
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@2dc
    add-int/2addr v3, v6

    #@2dd
    .line 910
    move-object/from16 v0, v25

    #@2df
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@2e1
    .line 908
    move/from16 v0, p1

    #@2e3
    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    #@2e6
    move-result v18

    #@2e7
    .line 911
    .local v18, "childWidthMeasureSpec":I
    move/from16 v0, v18

    #@2e9
    invoke-virtual {v4, v0, v15}, Landroid/view/View;->measure(II)V

    #@2ec
    .line 914
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    #@2ef
    move-result v3

    #@2f0
    and-int/lit16 v3, v3, -0x100

    #@2f2
    move/from16 v0, v16

    #@2f4
    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    #@2f7
    move-result v16

    #@2f8
    .line 918
    .end local v14    # "childHeight":I
    .end local v15    # "childHeightMeasureSpec":I
    .end local v18    # "childWidthMeasureSpec":I
    .end local v33    # "share":I
    :cond_1b
    move-object/from16 v0, v25

    #@2fa
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    #@2fc
    move-object/from16 v0, v25

    #@2fe
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    #@300
    add-int v26, v3, v6

    #@302
    .line 919
    .restart local v26    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@305
    move-result v3

    #@306
    add-int v30, v3, v26

    #@308
    .line 920
    .restart local v30    # "measuredWidth":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    #@30b
    move-result v29

    #@30c
    .line 922
    const/high16 v3, 0x40000000    # 2.0f

    #@30e
    move/from16 v0, v40

    #@310
    if-eq v0, v3, :cond_20

    #@312
    .line 923
    move-object/from16 v0, v25

    #@314
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@316
    const/4 v6, -0x1

    #@317
    if-ne v3, v6, :cond_1f

    #@319
    const/16 v28, 0x1

    #@31b
    .line 926
    .local v28, "matchWidthLocally":Z
    :goto_f
    if-eqz v28, :cond_21

    #@31d
    .line 925
    .end local v26    # "margin":I
    :goto_10
    move/from16 v0, v26

    #@31f
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@322
    move-result v11

    #@323
    .line 928
    if-eqz v10, :cond_22

    #@325
    move-object/from16 v0, v25

    #@327
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@329
    const/4 v6, -0x1

    #@32a
    if-ne v3, v6, :cond_22

    #@32c
    const/4 v10, 0x1

    #@32d
    .line 930
    :goto_11
    move-object/from16 v0, p0

    #@32f
    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@331
    move/from16 v35, v0

    #@333
    .line 931
    .restart local v35    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@336
    move-result v3

    #@337
    add-int v3, v3, v35

    #@339
    .line 932
    move-object/from16 v0, v25

    #@33b
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    #@33d
    .line 931
    add-int/2addr v3, v6

    #@33e
    .line 932
    move-object/from16 v0, v25

    #@340
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    #@342
    .line 931
    add-int/2addr v3, v6

    #@343
    .line 932
    move-object/from16 v0, p0

    #@345
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    #@348
    move-result v6

    #@349
    .line 931
    add-int/2addr v3, v6

    #@34a
    move/from16 v0, v35

    #@34c
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@34f
    move-result v3

    #@350
    move-object/from16 v0, p0

    #@352
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@354
    goto/16 :goto_d

    #@356
    .line 895
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    .end local v35    # "totalLength":I
    .restart local v33    # "share":I
    :cond_1c
    move-object/from16 v0, v25

    #@358
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    #@35a
    if-nez v3, :cond_1e

    #@35c
    move-object/from16 v0, p0

    #@35e
    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    #@360
    if-eqz v3, :cond_1d

    #@362
    .line 896
    const/high16 v3, 0x40000000    # 2.0f

    #@364
    move/from16 v0, v21

    #@366
    if-ne v0, v3, :cond_1e

    #@368
    .line 899
    :cond_1d
    move/from16 v14, v33

    #@36a
    .line 896
    .restart local v14    # "childHeight":I
    goto/16 :goto_e

    #@36c
    .line 903
    .end local v14    # "childHeight":I
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@36f
    move-result v3

    #@370
    add-int v14, v3, v33

    #@372
    .restart local v14    # "childHeight":I
    goto/16 :goto_e

    #@374
    .line 923
    .end local v14    # "childHeight":I
    .end local v33    # "share":I
    .restart local v26    # "margin":I
    .restart local v30    # "measuredWidth":I
    :cond_1f
    const/16 v28, 0x0

    #@376
    goto :goto_f

    #@377
    .line 922
    :cond_20
    const/16 v28, 0x0

    #@379
    goto :goto_f

    #@37a
    .restart local v28    # "matchWidthLocally":Z
    :cond_21
    move/from16 v26, v30

    #@37c
    .line 926
    goto :goto_10

    #@37d
    .line 928
    .end local v26    # "margin":I
    :cond_22
    const/4 v10, 0x0

    #@37e
    goto :goto_11

    #@37f
    .line 936
    .end local v4    # "child":Landroid/view/View;
    .end local v17    # "childWeight":F
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    :cond_23
    move-object/from16 v0, p0

    #@381
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@383
    move-object/from16 v0, p0

    #@385
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    #@387
    move-object/from16 v0, p0

    #@389
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    #@38b
    add-int/2addr v6, v7

    #@38c
    add-int/2addr v3, v6

    #@38d
    move-object/from16 v0, p0

    #@38f
    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    #@391
    .line 967
    .end local v32    # "remainingWeightSum":F
    :cond_24
    if-nez v10, :cond_25

    #@393
    const/high16 v3, 0x40000000    # 2.0f

    #@395
    move/from16 v0, v40

    #@397
    if-eq v0, v3, :cond_25

    #@399
    .line 968
    move/from16 v29, v11

    #@39b
    .line 971
    :cond_25
    move-object/from16 v0, p0

    #@39d
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    #@39f
    move-object/from16 v0, p0

    #@3a1
    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    #@3a3
    add-int/2addr v3, v6

    #@3a4
    add-int v29, v29, v3

    #@3a6
    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    #@3a9
    move-result v3

    #@3aa
    move/from16 v0, v29

    #@3ac
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@3af
    move-result v29

    #@3b0
    .line 976
    move/from16 v0, v29

    #@3b2
    move/from16 v1, p1

    #@3b4
    move/from16 v2, v16

    #@3b6
    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    #@3b9
    move-result v3

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    move/from16 v1, v23

    #@3be
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    #@3c1
    .line 979
    if-eqz v27, :cond_26

    #@3c3
    .line 980
    move-object/from16 v0, p0

    #@3c5
    move/from16 v1, v20

    #@3c7
    move/from16 v2, p2

    #@3c9
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    #@3cc
    .line 691
    :cond_26
    return-void

    #@3cd
    .line 939
    :cond_27
    move/from16 v0, v39

    #@3cf
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    #@3d2
    move-result v11

    #@3d3
    .line 945
    if-eqz v38, :cond_24

    #@3d5
    const/high16 v3, 0x40000000    # 2.0f

    #@3d7
    move/from16 v0, v21

    #@3d9
    if-eq v0, v3, :cond_24

    #@3db
    .line 946
    const/4 v5, 0x0

    #@3dc
    :goto_12
    move/from16 v0, v20

    #@3de
    if-ge v5, v0, :cond_24

    #@3e0
    .line 947
    move-object/from16 v0, p0

    #@3e2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    #@3e5
    move-result-object v4

    #@3e6
    .line 948
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_28

    #@3e8
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@3eb
    move-result v3

    #@3ec
    const/16 v6, 0x8

    #@3ee
    if-ne v3, v6, :cond_29

    #@3f0
    .line 946
    :cond_28
    :goto_13
    add-int/lit8 v5, v5, 0x1

    #@3f2
    goto :goto_12

    #@3f3
    .line 953
    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3f6
    move-result-object v25

    #@3f7
    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    #@3f9
    .line 955
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    #@3fb
    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    #@3fd
    .line 956
    .local v13, "childExtra":F
    const/4 v3, 0x0

    #@3fe
    cmpl-float v3, v13, v3

    #@400
    if-lez v3, :cond_28

    #@402
    .line 958
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@405
    move-result v3

    #@406
    .line 959
    const/high16 v6, 0x40000000    # 2.0f

    #@408
    .line 958
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@40b
    move-result v3

    #@40c
    .line 961
    const/high16 v6, 0x40000000    # 2.0f

    #@40e
    .line 960
    move/from16 v0, v24

    #@410
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@413
    move-result v6

    #@414
    .line 957
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    #@417
    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 348
    return-void

    #@5
    .line 351
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 352
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    #@d
    .line 346
    :goto_0
    return-void

    #@e
    .line 354
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
    .line 1493
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1494
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    #@8
    .line 1492
    :goto_0
    return-void

    #@9
    .line 1496
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
    .line 639
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 640
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    #@8
    .line 638
    :goto_0
    return-void

    #@9
    .line 642
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
    .line 1596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@3
    .line 1597
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    .line 1598
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    #@9
    .line 1599
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1600
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@10
    .line 1595
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
    .line 471
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    #@2
    .line 470
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 575
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 576
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
    .line 577
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    #@19
    move-result v2

    #@1a
    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 577
    const-string/jumbo v2, ")"

    #@21
    .line 576
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
    .line 579
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    #@2f
    .line 574
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 298
    return-void

    #@6
    .line 300
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    #@8
    .line 301
    if-eqz p1, :cond_2

    #@a
    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@10
    .line 303
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@16
    .line 308
    :goto_0
    if-nez p1, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    #@1c
    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@1f
    .line 296
    return-void

    #@20
    .line 305
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    #@22
    .line 306
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    #@24
    goto :goto_0
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    #@0
    .prologue
    .line 322
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    #@2
    .line 321
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1780
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 1781
    const v0, 0x800007

    #@7
    and-int/2addr v0, p1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1782
    const v0, 0x800003

    #@d
    or-int/2addr p1, v0

    #@e
    .line 1785
    :cond_0
    and-int/lit8 v0, p1, 0x70

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1786
    or-int/lit8 p1, p1, 0x30

    #@14
    .line 1789
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@16
    .line 1790
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@19
    .line 1779
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
    .line 1806
    and-int v0, p1, v2

    #@5
    .line 1807
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@7
    and-int/2addr v1, v2

    #@8
    if-eq v1, v0, :cond_0

    #@a
    .line 1808
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
    .line 1809
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@16
    .line 1805
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
    .line 502
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    #@2
    .line 501
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 1752
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1753
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    #@6
    .line 1754
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@9
    .line 1751
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    #@0
    .prologue
    .line 256
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@7
    .line 259
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    #@9
    .line 255
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1815
    and-int/lit8 v0, p1, 0x70

    #@2
    .line 1816
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@4
    and-int/lit8 v1, v1, 0x70

    #@6
    if-eq v1, v0, :cond_0

    #@8
    .line 1817
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@a
    and-int/lit8 v1, v1, -0x71

    #@c
    or-int/2addr v1, v0

    #@d
    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    #@f
    .line 1818
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    #@12
    .line 1814
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
    .line 634
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    #@7
    .line 633
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    return v0
.end method
