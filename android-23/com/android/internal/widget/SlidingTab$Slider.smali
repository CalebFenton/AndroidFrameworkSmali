.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/view/ViewGroup;III)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "tabId"    # I
    .param p3, "barId"    # I
    .param p4, "targetId"    # I

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, -0x2

    #@2
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 184
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    #@8
    .line 185
    iput v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@a
    .line 198
    new-instance v0, Landroid/widget/ImageView;

    #@c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@15
    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@17
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    #@1a
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@1c
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@21
    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@23
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@25
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2b
    .line 205
    new-instance v0, Landroid/widget/TextView;

    #@2d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@34
    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@36
    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@38
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@3a
    .line 207
    const/4 v2, -0x1

    #@3b
    .line 206
    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@41
    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@43
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    #@46
    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v1

    #@4c
    const v2, 0x1030314

    #@4f
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@52
    .line 213
    new-instance v0, Landroid/widget/ImageView;

    #@54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@57
    move-result-object v1

    #@58
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@5b
    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@5d
    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@5f
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    #@62
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@64
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@69
    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@6b
    .line 217
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@6d
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@70
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@73
    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@75
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    #@78
    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@7a
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@7d
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@7f
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@82
    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@87
    .line 196
    return-void
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTabWidth()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method hide()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 242
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@4
    if-eqz v4, :cond_0

    #@6
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@8
    if-ne v4, v7, :cond_1

    #@a
    :cond_0
    const/4 v2, 0x1

    #@b
    .line 243
    .local v2, "horiz":Z
    :goto_0
    if-eqz v2, :cond_3

    #@d
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@f
    if-nez v4, :cond_2

    #@11
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@13
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@15
    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    #@18
    move-result v5

    #@19
    sub-int v0, v4, v5

    #@1b
    .line 245
    .local v0, "dx":I
    :goto_1
    if-eqz v2, :cond_4

    #@1d
    const/4 v1, 0x0

    #@1e
    .line 248
    .local v1, "dy":I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    #@20
    int-to-float v4, v0

    #@21
    int-to-float v5, v1

    #@22
    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@25
    .line 249
    .local v3, "trans":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    #@27
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@2a
    .line 250
    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@2d
    .line 251
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2f
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@32
    .line 252
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@34
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    #@37
    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@39
    const/4 v5, 0x4

    #@3a
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    #@3d
    .line 241
    return-void

    #@3e
    .line 242
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_1
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "horiz":Z
    goto :goto_0

    #@40
    .line 244
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@42
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@44
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    #@47
    move-result v5

    #@48
    sub-int v0, v4, v5

    #@4a
    .restart local v0    # "dx":I
    goto :goto_1

    #@4b
    .end local v0    # "dx":I
    :cond_3
    const/4 v0, 0x0

    #@4c
    .restart local v0    # "dx":I
    goto :goto_1

    #@4d
    .line 245
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@4f
    const/4 v5, 0x2

    #@50
    if-ne v4, v5, :cond_5

    #@52
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@54
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@56
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    #@59
    move-result v5

    #@5a
    sub-int v1, v4, v5

    #@5c
    .restart local v1    # "dy":I
    goto :goto_2

    #@5d
    .line 246
    .end local v1    # "dy":I
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@5f
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@61
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    #@64
    move-result v5

    #@65
    sub-int v1, v4, v5

    #@67
    .restart local v1    # "dy":I
    goto :goto_2
.end method

.method public hideTarget()V
    .locals 2

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    #@5
    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@7
    const/4 v1, 0x4

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@b
    .line 440
    return-void
.end method

