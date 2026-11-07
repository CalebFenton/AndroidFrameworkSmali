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
.field public static final blacklist ALIGN_BOTTOM:I = 0x3

.field public static final blacklist ALIGN_LEFT:I = 0x0

.field public static final blacklist ALIGN_RIGHT:I = 0x1

.field public static final blacklist ALIGN_TOP:I = 0x2

.field public static final blacklist ALIGN_UNKNOWN:I = 0x4

.field private static final blacklist STATE_ACTIVE:I = 0x2

.field private static final blacklist STATE_NORMAL:I = 0x0

.field private static final blacklist STATE_PRESSED:I = 0x1


# instance fields
.field private blacklist alignment:I

.field private blacklist alignment_value:I

.field private blacklist currentState:I

.field private final greylist tab:Landroid/widget/ImageView;

.field private final blacklist target:Landroid/widget/ImageView;

.field private final greylist text:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/ViewGroup;III)V
    .registers 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "tabId"    # I
    .param p3, "barId"    # I
    .param p4, "targetId"    # I

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 201
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10303e6

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 216
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    return-void
.end method


# virtual methods
.method public blacklist getTabHeight()I
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getTabWidth()I
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method blacklist hide()V
    .registers 9

    .line 245
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v0, v2, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 246
    .local v0, "horiz":Z
    :goto_e
    if-eqz v0, :cond_28

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v3, :cond_1e

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_29

    .line 247
    :cond_1e
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    nop

    .line 248
    .local v3, "dx":I
    if-eqz v0, :cond_2d

    goto :goto_45

    :cond_2d
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3c

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_45

    .line 249
    :cond_3c
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    :goto_45
    nop

    .line 251
    .local v1, "dy":I
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v3

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 252
    .local v4, "trans":Landroid/view/animation/Animation;
    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 254
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public blacklist hideTarget()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    return-void
.end method

