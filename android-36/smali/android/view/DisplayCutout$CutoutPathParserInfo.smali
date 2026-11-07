.class public Landroid/view/DisplayCutout$CutoutPathParserInfo;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CutoutPathParserInfo"
.end annotation


# instance fields
.field private final blacklist mCutoutSpec:Ljava/lang/String;

.field private final blacklist mDensity:F

.field private final blacklist mDisplayHeight:I

.field private final blacklist mDisplayWidth:I

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private final blacklist mRotation:I

.field private final blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hasCutout()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(IIIIFLjava/lang/String;IFF)V
    .registers 11
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "physicalDisplayWidth"    # I
    .param p4, "physicalDisplayHeight"    # I
    .param p5, "density"    # F
    .param p6, "cutoutSpec"    # Ljava/lang/String;
    .param p7, "rotation"    # I
    .param p8, "scale"    # F
    .param p9, "physicalPixelDisplaySizeRatio"    # F

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    .line 293
    iput p2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    .line 294
    iput p3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    .line 295
    iput p4, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    .line 296
    iput p5, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    .line 297
    if-nez p6, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p6

    :goto_13
    iput-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 298
    iput p7, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    .line 299
    iput p8, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    .line 300
    iput p9, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    .line 301
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 3
    .param p1, "cutoutPathParserInfo"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    .line 305
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    .line 306
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    .line 307
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    .line 308
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    .line 309
    iget-object v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 310
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    .line 311
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    .line 312
    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    .line 313
    return-void
.end method

.method private blacklist hasCutout()Z
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 372
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 373
    return v0

    .line 375
    :cond_4
    instance-of v1, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 376
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 377
    .local v1, "c":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4d

    iget-object v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    if-ne v3, v4, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4d

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iget v4, v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v2

    .line 377
    :goto_4e
    return v0

    .line 384
    .end local v1    # "c":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :cond_4f
    return v2
.end method

.method public blacklist getCutoutSpec()Ljava/lang/String;
    .registers 2

    .line 336
    iget-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDensity()F
    .registers 2

    .line 332
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    return v0
.end method

.method public blacklist getDisplayHeight()I
    .registers 2

    .line 320
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    return v0
.end method

.method public blacklist getDisplayWidth()I
    .registers 2

    .line 316
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    return v0
.end method

.method public blacklist getPhysicalDisplayHeight()I
    .registers 2

    .line 328
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    return v0
.end method

.method public blacklist getPhysicalDisplayWidth()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    return v0
.end method

.method public blacklist getPhysicalPixelDisplaySizeRatio()F
    .registers 2

    .line 348
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    return v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 340
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    return v0
.end method

.method public blacklist getScale()F
    .registers 2

    .line 344
    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "result":I
    const v1, 0xbc8f

    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 360
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 361
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 362
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 363
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 364
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-static {v3}, Ljava/lang/Float;->hashCode(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 365
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget v3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->hashCode(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 366
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 367
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CutoutPathParserInfo{displayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " density={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} cutoutSpec={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} rotation={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} scale={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} physicalPixelDisplaySizeRatio={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
