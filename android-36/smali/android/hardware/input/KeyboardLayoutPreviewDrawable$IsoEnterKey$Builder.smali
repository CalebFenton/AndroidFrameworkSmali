.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
.super Ljava/lang/Object;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBottomWidth:F

.field private final blacklist mKeyPaint:Landroid/graphics/Paint;

.field private final blacklist mKeyRadius:F

.field private blacklist mLeft:F

.field private blacklist mLeftHeight:F

.field private blacklist mRightHeight:F

.field private blacklist mTop:F

.field private blacklist mTopWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mbuild(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->build()Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetBottomWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->setBottomWidth(F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetStartPoint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->setStartPoint(FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTopWidth(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->setTopWidth(F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetVerticalEdges(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->setVerticalEdges(FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(FLandroid/graphics/Paint;)V
    .registers 3
    .param p1, "keyRadius"    # F
    .param p2, "keyPaint"    # Landroid/graphics/Paint;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    .line 330
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyPaint:Landroid/graphics/Paint;

    .line 331
    return-void
.end method

.method synthetic constructor blacklist <init>(FLandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;-><init>(FLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist build()Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;
    .registers 9

    .line 356
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 357
    .local v0, "enterKey":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    neg-float v2, v2

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    neg-float v3, v3

    iget v4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 359
    .local v1, "oval":Landroid/graphics/RectF;
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 363
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 365
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v2, v5

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mRightHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v2, v5

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mRightHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 371
    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mBottomWidth:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mRightHeight:F

    add-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mBottomWidth:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mRightHeight:F

    add-float/2addr v6, v7

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 375
    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 377
    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mBottomWidth:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeftHeight:F

    add-float/2addr v6, v7

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    sub-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mBottomWidth:F

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v7, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeftHeight:F

    add-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 381
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 383
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    add-float/2addr v2, v5

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeftHeight:F

    add-float/2addr v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeftHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 386
    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 388
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyRadius:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    iget v4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 391
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 392
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 393
    new-instance v2, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;

    iget-object v3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mKeyPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;-><init>(Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V

    return-object v2
.end method

.method private blacklist setBottomWidth(F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 2
    .param p1, "width"    # F

    .line 345
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mBottomWidth:F

    .line 346
    return-object p0
.end method

.method private blacklist setStartPoint(FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 3
    .param p1, "left"    # F
    .param p2, "top"    # F

    .line 334
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeft:F

    .line 335
    iput p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTop:F

    .line 336
    return-object p0
.end method

.method private blacklist setTopWidth(F)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 2
    .param p1, "width"    # F

    .line 340
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mTopWidth:F

    .line 341
    return-object p0
.end method

.method private blacklist setVerticalEdges(FF)Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    .registers 3
    .param p1, "leftHeight"    # F
    .param p2, "rightHeight"    # F

    .line 350
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mLeftHeight:F

    .line 351
    iput p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;->mRightHeight:F

    .line 352
    return-object p0
.end method