.method blacklist layout(IIIII)V
    .registers 30
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "alignment"    # I

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    iput v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 346
    iget-object v6, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 347
    .local v6, "tabBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 348
    .local v7, "handleWidth":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 349
    .local v8, "handleHeight":I
    iget-object v9, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 350
    .local v9, "targetDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 351
    .local v10, "targetWidth":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 352
    .local v11, "targetHeight":I
    sub-int v12, p3, v1

    .line 353
    .local v12, "parentWidth":I
    sub-int v13, v4, v2

    .line 355
    .local v13, "parentHeight":I
    int-to-float v14, v12

    const v15, 0x3f2aaaab

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int/2addr v14, v10

    div-int/lit8 v16, v7, 0x2

    add-int v14, v14, v16

    .line 356
    .local v14, "leftTarget":I
    move/from16 v16, v15

    int-to-float v15, v12

    const v17, 0x3eaaaaaa

    mul-float v15, v15, v17

    float-to-int v15, v15

    div-int/lit8 v18, v7, 0x2

    sub-int v15, v15, v18

    .line 357
    .local v15, "rightTarget":I
    sub-int v18, v12, v7

    move-object/from16 v19, v6

    .end local v6    # "tabBackground":Landroid/graphics/drawable/Drawable;
    .local v19, "tabBackground":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x2

    div-int/lit8 v6, v18, 0x2

    .line 358
    .local v6, "left":I
    move-object/from16 v18, v9

    .end local v9    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    .local v18, "targetDrawable":Landroid/graphics/drawable/Drawable;
    add-int v9, v6, v7

    .line 360
    .local v9, "right":I
    move/from16 v21, v10

    .end local v10    # "targetWidth":I
    .local v21, "targetWidth":I
    if-eqz v5, :cond_c5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_61

    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v17, v12

    move/from16 v16, v15

    goto/16 :goto_cd

    .line 381
    :cond_61
    sub-int v10, v12, v21

    div-int/lit8 v10, v10, 0x2

    .line 382
    .local v10, "targetLeft":I
    add-int v22, v12, v21

    move/from16 v23, v11

    .end local v11    # "targetHeight":I
    .local v23, "targetHeight":I
    div-int/lit8 v11, v22, 0x2

    .line 383
    .local v11, "targetRight":I
    int-to-float v3, v13

    mul-float v3, v3, v16

    float-to-int v3, v3

    div-int/lit8 v16, v8, 0x2

    add-int v3, v3, v16

    sub-int v3, v3, v23

    .line 384
    .local v3, "top":I
    move/from16 v16, v15

    .end local v15    # "rightTarget":I
    .local v16, "rightTarget":I
    int-to-float v15, v13

    mul-float v15, v15, v17

    float-to-int v15, v15

    div-int/lit8 v17, v8, 0x2

    sub-int v15, v15, v17

    .line 385
    .local v15, "bottom":I
    move/from16 v17, v12

    move/from16 v12, v20

    .end local v12    # "parentWidth":I
    .local v17, "parentWidth":I
    if-ne v5, v12, :cond_a5

    .line 386
    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v12, v6, v5, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 387
    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move/from16 v22, v8

    .end local v8    # "handleHeight":I
    .local v22, "handleHeight":I
    rsub-int/lit8 v8, v13, 0x0

    invoke-virtual {v12, v6, v8, v9, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 388
    iget-object v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v8, v3, v23

    invoke-virtual {v5, v10, v3, v11, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 389
    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    move/from16 v10, p3

    move/from16 v1, v16

    move/from16 v15, v17

    goto/16 :goto_127

    .line 391
    .end local v22    # "handleHeight":I
    .restart local v8    # "handleHeight":I
    :cond_a5
    move/from16 v22, v8

    .end local v8    # "handleHeight":I
    .restart local v22    # "handleHeight":I
    iget-object v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v8, v13, v22

    invoke-virtual {v5, v6, v8, v9, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 392
    iget-object v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v8, v13, v13

    invoke-virtual {v5, v6, v13, v9, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 393
    iget-object v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v8, v15, v23

    invoke-virtual {v5, v10, v15, v11, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 394
    iput v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    move/from16 v10, p3

    move/from16 v1, v16

    move/from16 v15, v17

    goto :goto_127

    .line 360
    .end local v3    # "top":I
    .end local v10    # "targetLeft":I
    .end local v16    # "rightTarget":I
    .end local v17    # "parentWidth":I
    .end local v22    # "handleHeight":I
    .end local v23    # "targetHeight":I
    .restart local v8    # "handleHeight":I
    .local v11, "targetHeight":I
    .restart local v12    # "parentWidth":I
    .local v15, "rightTarget":I
    :cond_c5
    move/from16 v22, v8

    move/from16 v23, v11

    move/from16 v17, v12

    move/from16 v16, v15

    .line 362
    .end local v8    # "handleHeight":I
    .end local v11    # "targetHeight":I
    .end local v12    # "parentWidth":I
    .end local v15    # "rightTarget":I
    .restart local v16    # "rightTarget":I
    .restart local v17    # "parentWidth":I
    .restart local v22    # "handleHeight":I
    .restart local v23    # "targetHeight":I
    :goto_cd
    sub-int v3, v13, v23

    const/16 v20, 0x2

    div-int/lit8 v3, v3, 0x2

    .line 363
    .local v3, "targetTop":I
    add-int v11, v3, v23

    .line 364
    .local v11, "targetBottom":I
    sub-int v5, v13, v22

    div-int/lit8 v5, v5, 0x2

    .line 365
    .local v5, "top":I
    add-int v8, v13, v22

    div-int/lit8 v8, v8, 0x2

    .line 366
    .local v8, "bottom":I
    if-nez p5, :cond_102

    .line 367
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v5, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 368
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v15, v17, 0x0

    invoke-virtual {v10, v15, v5, v12, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 369
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v12, v14, v21

    invoke-virtual {v10, v14, v3, v12, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 371
    iput v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    move/from16 v10, p3

    move/from16 v1, v16

    move/from16 v15, v17

    goto :goto_126

    .line 373
    :cond_102
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v12, v17, v7

    move/from16 v15, v17

    .end local v17    # "parentWidth":I
    .local v15, "parentWidth":I
    invoke-virtual {v10, v12, v5, v15, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 374
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v12, v15, v15

    invoke-virtual {v10, v15, v5, v12, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 375
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v12, v16, v21

    move/from16 v1, v16

    .end local v16    # "rightTarget":I
    .local v1, "rightTarget":I
    invoke-virtual {v10, v1, v3, v12, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 376
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v12, 0x30

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 377
    move/from16 v10, p3

    iput v10, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 379
    .end local v3    # "targetTop":I
    .end local v5    # "top":I
    .end local v8    # "bottom":I
    .end local v11    # "targetBottom":I
    :goto_126
    nop

    .line 397
    :goto_127
    return-void
.end method

.method public blacklist measure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 407
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 408
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 409
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 410
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 409
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 411
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 412
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 411
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->measure(II)V

    .line 413
    return-void
.end method

.method blacklist reset(Z)V
    .registers 10
    .param p1, "animate"    # Z

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303e6

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v1, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v0

    .line 307
    .local v2, "horiz":Z
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_47

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v1, :cond_3d

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_48

    .line 308
    :cond_3d
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_48

    :cond_47
    move v1, v0

    :goto_48
    nop

    .line 309
    .local v1, "dx":I
    if-eqz v2, :cond_4d

    move v3, v0

    goto :goto_65

    :cond_4d
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5c

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_65

    .line 310
    :cond_5c
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_65
    nop

    .line 311
    .local v3, "dy":I
    if-eqz p1, :cond_83

    .line 312
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 313
    .local v4, "trans":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    .end local v4    # "trans":Landroid/view/animation/TranslateAnimation;
    goto :goto_a9

    .line 318
    :cond_83
    if-eqz v2, :cond_90

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    goto :goto_9a

    .line 322
    :cond_90
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 325
    :goto_9a
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 329
    :goto_a9
    return-void
.end method

.method blacklist setBarBackgroundResource(I)V
    .registers 3
    .param p1, "barId"    # I

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    return-void
.end method

.method blacklist setHintText(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    return-void
.end method

.method blacklist setIcon(I)V
    .registers 3
    .param p1, "iconId"    # I

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    return-void
.end method

.method blacklist setState(I)V
    .registers 6
    .param p1, "state"    # I

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 278
    const/4 v0, 0x2

    if-ne p1, v0, :cond_57

    .line 279
    const v0, 0x10100a2

    filled-new-array {v0}, [I

    move-result-object v0

    .line 280
    .local v0, "activeState":[I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 281
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 283
    :cond_33
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 284
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 286
    :cond_48
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303e5

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 287
    .end local v0    # "activeState":[I
    goto :goto_65

    .line 288
    :cond_57
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303e6

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 290
    :goto_65
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 291
    return-void
.end method

.method blacklist setTabBackgroundResource(I)V
    .registers 3
    .param p1, "tabId"    # I

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 234
    return-void
.end method

.method blacklist setTarget(I)V
    .registers 3
    .param p1, "targetId"    # I

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    return-void
.end method

.method blacklist show(Z)V
    .registers 9
    .param p1, "animate"    # Z

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    if-eqz p1, :cond_5d

    .line 264
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    .line 265
    .local v2, "horiz":Z
    :cond_18
    :goto_18
    if-eqz v2, :cond_2d

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    goto :goto_2e

    :cond_25
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_2e

    :cond_2d
    move v0, v1

    .line 266
    .local v0, "dx":I
    :goto_2e
    if-eqz v2, :cond_31

    goto :goto_44

    :cond_31
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3d

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_44

    :cond_3d
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    .line 268
    .local v1, "dy":I
    :goto_44
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 269
    .local v3, "trans":Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "horiz":Z
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_5d
    return-void
.end method

.method blacklist showTarget()V
    .registers 4

    .line 294
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 295
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "anim1"    # Landroid/view/animation/Animation;
    .param p2, "anim2"    # Landroid/view/animation/Animation;

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    return-void
.end method

.method public blacklist updateDrawableStates()V
    .registers 2

    .line 400
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 401
    return-void
.end method
