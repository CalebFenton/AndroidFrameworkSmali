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
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@4
    .line 64
    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@6
    .line 67
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@8
    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@a
    .line 73
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@c
    .line 76
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@e
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    #@10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    #@15
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    #@1c
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@24
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 91
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
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 64
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@7
    .line 67
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@9
    .line 70
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@b
    .line 73
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@d
    .line 76
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@f
    .line 78
    new-instance v1, Landroid/graphics/Rect;

    #@11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v1, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    #@16
    .line 79
    new-instance v1, Landroid/graphics/Rect;

    #@18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    #@1d
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@24
    .line 100
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    #@26
    .line 99
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29
    move-result-object v0

    #@2a
    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 103
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    #@33
    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 96
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    #@8
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 171
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    #@11
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    #@8
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 166
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    #@11
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 399
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    #@2
    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 417
    const-string/jumbo v0, "measurement:measureAllChildren"

    #@6
    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@b
    .line 418
    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    #@e
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 419
    const-string/jumbo v0, "padding:foregroundPaddingTop"

    #@16
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1b
    .line 420
    const-string/jumbo v0, "padding:foregroundPaddingRight"

    #@1e
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@23
    .line 421
    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    #@26
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2b
    .line 414
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 386
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 409
    const-class v0, Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    #@0
    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@2
    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    #@8
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 156
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    #@11
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    #@8
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .line 161
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    #@11
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@13
    add-int/2addr v0, v1

    #@14
    goto :goto_0
.end method

