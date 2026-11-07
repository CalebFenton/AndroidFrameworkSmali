.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-r INDEX_BOTTOM:I = 0x2

.field private static final greylist-max-o INDEX_CENTER_VERTICAL:I = 0x0

.field private static final greylist-max-o INDEX_FILL:I = 0x3

.field private static final greylist-max-r INDEX_TOP:I = 0x1

.field public static final whitelist SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final whitelist SHOW_DIVIDER_END:I = 0x4

.field public static final whitelist SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final whitelist SHOW_DIVIDER_NONE:I = 0x0

.field public static final whitelist VERTICAL:I = 0x1

.field private static final greylist-max-o VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static greylist-max-o sCompatibilityDone:Z

.field private static greylist-max-o sRemeasureWeightedChildren:Z


# instance fields
.field private final greylist-max-o mAllowInconsistentMeasurement:Z

.field private greylist-max-o mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerHeight:I

.field private greylist-max-o mDividerPadding:I

.field private greylist-max-o mDividerWidth:I

.field private greylist-max-p mGravity:I
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

.field private greylist-max-o mLayoutDirection:I

.field private greylist mMaxAscent:[I

.field private greylist mMaxDescent:[I

.field private greylist-max-o mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist-max-o mShowDividers:I

.field private greylist mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 254
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 161
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 228
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 256
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_2a

    if-eqz p1, :cond_2a

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 260
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_25

    move v4, v0

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 262
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 265
    .end local v3    # "targetSdkVersion":I
    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 267
    .local v8, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v5, "context":Landroid/content/Context;
    .local v7, "attrs":Landroid/util/AttributeSet;
    .local v9, "defStyleAttr":I
    .local v10, "defStyleRes":I
    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 270
    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 271
    .local p1, "index":I
    if-ltz p1, :cond_43

    .line 272
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    :cond_43
    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 276
    if-ltz p1, :cond_4c

    .line 277
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 280
    :cond_4c
    const/4 p2, 0x2

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 281
    .local p2, "baselineAligned":Z
    if-nez p2, :cond_56

    .line 282
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 285
    :cond_56
    const/4 p3, 0x4

    const/high16 p4, -0x40800000    # -1.0f

    invoke-virtual {v8, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, v4, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 287
    nop

    .line 288
    const/4 p3, 0x3

    invoke-virtual {v8, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v4, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 290
    const/4 p3, 0x6

    invoke-virtual {v8, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, v4, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 292
    const/4 p3, 0x7

    invoke-virtual {v8, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v4, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 293
    const/16 p3, 0x8

    invoke-virtual {v8, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v4, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 294
    const/4 p3, 0x5

    invoke-virtual {v8, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 297
    .local p3, "version":I
    const/16 p4, 0x17

    if-gt p3, p4, :cond_90

    goto :goto_91

    :cond_90
    move v0, v2

    :goto_91
    iput-boolean v0, v4, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 299
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return-void
.end method

.method private blacklist allViewsAreGoneAfter(I)Z
    .registers 7
    .param p1, "childIndex"    # I

    .line 787
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 788
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_1b

    .line 789
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 790
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_18

    .line 791
    const/4 v3, 0x0

    return v3

    .line 788
    .end local v2    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 794
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o allViewsAreGoneBefore(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 774
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_17

    .line 775
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 776
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 777
    const/4 v2, 0x0

    return v2

    .line 774
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 780
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o forceUniformHeight(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1548
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1550
    .local v6, "uniformMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p1, :cond_3f

    .line 1551
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1552
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    .line 1553
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1555
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_38

    .line 1558
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1559
    .local v8, "oldWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1562
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    .end local p2    # "widthMeasureSpec":I
    .local v4, "widthMeasureSpec":I
    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1563
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3b

    .line 1555
    .end local v4    # "widthMeasureSpec":I
    .end local v8    # "oldWidth":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_38
    move v4, p2

    .end local p2    # "widthMeasureSpec":I
    .restart local v4    # "widthMeasureSpec":I
    goto :goto_3b

    .line 1552
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "widthMeasureSpec":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_3a
    move v4, p2

    .line 1550
    .end local v3    # "child":Landroid/view/View;
    .end local p2    # "widthMeasureSpec":I
    .restart local v4    # "widthMeasureSpec":I
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    move p2, v4

    goto :goto_b

    .line 1567
    .end local v0    # "i":I
    .end local v4    # "widthMeasureSpec":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o forceUniformWidth(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1108
    .local v4, "uniformMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p1, :cond_3f

    .line 1109
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1110
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    .line 1111
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1113
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_38

    .line 1116
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1117
    .local v8, "oldHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1120
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .local v6, "heightMeasureSpec":I
    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1121
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3b

    .line 1113
    .end local v6    # "heightMeasureSpec":I
    .end local v8    # "oldHeight":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_38
    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    goto :goto_3b

    .line 1110
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_3a
    move v6, p2

    .line 1108
    .end local v3    # "child":Landroid/view/View;
    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_b

    .line 1125
    .end local v0    # "i":I
    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o getLastNonGoneChild()Landroid/view/View;
    .registers 5

    .line 466
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 467
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 469
    return-object v1

    .line 466
    .end local v1    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 472
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist hasDividerAfterChildAt(I)Z
    .registers 5
    .param p1, "childIndex"    # I

    .line 759
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 761
    return v1

    .line 763
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneAfter(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 765
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    move v1, v2

    :cond_14
    return v1

    .line 767
    :cond_15
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method private greylist-max-o isShowingDividers()Z
    .registers 2

    .line 307
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1891
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1892
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2016
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method greylist-max-o drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 476
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 477
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 478
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 479
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 480
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 481
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 482
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2f

    .line 485
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 487
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 489
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 478
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 494
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 495
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    .line 497
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_5f

    .line 498
    if-eqz v1, :cond_52

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7b

    .line 501
    .end local v3    # "position":I
    :cond_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7b

    .line 504
    .end local v3    # "position":I
    :cond_5f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_73

    .line 506
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7b

    .line 508
    .end local v4    # "position":I
    :cond_73
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 511
    .local v3, "position":I
    :goto_7b
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 513
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_7e
    return-void
.end method

.method greylist-max-o drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 436
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 437
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 438
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 440
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 442
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 443
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 437
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 448
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 449
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 450
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 451
    .local v2, "bottom":I
    if-nez v1, :cond_4b

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5a

    .line 454
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 457
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5a
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 459
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5d
    return-void
.end method

.method greylist-max-o drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 516
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 517
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 516
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 518
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    return-void
.end method

.method greylist-max-o drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 522
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 523
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 522
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2027
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2028
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2029
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2030
    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2031
    const-string v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2032
    const-string v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2033
    const-string v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2034
    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2035
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2036
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1992
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1993
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1994
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 1995
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1997
    :cond_17
    const/4 v0, 0x0

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

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

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

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1979
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2002
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 2003
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 2004
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 2005
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 2006
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2009
    :cond_1e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2021
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 7

    .line 586
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 590
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_67

    .line 595
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 598
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 599
    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_23

    .line 601
    return v2

    .line 605
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_2b
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 617
    .local v2, "childTop":I
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5c

    .line 618
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 619
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5c

    .line 620
    sparse-switch v3, :sswitch_data_70

    goto :goto_5c

    .line 622
    :sswitch_3e
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    .line 623
    goto :goto_5c

    .line 626
    :sswitch_4b
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 633
    .end local v3    # "majorGravity":I
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 634
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 591
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_4b
        0x50 -> :sswitch_3e
    .end sparse-switch
.end method

.method public whitelist getBaselineAlignedChildIndex()I
    .registers 2

    .line 644
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerPadding()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public greylist-max-o getDividerWidth()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 1956
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1620
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1632
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 1919
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public whitelist getShowDividers()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method greylist-max-o getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getVirtualChildCount()I
    .registers 2

    .line 686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getWeightSum()F
    .registers 2

    .line 698
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected greylist-max-o hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 735
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 737
    return v1

    .line 739
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_15

    .line 741
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    move v1, v2

    :cond_14
    return v1

    .line 743
    :cond_15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 744
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_22

    .line 746
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 748
    :cond_22
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_29

    move v1, v2

    :cond_29
    return v1
.end method

.method public whitelist isBaselineAligned()Z
    .registers 2

    .line 535
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public whitelist isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 564
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method greylist-max-o layoutHorizontal(IIII)V
    .registers 35
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1762
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    .line 1763
    .local v6, "isLayoutRtl":Z
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1769
    .local v7, "paddingTop":I
    sub-int v8, p4, p2

    .line 1770
    .local v8, "height":I
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v9, v8, v1

    .line 1773
    .local v9, "childBottom":I
    sub-int v1, v8, v7

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v1, v2

    .line 1775
    .local v10, "childSpace":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1777
    .local v11, "count":I
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, 0x800007

    and-int v12, v1, v2

    .line 1778
    .local v12, "majorGravity":I
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v13, v1, 0x70

    .line 1780
    .local v13, "minorGravity":I
    iget-boolean v14, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1782
    .local v14, "baselineAligned":Z
    iget-object v15, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1783
    .local v15, "maxAscent":[I
    iget-object v1, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1785
    .local v1, "maxDescent":[I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1786
    .local v2, "layoutDirection":I
    invoke-static {v12, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    const/16 v16, 0x2

    sparse-switch v3, :sswitch_data_16c

    .line 1799
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .local v3, "childLeft":I
    goto :goto_4e

    .line 1789
    .end local v3    # "childLeft":I
    :sswitch_39
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, v4

    .line 1790
    .restart local v3    # "childLeft":I
    goto :goto_4e

    .line 1794
    .end local v3    # "childLeft":I
    :sswitch_43
    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v4, p3, p1

    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1795
    .restart local v3    # "childLeft":I
    nop

    .line 1803
    :goto_4e
    const/4 v4, 0x0

    .line 1804
    .local v4, "start":I
    const/4 v5, 0x1

    .line 1806
    .local v5, "dir":I
    if-eqz v6, :cond_5a

    .line 1807
    add-int/lit8 v4, v11, -0x1

    .line 1808
    const/4 v5, -0x1

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_5e

    .line 1806
    :cond_5a
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1811
    .end local v4    # "start":I
    .end local v5    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_5e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5f
    if-ge v4, v11, :cond_16a

    .line 1812
    mul-int v5, v18, v4

    add-int v5, v17, v5

    .line 1813
    .local v5, "childIndex":I
    move-object/from16 v19, v1

    .end local v1    # "maxDescent":[I
    .local v19, "maxDescent":[I
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1814
    .local v1, "child":Landroid/view/View;
    const/16 v20, 0x1

    if-nez v1, :cond_7d

    .line 1815
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v3, v3, v21

    move/from16 v21, v2

    move/from16 v25, v6

    move/from16 v23, v7

    goto/16 :goto_15e

    .line 1816
    :cond_7d
    move/from16 v21, v2

    .end local v2    # "layoutDirection":I
    .local v21, "layoutDirection":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "childLeft":I
    .local v22, "childLeft":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_155

    .line 1817
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1818
    .local v4, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1819
    .local v3, "childHeight":I
    const/16 v23, -0x1

    .line 1821
    .local v23, "childBaseline":I
    nop

    .line 1822
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v6

    .end local v6    # "isLayoutRtl":Z
    .local v25, "isLayoutRtl":Z
    move-object/from16 v6, v24

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1824
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v24, v2

    .end local v2    # "i":I
    .local v24, "i":I
    const/4 v2, -0x1

    if-eqz v14, :cond_b1

    move/from16 v26, v3

    .end local v3    # "childHeight":I
    .local v26, "childHeight":I
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v3, v2, :cond_b3

    .line 1825
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v23

    move/from16 v3, v23

    goto :goto_b5

    .line 1824
    .end local v26    # "childHeight":I
    .restart local v3    # "childHeight":I
    :cond_b1
    move/from16 v26, v3

    .line 1828
    .end local v3    # "childHeight":I
    .restart local v26    # "childHeight":I
    :cond_b3
    move/from16 v3, v23

    .end local v23    # "childBaseline":I
    .local v3, "childBaseline":I
    :goto_b5
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1829
    .local v2, "gravity":I
    if-gez v2, :cond_bd

    .line 1830
    move v2, v13

    move/from16 v27, v2

    goto :goto_bf

    .line 1829
    :cond_bd
    move/from16 v27, v2

    .line 1833
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_bf
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_176

    .line 1865
    move v2, v7

    .local v2, "childTop":I
    goto :goto_105

    .line 1858
    .end local v2    # "childTop":I
    :sswitch_c6
    sub-int v2, v9, v26

    move/from16 v28, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v28, v2

    .line 1859
    .restart local v2    # "childTop":I
    move/from16 v28, v2

    const/4 v2, -0x1

    .end local v2    # "childTop":I
    .local v28, "childTop":I
    if-eq v3, v2, :cond_df

    .line 1860
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v3

    .line 1861
    .local v2, "descent":I
    aget v23, v19, v16

    sub-int v23, v23, v2

    sub-int v2, v28, v23

    .line 1862
    .end local v28    # "childTop":I
    .local v2, "childTop":I
    goto :goto_105

    .line 1859
    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    :cond_df
    move/from16 v2, v28

    goto :goto_105

    .line 1835
    .end local v28    # "childTop":I
    :sswitch_e2
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v7

    .line 1836
    .restart local v2    # "childTop":I
    move/from16 v28, v2

    const/4 v2, -0x1

    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    if-eq v3, v2, :cond_f0

    .line 1837
    aget v2, v15, v20

    sub-int/2addr v2, v3

    add-int v2, v28, v2

    .end local v28    # "childTop":I
    .restart local v2    # "childTop":I
    goto :goto_105

    .line 1836
    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    :cond_f0
    move/from16 v2, v28

    goto :goto_105

    .line 1853
    .end local v28    # "childTop":I
    :sswitch_f3
    sub-int v2, v10, v26

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    move/from16 v23, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v2, v23, v2

    move/from16 v23, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v23, v2

    .line 1855
    .restart local v2    # "childTop":I
    nop

    .line 1869
    :goto_105
    if-eqz v25, :cond_117

    .line 1872
    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;->hasDividerAfterChildAt(I)Z

    move-result v23

    if-eqz v23, :cond_114

    .line 1873
    move/from16 v23, v2

    .end local v2    # "childTop":I
    .local v23, "childTop":I
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int v2, v22, v2

    .end local v22    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_126

    .line 1872
    .end local v23    # "childTop":I
    .local v2, "childTop":I
    .restart local v22    # "childLeft":I
    :cond_114
    move/from16 v23, v2

    .end local v2    # "childTop":I
    .restart local v23    # "childTop":I
    goto :goto_124

    .line 1875
    .end local v23    # "childTop":I
    .restart local v2    # "childTop":I
    :cond_117
    move/from16 v23, v2

    .end local v2    # "childTop":I
    .restart local v23    # "childTop":I
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 1876
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int v2, v22, v2

    .end local v22    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_126

    .line 1879
    .end local v2    # "childLeft":I
    .restart local v22    # "childLeft":I
    :cond_124
    :goto_124
    move/from16 v2, v22

    .end local v22    # "childLeft":I
    .restart local v2    # "childLeft":I
    :goto_126
    move/from16 v22, v2

    .end local v2    # "childLeft":I
    .restart local v22    # "childLeft":I
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v22, v22, v2

    .line 1880
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v22, v2

    move/from16 v29, v26

    move/from16 v26, v3

    move/from16 v3, v23

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v29

    .local v3, "childTop":I
    .local v5, "childHeight":I
    .local v7, "childIndex":I
    .local v23, "paddingTop":I
    .local v26, "childBaseline":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1882
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1883
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v28

    add-int v2, v2, v28

    add-int v22, v22, v2

    .line 1885
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v2, v24, v2

    move v4, v2

    move/from16 v3, v22

    .end local v24    # "i":I
    .local v2, "i":I
    goto :goto_15e

    .line 1816
    .end local v2    # "i":I
    .end local v3    # "childTop":I
    .end local v23    # "paddingTop":I
    .end local v25    # "isLayoutRtl":Z
    .end local v26    # "childBaseline":I
    .end local v27    # "gravity":I
    .local v4, "i":I
    .local v5, "childIndex":I
    .local v6, "isLayoutRtl":Z
    .local v7, "paddingTop":I
    :cond_155
    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v23, v7

    move v7, v5

    .end local v4    # "i":I
    .end local v5    # "childIndex":I
    .end local v6    # "isLayoutRtl":Z
    .local v7, "childIndex":I
    .restart local v23    # "paddingTop":I
    .restart local v24    # "i":I
    .restart local v25    # "isLayoutRtl":Z
    move/from16 v3, v22

    .line 1811
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "childIndex":I
    .end local v22    # "childLeft":I
    .end local v24    # "i":I
    .local v3, "childLeft":I
    .restart local v4    # "i":I
    :goto_15e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v7, v23

    move/from16 v6, v25

    goto/16 :goto_5f

    .line 1888
    .end local v4    # "i":I
    .end local v19    # "maxDescent":[I
    .end local v21    # "layoutDirection":I
    .end local v23    # "paddingTop":I
    .end local v25    # "isLayoutRtl":Z
    .local v1, "maxDescent":[I
    .local v2, "layoutDirection":I
    .restart local v6    # "isLayoutRtl":Z
    .local v7, "paddingTop":I
    :cond_16a
    return-void

    nop

    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_43
        0x5 -> :sswitch_39
    .end sparse-switch

    :sswitch_data_176
    .sparse-switch
        0x10 -> :sswitch_f3
        0x30 -> :sswitch_e2
        0x50 -> :sswitch_c6
    .end sparse-switch
.end method

.method greylist-max-o layoutVertical(IIII)V
    .registers 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1657
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1663
    .local v6, "paddingLeft":I
    sub-int v7, p3, p1

    .line 1664
    .local v7, "width":I
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v7, v1

    .line 1667
    .local v8, "childRight":I
    sub-int v1, v7, v6

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v2

    .line 1669
    .local v9, "childSpace":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1671
    .local v10, "count":I
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v11, v1, 0x70

    .line 1672
    .local v11, "majorGravity":I
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, 0x800007

    and-int v12, v1, v2

    .line 1674
    .local v12, "minorGravity":I
    sparse-switch v11, :sswitch_data_e4

    .line 1687
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .local v1, "childTop":I
    goto :goto_3a

    .line 1677
    .end local v1    # "childTop":I
    :sswitch_25
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v1, v1, p4

    sub-int v1, v1, p2

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    .line 1678
    .restart local v1    # "childTop":I
    goto :goto_3a

    .line 1682
    .end local v1    # "childTop":I
    :sswitch_2f
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v2, p4, p2

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1683
    .restart local v1    # "childTop":I
    nop

    .line 1691
    :goto_3a
    const/4 v2, 0x0

    move v13, v2

    .local v13, "i":I
    :goto_3c
    if-ge v13, v10, :cond_e3

    .line 1692
    move v2, v1

    .end local v1    # "childTop":I
    .local v2, "childTop":I
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1693
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4d

    .line 1694
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    goto/16 :goto_df

    .line 1695
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_db

    .line 1696
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1697
    .local v4, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1699
    .local v5, "childHeight":I
    nop

    .line 1700
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1702
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1703
    .local v3, "gravity":I
    if-gez v3, :cond_6c

    .line 1704
    move v3, v12

    move v15, v3

    goto :goto_6d

    .line 1703
    :cond_6c
    move v15, v3

    .line 1706
    .end local v3    # "gravity":I
    .local v15, "gravity":I
    :goto_6d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1707
    .local v3, "layoutDirection":I
    invoke-static {v15, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    .line 1708
    .local v16, "absoluteGravity":I
    and-int/lit8 v17, v16, 0x7

    sparse-switch v17, :sswitch_data_ee

    .line 1720
    move/from16 v18, v2

    .end local v2    # "childTop":I
    .local v18, "childTop":I
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v6, v2

    move/from16 v2, v17

    .local v17, "childLeft":I
    goto :goto_a3

    .line 1715
    .end local v17    # "childLeft":I
    .end local v18    # "childTop":I
    .restart local v2    # "childTop":I
    :sswitch_83
    sub-int v17, v8, v4

    move/from16 v18, v2

    .end local v2    # "childTop":I
    .restart local v18    # "childTop":I
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v17, v17, v2

    .line 1716
    .restart local v17    # "childLeft":I
    move/from16 v2, v17

    goto :goto_a3

    .line 1710
    .end local v17    # "childLeft":I
    .end local v18    # "childTop":I
    .restart local v2    # "childTop":I
    :sswitch_8e
    move/from16 v18, v2

    .end local v2    # "childTop":I
    .restart local v18    # "childTop":I
    sub-int v2, v9, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    move/from16 v17, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v2, v17, v2

    move/from16 v17, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v17, v17, v2

    .line 1712
    .restart local v17    # "childLeft":I
    move/from16 v2, v17

    .line 1724
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    :goto_a3
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v17

    if-eqz v17, :cond_b2

    .line 1725
    move/from16 v17, v2

    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int v2, v18, v2

    move/from16 v18, v2

    .end local v18    # "childTop":I
    .local v2, "childTop":I
    goto :goto_b4

    .line 1724
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    .restart local v18    # "childTop":I
    :cond_b2
    move/from16 v17, v2

    .line 1728
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :goto_b4
    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v18, v18, v2

    .line 1729
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v18, v2

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v17

    move/from16 v17, v20

    .end local v3    # "layoutDirection":I
    .restart local v2    # "childLeft":I
    .local v17, "layoutDirection":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1731
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v19

    add-int v3, v3, v19

    add-int v18, v18, v3

    .line 1733
    invoke-virtual {v0, v1, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v13, v3

    move/from16 v1, v18

    goto :goto_df

    .line 1695
    .end local v4    # "childWidth":I
    .end local v5    # "childHeight":I
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "gravity":I
    .end local v16    # "absoluteGravity":I
    .end local v17    # "layoutDirection":I
    .end local v18    # "childTop":I
    .local v2, "childTop":I
    :cond_db
    move/from16 v18, v2

    .end local v2    # "childTop":I
    .restart local v18    # "childTop":I
    move/from16 v1, v18

    .line 1691
    .end local v18    # "childTop":I
    .local v1, "childTop":I
    :goto_df
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3c

    .line 1736
    .end local v13    # "i":I
    :cond_e3
    return-void

    :sswitch_data_e4
    .sparse-switch
        0x10 -> :sswitch_2f
        0x50 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_8e
        0x5 -> :sswitch_83
    .end sparse-switch
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1608
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p1    # "child":Landroid/view/View;
    .end local p3    # "widthMeasureSpec":I
    .end local p4    # "totalWidth":I
    .end local p5    # "heightMeasureSpec":I
    .end local p6    # "totalHeight":I
    .local v1, "child":Landroid/view/View;
    .local v2, "widthMeasureSpec":I
    .local v3, "totalWidth":I
    .local v4, "heightMeasureSpec":I
    .local v5, "totalHeight":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1610
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .registers 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1139
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1140
    const/4 v1, 0x0

    .line 1141
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 1142
    .local v2, "childState":I
    const/4 v3, 0x0

    .line 1143
    .local v3, "alternativeMaxHeight":I
    const/4 v4, 0x0

    .line 1144
    .local v4, "weightedMaxHeight":I
    const/4 v5, 0x1

    .line 1145
    .local v5, "allFillParent":Z
    const/4 v6, 0x0

    .line 1147
    .local v6, "totalWeight":F
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    .line 1149
    .local v8, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1150
    .local v9, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1152
    .local v10, "heightMode":I
    const/4 v11, 0x0

    .line 1153
    .local v11, "matchHeight":Z
    const/4 v12, 0x0

    .line 1155
    .local v12, "skippedMeasure":Z
    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v13, :cond_21

    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v13, :cond_2a

    .line 1156
    :cond_21
    const/4 v13, 0x4

    new-array v14, v13, [I

    iput-object v14, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1157
    new-array v13, v13, [I

    iput-object v13, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1160
    :cond_2a
    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1161
    .local v13, "maxAscent":[I
    iget-object v14, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1163
    .local v14, "maxDescent":[I
    const/16 v16, 0x3

    const/4 v15, -0x1

    aput v15, v13, v16

    const/16 v17, 0x2

    aput v15, v13, v17

    const/16 v18, 0x1

    aput v15, v13, v18

    aput v15, v13, v7

    .line 1164
    aput v15, v14, v16

    aput v15, v14, v17

    aput v15, v14, v18

    aput v15, v14, v7

    .line 1166
    iget-boolean v15, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1167
    .local v15, "baselineAligned":Z
    move/from16 v20, v6

    .end local v6    # "totalWeight":F
    .local v20, "totalWeight":F
    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 1169
    .local v6, "useLargestChild":Z
    move/from16 v21, v6

    .end local v6    # "useLargestChild":Z
    .local v21, "useLargestChild":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v9, v6, :cond_54

    move/from16 v22, v18

    goto :goto_56

    :cond_54
    move/from16 v22, v7

    .line 1171
    .local v22, "isExactly":Z
    :goto_56
    const/high16 v23, -0x80000000

    .line 1172
    .local v23, "largestChildWidth":I
    const/16 v24, 0x0

    .line 1174
    .local v24, "usedExcessSpace":I
    const/16 v25, 0x0

    .line 1177
    .local v25, "nonSkippedChildCount":I
    const/16 v26, 0x0

    move v7, v11

    move v11, v1

    move/from16 v1, v20

    move/from16 v20, v5

    move/from16 v5, v25

    move/from16 v25, v24

    move/from16 v24, v12

    move v12, v2

    move/from16 v2, v23

    move/from16 v23, v7

    move/from16 v7, v26

    .local v1, "totalWeight":F
    .local v2, "largestChildWidth":I
    .local v5, "nonSkippedChildCount":I
    .local v7, "i":I
    .local v11, "maxHeight":I
    .local v12, "childState":I
    .local v20, "allFillParent":Z
    .local v23, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    .local v25, "usedExcessSpace":I
    :goto_71
    const/16 v6, 0x8

    const/16 v29, 0x0

    if-ge v7, v8, :cond_281

    .line 1178
    move/from16 v30, v1

    .end local v1    # "totalWeight":F
    .local v30, "totalWeight":F
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1179
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_9a

    .line 1180
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v28

    add-int v6, v6, v28

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1181
    move/from16 v1, p2

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v31, v15

    move/from16 v28, v21

    move-object/from16 v21, v13

    move v13, v3

    move/from16 v3, p1

    goto/16 :goto_26e

    .line 1184
    :cond_9a
    move/from16 v31, v2

    .end local v2    # "largestChildWidth":I
    .local v31, "largestChildWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_ba

    .line 1185
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v7, v2

    .line 1186
    move/from16 v1, p2

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v28, v21

    move/from16 v2, v31

    move-object/from16 v21, v13

    move/from16 v31, v15

    move v13, v3

    move/from16 v3, p1

    goto/16 :goto_26e

    .line 1189
    :cond_ba
    add-int/lit8 v32, v5, 0x1

    .line 1190
    .end local v5    # "nonSkippedChildCount":I
    .local v32, "nonSkippedChildCount":I
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 1191
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1194
    :cond_c9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v30, v30, v5

    .line 1198
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v5, :cond_e0

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v29

    if-lez v5, :cond_e0

    move/from16 v5, v18

    goto :goto_e1

    :cond_e0
    const/4 v5, 0x0

    :goto_e1
    move/from16 v33, v5

    .line 1199
    .local v33, "useExcessSpace":Z
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_156

    if-eqz v33, :cond_156

    .line 1203
    if-eqz v22, :cond_f8

    .line 1204
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v34, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v34, "alternativeMaxHeight":I
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    add-int/2addr v6, v5

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_108

    .line 1206
    .end local v34    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_f8
    move/from16 v34, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v34    # "alternativeMaxHeight":I
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1207
    .local v3, "totalLength":I
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1216
    .end local v3    # "totalLength":I
    :goto_108
    if-eqz v15, :cond_13a

    .line 1217
    nop

    .line 1218
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1217
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1219
    .local v3, "freeWidthSpec":I
    nop

    .line 1220
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1219
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 1221
    .local v6, "freeHeightSpec":I
    invoke-virtual {v1, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1222
    .end local v3    # "freeWidthSpec":I
    .end local v6    # "freeHeightSpec":I
    move/from16 v3, p1

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v28, v21

    move/from16 v5, v31

    move v14, v4

    move-object/from16 v21, v13

    move/from16 v31, v15

    move/from16 v13, v34

    const/16 v34, -0x2

    move-object v4, v1

    move-object v15, v2

    move v2, v7

    move/from16 v1, p2

    goto/16 :goto_1d7

    .line 1223
    :cond_13a
    const/16 v24, 0x1

    move/from16 v3, p1

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v28, v21

    move/from16 v5, v31

    move v14, v4

    move-object/from16 v21, v13

    move/from16 v31, v15

    move/from16 v13, v34

    const/16 v34, -0x2

    move-object v4, v1

    move-object v15, v2

    move v2, v7

    move/from16 v1, p2

    goto/16 :goto_1d7

    .line 1199
    .end local v34    # "alternativeMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    :cond_156
    move/from16 v34, v3

    .line 1226
    .end local v3    # "alternativeMaxHeight":I
    .restart local v34    # "alternativeMaxHeight":I
    if-eqz v33, :cond_15e

    .line 1232
    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_15f

    .line 1226
    :cond_15e
    const/4 v3, -0x2

    .line 1239
    :goto_15f
    cmpl-float v5, v30, v29

    if-nez v5, :cond_166

    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_167

    :cond_166
    const/4 v5, 0x0

    .line 1240
    .local v5, "usedWidth":I
    :goto_167
    const/4 v6, 0x0

    move/from16 v27, v15

    move-object v15, v2

    move v2, v7

    move/from16 v7, v31

    move/from16 v31, v27

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v28, v21

    const/high16 v9, 0x40000000    # 2.0f

    move v14, v4

    move v4, v5

    move-object/from16 v21, v13

    move/from16 v13, v34

    move/from16 v5, p2

    move/from16 v34, v3

    move/from16 v3, p1

    .end local v5    # "usedWidth":I
    .end local v9    # "widthMode":I
    .end local v34    # "alternativeMaxHeight":I
    .local v2, "i":I
    .local v4, "usedWidth":I
    .local v7, "largestChildWidth":I
    .local v13, "alternativeMaxHeight":I
    .local v14, "weightedMaxHeight":I
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v21, "maxAscent":[I
    .local v27, "maxDescent":[I
    .local v28, "useLargestChild":Z
    .local v31, "baselineAligned":Z
    .local v35, "widthMode":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1243
    move/from16 v47, v4

    move-object v4, v1

    move v1, v5

    move/from16 v5, v47

    .end local v1    # "child":Landroid/view/View;
    .local v4, "child":Landroid/view/View;
    .restart local v5    # "usedWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1244
    .local v6, "childWidth":I
    if-eqz v33, :cond_198

    .line 1248
    const/4 v9, 0x0

    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1249
    add-int v25, v25, v6

    .line 1252
    :cond_198
    if-eqz v22, :cond_1b1

    .line 1253
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v36, v5

    .end local v5    # "usedWidth":I
    .local v36, "usedWidth":I
    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    move/from16 v37, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v37, v5

    .line 1254
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v37

    add-int v5, v5, v37

    add-int/2addr v9, v5

    iput v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1cf

    .line 1256
    .end local v36    # "usedWidth":I
    .restart local v5    # "usedWidth":I
    :cond_1b1
    move/from16 v36, v5

    .end local v5    # "usedWidth":I
    .restart local v36    # "usedWidth":I
    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1257
    .local v5, "totalLength":I
    add-int v9, v5, v6

    move/from16 v37, v9

    iget v9, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v9, v37, v9

    move/from16 v37, v9

    iget v9, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v9, v37, v9

    .line 1258
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v37

    add-int v9, v9, v37

    .line 1257
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1261
    .end local v5    # "totalLength":I
    :goto_1cf
    if-eqz v28, :cond_1d6

    .line 1262
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .end local v7    # "largestChildWidth":I
    .local v5, "largestChildWidth":I
    goto :goto_1d7

    .line 1261
    .end local v5    # "largestChildWidth":I
    .restart local v7    # "largestChildWidth":I
    :cond_1d6
    move v5, v7

    .line 1266
    .end local v6    # "childWidth":I
    .end local v7    # "largestChildWidth":I
    .end local v36    # "usedWidth":I
    .restart local v5    # "largestChildWidth":I
    :goto_1d7
    const/4 v6, 0x0

    .line 1267
    .local v6, "matchHeightLocally":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-eq v10, v9, :cond_1e4

    iget v7, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1e4

    .line 1271
    const/16 v23, 0x1

    .line 1272
    const/4 v6, 0x1

    .line 1275
    :cond_1e4
    iget v7, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    .line 1276
    .local v7, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 1277
    .local v9, "childHeight":I
    move/from16 v36, v5

    .end local v5    # "largestChildWidth":I
    .local v36, "largestChildWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v12, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 1279
    .end local v12    # "childState":I
    .local v5, "childState":I
    if-eqz v31, :cond_22e

    .line 1280
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1281
    .local v12, "childBaseline":I
    move/from16 v37, v5

    const/4 v5, -0x1

    .end local v5    # "childState":I
    .local v37, "childState":I
    if-eq v12, v5, :cond_22b

    .line 1284
    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v5, :cond_20a

    iget v5, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_20c

    :cond_20a
    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_20c
    and-int/lit8 v5, v5, 0x70

    .line 1286
    .local v5, "gravity":I
    shr-int/lit8 v38, v5, 0x4

    and-int/lit8 v34, v38, -0x2

    shr-int/lit8 v34, v34, 0x1

    .line 1289
    .local v34, "index":I
    move/from16 v38, v5

    .end local v5    # "gravity":I
    .local v38, "gravity":I
    aget v5, v21, v34

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v21, v34

    .line 1290
    aget v5, v27, v34

    move/from16 v39, v6

    .end local v6    # "matchHeightLocally":Z
    .local v39, "matchHeightLocally":Z
    sub-int v6, v9, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v27, v34

    goto :goto_232

    .line 1281
    .end local v34    # "index":I
    .end local v38    # "gravity":I
    .end local v39    # "matchHeightLocally":Z
    .restart local v6    # "matchHeightLocally":Z
    :cond_22b
    move/from16 v39, v6

    .end local v6    # "matchHeightLocally":Z
    .restart local v39    # "matchHeightLocally":Z
    goto :goto_232

    .line 1279
    .end local v12    # "childBaseline":I
    .end local v37    # "childState":I
    .end local v39    # "matchHeightLocally":Z
    .local v5, "childState":I
    .restart local v6    # "matchHeightLocally":Z
    :cond_22e
    move/from16 v37, v5

    move/from16 v39, v6

    .line 1294
    .end local v5    # "childState":I
    .end local v6    # "matchHeightLocally":Z
    .restart local v37    # "childState":I
    .restart local v39    # "matchHeightLocally":Z
    :goto_232
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1296
    .end local v11    # "maxHeight":I
    .local v5, "maxHeight":I
    if-eqz v20, :cond_240

    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v6, v11, :cond_240

    move/from16 v6, v18

    goto :goto_241

    :cond_240
    const/4 v6, 0x0

    .line 1297
    .end local v20    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_241
    iget v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v11, v11, v29

    if-lez v11, :cond_253

    .line 1302
    nop

    .line 1303
    if-eqz v39, :cond_24c

    move v11, v7

    goto :goto_24d

    :cond_24c
    move v11, v9

    .line 1302
    :goto_24d
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v14, v11

    .end local v14    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    goto :goto_25e

    .line 1305
    .end local v11    # "weightedMaxHeight":I
    .restart local v14    # "weightedMaxHeight":I
    :cond_253
    nop

    .line 1306
    if-eqz v39, :cond_258

    move v11, v7

    goto :goto_259

    :cond_258
    move v11, v9

    .line 1305
    :goto_259
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v13, v11

    .line 1309
    :goto_25e
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v2, v11

    move v7, v2

    move v11, v5

    move/from16 v20, v6

    move v4, v14

    move/from16 v5, v32

    move/from16 v2, v36

    move/from16 v12, v37

    .line 1177
    .end local v6    # "allFillParent":Z
    .end local v9    # "childHeight":I
    .end local v14    # "weightedMaxHeight":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "nonSkippedChildCount":I
    .end local v33    # "useExcessSpace":Z
    .end local v36    # "largestChildWidth":I
    .end local v37    # "childState":I
    .end local v39    # "matchHeightLocally":Z
    .local v2, "largestChildWidth":I
    .local v4, "weightedMaxHeight":I
    .local v5, "nonSkippedChildCount":I
    .local v7, "i":I
    .local v11, "maxHeight":I
    .local v12, "childState":I
    .restart local v20    # "allFillParent":Z
    :goto_26e
    add-int/lit8 v7, v7, 0x1

    move v3, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v27

    move/from16 v21, v28

    move/from16 v1, v30

    move/from16 v15, v31

    move/from16 v9, v35

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_71

    .end local v27    # "maxDescent":[I
    .end local v28    # "useLargestChild":Z
    .end local v30    # "totalWeight":F
    .end local v31    # "baselineAligned":Z
    .end local v35    # "widthMode":I
    .local v1, "totalWeight":F
    .restart local v3    # "alternativeMaxHeight":I
    .local v9, "widthMode":I
    .local v13, "maxAscent":[I
    .local v14, "maxDescent":[I
    .local v15, "baselineAligned":Z
    .local v21, "useLargestChild":Z
    :cond_281
    move/from16 v27, v7

    move v7, v2

    move/from16 v2, v27

    move/from16 v30, v1

    move/from16 v35, v9

    move-object/from16 v27, v14

    move/from16 v31, v15

    move/from16 v28, v21

    const/16 v34, -0x2

    move/from16 v1, p2

    move v14, v4

    move-object/from16 v21, v13

    move v13, v3

    move/from16 v3, p1

    .line 1312
    .end local v1    # "totalWeight":F
    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "weightedMaxHeight":I
    .end local v9    # "widthMode":I
    .end local v15    # "baselineAligned":Z
    .local v7, "largestChildWidth":I
    .local v13, "alternativeMaxHeight":I
    .local v14, "weightedMaxHeight":I
    .local v21, "maxAscent":[I
    .restart local v27    # "maxDescent":[I
    .restart local v28    # "useLargestChild":Z
    .restart local v30    # "totalWeight":F
    .restart local v31    # "baselineAligned":Z
    .restart local v35    # "widthMode":I
    if-lez v5, :cond_2a9

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 1313
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1318
    :cond_2a9
    aget v2, v21, v18

    const/4 v9, -0x1

    if-ne v2, v9, :cond_2bc

    const/16 v26, 0x0

    aget v2, v21, v26

    if-ne v2, v9, :cond_2bc

    aget v2, v21, v17

    if-ne v2, v9, :cond_2bc

    aget v2, v21, v16

    if-eq v2, v9, :cond_2ec

    .line 1322
    :cond_2bc
    aget v2, v21, v16

    const/16 v26, 0x0

    aget v4, v21, v26

    aget v9, v21, v18

    aget v15, v21, v17

    .line 1324
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1323
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1322
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1325
    .local v2, "ascent":I
    aget v4, v27, v16

    aget v9, v27, v26

    aget v15, v27, v18

    aget v6, v27, v17

    .line 1327
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1326
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1325
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1328
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1331
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    :cond_2ec
    if-eqz v28, :cond_37f

    const/high16 v2, -0x80000000

    move/from16 v4, v35

    .end local v35    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v2, :cond_2f6

    if-nez v4, :cond_381

    .line 1333
    :cond_2f6
    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1334
    const/4 v2, 0x0

    .line 1336
    .end local v5    # "nonSkippedChildCount":I
    .local v2, "nonSkippedChildCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2fb
    if-ge v5, v8, :cond_36c

    .line 1337
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1338
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_30d

    .line 1339
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v15

    add-int/2addr v9, v15

    iput v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1340
    goto :goto_369

    .line 1343
    :cond_30d
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v15, 0x8

    if-ne v9, v15, :cond_31b

    .line 1344
    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v5, v9

    .line 1345
    goto :goto_369

    .line 1348
    :cond_31b
    add-int/lit8 v2, v2, 0x1

    .line 1349
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_32a

    .line 1350
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v15, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v9, v15

    iput v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1353
    :cond_32a
    nop

    .line 1354
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1355
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v22, :cond_34c

    .line 1356
    iget v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v2

    .end local v2    # "nonSkippedChildCount":I
    .local v33, "nonSkippedChildCount":I
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    move/from16 v35, v2

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v2, v35, v2

    .line 1357
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v2, v2, v35

    add-int/2addr v15, v2

    iput v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v35, v5

    goto :goto_365

    .line 1359
    .end local v33    # "nonSkippedChildCount":I
    .restart local v2    # "nonSkippedChildCount":I
    :cond_34c
    move/from16 v33, v2

    .end local v2    # "nonSkippedChildCount":I
    .restart local v33    # "nonSkippedChildCount":I
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1360
    .local v2, "totalLength":I
    add-int v15, v2, v7

    move/from16 v35, v5

    .end local v5    # "i":I
    .local v35, "i":I
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v5

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v5

    .line 1361
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v15, v5

    .line 1360
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1336
    .end local v2    # "totalLength":I
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_365
    move/from16 v2, v33

    move/from16 v5, v35

    .end local v33    # "nonSkippedChildCount":I
    .end local v35    # "i":I
    .local v2, "nonSkippedChildCount":I
    .restart local v5    # "i":I
    :goto_369
    add-int/lit8 v5, v5, 0x1

    goto :goto_2fb

    :cond_36c
    move/from16 v35, v5

    .line 1365
    .end local v5    # "i":I
    if-lez v2, :cond_37d

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_37d

    .line 1366
    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1371
    :cond_37d
    move v5, v2

    goto :goto_381

    .line 1331
    .end local v2    # "nonSkippedChildCount":I
    .end local v4    # "widthMode":I
    .local v5, "nonSkippedChildCount":I
    .local v35, "widthMode":I
    :cond_37f
    move/from16 v4, v35

    .line 1371
    .end local v35    # "widthMode":I
    .restart local v4    # "widthMode":I
    :cond_381
    :goto_381
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v9, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v9

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1373
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1376
    .local v2, "widthSize":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1379
    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1380
    .local v6, "widthSizeAndState":I
    const v9, 0xffffff

    and-int v2, v6, v9

    .line 1385
    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v2, v9

    .line 1386
    iget-boolean v15, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v15, :cond_3a9

    const/4 v15, 0x0

    goto :goto_3ab

    :cond_3a9
    move/from16 v15, v25

    :goto_3ab
    add-int/2addr v9, v15

    .line 1387
    .local v9, "remainingExcess":I
    if-nez v24, :cond_44a

    sget-boolean v33, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v33, :cond_3b4

    if-eqz v9, :cond_3c4

    :cond_3b4
    cmpl-float v33, v30, v29

    if-lez v33, :cond_3c4

    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    const/high16 v33, -0x1000000

    goto/16 :goto_454

    .line 1501
    :cond_3c4
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1505
    if-eqz v28, :cond_43a

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v33, -0x1000000

    if-eq v4, v15, :cond_431

    .line 1506
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3d1
    if-ge v15, v8, :cond_428

    .line 1507
    move/from16 v35, v2

    .end local v2    # "widthSize":I
    .local v35, "widthSize":I
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1508
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_417

    move/from16 v36, v5

    .end local v5    # "nonSkippedChildCount":I
    .local v36, "nonSkippedChildCount":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v37, v6

    const/16 v6, 0x8

    .end local v6    # "widthSizeAndState":I
    .local v37, "widthSizeAndState":I
    if-ne v5, v6, :cond_3ea

    .line 1509
    move/from16 v38, v7

    goto :goto_41d

    .line 1512
    :cond_3ea
    nop

    .line 1513
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1515
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1516
    .local v6, "childExtra":F
    cmpl-float v16, v6, v29

    if-lez v16, :cond_410

    .line 1517
    nop

    .line 1518
    move-object/from16 v16, v5

    move/from16 v17, v6

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "childExtra":F
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "childExtra":F
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1519
    move/from16 v38, v7

    .end local v7    # "largestChildWidth":I
    .local v38, "largestChildWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1517
    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_41d

    .line 1516
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "childExtra":F
    .end local v38    # "largestChildWidth":I
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "childExtra":F
    .restart local v7    # "largestChildWidth":I
    :cond_410
    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v38, v7

    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "childExtra":F
    .end local v7    # "largestChildWidth":I
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "childExtra":F
    .restart local v38    # "largestChildWidth":I
    goto :goto_41d

    .line 1508
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "childExtra":F
    .end local v36    # "nonSkippedChildCount":I
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "largestChildWidth":I
    .local v5, "nonSkippedChildCount":I
    .local v6, "widthSizeAndState":I
    .restart local v7    # "largestChildWidth":I
    :cond_417
    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    .line 1506
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "nonSkippedChildCount":I
    .end local v6    # "widthSizeAndState":I
    .end local v7    # "largestChildWidth":I
    .restart local v36    # "nonSkippedChildCount":I
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "largestChildWidth":I
    :goto_41d
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v35

    move/from16 v5, v36

    move/from16 v6, v37

    move/from16 v7, v38

    goto :goto_3d1

    .end local v35    # "widthSize":I
    .end local v36    # "nonSkippedChildCount":I
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "largestChildWidth":I
    .local v2, "widthSize":I
    .restart local v5    # "nonSkippedChildCount":I
    .restart local v6    # "widthSizeAndState":I
    .restart local v7    # "largestChildWidth":I
    :cond_428
    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    .end local v2    # "widthSize":I
    .end local v5    # "nonSkippedChildCount":I
    .end local v6    # "widthSizeAndState":I
    .end local v7    # "largestChildWidth":I
    .restart local v35    # "widthSize":I
    .restart local v36    # "nonSkippedChildCount":I
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "largestChildWidth":I
    goto :goto_444

    .line 1505
    .end local v15    # "i":I
    .end local v35    # "widthSize":I
    .end local v36    # "nonSkippedChildCount":I
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "widthSize":I
    .restart local v5    # "nonSkippedChildCount":I
    .restart local v6    # "widthSizeAndState":I
    .restart local v7    # "largestChildWidth":I
    :cond_431
    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    goto :goto_444

    :cond_43a
    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    const/high16 v33, -0x1000000

    .line 1526
    .end local v2    # "widthSize":I
    .end local v5    # "nonSkippedChildCount":I
    .end local v6    # "widthSizeAndState":I
    .end local v7    # "largestChildWidth":I
    .restart local v35    # "widthSize":I
    .restart local v36    # "nonSkippedChildCount":I
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "largestChildWidth":I
    :goto_444
    move/from16 v41, v4

    move/from16 v5, v36

    goto/16 :goto_632

    .line 1387
    .end local v35    # "widthSize":I
    .end local v36    # "nonSkippedChildCount":I
    .end local v37    # "widthSizeAndState":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "widthSize":I
    .restart local v5    # "nonSkippedChildCount":I
    .restart local v6    # "widthSizeAndState":I
    .restart local v7    # "largestChildWidth":I
    :cond_44a
    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    const/high16 v33, -0x1000000

    .line 1389
    .end local v2    # "widthSize":I
    .end local v5    # "nonSkippedChildCount":I
    .end local v6    # "widthSizeAndState":I
    .end local v7    # "largestChildWidth":I
    .restart local v35    # "widthSize":I
    .restart local v36    # "nonSkippedChildCount":I
    .restart local v37    # "widthSizeAndState":I
    .restart local v38    # "largestChildWidth":I
    :goto_454
    iget v2, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v2, v2, v29

    if-lez v2, :cond_45d

    iget v2, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_45f

    :cond_45d
    move/from16 v2, v30

    .line 1391
    .local v2, "remainingWeightSum":F
    :goto_45f
    const/16 v19, -0x1

    aput v19, v21, v16

    aput v19, v21, v17

    aput v19, v21, v18

    const/4 v5, 0x0

    aput v19, v21, v5

    .line 1392
    aput v19, v27, v16

    aput v19, v27, v17

    aput v19, v27, v18

    aput v19, v27, v5

    .line 1393
    const/4 v6, -0x1

    .line 1395
    .end local v11    # "maxHeight":I
    .local v6, "maxHeight":I
    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1396
    const/4 v5, 0x0

    .line 1398
    .end local v36    # "nonSkippedChildCount":I
    .restart local v5    # "nonSkippedChildCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_477
    if-ge v7, v8, :cond_5cb

    .line 1399
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1400
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_5bd

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v36, v2

    const/16 v2, 0x8

    .end local v2    # "remainingWeightSum":F
    .local v36, "remainingWeightSum":F
    if-ne v15, v2, :cond_48f

    .line 1401
    move/from16 v41, v4

    move/from16 v42, v7

    goto/16 :goto_5c3

    .line 1404
    :cond_48f
    add-int/lit8 v5, v5, 0x1

    .line 1405
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_49e

    .line 1406
    iget v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v15, v2

    iput v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1409
    :cond_49e
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1410
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1411
    .local v15, "childWeight":F
    cmpl-float v39, v15, v29

    if-lez v39, :cond_511

    .line 1412
    move/from16 v39, v5

    .end local v5    # "nonSkippedChildCount":I
    .local v39, "nonSkippedChildCount":I
    int-to-float v5, v9

    mul-float/2addr v5, v15

    div-float v5, v5, v36

    float-to-int v5, v5

    .line 1413
    .local v5, "share":I
    sub-int/2addr v9, v5

    .line 1414
    sub-float v36, v36, v15

    .line 1417
    move/from16 v40, v5

    .end local v5    # "share":I
    .local v40, "share":I
    iget-boolean v5, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v5, :cond_4c1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_4c1

    .line 1418
    move/from16 v5, v38

    .local v5, "childWidth":I
    goto :goto_4d6

    .line 1419
    .end local v5    # "childWidth":I
    :cond_4c1
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v5, :cond_4d0

    iget-boolean v5, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v5, :cond_4cd

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_4d0

    .line 1423
    :cond_4cd
    move/from16 v5, v40

    .restart local v5    # "childWidth":I
    goto :goto_4d6

    .line 1427
    .end local v5    # "childWidth":I
    :cond_4d0
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v5, v5, v40

    .line 1430
    .restart local v5    # "childWidth":I
    :goto_4d6
    nop

    .line 1431
    move/from16 v41, v4

    move/from16 v42, v7

    const/4 v4, 0x0

    .end local v4    # "widthMode":I
    .end local v7    # "i":I
    .local v41, "widthMode":I
    .local v42, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1430
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1432
    .local v7, "childWidthMeasureSpec":I
    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v43, v4

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int v4, v43, v4

    move/from16 v43, v4

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v4, v43, v4

    move/from16 v43, v4

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v4, v43, v4

    move/from16 v43, v5

    .end local v5    # "childWidth":I
    .local v43, "childWidth":I
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v4, v5}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 1435
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v11, v7, v4}, Landroid/view/View;->measure(II)V

    .line 1438
    nop

    .line 1439
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    and-int v5, v5, v33

    .line 1438
    invoke-static {v12, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_517

    .line 1411
    .end local v39    # "nonSkippedChildCount":I
    .end local v40    # "share":I
    .end local v41    # "widthMode":I
    .end local v42    # "i":I
    .end local v43    # "childWidth":I
    .local v4, "widthMode":I
    .local v5, "nonSkippedChildCount":I
    .local v7, "i":I
    :cond_511
    move/from16 v41, v4

    move/from16 v39, v5

    move/from16 v42, v7

    .line 1442
    .end local v4    # "widthMode":I
    .end local v5    # "nonSkippedChildCount":I
    .end local v7    # "i":I
    .restart local v39    # "nonSkippedChildCount":I
    .restart local v41    # "widthMode":I
    .restart local v42    # "i":I
    :goto_517
    if-eqz v22, :cond_52e

    .line 1443
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    .line 1444
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_546

    .line 1446
    :cond_52e
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1447
    .local v4, "totalLength":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    .line 1448
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1447
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1451
    .end local v4    # "totalLength":I
    :goto_546
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v10, v5, :cond_552

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_552

    move/from16 v4, v18

    goto :goto_553

    :cond_552
    const/4 v4, 0x0

    .line 1454
    .local v4, "matchHeightLocally":Z
    :goto_553
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    .line 1455
    .local v5, "margin":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 1456
    .local v7, "childHeight":I
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1457
    nop

    .line 1458
    move/from16 v40, v4

    if-eqz v4, :cond_568

    move v4, v5

    goto :goto_569

    :cond_568
    move v4, v7

    .line 1457
    .end local v4    # "matchHeightLocally":Z
    .local v40, "matchHeightLocally":Z
    :goto_569
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1460
    .end local v13    # "alternativeMaxHeight":I
    .local v4, "alternativeMaxHeight":I
    if-eqz v20, :cond_579

    iget v13, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v4

    const/4 v4, -0x1

    .end local v4    # "alternativeMaxHeight":I
    .local v43, "alternativeMaxHeight":I
    if-ne v13, v4, :cond_57b

    move/from16 v4, v18

    goto :goto_57c

    .end local v43    # "alternativeMaxHeight":I
    .restart local v4    # "alternativeMaxHeight":I
    :cond_579
    move/from16 v43, v4

    .end local v4    # "alternativeMaxHeight":I
    .restart local v43    # "alternativeMaxHeight":I
    :cond_57b
    const/4 v4, 0x0

    .line 1462
    .end local v20    # "allFillParent":Z
    .local v4, "allFillParent":Z
    :goto_57c
    if-eqz v31, :cond_5b2

    .line 1463
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v13

    .line 1464
    .local v13, "childBaseline":I
    move/from16 v20, v4

    const/4 v4, -0x1

    .end local v4    # "allFillParent":Z
    .restart local v20    # "allFillParent":Z
    if-eq v13, v4, :cond_5af

    .line 1466
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v4, :cond_58e

    iget v4, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_590

    :cond_58e
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_590
    and-int/lit8 v4, v4, 0x70

    .line 1468
    .local v4, "gravity":I
    shr-int/lit8 v44, v4, 0x4

    and-int/lit8 v44, v44, -0x2

    shr-int/lit8 v44, v44, 0x1

    .line 1471
    .local v44, "index":I
    move-object/from16 v45, v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v45, "lp":Landroid/widget/LinearLayout$LayoutParams;
    aget v2, v21, v44

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v21, v44

    .line 1472
    aget v2, v27, v44

    move/from16 v46, v4

    .end local v4    # "gravity":I
    .local v46, "gravity":I
    sub-int v4, v7, v13

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v27, v44

    goto :goto_5b6

    .line 1464
    .end local v44    # "index":I
    .end local v45    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v46    # "gravity":I
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5af
    move-object/from16 v45, v2

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v45    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_5b6

    .line 1462
    .end local v13    # "childBaseline":I
    .end local v20    # "allFillParent":Z
    .end local v45    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v4, "allFillParent":Z
    :cond_5b2
    move-object/from16 v45, v2

    move/from16 v20, v4

    .line 1398
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "allFillParent":Z
    .end local v5    # "margin":I
    .end local v7    # "childHeight":I
    .end local v11    # "child":Landroid/view/View;
    .end local v15    # "childWeight":F
    .end local v40    # "matchHeightLocally":Z
    .restart local v20    # "allFillParent":Z
    :goto_5b6
    move/from16 v5, v39

    move/from16 v13, v43

    move/from16 v2, v36

    goto :goto_5c5

    .line 1400
    .end local v36    # "remainingWeightSum":F
    .end local v39    # "nonSkippedChildCount":I
    .end local v41    # "widthMode":I
    .end local v42    # "i":I
    .end local v43    # "alternativeMaxHeight":I
    .local v2, "remainingWeightSum":F
    .local v4, "widthMode":I
    .local v5, "nonSkippedChildCount":I
    .local v7, "i":I
    .restart local v11    # "child":Landroid/view/View;
    .local v13, "alternativeMaxHeight":I
    :cond_5bd
    move/from16 v36, v2

    move/from16 v41, v4

    move/from16 v42, v7

    .line 1398
    .end local v2    # "remainingWeightSum":F
    .end local v4    # "widthMode":I
    .end local v7    # "i":I
    .end local v11    # "child":Landroid/view/View;
    .restart local v36    # "remainingWeightSum":F
    .restart local v41    # "widthMode":I
    .restart local v42    # "i":I
    :goto_5c3
    move/from16 v2, v36

    .end local v36    # "remainingWeightSum":F
    .restart local v2    # "remainingWeightSum":F
    :goto_5c5
    add-int/lit8 v7, v42, 0x1

    move/from16 v4, v41

    .end local v42    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_477

    .end local v41    # "widthMode":I
    .restart local v4    # "widthMode":I
    :cond_5cb
    move/from16 v36, v2

    move/from16 v41, v4

    move/from16 v42, v7

    .line 1478
    .end local v2    # "remainingWeightSum":F
    .end local v4    # "widthMode":I
    .end local v7    # "i":I
    .restart local v36    # "remainingWeightSum":F
    .restart local v41    # "widthMode":I
    if-lez v5, :cond_5e0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_5e0

    .line 1479
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1483
    :cond_5e0
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1488
    aget v2, v21, v18

    const/4 v4, -0x1

    if-ne v2, v4, :cond_600

    const/16 v26, 0x0

    aget v2, v21, v26

    if-ne v2, v4, :cond_600

    aget v2, v21, v17

    if-ne v2, v4, :cond_600

    aget v2, v21, v16

    if-eq v2, v4, :cond_5fe

    goto :goto_600

    :cond_5fe
    move v11, v6

    goto :goto_631

    .line 1492
    :cond_600
    :goto_600
    aget v2, v21, v16

    const/16 v26, 0x0

    aget v4, v21, v26

    aget v7, v21, v18

    aget v11, v21, v17

    .line 1494
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1493
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1492
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1495
    .local v2, "ascent":I
    aget v4, v27, v16

    aget v7, v27, v26

    aget v11, v27, v18

    aget v15, v27, v17

    .line 1497
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1496
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1495
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1498
    .local v4, "descent":I
    add-int v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    .line 1500
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    .end local v6    # "maxHeight":I
    .end local v36    # "remainingWeightSum":F
    .local v11, "maxHeight":I
    :goto_631
    nop

    .line 1526
    :goto_632
    if-nez v20, :cond_639

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v10, v15, :cond_639

    .line 1527
    move v11, v13

    .line 1530
    :cond_639
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v4

    add-int/2addr v11, v2

    .line 1533
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1535
    .end local v11    # "maxHeight":I
    .local v2, "maxHeight":I
    and-int v4, v12, v33

    or-int v4, v37, v4

    shl-int/lit8 v6, v12, 0x10

    .line 1536
    invoke-static {v2, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1535
    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1539
    if-eqz v23, :cond_659

    .line 1540
    invoke-direct {v0, v8, v3}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1542
    :cond_659
    return-void
.end method

.method greylist-max-o measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1589
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o measureVertical(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 809
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 810
    const/4 v1, 0x0

    .line 811
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 812
    .local v2, "childState":I
    const/4 v3, 0x0

    .line 813
    .local v3, "alternativeMaxWidth":I
    const/4 v4, 0x0

    .line 814
    .local v4, "weightedMaxWidth":I
    const/4 v5, 0x1

    .line 815
    .local v5, "allFillParent":Z
    const/4 v6, 0x0

    .line 817
    .local v6, "totalWeight":F
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    .line 819
    .local v8, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 820
    .local v9, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 822
    .local v10, "heightMode":I
    const/4 v11, 0x0

    .line 823
    .local v11, "matchWidth":Z
    const/4 v12, 0x0

    .line 825
    .local v12, "skippedMeasure":Z
    iget v13, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 826
    .local v13, "baselineChildIndex":I
    iget-boolean v14, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 828
    .local v14, "useLargestChild":Z
    const/high16 v15, -0x80000000

    .line 829
    .local v15, "largestChildHeight":I
    const/16 v16, 0x0

    .line 831
    .local v16, "consumedExcessSpace":I
    const/16 v17, 0x0

    .line 834
    .local v17, "nonSkippedChildCount":I
    const/16 v18, 0x0

    move/from16 v19, v11

    move v11, v1

    move v1, v15

    move v15, v3

    move/from16 v3, v18

    move/from16 v18, v12

    move v12, v2

    move/from16 v2, v17

    move/from16 v17, v19

    move/from16 v19, v16

    move/from16 v16, v5

    .end local v5    # "allFillParent":Z
    .local v1, "largestChildHeight":I
    .local v2, "nonSkippedChildCount":I
    .local v3, "i":I
    .local v11, "maxWidth":I
    .local v12, "childState":I
    .local v15, "alternativeMaxWidth":I
    .local v16, "allFillParent":Z
    .local v17, "matchWidth":Z
    .local v18, "skippedMeasure":Z
    .local v19, "consumedExcessSpace":I
    :goto_37
    const/16 v5, 0x8

    const/16 v21, 0x0

    const/16 v23, 0x1

    if-ge v3, v8, :cond_1b4

    .line 835
    move/from16 v24, v1

    .end local v1    # "largestChildHeight":I
    .local v24, "largestChildHeight":I
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 836
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_62

    .line 837
    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 838
    move/from16 v1, p2

    move/from16 v26, v6

    move/from16 v28, v8

    move/from16 v20, v14

    move/from16 v6, v24

    move v14, v4

    move/from16 v24, v10

    move v4, v3

    move/from16 v3, p1

    goto/16 :goto_1a4

    .line 841
    :cond_62
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_7f

    .line 842
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v3, v5

    .line 843
    move/from16 v1, p2

    move/from16 v26, v6

    move/from16 v28, v8

    move/from16 v20, v14

    move/from16 v6, v24

    move v14, v4

    move/from16 v24, v10

    move v4, v3

    move/from16 v3, p1

    goto/16 :goto_1a4

    .line 846
    :cond_7f
    add-int/lit8 v7, v2, 0x1

    .line 847
    .end local v2    # "nonSkippedChildCount":I
    .local v7, "nonSkippedChildCount":I
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 848
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 851
    :cond_8e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v26, v6, v5

    .line 855
    .end local v6    # "totalWeight":F
    .local v26, "totalWeight":F
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_a5

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v21

    if-lez v5, :cond_a5

    move/from16 v5, v23

    goto :goto_a6

    :cond_a5
    const/4 v5, 0x0

    :goto_a6
    move/from16 v27, v5

    .line 856
    .local v27, "useExcessSpace":Z
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v10, v5, :cond_d5

    if-eqz v27, :cond_d5

    .line 860
    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 861
    .local v5, "totalLength":I
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v5

    move-object/from16 v28, v1

    .end local v1    # "child":Landroid/view/View;
    .local v28, "child":Landroid/view/View;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 862
    const/16 v18, 0x1

    .line 863
    .end local v5    # "totalLength":I
    move/from16 v1, p2

    move/from16 v29, v7

    move/from16 v20, v14

    move/from16 v6, v24

    move v14, v4

    move/from16 v24, v10

    move-object v10, v2

    move v4, v3

    move-object/from16 v2, v28

    move/from16 v3, p1

    move/from16 v28, v8

    goto/16 :goto_12e

    .line 856
    .end local v28    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    :cond_d5
    move-object/from16 v28, v1

    .line 864
    .end local v1    # "child":Landroid/view/View;
    .restart local v28    # "child":Landroid/view/View;
    if-eqz v27, :cond_dc

    .line 870
    const/4 v1, -0x2

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 877
    :cond_dc
    cmpl-float v1, v26, v21

    if-nez v1, :cond_e4

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v6, v1

    goto :goto_e5

    :cond_e4
    const/4 v6, 0x0

    .line 878
    .local v6, "usedHeight":I
    :goto_e5
    move v1, v4

    .end local v4    # "weightedMaxWidth":I
    .local v1, "weightedMaxWidth":I
    const/4 v4, 0x0

    move/from16 v5, p2

    move/from16 v29, v7

    move/from16 v20, v14

    move/from16 v7, v24

    move v14, v1

    move/from16 v24, v10

    move-object/from16 v1, v28

    move-object v10, v2

    move v2, v3

    move/from16 v28, v8

    const/4 v8, -0x1

    move/from16 v3, p1

    .end local v3    # "i":I
    .end local v8    # "count":I
    .local v1, "child":Landroid/view/View;
    .local v2, "i":I
    .local v7, "largestChildHeight":I
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v14, "weightedMaxWidth":I
    .local v20, "useLargestChild":Z
    .local v24, "heightMode":I
    .local v28, "count":I
    .local v29, "nonSkippedChildCount":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 881
    move v4, v2

    move-object v2, v1

    move v1, v5

    .end local v1    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    .local v4, "i":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 882
    .local v5, "childHeight":I
    if-eqz v27, :cond_10c

    .line 886
    const/4 v8, 0x0

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 887
    add-int v19, v19, v5

    .line 890
    :cond_10c
    iget v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 891
    .local v8, "totalLength":I
    add-int v31, v8, v5

    move/from16 v32, v6

    .end local v6    # "usedHeight":I
    .local v32, "usedHeight":I
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v31, v31, v6

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v31, v6

    .line 892
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v31, v6

    .line 891
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 894
    if-eqz v20, :cond_12d

    .line 895
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v7    # "largestChildHeight":I
    .local v6, "largestChildHeight":I
    goto :goto_12e

    .line 894
    .end local v6    # "largestChildHeight":I
    .restart local v7    # "largestChildHeight":I
    :cond_12d
    move v6, v7

    .line 903
    .end local v5    # "childHeight":I
    .end local v7    # "largestChildHeight":I
    .end local v8    # "totalLength":I
    .end local v32    # "usedHeight":I
    .restart local v6    # "largestChildHeight":I
    :goto_12e
    if-ltz v13, :cond_138

    add-int/lit8 v5, v4, 0x1

    if-ne v13, v5, :cond_138

    .line 904
    iget v5, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v5, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 910
    :cond_138
    if-ge v4, v13, :cond_149

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v21

    if-gtz v5, :cond_141

    goto :goto_149

    .line 911
    :cond_141
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 917
    :cond_149
    :goto_149
    const/4 v5, 0x0

    .line 918
    .local v5, "matchWidthLocally":Z
    const/high16 v7, 0x40000000    # 2.0f

    if-eq v9, v7, :cond_156

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_156

    .line 923
    const/16 v17, 0x1

    .line 924
    const/4 v5, 0x1

    .line 927
    :cond_156
    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 928
    .local v7, "margin":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    .line 929
    .local v8, "measuredWidth":I
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 930
    move/from16 v25, v5

    .end local v5    # "matchWidthLocally":Z
    .local v25, "matchWidthLocally":Z
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v12, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 932
    .end local v12    # "childState":I
    .local v5, "childState":I
    if-eqz v16, :cond_17a

    iget v12, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v31, v5

    const/4 v5, -0x1

    .end local v5    # "childState":I
    .local v31, "childState":I
    if-ne v12, v5, :cond_17c

    move/from16 v5, v23

    goto :goto_17d

    .end local v31    # "childState":I
    .restart local v5    # "childState":I
    :cond_17a
    move/from16 v31, v5

    .end local v5    # "childState":I
    .restart local v31    # "childState":I
    :cond_17c
    const/4 v5, 0x0

    .line 933
    .end local v16    # "allFillParent":Z
    .local v5, "allFillParent":Z
    :goto_17d
    iget v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v12, v12, v21

    if-lez v12, :cond_18f

    .line 938
    nop

    .line 939
    if-eqz v25, :cond_188

    move v12, v7

    goto :goto_189

    :cond_188
    move v12, v8

    .line 938
    :goto_189
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v14, v12

    .end local v14    # "weightedMaxWidth":I
    .local v12, "weightedMaxWidth":I
    goto :goto_199

    .line 941
    .end local v12    # "weightedMaxWidth":I
    .restart local v14    # "weightedMaxWidth":I
    :cond_18f
    nop

    .line 942
    if-eqz v25, :cond_194

    move v12, v7

    goto :goto_195

    :cond_194
    move v12, v8

    .line 941
    :goto_195
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 945
    :goto_199
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v12

    add-int/2addr v4, v12

    move/from16 v16, v5

    move/from16 v2, v29

    move/from16 v12, v31

    .line 834
    .end local v5    # "allFillParent":Z
    .end local v7    # "margin":I
    .end local v8    # "measuredWidth":I
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "matchWidthLocally":Z
    .end local v27    # "useExcessSpace":Z
    .end local v29    # "nonSkippedChildCount":I
    .end local v31    # "childState":I
    .local v2, "nonSkippedChildCount":I
    .local v12, "childState":I
    .restart local v16    # "allFillParent":Z
    :goto_1a4
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    move v1, v6

    move v4, v14

    move/from16 v14, v20

    move/from16 v10, v24

    move/from16 v6, v26

    move/from16 v8, v28

    const/4 v7, 0x0

    goto/16 :goto_37

    .end local v20    # "useLargestChild":Z
    .end local v24    # "heightMode":I
    .end local v26    # "totalWeight":F
    .end local v28    # "count":I
    .local v1, "largestChildHeight":I
    .restart local v3    # "i":I
    .local v4, "weightedMaxWidth":I
    .local v6, "totalWeight":F
    .local v8, "count":I
    .local v10, "heightMode":I
    .local v14, "useLargestChild":Z
    :cond_1b4
    move v7, v1

    move/from16 v28, v8

    move/from16 v24, v10

    move/from16 v20, v14

    move/from16 v1, p2

    move v14, v4

    move v4, v3

    move/from16 v3, p1

    .line 948
    .end local v1    # "largestChildHeight":I
    .end local v3    # "i":I
    .end local v4    # "weightedMaxWidth":I
    .end local v8    # "count":I
    .end local v10    # "heightMode":I
    .local v7, "largestChildHeight":I
    .local v14, "weightedMaxWidth":I
    .restart local v20    # "useLargestChild":Z
    .restart local v24    # "heightMode":I
    .restart local v28    # "count":I
    if-lez v2, :cond_1d3

    move/from16 v4, v28

    .end local v28    # "count":I
    .local v4, "count":I
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_1d5

    .line 949
    iget v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v10, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v8, v10

    iput v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1d5

    .line 948
    .end local v4    # "count":I
    .restart local v28    # "count":I
    :cond_1d3
    move/from16 v4, v28

    .line 952
    .end local v28    # "count":I
    .restart local v4    # "count":I
    :cond_1d5
    :goto_1d5
    if-eqz v20, :cond_248

    const/high16 v8, -0x80000000

    move/from16 v10, v24

    .end local v24    # "heightMode":I
    .restart local v10    # "heightMode":I
    if-eq v10, v8, :cond_1e6

    if-nez v10, :cond_1e0

    goto :goto_1e6

    :cond_1e0
    move/from16 v26, v2

    move/from16 v27, v6

    goto/16 :goto_24e

    .line 954
    :cond_1e6
    :goto_1e6
    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1ea
    if-ge v8, v4, :cond_241

    .line 957
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 958
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_203

    .line 959
    move/from16 v26, v2

    .end local v2    # "nonSkippedChildCount":I
    .local v26, "nonSkippedChildCount":I
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v27

    add-int v2, v2, v27

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 960
    move/from16 v27, v6

    move/from16 v29, v8

    goto :goto_236

    .line 963
    .end local v26    # "nonSkippedChildCount":I
    .restart local v2    # "nonSkippedChildCount":I
    :cond_203
    move/from16 v26, v2

    .end local v2    # "nonSkippedChildCount":I
    .restart local v26    # "nonSkippedChildCount":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v27, v6

    const/16 v6, 0x8

    .end local v6    # "totalWeight":F
    .local v27, "totalWeight":F
    if-ne v2, v6, :cond_215

    .line 964
    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v8, v2

    .line 965
    goto :goto_238

    .line 968
    :cond_215
    nop

    .line 969
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 972
    .local v6, "totalLength":I
    add-int v28, v6, v7

    move/from16 v29, v8

    .end local v8    # "i":I
    .local v29, "i":I
    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v28, v28, v8

    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v28, v28, v8

    .line 973
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int v8, v28, v8

    .line 972
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "child":Landroid/view/View;
    .end local v27    # "totalWeight":F
    .end local v29    # "i":I
    .local v6, "totalWeight":F
    .restart local v8    # "i":I
    :goto_236
    move/from16 v8, v29

    .end local v6    # "totalWeight":F
    .restart local v27    # "totalWeight":F
    :goto_238
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v26

    move/from16 v6, v27

    const/16 v5, 0x8

    goto :goto_1ea

    .end local v26    # "nonSkippedChildCount":I
    .end local v27    # "totalWeight":F
    .local v2, "nonSkippedChildCount":I
    .restart local v6    # "totalWeight":F
    :cond_241
    move/from16 v26, v2

    move/from16 v27, v6

    move/from16 v29, v8

    .end local v2    # "nonSkippedChildCount":I
    .end local v6    # "totalWeight":F
    .end local v8    # "i":I
    .restart local v26    # "nonSkippedChildCount":I
    .restart local v27    # "totalWeight":F
    .restart local v29    # "i":I
    goto :goto_24e

    .line 952
    .end local v10    # "heightMode":I
    .end local v26    # "nonSkippedChildCount":I
    .end local v27    # "totalWeight":F
    .end local v29    # "i":I
    .restart local v2    # "nonSkippedChildCount":I
    .restart local v6    # "totalWeight":F
    .restart local v24    # "heightMode":I
    :cond_248
    move/from16 v26, v2

    move/from16 v27, v6

    move/from16 v10, v24

    .line 978
    .end local v2    # "nonSkippedChildCount":I
    .end local v6    # "totalWeight":F
    .end local v24    # "heightMode":I
    .restart local v10    # "heightMode":I
    .restart local v26    # "nonSkippedChildCount":I
    .restart local v27    # "totalWeight":F
    :goto_24e
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 980
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 983
    .local v2, "heightSize":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 986
    const/4 v8, 0x0

    invoke-static {v2, v1, v8}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 987
    .local v5, "heightSizeAndState":I
    const v6, 0xffffff

    and-int v2, v5, v6

    .line 991
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v6, v2, v6

    .line 992
    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v8, :cond_276

    const/4 v8, 0x0

    goto :goto_278

    :cond_276
    move/from16 v8, v19

    :goto_278
    add-int/2addr v6, v8

    .line 993
    .local v6, "remainingExcess":I
    if-nez v18, :cond_30c

    sget-boolean v8, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v8, :cond_281

    if-eqz v6, :cond_28d

    :cond_281
    cmpl-float v8, v27, v21

    if-lez v8, :cond_28d

    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v31, v11

    goto/16 :goto_312

    .line 1059
    :cond_28d
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1065
    .end local v15    # "alternativeMaxWidth":I
    .local v8, "alternativeMaxWidth":I
    if-eqz v20, :cond_2f8

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v10, v15, :cond_2f8

    .line 1066
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_298
    if-ge v15, v4, :cond_2ef

    .line 1067
    move/from16 v28, v2

    .end local v2    # "heightSize":I
    .local v28, "heightSize":I
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1068
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2de

    move/from16 v29, v6

    .end local v6    # "remainingExcess":I
    .local v29, "remainingExcess":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v22, v8

    const/16 v8, 0x8

    .end local v8    # "alternativeMaxWidth":I
    .local v22, "alternativeMaxWidth":I
    if-ne v6, v8, :cond_2b1

    .line 1069
    move/from16 v31, v11

    goto :goto_2e4

    .line 1072
    :cond_2b1
    nop

    .line 1073
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1075
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1076
    .local v8, "childExtra":F
    cmpl-float v23, v8, v21

    if-lez v23, :cond_2d7

    .line 1077
    nop

    .line 1078
    move-object/from16 v23, v6

    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move/from16 v30, v8

    const/high16 v8, 0x40000000    # 2.0f

    .end local v8    # "childExtra":F
    .local v30, "childExtra":F
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1080
    move/from16 v31, v11

    .end local v11    # "maxWidth":I
    .local v31, "maxWidth":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1077
    invoke-virtual {v2, v6, v11}, Landroid/view/View;->measure(II)V

    goto :goto_2e4

    .line 1076
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "childExtra":F
    .end local v31    # "maxWidth":I
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "childExtra":F
    .restart local v11    # "maxWidth":I
    :cond_2d7
    move-object/from16 v23, v6

    move/from16 v30, v8

    move/from16 v31, v11

    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "childExtra":F
    .end local v11    # "maxWidth":I
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v30    # "childExtra":F
    .restart local v31    # "maxWidth":I
    goto :goto_2e4

    .line 1068
    .end local v22    # "alternativeMaxWidth":I
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "remainingExcess":I
    .end local v30    # "childExtra":F
    .end local v31    # "maxWidth":I
    .local v6, "remainingExcess":I
    .local v8, "alternativeMaxWidth":I
    .restart local v11    # "maxWidth":I
    :cond_2de
    move/from16 v29, v6

    move/from16 v22, v8

    move/from16 v31, v11

    .line 1066
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "remainingExcess":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v11    # "maxWidth":I
    .restart local v22    # "alternativeMaxWidth":I
    .restart local v29    # "remainingExcess":I
    .restart local v31    # "maxWidth":I
    :goto_2e4
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v22

    move/from16 v2, v28

    move/from16 v6, v29

    move/from16 v11, v31

    goto :goto_298

    .end local v22    # "alternativeMaxWidth":I
    .end local v28    # "heightSize":I
    .end local v29    # "remainingExcess":I
    .end local v31    # "maxWidth":I
    .local v2, "heightSize":I
    .restart local v6    # "remainingExcess":I
    .restart local v8    # "alternativeMaxWidth":I
    .restart local v11    # "maxWidth":I
    :cond_2ef
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v22, v8

    move/from16 v31, v11

    .end local v2    # "heightSize":I
    .end local v6    # "remainingExcess":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v11    # "maxWidth":I
    .restart local v22    # "alternativeMaxWidth":I
    .restart local v28    # "heightSize":I
    .restart local v29    # "remainingExcess":I
    .restart local v31    # "maxWidth":I
    goto :goto_300

    .line 1065
    .end local v15    # "i":I
    .end local v22    # "alternativeMaxWidth":I
    .end local v28    # "heightSize":I
    .end local v29    # "remainingExcess":I
    .end local v31    # "maxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v6    # "remainingExcess":I
    .restart local v8    # "alternativeMaxWidth":I
    .restart local v11    # "maxWidth":I
    :cond_2f8
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v22, v8

    move/from16 v31, v11

    .line 1087
    .end local v2    # "heightSize":I
    .end local v6    # "remainingExcess":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v11    # "maxWidth":I
    .restart local v22    # "alternativeMaxWidth":I
    .restart local v28    # "heightSize":I
    .restart local v29    # "remainingExcess":I
    .restart local v31    # "maxWidth":I
    :goto_300
    move/from16 v32, v7

    move/from16 v8, v22

    move/from16 v6, v29

    move/from16 v11, v31

    move/from16 v22, v10

    goto/16 :goto_43b

    .line 993
    .end local v22    # "alternativeMaxWidth":I
    .end local v28    # "heightSize":I
    .end local v29    # "remainingExcess":I
    .end local v31    # "maxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v6    # "remainingExcess":I
    .restart local v11    # "maxWidth":I
    .local v15, "alternativeMaxWidth":I
    :cond_30c
    move/from16 v28, v2

    move/from16 v29, v6

    move/from16 v31, v11

    .line 995
    .end local v2    # "heightSize":I
    .end local v6    # "remainingExcess":I
    .end local v11    # "maxWidth":I
    .restart local v28    # "heightSize":I
    .restart local v29    # "remainingExcess":I
    .restart local v31    # "maxWidth":I
    :goto_312
    iget v2, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v2, v2, v21

    if-lez v2, :cond_31b

    iget v2, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_31d

    :cond_31b
    move/from16 v2, v27

    .line 997
    .local v2, "remainingWeightSum":F
    :goto_31d
    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 999
    const/4 v6, 0x0

    move/from16 v8, v29

    move/from16 v11, v31

    .end local v29    # "remainingExcess":I
    .end local v31    # "maxWidth":I
    .local v6, "i":I
    .local v8, "remainingExcess":I
    .restart local v11    # "maxWidth":I
    :goto_325
    if-ge v6, v4, :cond_426

    .line 1000
    move/from16 v29, v2

    .end local v2    # "remainingWeightSum":F
    .local v29, "remainingWeightSum":F
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1001
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_414

    move/from16 v31, v6

    .end local v6    # "i":I
    .local v31, "i":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v32, v7

    const/16 v7, 0x8

    .end local v7    # "largestChildHeight":I
    .local v32, "largestChildHeight":I
    if-ne v6, v7, :cond_340

    .line 1002
    move v7, v8

    move/from16 v22, v10

    goto/16 :goto_41b

    .line 1005
    :cond_340
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1006
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1007
    .local v7, "childWeight":F
    cmpl-float v33, v7, v21

    if-lez v33, :cond_3ac

    .line 1008
    move/from16 v33, v7

    .end local v7    # "childWeight":F
    .local v33, "childWeight":F
    int-to-float v7, v8

    mul-float v7, v7, v33

    div-float v7, v7, v29

    float-to-int v7, v7

    .line 1009
    .local v7, "share":I
    sub-int/2addr v8, v7

    .line 1010
    sub-float v29, v29, v33

    .line 1013
    move/from16 v34, v7

    .end local v7    # "share":I
    .local v34, "share":I
    iget-boolean v7, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v7, :cond_364

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_364

    .line 1014
    move/from16 v7, v32

    .local v7, "childHeight":I
    goto :goto_379

    .line 1015
    .end local v7    # "childHeight":I
    :cond_364
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v7, :cond_373

    iget-boolean v7, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v7, :cond_370

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v10, v7, :cond_373

    .line 1019
    :cond_370
    move/from16 v7, v34

    .restart local v7    # "childHeight":I
    goto :goto_379

    .line 1023
    .end local v7    # "childHeight":I
    :cond_373
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v7, v7, v34

    .line 1026
    .restart local v7    # "childHeight":I
    :goto_379
    nop

    .line 1027
    move/from16 v35, v8

    move/from16 v22, v10

    const/4 v8, 0x0

    .end local v8    # "remainingExcess":I
    .end local v10    # "heightMode":I
    .local v22, "heightMode":I
    .local v35, "remainingExcess":I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1026
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1028
    .local v10, "childHeightMeasureSpec":I
    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v36, v7

    .end local v7    # "childHeight":I
    .local v36, "childHeight":I
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v8, v7

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v3, v8, v7}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 1031
    .local v7, "childWidthMeasureSpec":I
    invoke-virtual {v2, v7, v10}, Landroid/view/View;->measure(II)V

    .line 1034
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    and-int/lit16 v8, v8, -0x100

    invoke-static {v12, v8}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v8, v35

    goto :goto_3b1

    .line 1007
    .end local v22    # "heightMode":I
    .end local v33    # "childWeight":F
    .end local v34    # "share":I
    .end local v35    # "remainingExcess":I
    .end local v36    # "childHeight":I
    .local v7, "childWeight":F
    .restart local v8    # "remainingExcess":I
    .local v10, "heightMode":I
    :cond_3ac
    move/from16 v33, v7

    move v7, v8

    move/from16 v22, v10

    .line 1038
    .end local v7    # "childWeight":F
    .end local v10    # "heightMode":I
    .restart local v22    # "heightMode":I
    .restart local v33    # "childWeight":F
    :goto_3b1
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    .line 1039
    .local v7, "margin":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    .line 1040
    .local v10, "measuredWidth":I
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1042
    move/from16 v34, v7

    const/high16 v7, 0x40000000    # 2.0f

    .end local v7    # "margin":I
    .local v34, "margin":I
    if-eq v9, v7, :cond_3cf

    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v35, v8

    const/4 v8, -0x1

    .end local v8    # "remainingExcess":I
    .restart local v35    # "remainingExcess":I
    if-ne v7, v8, :cond_3d1

    move/from16 v8, v23

    goto :goto_3d2

    .end local v35    # "remainingExcess":I
    .restart local v8    # "remainingExcess":I
    :cond_3cf
    move/from16 v35, v8

    .end local v8    # "remainingExcess":I
    .restart local v35    # "remainingExcess":I
    :cond_3d1
    const/4 v8, 0x0

    .line 1045
    .local v8, "matchWidthLocally":Z
    :goto_3d2
    nop

    .line 1046
    if-eqz v8, :cond_3d8

    move/from16 v7, v34

    goto :goto_3d9

    :cond_3d8
    move v7, v10

    .line 1045
    :goto_3d9
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1048
    .end local v15    # "alternativeMaxWidth":I
    .local v7, "alternativeMaxWidth":I
    if-eqz v16, :cond_3e9

    iget v15, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v36, v7

    const/4 v7, -0x1

    .end local v7    # "alternativeMaxWidth":I
    .local v36, "alternativeMaxWidth":I
    if-ne v15, v7, :cond_3ec

    move/from16 v15, v23

    goto :goto_3ed

    .end local v36    # "alternativeMaxWidth":I
    .restart local v7    # "alternativeMaxWidth":I
    :cond_3e9
    move/from16 v36, v7

    const/4 v7, -0x1

    .end local v7    # "alternativeMaxWidth":I
    .restart local v36    # "alternativeMaxWidth":I
    :cond_3ec
    const/4 v15, 0x0

    .line 1050
    .end local v16    # "allFillParent":Z
    .local v15, "allFillParent":Z
    :goto_3ed
    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1051
    .local v7, "totalLength":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v7, v16

    move/from16 v37, v8

    .end local v8    # "matchWidthLocally":Z
    .local v37, "matchWidthLocally":Z
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v16, v16, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v8

    .line 1052
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int v8, v16, v8

    .line 1051
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v16, v15

    move/from16 v8, v35

    move/from16 v15, v36

    move/from16 v2, v29

    goto :goto_41e

    .line 1001
    .end local v22    # "heightMode":I
    .end local v31    # "i":I
    .end local v32    # "largestChildHeight":I
    .end local v33    # "childWeight":F
    .end local v34    # "margin":I
    .end local v35    # "remainingExcess":I
    .end local v36    # "alternativeMaxWidth":I
    .end local v37    # "matchWidthLocally":Z
    .local v6, "i":I
    .local v7, "largestChildHeight":I
    .local v8, "remainingExcess":I
    .local v10, "heightMode":I
    .local v15, "alternativeMaxWidth":I
    .restart local v16    # "allFillParent":Z
    :cond_414
    move/from16 v31, v6

    move/from16 v32, v7

    move v7, v8

    move/from16 v22, v10

    .line 999
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "i":I
    .end local v8    # "remainingExcess":I
    .end local v10    # "heightMode":I
    .local v7, "remainingExcess":I
    .restart local v22    # "heightMode":I
    .restart local v31    # "i":I
    .restart local v32    # "largestChildHeight":I
    :goto_41b
    move v8, v7

    move/from16 v2, v29

    .end local v7    # "remainingExcess":I
    .end local v29    # "remainingWeightSum":F
    .local v2, "remainingWeightSum":F
    .restart local v8    # "remainingExcess":I
    :goto_41e
    add-int/lit8 v6, v31, 0x1

    move/from16 v10, v22

    move/from16 v7, v32

    .end local v31    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_325

    .end local v22    # "heightMode":I
    .end local v32    # "largestChildHeight":I
    .local v7, "largestChildHeight":I
    .restart local v10    # "heightMode":I
    :cond_426
    move/from16 v29, v2

    move/from16 v31, v6

    move/from16 v32, v7

    move v7, v8

    move/from16 v22, v10

    .line 1056
    .end local v2    # "remainingWeightSum":F
    .end local v6    # "i":I
    .end local v8    # "remainingExcess":I
    .end local v10    # "heightMode":I
    .local v7, "remainingExcess":I
    .restart local v22    # "heightMode":I
    .restart local v29    # "remainingWeightSum":F
    .restart local v32    # "largestChildHeight":I
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v8

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1058
    .end local v29    # "remainingWeightSum":F
    move v6, v7

    move v8, v15

    .line 1087
    .end local v7    # "remainingExcess":I
    .end local v15    # "alternativeMaxWidth":I
    .local v6, "remainingExcess":I
    .local v8, "alternativeMaxWidth":I
    :goto_43b
    if-nez v16, :cond_442

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v9, v7, :cond_442

    .line 1088
    move v11, v8

    .line 1091
    :cond_442
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v7

    add-int/2addr v11, v2

    .line 1094
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1096
    .end local v11    # "maxWidth":I
    .local v2, "maxWidth":I
    invoke-static {v2, v3, v12}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1099
    if-eqz v17, :cond_45c

    .line 1100
    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 1102
    :cond_45c
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 424
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 425
    return-void

    .line 428
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 431
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 433
    :goto_11
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1637
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1638
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_c

    .line 1640
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 1642
    :goto_c
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 720
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 721
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_c

    .line 723
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 725
    :goto_c
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1741
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    .line 1742
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1743
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_10

    .line 1744
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1747
    :cond_10
    return-void
.end method

.method public whitelist setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 549
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 550
    return-void
.end method

.method public whitelist setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 655
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 659
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 660
    return-void

    .line 656
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 363
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 364
    return-void

    .line 366
    :cond_5
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 367
    if-eqz p1, :cond_16

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1b

    .line 371
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 372
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 375
    :goto_1b
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 377
    return-void
.end method

.method public whitelist setDividerPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 391
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 396
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 400
    :cond_13
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1934
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1935
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1936
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1939
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1940
    or-int/lit8 p1, p1, 0x30

    .line 1943
    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1944
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1946
    :cond_19
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1961
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1962
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_16

    .line 1963
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1964
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1966
    :cond_16
    return-void
.end method

.method public whitelist setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 581
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 582
    return-void
.end method

.method public whitelist setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1902
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1903
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1904
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1906
    :cond_9
    return-void
.end method

.method public whitelist setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 318
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    .line 319
    return-void

    .line 321
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 323
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 325
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1970
    and-int/lit8 v0, p1, 0x70

    .line 1971
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1972
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1973
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1975
    :cond_12
    return-void
.end method

.method public whitelist setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 715
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 716
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method
