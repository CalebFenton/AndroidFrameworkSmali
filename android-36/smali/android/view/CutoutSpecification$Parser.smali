.class public Landroid/view/CutoutSpecification$Parser;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CutoutSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private blacklist mBindBottomCutout:Z

.field private blacklist mBindLeftCutout:Z

.field private blacklist mBindRightCutout:Z

.field private blacklist mBottomBound:Landroid/graphics/Rect;

.field private blacklist mInDp:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mIsCloserToStartSide:Z

.field private final blacklist mIsShortEdgeOnTop:Z

.field private blacklist mIsTouchShortEdgeEnd:Z

.field private blacklist mIsTouchShortEdgeStart:Z

.field private blacklist mLeftBound:Landroid/graphics/Rect;

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private blacklist mPositionFromBottom:Z

.field private blacklist mPositionFromCenterVertical:Z

.field private blacklist mPositionFromLeft:Z

.field private blacklist mPositionFromRight:Z

.field private blacklist mRightBound:Landroid/graphics/Rect;

.field private blacklist mSafeInsetBottom:I

.field private blacklist mSafeInsetLeft:I

.field private blacklist mSafeInsetRight:I

.field private blacklist mSafeInsetTop:I

.field private final blacklist mStableDensity:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRectF:Landroid/graphics/RectF;

