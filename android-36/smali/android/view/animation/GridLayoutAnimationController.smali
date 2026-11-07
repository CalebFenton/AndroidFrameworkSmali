.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "GridLayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final whitelist DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final whitelist DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final whitelist DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final whitelist DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final whitelist DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final whitelist PRIORITY_COLUMN:I = 0x1

.field public static final whitelist PRIORITY_NONE:I = 0x0

.field public static final whitelist PRIORITY_ROW:I = 0x2


# instance fields
.field private greylist-max-o mColumnDelay:F

.field private greylist-max-o mDirection:I

.field private greylist-max-o mDirectionPriority:I

.field private greylist-max-o mRowDelay:F


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 118
    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 121
    .local v2, "d":Landroid/view/animation/Animation$Description;
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 122
    nop

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 122
    invoke-static {v3, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v2

    .line 125
    iget v3, v2, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 127
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 129
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 142
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/animation/Animation;FF)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "columnDelay"    # F
    .param p3, "rowDelay"    # F

    .line 154
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 155
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 156
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 157
    return-void
.end method

.method private greylist-max-o getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .registers 6
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 348
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_34

    .line 360
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .local v0, "index":I
    goto :goto_29

    .line 353
    .end local v0    # "index":I
    :pswitch_b
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_16

    .line 354
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 356
    :cond_16
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 357
    .restart local v0    # "index":I
    goto :goto_29

    .line 350
    .end local v0    # "index":I
    :pswitch_22
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int/2addr v0, v2

    .line 351
    .restart local v0    # "index":I
    nop

    .line 364
    :goto_29
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr v2, v1

    .line 365
    .local v2, "direction":I
    if-ne v2, v1, :cond_33

    .line 366
    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v3, v1

    sub-int v0, v3, v0

    .line 369
    :cond_33
    return v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .registers 5
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 374
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 386
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .local v0, "index":I
    goto :goto_29

    .line 379
    .end local v0    # "index":I
    :pswitch_a
    iget-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_15

    .line 380
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 382
    :cond_15
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 383
    .restart local v0    # "index":I
    goto :goto_29

    .line 376
    .end local v0    # "index":I
    :pswitch_21
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int/2addr v0, v1

    .line 377
    .restart local v0    # "index":I
    nop

    .line 390
    :goto_29
    iget v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    .line 391
    .local v1, "direction":I
    if-ne v1, v2, :cond_35

    .line 392
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    .line 395
    :cond_35
    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_21
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public whitelist getColumnDelay()F
    .registers 2

    .line 171
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method protected whitelist getDelayForView(Landroid/view/View;)J
    .registers 19
    .param p1, "view"    # Landroid/view/View;

    .line 300
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 301
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 303
    .local v2, "params":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v2, :cond_f

    .line 304
    const-wide/16 v3, 0x0

    return-wide v3

    .line 307
    :cond_f
    invoke-direct {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v3

    .line 308
    .local v3, "column":I
    invoke-direct {v0, v2}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v4

    .line 310
    .local v4, "row":I
    iget v5, v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 311
    .local v5, "rowsCount":I
    iget v6, v2, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 313
    .local v6, "columnsCount":I
    iget-object v7, v0, Landroid/view/animation/GridLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    .line 314
    .local v7, "duration":J
    iget v9, v0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    long-to-float v10, v7

    mul-float/2addr v9, v10

    .line 315
    .local v9, "columnDelay":F
    iget v10, v0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    long-to-float v11, v7

    mul-float/2addr v10, v11

    .line 320
    .local v10, "rowDelay":F
    iget-object v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v11, :cond_34

    .line 321
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 324
    :cond_34
    iget v11, v0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    packed-switch v11, :pswitch_data_74

    .line 335
    int-to-float v11, v3

    mul-float/2addr v11, v9

    int-to-float v12, v4

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 336
    .local v11, "viewDelay":J
    int-to-float v13, v6

    mul-float/2addr v13, v9

    int-to-float v14, v5

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    .local v13, "totalDelay":F
    goto :goto_65

    .line 330
    .end local v11    # "viewDelay":J
    .end local v13    # "totalDelay":F
    :pswitch_45
    int-to-float v11, v3

    mul-float/2addr v11, v9

    mul-int v12, v4, v6

    int-to-float v12, v12

    mul-float/2addr v12, v9

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 331
    .restart local v11    # "viewDelay":J
    int-to-float v13, v6

    mul-float/2addr v13, v9

    mul-int v14, v5, v6

    int-to-float v14, v14

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    .line 332
    .restart local v13    # "totalDelay":F
    goto :goto_65

    .line 326
    .end local v11    # "viewDelay":J
    .end local v13    # "totalDelay":F
    :pswitch_55
    int-to-float v11, v4

    mul-float/2addr v11, v10

    mul-int v12, v3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-long v11, v11

    .line 327
    .restart local v11    # "viewDelay":J
    int-to-float v13, v5

    mul-float/2addr v13, v10

    mul-int v14, v6, v5

    int-to-float v14, v14

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    .line 328
    .restart local v13    # "totalDelay":F
    nop

    .line 340
    :goto_65
    long-to-float v14, v11

    div-float/2addr v14, v13

    .line 341
    .local v14, "normalizedDelay":F
    iget-object v15, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v15, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    .line 343
    mul-float v15, v14, v13

    move-object/from16 v16, v1

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    float-to-long v0, v15

    return-wide v0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_55
        :pswitch_45
    .end packed-switch
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public whitelist getDirectionPriority()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public whitelist getRowDelay()F
    .registers 2

    .line 200
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public whitelist setColumnDelay(F)V
    .registers 2
    .param p1, "columnDelay"    # F

    .line 185
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 186
    return-void
.end method

.method public whitelist setDirection(I)V
    .registers 2
    .param p1, "direction"    # I

    .line 252
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 253
    return-void
.end method

.method public whitelist setDirectionPriority(I)V
    .registers 2
    .param p1, "directionPriority"    # I

    .line 284
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 285
    return-void
.end method

.method public whitelist setRowDelay(F)V
    .registers 2
    .param p1, "rowDelay"    # F

    .line 214
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 215
    return-void
.end method

.method public whitelist willOverlap()Z
    .registers 3

    .line 292
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_11

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
