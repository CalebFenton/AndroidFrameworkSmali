.class Landroid/widget/StackView$HolographicHelper;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolographicHelper"
.end annotation


# static fields
.field private static final CLICK_FEEDBACK:I = 0x1

.field private static final RES_OUT:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDensity:F

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private final mIdentityMatrix:Landroid/graphics/Matrix;

.field private mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mTmpXY:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1374
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    #@b
    .line 1375
    new-instance v0, Landroid/graphics/Paint;

    #@d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@10
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    #@12
    .line 1376
    new-instance v0, Landroid/graphics/Paint;

    #@14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@17
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    #@19
    .line 1382
    new-instance v0, Landroid/graphics/Canvas;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    #@20
    .line 1383
    new-instance v0, Landroid/graphics/Canvas;

    #@22
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    #@27
    .line 1384
    const/4 v0, 0x2

    #@28
    new-array v0, v0, [I

    #@2a
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    #@2c
    .line 1385
    new-instance v0, Landroid/graphics/Matrix;

    #@2e
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@31
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    #@33
    .line 1388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3a
    move-result-object v0

    #@3b
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@3d
    iput v0, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    #@3f
    .line 1390
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    #@41
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@44
    .line 1391
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    #@46
    const/4 v1, 0x0

    #@47
    const/16 v2, 0x1e

    #@49
    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@50
    .line 1392
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    #@52
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #@54
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    #@56
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@5c
    .line 1393
    iget-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    #@5e
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@61
    .line 1395
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    #@63
    iget v1, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    #@65
    const/high16 v2, 0x40000000    # 2.0f

    #@67
    mul-float/2addr v1, v2

    #@68
    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@6a
    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #@6d
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    #@6f
    .line 1396
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    #@71
    iget v1, p0, Landroid/widget/StackView$HolographicHelper;->mDensity:F

    #@73
    const/high16 v2, 0x40800000    # 4.0f

    #@75
    mul-float/2addr v1, v2

    #@76
    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@78
    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #@7b
    iput-object v0, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    #@7d
    .line 1387
    return-void
.end method


# virtual methods
.method createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 1400
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "color"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1408
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    #@7
    .line 1409
    if-nez p2, :cond_2

    #@9
    .line 1410
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    #@b
    iget-object v6, p0, Landroid/widget/StackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    #@d
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@10
    .line 1415
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_3

    #@1c
    .line 1416
    :cond_1
    return-object v10

    #@1d
    .line 1411
    :cond_2
    const/4 v5, 0x1

    #@1e
    if-ne p2, v5, :cond_0

    #@20
    .line 1412
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    #@22
    iget-object v6, p0, Landroid/widget/StackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    #@24
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    #@27
    goto :goto_0

    #@28
    .line 1419
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2f
    move-result-object v5

    #@30
    .line 1420
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@33
    move-result v6

    #@34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@37
    move-result v7

    #@38
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3a
    .line 1419
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@3d
    move-result-object v0

    #@3e
    .line 1421
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    #@40
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@43
    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    #@46
    move-result v2

    #@47
    .line 1424
    .local v2, "rotationX":F
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@4a
    move-result v1

    #@4b
    .line 1425
    .local v1, "rotation":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@4e
    move-result v4

    #@4f
    .line 1426
    .local v4, "translationY":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@52
    move-result v3

    #@53
    .line 1427
    .local v3, "translationX":F
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    #@56
    .line 1428
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    #@59
    .line 1429
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    #@5c
    .line 1430
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    #@5f
    .line 1431
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    #@61
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@64
    .line 1432
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    #@67
    .line 1433
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    #@6a
    .line 1434
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    #@6d
    .line 1435
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    #@70
    .line 1437
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    #@72
    invoke-virtual {p0, v5, v0}, Landroid/widget/StackView$HolographicHelper;->drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    #@75
    .line 1438
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    #@77
    invoke-virtual {v5, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@7a
    .line 1439
    return-object v0
.end method

.method createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "color"    # I

    #@0
    .prologue
    .line 1404
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "dest"    # Landroid/graphics/Canvas;
    .param p2, "src"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1443
    iget-object v1, p0, Landroid/widget/StackView$HolographicHelper;->mTmpXY:[I

    #@4
    .line 1444
    .local v1, "xy":[I
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    #@6
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 1445
    .local v0, "mask":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    #@c
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@f
    .line 1446
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    #@11
    aget v3, v1, v6

    #@13
    neg-int v3, v3

    #@14
    int-to-float v3, v3

    #@15
    aget v4, v1, v7

    #@17
    neg-int v4, v4

    #@18
    int-to-float v4, v4

    #@19
    iget-object v5, p0, Landroid/widget/StackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    #@1b
    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@1e
    .line 1447
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@20
    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@23
    .line 1448
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    #@25
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    #@28
    .line 1449
    aget v2, v1, v6

    #@2a
    int-to-float v2, v2

    #@2b
    aget v3, v1, v7

    #@2d
    int-to-float v3, v3

    #@2e
    iget-object v4, p0, Landroid/widget/StackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    #@30
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@33
    .line 1450
    iget-object v2, p0, Landroid/widget/StackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    #@35
    const/4 v3, 0x0

    #@36
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@39
    .line 1451
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@3c
    .line 1442
    return-void
.end method