.method layoutChildren(IIIIZ)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    #@0
    .prologue
    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    #@3
    move-result v6

    #@4
    .line 280
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    #@7
    move-result v13

    #@8
    .line 281
    .local v13, "parentLeft":I
    sub-int v18, p3, p1

    #@a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    #@d
    move-result v19

    #@e
    sub-int v14, v18, v19

    #@10
    .line 283
    .local v14, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    #@13
    move-result v15

    #@14
    .line 284
    .local v15, "parentTop":I
    sub-int v18, p4, p2

    #@16
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    #@19
    move-result v19

    #@1a
    sub-int v12, v18, v19

    #@1c
    .line 286
    .local v12, "parentBottom":I
    const/4 v9, 0x0

    #@1d
    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_3

    #@1f
    .line 287
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v3

    #@25
    .line 288
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@28
    move-result v18

    #@29
    const/16 v19, 0x8

    #@2b
    move/from16 v0, v18

    #@2d
    move/from16 v1, v19

    #@2f
    if-eq v0, v1, :cond_2

    #@31
    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@34
    move-result-object v11

    #@35
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    #@37
    .line 291
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@3a
    move-result v17

    #@3b
    .line 292
    .local v17, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@3e
    move-result v8

    #@3f
    .line 297
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@41
    .line 298
    .local v7, "gravity":I
    const/16 v18, -0x1

    #@43
    move/from16 v0, v18

    #@45
    if-ne v7, v0, :cond_0

    #@47
    .line 299
    const v7, 0x800033

    #@4a
    .line 302
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    #@4d
    move-result v10

    #@4e
    .line 303
    .local v10, "layoutDirection":I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@51
    move-result v2

    #@52
    .line 304
    .local v2, "absoluteGravity":I
    and-int/lit8 v16, v7, 0x70

    #@54
    .line 306
    .local v16, "verticalGravity":I
    and-int/lit8 v18, v2, 0x7

    #@56
    sparse-switch v18, :sswitch_data_0

    #@59
    .line 318
    :cond_1
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@5b
    move/from16 v18, v0

    #@5d
    add-int v4, v13, v18

    #@5f
    .line 321
    .local v4, "childLeft":I
    :goto_1
    sparse-switch v16, :sswitch_data_1

    #@62
    .line 333
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@64
    move/from16 v18, v0

    #@66
    add-int v5, v15, v18

    #@68
    .line 336
    .local v5, "childTop":I
    :goto_2
    add-int v18, v4, v17

    #@6a
    add-int v19, v5, v8

    #@6c
    move/from16 v0, v18

    #@6e
    move/from16 v1, v19

    #@70
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@73
    .line 286
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@75
    goto :goto_0

    #@76
    .line 308
    .restart local v2    # "absoluteGravity":I
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "verticalGravity":I
    .restart local v17    # "width":I
    :sswitch_0
    sub-int v18, v14, v13

    #@78
    sub-int v18, v18, v17

    #@7a
    div-int/lit8 v18, v18, 0x2

    #@7c
    add-int v18, v18, v13

    #@7e
    .line 309
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@80
    move/from16 v19, v0

    #@82
    .line 308
    add-int v18, v18, v19

    #@84
    .line 309
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@86
    move/from16 v19, v0

    #@88
    .line 308
    sub-int v4, v18, v19

    #@8a
    .line 310
    .restart local v4    # "childLeft":I
    goto :goto_1

    #@8b
    .line 312
    .end local v4    # "childLeft":I
    :sswitch_1
    if-nez p5, :cond_1

    #@8d
    .line 313
    sub-int v18, v14, v17

    #@8f
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@91
    move/from16 v19, v0

    #@93
    sub-int v4, v18, v19

    #@95
    .line 314
    .restart local v4    # "childLeft":I
    goto :goto_1

    #@96
    .line 323
    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@98
    move/from16 v18, v0

    #@9a
    add-int v5, v15, v18

    #@9c
    .line 324
    .restart local v5    # "childTop":I
    goto :goto_2

    #@9d
    .line 326
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v18, v12, v15

    #@9f
    sub-int v18, v18, v8

    #@a1
    div-int/lit8 v18, v18, 0x2

    #@a3
    add-int v18, v18, v15

    #@a5
    .line 327
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@a7
    move/from16 v19, v0

    #@a9
    .line 326
    add-int v18, v18, v19

    #@ab
    .line 327
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@ad
    move/from16 v19, v0

    #@af
    .line 326
    sub-int v5, v18, v19

    #@b1
    .line 328
    .restart local v5    # "childTop":I
    goto :goto_2

    #@b2
    .line 330
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v18, v12, v8

    #@b4
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@b6
    move/from16 v19, v0

    #@b8
    sub-int v5, v18, v19

    #@ba
    .line 331
    .restart local v5    # "childTop":I
    goto :goto_2

    #@bb
    .line 277
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_3
    return-void

    #@bc
    .line 306
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    #@c6
    .line 321
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 273
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move v3, p4

    #@5
    move v4, p5

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    #@9
    .line 272
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    #@3
    move-result v11

    #@4
    .line 183
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v2

    #@8
    const/high16 v4, 0x40000000    # 2.0f

    #@a
    if-ne v2, v4, :cond_3

    #@c
    .line 184
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@f
    move-result v2

    #@10
    const/high16 v4, 0x40000000    # 2.0f

    #@12
    if-eq v2, v4, :cond_4

    #@14
    const/16 v19, 0x1

    #@16
    .line 185
    .local v19, "measureMatchParentChildren":Z
    :goto_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 187
    const/16 v17, 0x0

    #@1f
    .line 188
    .local v17, "maxHeight":I
    const/16 v18, 0x0

    #@21
    .line 189
    .local v18, "maxWidth":I
    const/4 v9, 0x0

    #@22
    .line 191
    .local v9, "childState":I
    const/4 v14, 0x0

    #@23
    .local v14, "i":I
    :goto_1
    if-ge v14, v11, :cond_5

    #@25
    .line 192
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    #@2a
    move-result-object v3

    #@2b
    .line 193
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@2d
    iget-boolean v2, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@2f
    if-nez v2, :cond_0

    #@31
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@34
    move-result v2

    #@35
    const/16 v4, 0x8

    #@37
    if-eq v2, v4, :cond_2

    #@39
    .line 194
    :cond_0
    const/4 v5, 0x0

    #@3a
    const/4 v7, 0x0

    #@3b
    move-object/from16 v2, p0

    #@3d
    move/from16 v4, p1

    #@3f
    move/from16 v6, p2

    #@41
    invoke-virtual/range {v2 .. v7}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@44
    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@47
    move-result-object v16

    #@48
    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    #@4a
    .line 197
    .local v16, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@4d
    move-result v2

    #@4e
    move-object/from16 v0, v16

    #@50
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@52
    add-int/2addr v2, v4

    #@53
    move-object/from16 v0, v16

    #@55
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@57
    add-int/2addr v2, v4

    #@58
    .line 196
    move/from16 v0, v18

    #@5a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@5d
    move-result v18

    #@5e
    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@61
    move-result v2

    #@62
    move-object/from16 v0, v16

    #@64
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@66
    add-int/2addr v2, v4

    #@67
    move-object/from16 v0, v16

    #@69
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@6b
    add-int/2addr v2, v4

    #@6c
    .line 198
    move/from16 v0, v17

    #@6e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@71
    move-result v17

    #@72
    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    #@75
    move-result v2

    #@76
    invoke-static {v9, v2}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    #@79
    move-result v9

    #@7a
    .line 201
    if-eqz v19, :cond_2

    #@7c
    .line 202
    move-object/from16 v0, v16

    #@7e
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@80
    const/4 v4, -0x1

    #@81
    if-eq v2, v4, :cond_1

    #@83
    .line 203
    move-object/from16 v0, v16

    #@85
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@87
    const/4 v4, -0x1

    #@88
    if-ne v2, v4, :cond_2

    #@8a
    .line 204
    :cond_1
    move-object/from16 v0, p0

    #@8c
    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91
    .line 191
    .end local v16    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    #@93
    goto :goto_1

    #@94
    .line 183
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v14    # "i":I
    .end local v17    # "maxHeight":I
    .end local v18    # "maxWidth":I
    .end local v19    # "measureMatchParentChildren":Z
    :cond_3
    const/16 v19, 0x1

    #@96
    .restart local v19    # "measureMatchParentChildren":Z
    goto :goto_0

    #@97
    .line 184
    .end local v19    # "measureMatchParentChildren":Z
    :cond_4
    const/16 v19, 0x0

    #@99
    .restart local v19    # "measureMatchParentChildren":Z
    goto/16 :goto_0

    #@9b
    .line 211
    .restart local v9    # "childState":I
    .restart local v14    # "i":I
    .restart local v17    # "maxHeight":I
    .restart local v18    # "maxWidth":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    #@9e
    move-result v2

    #@9f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    #@a2
    move-result v4

    #@a3
    add-int/2addr v2, v4

    #@a4
    add-int v18, v18, v2

    #@a6
    .line 212
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    #@a9
    move-result v2

    #@aa
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    #@ad
    move-result v4

    #@ae
    add-int/2addr v2, v4

    #@af
    add-int v17, v17, v2

    #@b1
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    #@b4
    move-result v2

    #@b5
    move/from16 v0, v17

    #@b7
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@ba
    move-result v17

    #@bb
    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    #@be
    move-result v2

    #@bf
    move/from16 v0, v18

    #@c1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@c4
    move-result v18

    #@c5
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    #@c8
    move-result-object v12

    #@c9
    .line 220
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_6

    #@cb
    .line 221
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@ce
    move-result v2

    #@cf
    move/from16 v0, v17

    #@d1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@d4
    move-result v17

    #@d5
    .line 222
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@d8
    move-result v2

    #@d9
    move/from16 v0, v18

    #@db
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@de
    move-result v18

    #@df
    .line 225
    :cond_6
    move/from16 v0, v18

    #@e1
    move/from16 v1, p1

    #@e3
    invoke-static {v0, v1, v9}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    #@e6
    move-result v2

    #@e7
    .line 227
    shl-int/lit8 v4, v9, 0x10

    #@e9
    .line 226
    move/from16 v0, v17

    #@eb
    move/from16 v1, p2

    #@ed
    invoke-static {v0, v1, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    #@f0
    move-result v4

    #@f1
    .line 225
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    #@f6
    .line 229
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@fd
    move-result v11

    #@fe
    .line 230
    const/4 v2, 0x1

    #@ff
    if-le v11, v2, :cond_9

    #@101
    .line 231
    const/4 v14, 0x0

    #@102
    :goto_2
    if-ge v14, v11, :cond_9

    #@104
    .line 232
    move-object/from16 v0, p0

    #@106
    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    #@108
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10b
    move-result-object v3

    #@10c
    check-cast v3, Landroid/view/View;

    #@10e
    .line 233
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@111
    move-result-object v15

    #@112
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@114
    .line 236
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@116
    const/4 v4, -0x1

    #@117
    if-ne v2, v4, :cond_7

    #@119
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    #@11c
    move-result v2

    #@11d
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    #@120
    move-result v4

    #@121
    .line 237
    sub-int/2addr v2, v4

    #@122
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    #@125
    move-result v4

    #@126
    .line 237
    sub-int/2addr v2, v4

    #@127
    .line 239
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@129
    .line 237
    sub-int/2addr v2, v4

    #@12a
    .line 239
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@12c
    .line 237
    sub-int/2addr v2, v4

    #@12d
    const/4 v4, 0x0

    #@12e
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@131
    move-result v20

    #@132
    .line 241
    .local v20, "width":I
    const/high16 v2, 0x40000000    # 2.0f

    #@134
    .line 240
    move/from16 v0, v20

    #@136
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@139
    move-result v10

    #@13a
    .line 250
    .end local v20    # "width":I
    .local v10, "childWidthMeasureSpec":I
    :goto_3
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@13c
    const/4 v4, -0x1

    #@13d
    if-ne v2, v4, :cond_8

    #@13f
    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    #@142
    move-result v2

    #@143
    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    #@146
    move-result v4

    #@147
    .line 251
    sub-int/2addr v2, v4

    #@148
    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    #@14b
    move-result v4

    #@14c
    .line 251
    sub-int/2addr v2, v4

    #@14d
    .line 253
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@14f
    .line 251
    sub-int/2addr v2, v4

    #@150
    .line 253
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@152
    .line 251
    sub-int/2addr v2, v4

    #@153
    const/4 v4, 0x0

    #@154
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@157
    move-result v13

    #@158
    .line 255
    .local v13, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    #@15a
    .line 254
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@15d
    move-result v8

    #@15e
    .line 263
    .end local v13    # "height":I
    .local v8, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    #@161
    .line 231
    add-int/lit8 v14, v14, 0x1

    #@163
    goto :goto_2

    #@164
    .line 244
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    #@167
    move-result v2

    #@168
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    #@16b
    move-result v4

    #@16c
    add-int/2addr v2, v4

    #@16d
    .line 245
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@16f
    .line 244
    add-int/2addr v2, v4

    #@170
    .line 245
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@172
    .line 244
    add-int/2addr v2, v4

    #@173
    .line 246
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@175
    .line 243
    move/from16 v0, p1

    #@177
    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    #@17a
    move-result v10

    #@17b
    .restart local v10    # "childWidthMeasureSpec":I
    goto :goto_3

    #@17c
    .line 258
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    #@17f
    move-result v2

    #@180
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    #@183
    move-result v4

    #@184
    add-int/2addr v2, v4

    #@185
    .line 259
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@187
    .line 258
    add-int/2addr v2, v4

    #@188
    .line 259
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@18a
    .line 258
    add-int/2addr v2, v4

    #@18b
    .line 260
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@18d
    .line 257
    move/from16 v0, p2

    #@18f
    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    #@192
    move-result v8

    #@193
    .restart local v8    # "childHeightMeasureSpec":I
    goto :goto_4

    #@194
    .line 179
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 5
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    #@4
    move-result v2

    #@5
    if-eq v2, p1, :cond_1

    #@7
    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    #@a
    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    .line 125
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    #@11
    move-result v2

    #@12
    const/16 v3, 0x77

    #@14
    if-ne v2, v3, :cond_2

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 126
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 127
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 128
    iget v2, v1, Landroid/graphics/Rect;->left:I

    #@25
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@27
    .line 129
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@29
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@2b
    .line 130
    iget v2, v1, Landroid/graphics/Rect;->right:I

    #@2d
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@2f
    .line 131
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@31
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@33
    .line 140
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@36
    .line 119
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    #@37
    .line 134
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    #@39
    .line 135
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    #@3b
    .line 136
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    #@3d
    .line 137
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    #@3f
    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 352
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    #@2
    .line 351
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 391
    const/4 v0, 0x0

    #@1
    return v0
.end method
