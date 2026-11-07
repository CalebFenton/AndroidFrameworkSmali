.class public Landroid/view/NotificationTopLineView;
.super Landroid/view/ViewGroup;
.source "NotificationTopLineView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationTopLineView$OverflowAdjuster;,
        Landroid/view/NotificationTopLineView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private blacklist mAppName:Landroid/view/View;

.field private final blacklist mChildHideWidth:I

.field private final blacklist mChildMinWidth:I

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mFeedbackListener:Landroid/view/View$OnClickListener;

.field private final blacklist mGravityY:I

.field private blacklist mHeaderText:Landroid/view/View;

.field private blacklist mHeaderTextDivider:Landroid/view/View;

.field private blacklist mHeaderTextMarginEnd:I

.field private blacklist mMaxAscent:I

.field private blacklist mMaxDescent:I

.field private final blacklist mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

.field private blacklist mSecondaryHeaderText:Landroid/view/View;

.field private blacklist mSecondaryHeaderTextDivider:Landroid/view/View;

.field private blacklist mTitle:Landroid/view/View;

.field private blacklist mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

.field private blacklist mViewsToDisappear:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I
    .registers 1

    iget p0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .registers 1

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v0, Landroid/view/NotificationTopLineView$OverflowAdjuster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 54
    new-instance v0, Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;-><init>(Landroid/view/NotificationTopLineView;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    .line 79
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10502c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 81
    const v1, 0x10502bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    .line 85
    const v1, 0x10100af

    filled-new-array {v1}, [I

    move-result-object v1

    .line 86
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 87
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 88
    .local v3, "gravity":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    and-int/lit8 v4, v3, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_4b

    .line 90
    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_58

    .line 91
    :cond_4b
    and-int/lit8 v4, v3, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_54

    .line 92
    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_58

    .line 94
    :cond_54
    const/16 v4, 0x10

    iput v4, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    .line 96
    :goto_58
    return-void
.end method

.method private blacklist getFirstChildNotGone()Landroid/view/View;
    .registers 5

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 374
    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 376
    return-object v1

    .line 373
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    :cond_17
    return-object p0
.end method

.method private blacklist updateTouchListener()V
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_9

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    return-void

    .line 252
    :cond_9
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->bindTouchRects()V

    .line 254
    return-void
.end method


# virtual methods
.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 244
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getHeaderTextMarginEnd()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .registers 2

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTouchRect(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 398
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    .line 399
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_6
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method public blacklist isTitlePresent()Z
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 101
    const v0, 0x1020219

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    .line 102
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 103
    const v0, 0x1020352

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    .line 104
    const v0, 0x1020353

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 105
    const v0, 0x1020354

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    .line 106
    const v0, 0x1020355

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 107
    const v0, 0x10202ff

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    .line 108
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 176
    .local v2, "isRtl":Z
    :goto_b
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getWidth()I

    move-result v1

    .line 177
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v3

    .line 178
    .local v3, "start":I
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v4

    .line 179
    .local v4, "childCount":I
    sub-int v5, p5, p3

    .line 180
    .local v5, "ownHeight":I
    iget v6, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v6, v5, v6

    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 184
    .local v6, "childSpace":I
    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v8, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    add-int/2addr v8, v9

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    add-int/2addr v7, v8

    .line 186
    .local v7, "baselineY":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_30
    if-ge v8, v4, :cond_dd

    .line 187
    invoke-virtual {v0, v8}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 188
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_42

    .line 189
    move/from16 v17, v1

    goto/16 :goto_d7

    .line 191
    :cond_42
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 192
    .local v10, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    .local v11, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 197
    .local v12, "childBaseline":I
    iget v13, v0, Landroid/view/NotificationTopLineView;->mGravityY:I

    sparse-switch v13, :sswitch_data_e2

    .line 226
    move/from16 v17, v1

    .end local v1    # "width":I
    .local v17, "width":I
    iget v15, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    .local v15, "childTop":I
    goto :goto_a6

    .line 218
    .end local v15    # "childTop":I
    .end local v17    # "width":I
    .restart local v1    # "width":I
    :sswitch_5a
    iget v13, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int v13, v5, v13

    .line 219
    .local v13, "childBottom":I
    sub-int v15, v13, v10

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v14

    .line 220
    .restart local v15    # "childTop":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_6f

    .line 221
    sub-int v14, v10, v12

    .line 222
    .local v14, "descent":I
    move/from16 v17, v1

    .end local v1    # "width":I
    .restart local v17    # "width":I
    iget v1, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int/2addr v1, v14

    sub-int/2addr v15, v1

    .line 223
    .end local v14    # "descent":I
    goto :goto_a6

    .line 220
    .end local v17    # "width":I
    .restart local v1    # "width":I
    :cond_6f
    move/from16 v17, v1

    .end local v1    # "width":I
    .restart local v17    # "width":I
    goto :goto_a6

    .line 199
    .end local v13    # "childBottom":I
    .end local v15    # "childTop":I
    .end local v17    # "width":I
    .restart local v1    # "width":I
    :sswitch_72
    move/from16 v17, v1

    .end local v1    # "width":I
    .restart local v17    # "width":I
    iget v1, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v15, v1, v13

    .line 200
    .restart local v15    # "childTop":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_a6

    .line 201
    iget v1, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    sub-int/2addr v1, v12

    add-int/2addr v15, v1

    goto :goto_a6

    .line 205
    .end local v15    # "childTop":I
    .end local v17    # "width":I
    .restart local v1    # "width":I
    :sswitch_82
    move/from16 v17, v1

    const/4 v14, -0x1

    .end local v1    # "width":I
    .restart local v17    # "width":I
    if-eq v12, v14, :cond_97

    .line 207
    sub-int v1, v6, v10

    if-lez v1, :cond_8e

    .line 208
    sub-int v15, v7, v12

    .restart local v15    # "childTop":I
    goto :goto_a6

    .line 210
    .end local v15    # "childTop":I
    :cond_8e
    iget v1, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int v15, v1, v13

    .restart local v15    # "childTop":I
    goto :goto_a6

    .line 213
    .end local v15    # "childTop":I
    :cond_97
    iget v1, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v1, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v15, v1, v13

    .line 216
    .restart local v15    # "childTop":I
    nop

    .line 228
    :cond_a6
    :goto_a6
    iget-object v1, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 229
    add-int v1, v15, v10

    invoke-virtual {v9, v3, v15, v3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_d7

    .line 231
    :cond_b4
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    add-int/2addr v3, v1

    .line 232
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 233
    .local v1, "end":I
    if-eqz v2, :cond_c3

    sub-int v13, v17, v1

    goto :goto_c4

    :cond_c3
    move v13, v3

    .line 234
    .local v13, "layoutLeft":I
    :goto_c4
    if-eqz v2, :cond_c9

    sub-int v14, v17, v3

    goto :goto_ca

    :cond_c9
    move v14, v1

    .line 235
    .local v14, "layoutRight":I
    :goto_ca
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v16

    add-int v16, v1, v16

    .line 236
    .end local v3    # "start":I
    .local v16, "start":I
    add-int v3, v15, v10

    invoke-virtual {v9, v13, v15, v14, v3}, Landroid/view/View;->layout(IIII)V

    move/from16 v3, v16

    .line 186
    .end local v1    # "end":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "childBaseline":I
    .end local v13    # "layoutLeft":I
    .end local v14    # "layoutRight":I
    .end local v15    # "childTop":I
    .end local v16    # "start":I
    .restart local v3    # "start":I
    :goto_d7
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v17

    goto/16 :goto_30

    .line 239
    .end local v8    # "i":I
    .end local v17    # "width":I
    .local v1, "width":I
    :cond_dd
    invoke-direct {v0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 240
    return-void

    nop

    :sswitch_data_e2
    .sparse-switch
        0x10 -> :sswitch_82
        0x30 -> :sswitch_72
        0x50 -> :sswitch_5a
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 112
    move-object/from16 v0, p0

    const-string v1, "NotificationTopLineView#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 113
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 114
    .local v1, "givenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 115
    .local v2, "givenHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    move v3, v4

    .line 116
    .local v3, "wrapHeight":Z
    :goto_1b
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 117
    .local v6, "wrapContentWidthSpec":I
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 118
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2e

    .line 119
    :cond_2a
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_2e
    nop

    .line 120
    .local v5, "heightSpec":I
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v7

    .line 121
    .local v7, "totalWidth":I
    const/4 v8, -0x1

    .line 122
    .local v8, "maxChildHeight":I
    const/4 v9, -0x1

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 123
    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    .line 124
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3a
    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_a6

    .line 125
    invoke-virtual {v0, v10}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 126
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4f

    .line 128
    move/from16 v16, v2

    goto :goto_9f

    .line 130
    :cond_4f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    .local v12, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v13, v14}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v13

    .line 133
    .local v13, "childWidthSpec":I
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v14, v15}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v14

    .line 135
    .local v14, "childHeightSpec":I
    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    .line 136
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v15, v4

    add-int/2addr v7, v15

    .line 137
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 138
    .local v4, "childBaseline":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 139
    .local v15, "childHeight":I
    if-eq v4, v9, :cond_98

    .line 140
    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 141
    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    move/from16 v16, v2

    .end local v2    # "givenHeight":I
    .local v16, "givenHeight":I
    sub-int v2, v15, v4

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    goto :goto_9a

    .line 139
    .end local v16    # "givenHeight":I
    .restart local v2    # "givenHeight":I
    :cond_98
    move/from16 v16, v2

    .line 143
    .end local v2    # "givenHeight":I
    .restart local v16    # "givenHeight":I
    :goto_9a
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    .line 124
    .end local v4    # "childBaseline":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "childWidthSpec":I
    .end local v14    # "childHeightSpec":I
    .end local v15    # "childHeight":I
    :goto_9f
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    const/4 v4, 0x0

    const/4 v9, -0x1

    goto :goto_3a

    .end local v16    # "givenHeight":I
    .restart local v2    # "givenHeight":I
    :cond_a6
    move/from16 v16, v2

    .line 146
    .end local v2    # "givenHeight":I
    .end local v10    # "i":I
    .restart local v16    # "givenHeight":I
    iget-object v2, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 148
    iget v2, v0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 149
    .local v2, "endMargin":I
    sub-int v4, v1, v2

    if-le v7, v4, :cond_f9

    .line 150
    sub-int v4, v7, v1

    add-int/2addr v4, v2

    .line 152
    .local v4, "overFlow":I
    iget-object v9, v0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    invoke-virtual {v9, v4, v5}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 154
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    iget v13, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 157
    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 159
    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 161
    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 163
    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 165
    invoke-virtual {v9, v10, v12, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    .line 167
    invoke-virtual {v9}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 169
    .end local v4    # "overFlow":I
    :cond_f9
    if-eqz v3, :cond_fd

    move v4, v8

    goto :goto_ff

    :cond_fd
    move/from16 v4, v16

    :goto_ff
    invoke-virtual {v0, v1, v4}, Landroid/view/NotificationTopLineView;->setMeasuredDimension(II)V

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    return-void
.end method

.method public blacklist onTouchUp(FFFF)Z
    .registers 6
    .param p1, "upX"    # F
    .param p2, "upY"    # F
    .param p3, "downX"    # F
    .param p4, "downY"    # F

    .line 408
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    .line 409
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_6
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 260
    iput-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    .line 261
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 263
    return-void
.end method

.method public blacklist setHeaderTextMarginEnd(I)V
    .registers 3
    .param p1, "headerTextMarginEnd"    # I

    .line 271
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    if-eq v0, p1, :cond_9

    .line 272
    iput p1, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    .line 273
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->requestLayout()V

    .line 275
    :cond_9
    return-void
.end method

.method public blacklist setPaddingStart(I)V
    .registers 5
    .param p1, "paddingStart"    # I

    .line 290
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/NotificationTopLineView;->setPaddingRelative(IIII)V

    .line 291
    return-void
.end method