.method layout(IIIII)V
    .locals 26
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "alignment"    # I

    #@0
    .prologue
    .line 342
    move/from16 v0, p5

    #@2
    move-object/from16 v1, p0

    #@4
    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@6
    .line 343
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@a
    move-object/from16 v23, v0

    #@c
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v14

    #@10
    .line 344
    .local v14, "tabBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@13
    move-result v7

    #@14
    .line 345
    .local v7, "handleWidth":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@17
    move-result v6

    #@18
    .line 346
    .local v6, "handleHeight":I
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@1c
    move-object/from16 v23, v0

    #@1e
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v16

    #@22
    .line 347
    .local v16, "targetDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@25
    move-result v21

    #@26
    .line 348
    .local v21, "targetWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@29
    move-result v17

    #@2a
    .line 349
    .local v17, "targetHeight":I
    sub-int v11, p3, p1

    #@2c
    .line 350
    .local v11, "parentWidth":I
    sub-int v10, p4, p2

    #@2e
    .line 352
    .local v10, "parentHeight":I
    int-to-float v0, v11

    #@2f
    move/from16 v23, v0

    #@31
    const v24, 0x3f2aaaab

    #@34
    mul-float v23, v23, v24

    #@36
    move/from16 v0, v23

    #@38
    float-to-int v0, v0

    #@39
    move/from16 v23, v0

    #@3b
    sub-int v23, v23, v21

    #@3d
    div-int/lit8 v24, v7, 0x2

    #@3f
    add-int v9, v23, v24

    #@41
    .line 353
    .local v9, "leftTarget":I
    int-to-float v0, v11

    #@42
    move/from16 v23, v0

    #@44
    const v24, 0x3eaaaaaa

    #@47
    mul-float v23, v23, v24

    #@49
    move/from16 v0, v23

    #@4b
    float-to-int v0, v0

    #@4c
    move/from16 v23, v0

    #@4e
    div-int/lit8 v24, v7, 0x2

    #@50
    sub-int v13, v23, v24

    #@52
    .line 354
    .local v13, "rightTarget":I
    sub-int v23, v11, v7

    #@54
    div-int/lit8 v8, v23, 0x2

    #@56
    .line 355
    .local v8, "left":I
    add-int v12, v8, v7

    #@58
    .line 357
    .local v12, "right":I
    if-eqz p5, :cond_0

    #@5a
    const/16 v23, 0x1

    #@5c
    move/from16 v0, p5

    #@5e
    move/from16 v1, v23

    #@60
    if-ne v0, v1, :cond_2

    #@62
    .line 359
    :cond_0
    sub-int v23, v10, v17

    #@64
    div-int/lit8 v20, v23, 0x2

    #@66
    .line 360
    .local v20, "targetTop":I
    add-int v15, v20, v17

    #@68
    .line 361
    .local v15, "targetBottom":I
    sub-int v23, v10, v6

    #@6a
    div-int/lit8 v22, v23, 0x2

    #@6c
    .line 362
    .local v22, "top":I
    add-int v23, v10, v6

    #@6e
    div-int/lit8 v5, v23, 0x2

    #@70
    .line 363
    .local v5, "bottom":I
    if-nez p5, :cond_1

    #@72
    .line 364
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@76
    move-object/from16 v23, v0

    #@78
    const/16 v24, 0x0

    #@7a
    move-object/from16 v0, v23

    #@7c
    move/from16 v1, v24

    #@7e
    move/from16 v2, v22

    #@80
    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    #@83
    .line 365
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@87
    move-object/from16 v23, v0

    #@89
    rsub-int/lit8 v24, v11, 0x0

    #@8b
    const/16 v25, 0x0

    #@8d
    move-object/from16 v0, v23

    #@8f
    move/from16 v1, v24

    #@91
    move/from16 v2, v22

    #@93
    move/from16 v3, v25

    #@95
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    #@98
    .line 366
    move-object/from16 v0, p0

    #@9a
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@9c
    move-object/from16 v23, v0

    #@9e
    const/16 v24, 0x5

    #@a0
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    #@a3
    .line 367
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@a7
    move-object/from16 v23, v0

    #@a9
    add-int v24, v9, v21

    #@ab
    move-object/from16 v0, v23

    #@ad
    move/from16 v1, v20

    #@af
    move/from16 v2, v24

    #@b1
    invoke-virtual {v0, v9, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    #@b4
    .line 368
    move/from16 v0, p1

    #@b6
    move-object/from16 v1, p0

    #@b8
    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@ba
    .line 341
    .end local v15    # "targetBottom":I
    .end local v20    # "targetTop":I
    :goto_0
    return-void

    #@bb
    .line 370
    .restart local v15    # "targetBottom":I
    .restart local v20    # "targetTop":I
    :cond_1
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@bf
    move-object/from16 v23, v0

    #@c1
    sub-int v24, v11, v7

    #@c3
    move-object/from16 v0, v23

    #@c5
    move/from16 v1, v24

    #@c7
    move/from16 v2, v22

    #@c9
    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/widget/ImageView;->layout(IIII)V

    #@cc
    .line 371
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@d0
    move-object/from16 v23, v0

    #@d2
    add-int v24, v11, v11

    #@d4
    move-object/from16 v0, v23

    #@d6
    move/from16 v1, v22

    #@d8
    move/from16 v2, v24

    #@da
    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    #@dd
    .line 372
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@e1
    move-object/from16 v23, v0

    #@e3
    add-int v24, v13, v21

    #@e5
    move-object/from16 v0, v23

    #@e7
    move/from16 v1, v20

    #@e9
    move/from16 v2, v24

    #@eb
    invoke-virtual {v0, v13, v1, v2, v15}, Landroid/widget/ImageView;->layout(IIII)V

    #@ee
    .line 373
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@f2
    move-object/from16 v23, v0

    #@f4
    const/16 v24, 0x30

    #@f6
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    #@f9
    .line 374
    move/from16 v0, p3

    #@fb
    move-object/from16 v1, p0

    #@fd
    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@ff
    goto :goto_0

    #@100
    .line 378
    .end local v5    # "bottom":I
    .end local v15    # "targetBottom":I
    .end local v20    # "targetTop":I
    .end local v22    # "top":I
    :cond_2
    sub-int v23, v11, v21

    #@102
    div-int/lit8 v18, v23, 0x2

    #@104
    .line 379
    .local v18, "targetLeft":I
    add-int v23, v11, v21

    #@106
    div-int/lit8 v19, v23, 0x2

    #@108
    .line 380
    .local v19, "targetRight":I
    int-to-float v0, v10

    #@109
    move/from16 v23, v0

    #@10b
    const v24, 0x3f2aaaab

    #@10e
    mul-float v23, v23, v24

    #@110
    move/from16 v0, v23

    #@112
    float-to-int v0, v0

    #@113
    move/from16 v23, v0

    #@115
    div-int/lit8 v24, v6, 0x2

    #@117
    add-int v23, v23, v24

    #@119
    sub-int v22, v23, v17

    #@11b
    .line 381
    .restart local v22    # "top":I
    int-to-float v0, v10

    #@11c
    move/from16 v23, v0

    #@11e
    const v24, 0x3eaaaaaa

    #@121
    mul-float v23, v23, v24

    #@123
    move/from16 v0, v23

    #@125
    float-to-int v0, v0

    #@126
    move/from16 v23, v0

    #@128
    div-int/lit8 v24, v6, 0x2

    #@12a
    sub-int v5, v23, v24

    #@12c
    .line 382
    .restart local v5    # "bottom":I
    const/16 v23, 0x2

    #@12e
    move/from16 v0, p5

    #@130
    move/from16 v1, v23

    #@132
    if-ne v0, v1, :cond_3

    #@134
    .line 383
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@138
    move-object/from16 v23, v0

    #@13a
    const/16 v24, 0x0

    #@13c
    move-object/from16 v0, v23

    #@13e
    move/from16 v1, v24

    #@140
    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/widget/ImageView;->layout(IIII)V

    #@143
    .line 384
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@147
    move-object/from16 v23, v0

    #@149
    rsub-int/lit8 v24, v10, 0x0

    #@14b
    const/16 v25, 0x0

    #@14d
    move-object/from16 v0, v23

    #@14f
    move/from16 v1, v24

    #@151
    move/from16 v2, v25

    #@153
    invoke-virtual {v0, v8, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    #@156
    .line 385
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@15a
    move-object/from16 v23, v0

    #@15c
    add-int v24, v22, v17

    #@15e
    move-object/from16 v0, v23

    #@160
    move/from16 v1, v18

    #@162
    move/from16 v2, v22

    #@164
    move/from16 v3, v19

    #@166
    move/from16 v4, v24

    #@168
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    #@16b
    .line 386
    move/from16 v0, p2

    #@16d
    move-object/from16 v1, p0

    #@16f
    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@171
    goto/16 :goto_0

    #@173
    .line 388
    :cond_3
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@177
    move-object/from16 v23, v0

    #@179
    sub-int v24, v10, v6

    #@17b
    move-object/from16 v0, v23

    #@17d
    move/from16 v1, v24

    #@17f
    invoke-virtual {v0, v8, v1, v12, v10}, Landroid/widget/ImageView;->layout(IIII)V

    #@182
    .line 389
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@186
    move-object/from16 v23, v0

    #@188
    add-int v24, v10, v10

    #@18a
    move-object/from16 v0, v23

    #@18c
    move/from16 v1, v24

    #@18e
    invoke-virtual {v0, v8, v10, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    #@191
    .line 390
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@195
    move-object/from16 v23, v0

    #@197
    add-int v24, v5, v17

    #@199
    move-object/from16 v0, v23

    #@19b
    move/from16 v1, v18

    #@19d
    move/from16 v2, v19

    #@19f
    move/from16 v3, v24

    #@1a1
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    #@1a4
    .line 391
    move/from16 v0, p4

    #@1a6
    move-object/from16 v1, p0

    #@1a8
    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@1aa
    goto/16 :goto_0
.end method

.method public measure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 404
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@4
    move-result v1

    #@5
    .line 405
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v0

    #@9
    .line 406
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@b
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@e
    move-result v3

    #@f
    .line 407
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@12
    move-result v4

    #@13
    .line 406
    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    #@16
    .line 408
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@18
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@1b
    move-result v3

    #@1c
    .line 409
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@1f
    move-result v4

    #@20
    .line 408
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    #@23
    .line 403
    return-void
.end method

.method reset(Z)V
    .locals 9
    .param p1, "animate"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 298
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    #@5
    .line 299
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@7
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@a
    .line 300
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@c
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@e
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@11
    move-result-object v5

    #@12
    const v6, 0x1030314

    #@15
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@18
    .line 301
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@1a
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1d
    .line 302
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@1f
    const/4 v5, 0x4

    #@20
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    #@23
    .line 303
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@25
    if-eqz v4, :cond_0

    #@27
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@29
    const/4 v5, 0x1

    #@2a
    if-ne v4, v5, :cond_1

    #@2c
    :cond_0
    const/4 v2, 0x1

    #@2d
    .line 304
    .local v2, "horiz":Z
    :goto_0
    if-eqz v2, :cond_3

    #@2f
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@31
    if-nez v4, :cond_2

    #@33
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@35
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@37
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    #@3a
    move-result v5

    #@3b
    sub-int v0, v4, v5

    #@3d
    .line 306
    .local v0, "dx":I
    :goto_1
    if-eqz v2, :cond_4

    #@3f
    const/4 v1, 0x0

    #@40
    .line 308
    .local v1, "dy":I
    :goto_2
    if-eqz p1, :cond_6

    #@42
    .line 309
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    #@44
    int-to-float v4, v0

    #@45
    int-to-float v5, v1

    #@46
    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@49
    .line 310
    .local v3, "trans":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xfa

    #@4b
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    #@4e
    .line 311
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    #@51
    .line 312
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@53
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    #@56
    .line 313
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@58
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@5b
    .line 297
    .end local v3    # "trans":Landroid/view/animation/TranslateAnimation;
    :goto_3
    return-void

    #@5c
    .line 303
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    :cond_1
    const/4 v2, 0x0

    #@5d
    .restart local v2    # "horiz":Z
    goto :goto_0

    #@5e
    .line 305
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@60
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@62
    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    #@65
    move-result v5

    #@66
    sub-int v0, v4, v5

    #@68
    .restart local v0    # "dx":I
    goto :goto_1

    #@69
    .end local v0    # "dx":I
    :cond_3
    const/4 v0, 0x0

    #@6a
    .restart local v0    # "dx":I
    goto :goto_1

    #@6b
    .line 306
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@6d
    const/4 v5, 0x2

    #@6e
    if-ne v4, v5, :cond_5

    #@70
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@72
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@74
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    #@77
    move-result v5

    #@78
    sub-int v1, v4, v5

    #@7a
    .restart local v1    # "dy":I
    goto :goto_2

    #@7b
    .line 307
    .end local v1    # "dy":I
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    #@7d
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@7f
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    #@82
    move-result v5

    #@83
    sub-int v1, v4, v5

    #@85
    .restart local v1    # "dy":I
    goto :goto_2

    #@86
    .line 315
    :cond_6
    if-eqz v2, :cond_7

    #@88
    .line 316
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@8a
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    #@8d
    .line 317
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@8f
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    #@92
    .line 322
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@94
    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    #@97
    .line 323
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@99
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    #@9c
    .line 324
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@9e
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    #@a1
    goto :goto_3

    #@a2
    .line 319
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@a4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    #@a7
    .line 320
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@a9
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    #@ac
    goto :goto_4
.end method

.method setBarBackgroundResource(I)V
    .locals 1
    .param p1, "barId"    # I

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    #@5
    .line 233
    return-void
.end method

.method setHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    #@5
    .line 237
    return-void
.end method

.method setIcon(I)V
    .locals 1
    .param p1, "iconId"    # I

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@5
    .line 225
    return-void
.end method

.method setState(I)V
    .locals 5
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 273
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@4
    if-ne p1, v2, :cond_2

    #@6
    move v1, v2

    #@7
    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    #@a
    .line 274
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@c
    if-ne p1, v2, :cond_3

    #@e
    move v1, v2

    #@f
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    #@12
    .line 275
    const/4 v1, 0x2

    #@13
    if-ne p1, v1, :cond_4

    #@15
    .line 276
    new-array v0, v2, [I

    #@17
    const v1, 0x10100a2

    #@1a
    aput v1, v0, v3

    #@1c
    .line 277
    .local v0, "activeState":[I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@1e
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@31
    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@33
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 281
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@3f
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@46
    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@48
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@4a
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v2

    #@4e
    const v3, 0x1030315

    #@51
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@54
    .line 287
    .end local v0    # "activeState":[I
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    #@56
    .line 272
    return-void

    #@57
    :cond_2
    move v1, v3

    #@58
    .line 273
    goto :goto_0

    #@59
    :cond_3
    move v1, v3

    #@5a
    .line 274
    goto :goto_1

    #@5b
    .line 285
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@5d
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@5f
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@62
    move-result-object v2

    #@63
    const v3, 0x1030314

    #@66
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@69
    goto :goto_2
.end method

.method setTabBackgroundResource(I)V
    .locals 1
    .param p1, "tabId"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    #@5
    .line 229
    return-void
.end method

.method setTarget(I)V
    .locals 1
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@5
    .line 328
    return-void
.end method

.method show(Z)V
    .locals 7
    .param p1, "animate"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 257
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@7
    .line 258
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@9
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    #@c
    .line 260
    if-eqz p1, :cond_1

    #@e
    .line 261
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@10
    if-eqz v4, :cond_0

    #@12
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@14
    const/4 v5, 0x1

    #@15
    if-ne v4, v5, :cond_2

    #@17
    :cond_0
    const/4 v2, 0x1

    #@18
    .line 262
    .local v2, "horiz":Z
    :goto_0
    if-eqz v2, :cond_4

    #@1a
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@1c
    if-nez v4, :cond_3

    #@1e
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@20
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    #@23
    move-result v0

    #@24
    .line 263
    .local v0, "dx":I
    :goto_1
    if-eqz v2, :cond_5

    #@26
    const/4 v1, 0x0

    #@27
    .line 265
    .local v1, "dy":I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    #@29
    neg-int v4, v0

    #@2a
    int-to-float v4, v4

    #@2b
    neg-int v5, v1

    #@2c
    int-to-float v5, v5

    #@2d
    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@30
    .line 266
    .local v3, "trans":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    #@32
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    #@35
    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@37
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@3a
    .line 268
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@3c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    #@3f
    .line 256
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_1
    return-void

    #@40
    .line 261
    :cond_2
    const/4 v2, 0x0

    #@41
    .restart local v2    # "horiz":Z
    goto :goto_0

    #@42
    .line 262
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@44
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    #@47
    move-result v4

    #@48
    neg-int v0, v4

    #@49
    .restart local v0    # "dx":I
    goto :goto_1

    #@4a
    .end local v0    # "dx":I
    :cond_4
    const/4 v0, 0x0

    #@4b
    .restart local v0    # "dx":I
    goto :goto_1

    #@4c
    .line 263
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    #@4e
    const/4 v5, 0x2

    #@4f
    if-ne v4, v5, :cond_6

    #@51
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@53
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    #@56
    move-result v1

    #@57
    .restart local v1    # "dy":I
    goto :goto_2

    #@58
    .end local v1    # "dy":I
    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@5a
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    #@5d
    move-result v4

    #@5e
    neg-int v1, v4

    #@5f
    .restart local v1    # "dy":I
    goto :goto_2
.end method

.method showTarget()V
    .locals 4

    #@0
    .prologue
    .line 291
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@2
    const/4 v1, 0x0

    #@3
    const/high16 v2, 0x3f800000    # 1.0f

    #@5
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@8
    .line 292
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@d
    .line 293
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@12
    .line 294
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@18
    .line 290
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim1"    # Landroid/view/animation/Animation;
    .param p2, "anim2"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@5
    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    #@a
    .line 435
    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    #@0
    .prologue
    .line 397
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    #@5
    .line 396
    return-void
.end method
