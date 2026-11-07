.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private greylist mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final greylist-max-o mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 103
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->FrameLayout:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 106
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 107
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 110
    :cond_2f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private greylist-max-o getPaddingBottomWithForeground()I
    .registers 3

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 175
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 174
    :goto_14
    return v0
.end method

.method private greylist-max-o getPaddingTopWithForeground()I
    .registers 3

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 170
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 169
    :goto_14
    return v0
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 390
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 413
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 415
    const-string v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 416
    const-string v0, "padding:foregroundPaddingLeft"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 417
    const-string v0, "padding:foregroundPaddingTop"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 418
    const-string v0, "padding:foregroundPaddingRight"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 419
    const-string v0, "padding:foregroundPaddingBottom"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 420
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

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

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 395
    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 396
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 397
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 398
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 399
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 402
    :cond_1e
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 380
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 407
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConsiderGoneChildrenWhenMeasuring()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public whitelist getMeasureAllChildren()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method greylist-max-o getPaddingLeftWithForeground()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 160
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 159
    :goto_14
    return v0
.end method

.method greylist-max-o getPaddingRightWithForeground()I
    .registers 3

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 165
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 164
    :goto_14
    return v0
.end method

.method greylist-max-o layoutChildren(IIIIZ)V
    .registers 25
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 276
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    .line 277
    .local v1, "parentLeft":I
    sub-int v2, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    sub-int/2addr v2, v3

    .line 279
    .local v2, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v3

    .line 280
    .local v3, "parentTop":I
    sub-int v4, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    .line 282
    .local v4, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v0, :cond_b7

    .line 283
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 284
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_a7

    .line 285
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 288
    .local v9, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 293
    .local v10, "height":I
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    .local v11, "gravity":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_41

    .line 295
    const v11, 0x800033

    .line 298
    :cond_41
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v12

    .line 299
    .local v12, "layoutDirection":I
    invoke-static {v11, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 300
    .local v13, "absoluteGravity":I
    and-int/lit8 v14, v11, 0x70

    .line 302
    .local v14, "verticalGravity":I
    and-int/lit8 v15, v13, 0x7

    sparse-switch v15, :sswitch_data_b8

    move/from16 v16, v0

    .end local v0    # "count":I
    .local v16, "count":I
    goto :goto_70

    .line 308
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :sswitch_53
    if-nez p5, :cond_5d

    .line 309
    sub-int v15, v2, v9

    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v15, v0

    .line 310
    .local v15, "childLeft":I
    goto :goto_74

    .line 308
    .end local v15    # "childLeft":I
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_5d
    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    goto :goto_70

    .line 304
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :sswitch_60
    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    sub-int v0, v2, v1

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v15

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v15, v0, v15

    .line 306
    .restart local v15    # "childLeft":I
    goto :goto_74

    .line 314
    .end local v15    # "childLeft":I
    :goto_70
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v15, v1, v0

    .line 317
    .restart local v15    # "childLeft":I
    :goto_74
    sparse-switch v14, :sswitch_data_c2

    .line 329
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    .local v0, "childTop":I
    goto :goto_9b

    .line 326
    .end local v0    # "childTop":I
    :sswitch_7b
    sub-int v0, v4, v10

    move/from16 v17, v0

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v17, v0

    .line 327
    .restart local v0    # "childTop":I
    goto :goto_9b

    .line 319
    .end local v0    # "childTop":I
    :sswitch_84
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    .line 320
    .restart local v0    # "childTop":I
    goto :goto_9b

    .line 322
    .end local v0    # "childTop":I
    :sswitch_88
    sub-int v0, v4, v3

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    move/from16 v17, v0

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v0, v17, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v17, v0

    .line 324
    .restart local v0    # "childTop":I
    nop

    .line 332
    :goto_9b
    move/from16 v17, v1

    .end local v1    # "parentLeft":I
    .local v17, "parentLeft":I
    add-int v1, v15, v9

    move/from16 v18, v2

    .end local v2    # "parentRight":I
    .local v18, "parentRight":I
    add-int v2, v0, v10

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_ad

    .line 284
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "gravity":I
    .end local v12    # "layoutDirection":I
    .end local v13    # "absoluteGravity":I
    .end local v14    # "verticalGravity":I
    .end local v15    # "childLeft":I
    .end local v16    # "count":I
    .end local v17    # "parentLeft":I
    .end local v18    # "parentRight":I
    .local v0, "count":I
    .restart local v1    # "parentLeft":I
    .restart local v2    # "parentRight":I
    :cond_a7
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    .line 282
    .end local v0    # "count":I
    .end local v1    # "parentLeft":I
    .end local v2    # "parentRight":I
    .end local v7    # "child":Landroid/view/View;
    .restart local v16    # "count":I
    .restart local v17    # "parentLeft":I
    .restart local v18    # "parentRight":I
    :goto_ad
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_1b

    .line 335
    .end local v5    # "i":I
    .end local v16    # "count":I
    .end local v17    # "parentLeft":I
    .end local v18    # "parentRight":I
    .restart local v0    # "count":I
    .restart local v1    # "parentLeft":I
    .restart local v2    # "parentRight":I
    :cond_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_60
        0x5 -> :sswitch_53
    .end sparse-switch

    :sswitch_data_c2
    .sparse-switch
        0x10 -> :sswitch_88
        0x30 -> :sswitch_84
        0x50 -> :sswitch_7b
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 270
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v1, "left":I
    .local v2, "top":I
    .local v3, "right":I
    .local v4, "bottom":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 271
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 182
    .local v6, "count":I
    nop

    .line 183
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v1, v9, :cond_1a

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v9, :cond_18

    goto :goto_1a

    :cond_18
    move v1, v7

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v8

    :goto_1b
    move v10, v1

    .line 185
    .local v10, "measureMatchParentChildren":Z
    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 189
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .line 191
    .local v3, "childState":I
    const/4 v4, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    .end local v3    # "childState":I
    .local v11, "maxHeight":I
    .local v12, "maxWidth":I
    .local v13, "childState":I
    .local v14, "i":I
    :goto_29
    const/4 v15, -0x1

    if-ge v14, v6, :cond_8e

    .line 192
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, "child":Landroid/view/View;
    iget-boolean v2, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v2, :cond_42

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3d

    goto :goto_42

    :cond_3d
    move/from16 v2, p1

    move/from16 v4, p2

    goto :goto_89

    .line 194
    :cond_42
    :goto_42
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 197
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    .line 196
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 198
    .end local v12    # "maxWidth":I
    .local v5, "maxWidth":I
    nop

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v12

    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v12

    .line 198
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 200
    .end local v11    # "maxHeight":I
    .local v9, "maxHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v13, v11}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v11

    .line 201
    .end local v13    # "childState":I
    .local v11, "childState":I
    if-eqz v10, :cond_86

    .line 202
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v12, v15, :cond_81

    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v12, v15, :cond_86

    .line 204
    :cond_81
    iget-object v12, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_86
    move v12, v5

    move v13, v11

    move v11, v9

    .end local v5    # "maxWidth":I
    .end local v9    # "maxHeight":I
    .local v11, "maxHeight":I
    .restart local v12    # "maxWidth":I
    .restart local v13    # "childState":I
    :goto_89
    add-int/lit8 v14, v14, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_29

    :cond_8e
    move/from16 v2, p1

    move/from16 v4, p2

    .line 211
    .end local v14    # "i":I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v12, v1

    .line 212
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v11, v1

    .line 215
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    .end local v11    # "maxHeight":I
    .local v1, "maxHeight":I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    .end local v12    # "maxWidth":I
    .local v3, "maxWidth":I
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 220
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_cc

    .line 221
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 222
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 225
    :cond_cc
    invoke-static {v3, v2, v13}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v9

    shl-int/lit8 v11, v13, 0x10

    .line 226
    invoke-static {v1, v4, v11}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v11

    .line 225
    invoke-virtual {v0, v9, v11}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 229
    iget-object v9, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 230
    if-le v6, v8, :cond_171

    .line 231
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e2
    if-ge v8, v6, :cond_171

    .line 232
    iget-object v9, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 233
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v12, v15, :cond_115

    .line 237
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    .line 238
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v14

    sub-int/2addr v12, v14

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    sub-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v12, v14

    .line 237
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 240
    .local v12, "width":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 242
    .local v12, "childWidthMeasureSpec":I
    goto :goto_12b

    .line 243
    .end local v12    # "childWidthMeasureSpec":I
    :cond_115
    nop

    .line 244
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v12

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    add-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 243
    invoke-static {v2, v12, v14}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 250
    .restart local v12    # "childWidthMeasureSpec":I
    :goto_12b
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v14, v15, :cond_150

    .line 251
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    .line 252
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v17

    sub-int v14, v14, v17

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v17

    sub-int v14, v14, v17

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 251
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 254
    .local v14, "height":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 256
    .local v14, "childHeightMeasureSpec":I
    goto :goto_168

    .line 257
    .end local v14    # "childHeightMeasureSpec":I
    :cond_150
    const/high16 v15, 0x40000000    # 2.0f

    .line 258
    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v14

    invoke-direct {v0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v16

    add-int v14, v14, v16

    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v7

    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v7

    iget v7, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 257
    invoke-static {v4, v14, v7}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v14

    .line 263
    .restart local v14    # "childHeightMeasureSpec":I
    :goto_168
    invoke-virtual {v9, v12, v14}, Landroid/view/View;->measure(II)V

    .line 231
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "childWidthMeasureSpec":I
    .end local v14    # "childHeightMeasureSpec":I
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    const/4 v15, -0x1

    goto/16 :goto_e2

    .line 266
    .end local v8    # "i":I
    :cond_171
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .registers 5
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_3f

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_33

    if-eqz v0, :cond_33

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 132
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 133
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 134
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 135
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 137
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_32
    goto :goto_3c

    .line 138
    :cond_33
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 139
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 140
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 141
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 144
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 146
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_3f
    return-void
.end method

.method public whitelist setMeasureAllChildren(Z)V
    .registers 2
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 348
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 349
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 385
    const/4 v0, 0x0

    return v0
.end method
