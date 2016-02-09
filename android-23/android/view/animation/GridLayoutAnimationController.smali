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
.field public static final DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final PRIORITY_COLUMN:I = 0x1

.field public static final PRIORITY_NONE:I = 0x0

.field public static final PRIORITY_ROW:I = 0x2


# instance fields
.field private mColumnDelay:F

.field private mDirection:I

.field private mDirectionPriority:I

.field private mRowDelay:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 116
    sget-object v2, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    #@6
    .line 115
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@d
    move-result-object v2

    #@e
    .line 118
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@11
    move-result-object v1

    #@12
    .line 120
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@14
    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@16
    .line 122
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@1a
    move-result-object v2

    #@1b
    .line 121
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@1e
    move-result-object v1

    #@1f
    .line 123
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@21
    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@23
    .line 125
    const/4 v2, 0x2

    #@24
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@27
    move-result v2

    #@28
    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    #@2a
    .line 127
    const/4 v2, 0x3

    #@2b
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    #@31
    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    .line 140
    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    #@5
    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;FF)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "columnDelay"    # F
    .param p3, "rowDelay"    # F

    #@0
    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@3
    .line 153
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@5
    .line 154
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@7
    .line 151
    return-void
.end method

.method private getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    #@0
    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    #@3
    move-result v2

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 358
    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    #@9
    .line 362
    .local v1, "index":I
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    #@b
    and-int/lit8 v0, v2, 0x1

    #@d
    .line 363
    .local v0, "direction":I
    const/4 v2, 0x1

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 364
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    sub-int v1, v2, v1

    #@16
    .line 367
    :cond_0
    return v1

    #@17
    .line 348
    .end local v0    # "direction":I
    .end local v1    # "index":I
    :pswitch_0
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    #@1d
    sub-int v1, v2, v3

    #@1f
    .line 349
    .restart local v1    # "index":I
    goto :goto_0

    #@20
    .line 351
    .end local v1    # "index":I
    :pswitch_1
    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@22
    if-nez v2, :cond_1

    #@24
    .line 352
    new-instance v2, Ljava/util/Random;

    #@26
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@29
    iput-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@2b
    .line 354
    :cond_1
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    #@2d
    int-to-float v2, v2

    #@2e
    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@30
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@33
    move-result v3

    #@34
    mul-float/2addr v2, v3

    #@35
    float-to-int v1, v2

    #@36
    .line 355
    .restart local v1    # "index":I
    goto :goto_0

    #@37
    .line 346
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4
    .param p1, "params"    # Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    #@0
    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/view/animation/GridLayoutAnimationController;->getOrder()I

    #@3
    move-result v2

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 384
    iget v1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    #@9
    .line 388
    .local v1, "index":I
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    #@b
    and-int/lit8 v0, v2, 0x2

    #@d
    .line 389
    .local v0, "direction":I
    const/4 v2, 0x2

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 390
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    sub-int v1, v2, v1

    #@16
    .line 393
    :cond_0
    return v1

    #@17
    .line 374
    .end local v0    # "direction":I
    .end local v1    # "index":I
    :pswitch_0
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    #@1d
    sub-int v1, v2, v3

    #@1f
    .line 375
    .restart local v1    # "index":I
    goto :goto_0

    #@20
    .line 377
    .end local v1    # "index":I
    :pswitch_1
    iget-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@22
    if-nez v2, :cond_1

    #@24
    .line 378
    new-instance v2, Ljava/util/Random;

    #@26
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@29
    iput-object v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@2b
    .line 380
    :cond_1
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@2d
    int-to-float v2, v2

    #@2e
    iget-object v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRandomizer:Ljava/util/Random;

    #@30
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@33
    move-result v3

    #@34
    mul-float/2addr v2, v3

    #@35
    float-to-int v1, v2

    #@36
    .line 381
    .restart local v1    # "index":I
    goto :goto_0

    #@37
    .line 372
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getColumnDelay()F
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@2
    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v5

    #@4
    .line 299
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, v5, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    #@6
    check-cast v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    #@8
    .line 301
    .local v9, "params":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v9, :cond_0

    #@a
    .line 302
    const-wide/16 v16, 0x0

    #@c
    return-wide v16

    #@d
    .line 305
    :cond_0
    move-object/from16 v0, p0

    #@f
    invoke-direct {v0, v9}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    #@12
    move-result v2

    #@13
    .line 306
    .local v2, "column":I
    move-object/from16 v0, p0

    #@15
    invoke-direct {v0, v9}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    #@18
    move-result v10

    #@19
    .line 308
    .local v10, "row":I
    iget v12, v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    #@1b
    .line 309
    .local v12, "rowsCount":I
    iget v4, v9, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    #@1d
    .line 311
    .local v4, "columnsCount":I
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    #@21
    move-object/from16 v16, v0

    #@23
    invoke-virtual/range {v16 .. v16}, Landroid/view/animation/Animation;->getDuration()J

    #@26
    move-result-wide v6

    #@27
    .line 312
    .local v6, "duration":J
    move-object/from16 v0, p0

    #@29
    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@2b
    move/from16 v16, v0

    #@2d
    long-to-float v0, v6

    #@2e
    move/from16 v17, v0

    #@30
    mul-float v3, v16, v17

    #@32
    .line 313
    .local v3, "columnDelay":F
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@36
    move/from16 v16, v0

    #@38
    long-to-float v0, v6

    #@39
    move/from16 v17, v0

    #@3b
    mul-float v11, v16, v17

    #@3d
    .line 318
    .local v11, "rowDelay":F
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@41
    move-object/from16 v16, v0

    #@43
    if-nez v16, :cond_1

    #@45
    .line 319
    new-instance v16, Landroid/view/animation/LinearInterpolator;

    #@47
    invoke-direct/range {v16 .. v16}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@4a
    move-object/from16 v0, v16

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput-object v0, v1, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@50
    .line 322
    :cond_1
    move-object/from16 v0, p0

    #@52
    iget v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    #@54
    move/from16 v16, v0

    #@56
    packed-switch v16, :pswitch_data_0

    #@59
    .line 333
    int-to-float v0, v2

    #@5a
    move/from16 v16, v0

    #@5c
    mul-float v16, v16, v3

    #@5e
    int-to-float v0, v10

    #@5f
    move/from16 v17, v0

    #@61
    mul-float v17, v17, v11

    #@63
    add-float v16, v16, v17

    #@65
    move/from16 v0, v16

    #@67
    float-to-long v14, v0

    #@68
    .line 334
    .local v14, "viewDelay":J
    int-to-float v0, v4

    #@69
    move/from16 v16, v0

    #@6b
    mul-float v16, v16, v3

    #@6d
    int-to-float v0, v12

    #@6e
    move/from16 v17, v0

    #@70
    mul-float v17, v17, v11

    #@72
    add-float v13, v16, v17

    #@74
    .line 338
    .local v13, "totalDelay":F
    :goto_0
    long-to-float v0, v14

    #@75
    move/from16 v16, v0

    #@77
    div-float v8, v16, v13

    #@79
    .line 339
    .local v8, "normalizedDelay":F
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Landroid/view/animation/GridLayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    #@7d
    move-object/from16 v16, v0

    #@7f
    move-object/from16 v0, v16

    #@81
    invoke-interface {v0, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@84
    move-result v8

    #@85
    .line 341
    mul-float v16, v8, v13

    #@87
    move/from16 v0, v16

    #@89
    float-to-long v0, v0

    #@8a
    move-wide/from16 v16, v0

    #@8c
    return-wide v16

    #@8d
    .line 324
    .end local v8    # "normalizedDelay":F
    .end local v13    # "totalDelay":F
    .end local v14    # "viewDelay":J
    :pswitch_0
    int-to-float v0, v10

    #@8e
    move/from16 v16, v0

    #@90
    mul-float v16, v16, v11

    #@92
    mul-int v17, v2, v12

    #@94
    move/from16 v0, v17

    #@96
    int-to-float v0, v0

    #@97
    move/from16 v17, v0

    #@99
    mul-float v17, v17, v11

    #@9b
    add-float v16, v16, v17

    #@9d
    move/from16 v0, v16

    #@9f
    float-to-long v14, v0

    #@a0
    .line 325
    .restart local v14    # "viewDelay":J
    int-to-float v0, v12

    #@a1
    move/from16 v16, v0

    #@a3
    mul-float v16, v16, v11

    #@a5
    mul-int v17, v4, v12

    #@a7
    move/from16 v0, v17

    #@a9
    int-to-float v0, v0

    #@aa
    move/from16 v17, v0

    #@ac
    mul-float v17, v17, v11

    #@ae
    add-float v13, v16, v17

    #@b0
    .line 326
    .restart local v13    # "totalDelay":F
    goto :goto_0

    #@b1
    .line 328
    .end local v13    # "totalDelay":F
    .end local v14    # "viewDelay":J
    :pswitch_1
    int-to-float v0, v2

    #@b2
    move/from16 v16, v0

    #@b4
    mul-float v16, v16, v3

    #@b6
    mul-int v17, v10, v4

    #@b8
    move/from16 v0, v17

    #@ba
    int-to-float v0, v0

    #@bb
    move/from16 v17, v0

    #@bd
    mul-float v17, v17, v3

    #@bf
    add-float v16, v16, v17

    #@c1
    move/from16 v0, v16

    #@c3
    float-to-long v14, v0

    #@c4
    .line 329
    .restart local v14    # "viewDelay":J
    int-to-float v0, v4

    #@c5
    move/from16 v16, v0

    #@c7
    mul-float v16, v16, v3

    #@c9
    mul-int v17, v12, v4

    #@cb
    move/from16 v0, v17

    #@cd
    int-to-float v0, v0

    #@ce
    move/from16 v17, v0

    #@d0
    mul-float v17, v17, v3

    #@d2
    add-float v13, v16, v17

    #@d4
    .line 330
    .restart local v13    # "totalDelay":F
    goto :goto_0

    #@d5
    .line 322
    nop

    #@d6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDirection()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    #@2
    return v0
.end method

.method public getDirectionPriority()I
    .locals 1

    #@0
    .prologue
    .line 266
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    #@2
    return v0
.end method

.method public getRowDelay()F
    .locals 1

    #@0
    .prologue
    .line 198
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@2
    return v0
.end method

.method public setColumnDelay(F)V
    .locals 0
    .param p1, "columnDelay"    # F

    #@0
    .prologue
    .line 183
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@2
    .line 182
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 250
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    #@2
    .line 249
    return-void
.end method

.method public setDirectionPriority(I)V
    .locals 0
    .param p1, "directionPriority"    # I

    #@0
    .prologue
    .line 282
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    #@2
    .line 281
    return-void
.end method

.method public setRowDelay(F)V
    .locals 0
    .param p1, "rowDelay"    # F

    #@0
    .prologue
    .line 212
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@2
    .line 211
    return-void
.end method

.method public willOverlap()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/high16 v2, 0x3f800000    # 1.0f

    #@3
    .line 290
    iget v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    #@5
    cmpg-float v1, v1, v2

    #@7
    if-ltz v1, :cond_0

    #@9
    iget v1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    #@b
    cmpg-float v1, v1, v2

    #@d
    if-gez v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method
