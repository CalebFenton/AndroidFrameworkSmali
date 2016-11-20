.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private final mImageMinTopMargin:I

.field private mMainColumn:Landroid/view/View;

.field private final mMaxImageSize:I

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 142
    const v1, 0x105004a

    #@a
    .line 141
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMaxImageSize:I

    #@10
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    .line 144
    const v1, 0x1050044

    #@17
    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1a
    move-result v0

    #@1b
    int-to-float v0, v0

    #@1c
    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/MediaNotificationView;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v1

    #@24
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@26
    const/high16 v2, 0x40000000    # 2.0f

    #@28
    mul-float/2addr v1, v2

    #@29
    .line 143
    add-float/2addr v0, v1

    #@2a
    float-to-int v0, v0

    #@2b
    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImageMinTopMargin:I

    #@2d
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v0

    #@31
    .line 147
    const v1, 0x1050040

    #@34
    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@37
    move-result v0

    #@38
    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    #@3a
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d
    move-result-object v0

    #@3e
    .line 149
    const v1, 0x105004c

    #@41
    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    #@47
    .line 139
    return-void
.end method

.method private resetHeaderIndention()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 119
    const/4 v1, 0x0

    #@2
    .line 120
    .local v1, "remeasure":Z
    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@4
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    #@7
    move-result v2

    #@8
    iget v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 121
    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@e
    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@10
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    #@13
    move-result v3

    #@14
    .line 122
    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@16
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    #@19
    move-result v4

    #@1a
    .line 123
    iget v5, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    #@1c
    .line 124
    iget-object v6, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@1e
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    #@21
    move-result v6

    #@22
    .line 121
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@25
    .line 125
    const/4 v1, 0x1

    #@26
    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@28
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2e
    .line 129
    .local v0, "headerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@31
    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_1

    #@37
    .line 131
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@3a
    .line 132
    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@3c
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3f
    .line 133
    const/4 v1, 0x1

    #@40
    .line 135
    :cond_1
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    #@3
    .line 155
    const v0, 0x1020044

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/ImageView;

    #@c
    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@e
    .line 156
    const v0, 0x10203b3

    #@11
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    #@17
    .line 157
    const v0, 0x10203a8

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@20
    .line 158
    const v0, 0x10203b1

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    #@29
    .line 153
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 60
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v16

    #@4
    .line 61
    .local v16, "mode":I
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@8
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    #@b
    move-result v3

    #@c
    const/16 v4, 0x8

    #@e
    if-eq v3, v4, :cond_4

    #@10
    const/4 v9, 0x1

    #@11
    .line 62
    .local v9, "hasIcon":Z
    :goto_0
    if-eqz v9, :cond_0

    #@13
    if-eqz v16, :cond_0

    #@15
    .line 63
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    #@19
    move-object/from16 v0, p0

    #@1b
    move/from16 v1, p1

    #@1d
    move/from16 v2, p2

    #@1f
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/MediaNotificationView;->measureChild(Landroid/view/View;II)V

    #@22
    .line 64
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@25
    move-result v20

    #@26
    .line 65
    .local v20, "size":I
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    #@2a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@2d
    move-result v3

    #@2e
    sub-int v20, v20, v3

    #@30
    .line 67
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@34
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@37
    move-result-object v13

    #@38
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3a
    .line 68
    .local v13, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@3d
    move-result v12

    #@3e
    .line 69
    .local v12, "imageEndMargin":I
    sub-int v20, v20, v12

    #@40
    .line 70
    move-object/from16 v0, p0

    #@42
    iget v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMaxImageSize:I

    #@44
    move/from16 v0, v20

    #@46
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v20

    #@4a
    .line 71
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@4e
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMinimumWidth()I

    #@51
    move-result v3

    #@52
    move/from16 v0, v20

    #@54
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@57
    move-result v20

    #@58
    .line 72
    move/from16 v0, v20

    #@5a
    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@5c
    .line 73
    move/from16 v0, v20

    #@5e
    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@60
    .line 74
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@64
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@67
    .line 78
    move-object/from16 v0, p0

    #@69
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    #@6b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6e
    move-result-object v14

    #@6f
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    #@71
    .line 79
    .local v14, "mainParams":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int v3, v20, v12

    #@73
    move-object/from16 v0, p0

    #@75
    iget v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    #@77
    add-int v15, v3, v4

    #@79
    .line 80
    .local v15, "marginEnd":I
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@7c
    move-result v3

    #@7d
    if-eq v15, v3, :cond_0

    #@7f
    .line 81
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@82
    .line 82
    move-object/from16 v0, p0

    #@84
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    #@86
    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@89
    .line 86
    .end local v12    # "imageEndMargin":I
    .end local v13    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "mainParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "marginEnd":I
    .end local v20    # "size":I
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@8c
    .line 88
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@90
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@93
    move-result-object v11

    #@94
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    #@96
    .line 89
    .local v11, "iconParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    #@99
    move-result v3

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@9e
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@a1
    move-result v4

    #@a2
    sub-int/2addr v3, v4

    #@a3
    .line 90
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@a5
    .line 89
    sub-int v21, v3, v4

    #@a7
    .line 92
    .local v21, "topMargin":I
    const/16 v19, 0x0

    #@a9
    .line 93
    .local v19, "reMeasure":Z
    if-eqz v9, :cond_1

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mImageMinTopMargin:I

    #@af
    move/from16 v0, v21

    #@b1
    if-lt v0, v3, :cond_5

    #@b3
    .line 94
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()Z

    #@b6
    move-result v19

    #@b7
    .line 113
    .end local v19    # "reMeasure":Z
    :cond_2
    :goto_1
    if-eqz v19, :cond_3

    #@b9
    .line 114
    move-object/from16 v0, p0

    #@bb
    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@bd
    const/4 v6, 0x0

    #@be
    const/4 v8, 0x0

    #@bf
    move-object/from16 v3, p0

    #@c1
    move/from16 v5, p1

    #@c3
    move/from16 v7, p2

    #@c5
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MediaNotificationView;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@c8
    .line 59
    :cond_3
    return-void

    #@c9
    .line 61
    .end local v9    # "hasIcon":Z
    .end local v11    # "iconParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v21    # "topMargin":I
    :cond_4
    const/4 v9, 0x0

    #@ca
    goto/16 :goto_0

    #@cc
    .line 96
    .restart local v9    # "hasIcon":Z
    .restart local v11    # "iconParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v19    # "reMeasure":Z
    .restart local v21    # "topMargin":I
    :cond_5
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    #@d0
    move/from16 v18, v0

    #@d2
    .line 98
    .local v18, "paddingEnd":I
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@d6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d9
    move-result-object v10

    #@da
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    #@dc
    .line 99
    .local v10, "headerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    #@e0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    #@e3
    move-result v3

    #@e4
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@e7
    move-result v4

    #@e8
    add-int v17, v3, v4

    #@ea
    .line 100
    .local v17, "newMarginEnd":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@ed
    move-result v3

    #@ee
    move/from16 v0, v17

    #@f0
    if-eq v3, v0, :cond_6

    #@f2
    .line 101
    move/from16 v0, v17

    #@f4
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@f7
    .line 102
    move-object/from16 v0, p0

    #@f9
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@fb
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@fe
    .line 103
    const/16 v19, 0x1

    #@100
    .line 105
    :cond_6
    move-object/from16 v0, p0

    #@102
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@104
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    #@107
    move-result v3

    #@108
    move/from16 v0, v18

    #@10a
    if-eq v3, v0, :cond_2

    #@10c
    .line 106
    move-object/from16 v0, p0

    #@10e
    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@114
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    #@117
    move-result v4

    #@118
    .line 107
    move-object/from16 v0, p0

    #@11a
    iget-object v5, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@11c
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    #@11f
    move-result v5

    #@120
    .line 109
    move-object/from16 v0, p0

    #@122
    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    #@124
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    #@127
    move-result v6

    #@128
    .line 106
    move/from16 v0, v18

    #@12a
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@12d
    .line 110
    const/16 v19, 0x1

    #@12f
    goto :goto_1
.end method