.field private blacklist mTopBound:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsets(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPath(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/CutoutSpecification$Parser;)F
    .registers 1

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor blacklist <init>(FII)V
    .registers 5
    .param p1, "stableDensity"    # F
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I

    .line 243
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    .line 244
    return-void
.end method

.method constructor blacklist <init>(FIIF)V
    .registers 8
    .param p1, "stableDensity"    # F
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I
    .param p4, "physicalPixelDisplaySizeRatio"    # F

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    .line 217
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 228
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 229
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    .line 230
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    .line 232
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 233
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 234
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 255
    iput p1, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    .line 256
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    .line 257
    iput p3, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    .line 258
    iput p4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    .line 259
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    .line 260
    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v1, v2, :cond_36

    const/4 v0, 0x1

    :cond_36
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    .line 261
    return-void
.end method

.method private blacklist computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "inoutRegion"    # Landroid/graphics/Region;
    .param p3, "inoutRect"    # Landroid/graphics/Rect;

    .line 264
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 265
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 266
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 267
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 268
    return-void
.end method

.method private blacklist computeSafeInsets(ILandroid/graphics/Rect;)I
    .registers 5
    .param p1, "gravity"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 309
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_10

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_10

    .line 310
    iget v0, p2, Landroid/graphics/Rect;->right:I

    return v0

    .line 311
    :cond_10
    const/16 v0, 0x30

    if-ne p1, v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_21

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_21

    .line 312
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 313
    :cond_21
    const/4 v0, 0x5

    if-ne p1, v0, :cond_34

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_34

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_34

    .line 314
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    .line 315
    :cond_34
    const/16 v0, 0x50

    if-ne p1, v0, :cond_48

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_48

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_48

    .line 316
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 318
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getSafeInset(I)I
    .registers 3
    .param p1, "gravity"    # I

    .line 334
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 335
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return v0

    .line 336
    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    .line 337
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return v0

    .line 338
    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    .line 339
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return v0

    .line 340
    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1a

    .line 341
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    return v0

    .line 343
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "isStart"    # Z
    .param p2, "isShortEdge"    # Z
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 349
    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 350
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v1, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    .local v0, "gravity":I
    goto :goto_32

    .line 352
    .end local v0    # "gravity":I
    :cond_a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_1a

    .line 353
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    .restart local v0    # "gravity":I
    goto :goto_32

    .line 354
    .end local v0    # "gravity":I
    :cond_1a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_23

    goto :goto_2a

    .line 358
    :cond_23
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v0, p2, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    .restart local v0    # "gravity":I
    goto :goto_32

    .line 355
    .end local v0    # "gravity":I
    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    invoke-static {v1, v0, v2}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    .line 362
    .restart local v0    # "gravity":I
    :goto_32
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->getSafeInset(I)I

    move-result v1

    .line 363
    .local v1, "oldSafeInset":I
    invoke-direct {p0, v0, p3}, Landroid/view/CutoutSpecification$Parser;->computeSafeInsets(ILandroid/graphics/Rect;)I

    move-result v2

    .line 364
    .local v2, "newSafeInset":I
    if-ge v1, v2, :cond_3f

    .line 365
    invoke-direct {p0, v0, v2}, Landroid/view/CutoutSpecification$Parser;->setSafeInset(II)V

    .line 368
    :cond_3f
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v3
.end method

.method private blacklist parseSpecWithoutDp(Ljava/lang/String;)V
    .registers 10
    .param p1, "specWithoutDp"    # Ljava/lang/String;

    .line 430
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 431
    .local v0, "region":Landroid/graphics/Region;
    const/4 v1, 0x0

    .line 432
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 433
    .local v2, "currentIndex":I
    const/4 v3, 0x0

    .line 434
    .local v3, "lastIndex":I
    :goto_7
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c7

    .line 435
    if-nez v1, :cond_1d

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 438
    :cond_1d
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 440
    const-string v4, "@left"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    .line 441
    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    if-nez v5, :cond_2f

    .line 442
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 444
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_c4

    .line 445
    :cond_36
    const-string v4, "@right"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 446
    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-nez v5, :cond_44

    .line 447
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 449
    :cond_44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_c4

    .line 450
    :cond_4b
    const-string v4, "@bottom"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 455
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    .line 456
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 457
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    goto :goto_c4

    .line 458
    :cond_67
    const-string v4, "@center_vertical"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 463
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    .line 464
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    goto :goto_c4

    .line 465
    :cond_81
    const-string v4, "@cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 470
    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    goto :goto_c4

    .line 471
    :cond_99
    const-string v4, "@bind_left_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_ae

    .line 472
    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 473
    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 474
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 476
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_c4

    .line 477
    :cond_ae
    const-string v4, "@bind_right_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 478
    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 479
    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 480
    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 482
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_c4

    .line 484
    :cond_c2
    add-int/lit8 v2, v2, 0x1

    .line 487
    :goto_c4
    move v3, v2

    goto/16 :goto_7

    .line 490
    :cond_c7
    if-nez v1, :cond_cd

    .line 491
    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    goto :goto_db

    .line 493
    :cond_cd
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    .line 497
    :goto_db
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 498
    return-void
.end method

.method private blacklist parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V
    .registers 8
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "spec"    # Ljava/lang/String;

    .line 393
    invoke-static {p2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/view/CutoutSpecification;->-$$Nest$sfgetMINIMAL_ACCEPTABLE_PATH_LENGTH()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 394
    const-string v0, "CutoutSpecification"

    const-string v1, "According to SVG definition, it shouldn\'t happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 397
    :cond_12
    invoke-direct {p0}, Landroid/view/CutoutSpecification$Parser;->translateMatrix()V

    .line 399
    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    .line 400
    .local v0, "newPath":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 401
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/CutoutSpecification$Parser;->computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    .line 412
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 413
    return-void

    .line 416
    :cond_2c
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    .line 417
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    move v1, v3

    :goto_3b
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    .line 418
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-lt v1, v4, :cond_47

    move v1, v2

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    .line 419
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    :goto_58
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    goto :goto_83

    .line 421
    :cond_5b
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_63

    move v1, v2

    goto :goto_64

    :cond_63
    move v1, v3

    :goto_64
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    .line 422
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-lt v1, v4, :cond_70

    move v1, v2

    goto :goto_71

    :cond_70
    move v1, v3

    :goto_71
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    .line 423
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_80

    goto :goto_81

    :cond_80
    move v2, v3

    :goto_81
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    .line 426
    :goto_83
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->setEdgeCutout(Landroid/graphics/Path;)V

    .line 427
    return-void
.end method

.method private blacklist resetStatus(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    .line 273
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    .line 274
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    .line 275
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    .line 277
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    .line 278
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    .line 279
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    .line 280
    return-void
.end method

.method private blacklist setEdgeCutout(Landroid/graphics/Path;)V
    .registers 5
    .param p1, "newPath"    # Landroid/graphics/Path;

    .line 372
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    if-nez v0, :cond_16

    .line 373
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 374
    :cond_16
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    if-nez v0, :cond_2a

    .line 375
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 376
    :cond_2a
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    if-nez v0, :cond_3d

    .line 377
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    goto :goto_57

    .line 378
    :cond_3d
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    if-nez v0, :cond_64

    .line 380
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    .line 385
    :goto_57
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_61

    .line 386
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_63

    .line 388
    :cond_61
    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    .line 390
    :goto_63
    return-void

    .line 382
    :cond_64
    return-void
.end method

.method private blacklist setSafeInset(II)V
    .registers 4
    .param p1, "gravity"    # I
    .param p2, "inset"    # I

    .line 322
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 323
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    goto :goto_19

    .line 324
    :cond_6
    const/16 v0, 0x30

    if-ne p1, v0, :cond_d

    .line 325
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    goto :goto_19

    .line 326
    :cond_d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    .line 327
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    goto :goto_19

    .line 328
    :cond_13
    const/16 v0, 0x50

    if-ne p1, v0, :cond_19

    .line 329
    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    .line 331
    :cond_19
    :goto_19
    return-void
.end method

.method private blacklist translateMatrix()V
    .registers 6

    .line 284
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    .line 285
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    .local v0, "offsetX":F
    goto :goto_14

    .line 286
    .end local v0    # "offsetX":F
    :cond_a
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-eqz v0, :cond_10

    .line 287
    const/4 v0, 0x0

    .restart local v0    # "offsetX":F
    goto :goto_14

    .line 289
    .end local v0    # "offsetX":F
    :cond_10
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 293
    .restart local v0    # "offsetX":F
    :goto_14
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    if-eqz v2, :cond_1c

    .line 294
    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    .local v1, "offsetY":F
    goto :goto_27

    .line 295
    .end local v1    # "offsetY":F
    :cond_1c
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    if-eqz v2, :cond_26

    .line 296
    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v2, v2

    div-float v1, v2, v1

    .restart local v1    # "offsetY":F
    goto :goto_27

    .line 298
    .end local v1    # "offsetY":F
    :cond_26
    const/4 v1, 0x0

    .line 301
    .restart local v1    # "offsetY":F
    :goto_27
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 302
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eqz v2, :cond_39

    .line 303
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 305
    :cond_39
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;
    .registers 8
    .param p1, "originalSpec"    # Ljava/lang/String;

    .line 508
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v0, "@dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 511
    .local v1, "dpIndex":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    move v4, v2

    :goto_10
    iput-boolean v4, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    .line 513
    if-eq v1, v3, :cond_33

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "spec":Ljava/lang/String;
    goto :goto_34

    .line 517
    .end local v0    # "spec":Ljava/lang/String;
    :cond_33
    move-object v0, p1

    .line 520
    .restart local v0    # "spec":Ljava/lang/String;
    :goto_34
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->parseSpecWithoutDp(Ljava/lang/String;)V

    .line 521
    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    iget v5, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    .line 522
    new-instance v2, Landroid/view/CutoutSpecification;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification-IA;)V

    return-object v2
.end method
