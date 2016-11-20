.class public final Landroid/hardware/radio/RadioMetadata$Builder;
.super Ljava/lang/Object;
.source "RadioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 351
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@a
    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioMetadata;)V
    .locals 2
    .param p1, "source"    # Landroid/hardware/radio/RadioMetadata;

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 362
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->-get1(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@e
    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioMetadata;I)V
    .locals 5
    .param p1, "source"    # Landroid/hardware/radio/RadioMetadata;
    .param p2, "maxBitmapSize"    # I

    #@0
    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>(Landroid/hardware/radio/RadioMetadata;)V

    #@3
    .line 377
    iget-object v4, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@5
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    .line 378
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@1b
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 379
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@21
    instance-of v4, v3, Landroid/graphics/Bitmap;

    #@23
    if-eqz v4, :cond_0

    #@25
    move-object v0, v3

    #@26
    .line 380
    nop

    #@27
    nop

    #@28
    .line 381
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@2b
    move-result v4

    #@2c
    if-gt v4, p2, :cond_1

    #@2e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@31
    move-result v4

    #@32
    if-le v4, p2, :cond_0

    #@34
    .line 382
    :cond_1
    invoke-direct {p0, v0, p2}, Landroid/hardware/radio/RadioMetadata$Builder;->scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p0, v1, v4}, Landroid/hardware/radio/RadioMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/hardware/radio/RadioMetadata$Builder;

    #@3b
    goto :goto_0

    #@3c
    .line 375
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "maxSize"    # I

    #@0
    .prologue
    .line 494
    int-to-float v2, p2

    #@1
    .line 495
    .local v2, "maxSizeF":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@4
    move-result v6

    #@5
    int-to-float v6, v6

    #@6
    div-float v5, v2, v6

    #@8
    .line 496
    .local v5, "widthScale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v6

    #@c
    int-to-float v6, v6

    #@d
    div-float v1, v2, v6

    #@f
    .line 497
    .local v1, "heightScale":F
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    #@12
    move-result v3

    #@13
    .line 498
    .local v3, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@16
    move-result v6

    #@17
    int-to-float v6, v6

    #@18
    mul-float/2addr v6, v3

    #@19
    float-to-int v0, v6

    #@1a
    .line 499
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1d
    move-result v6

    #@1e
    int-to-float v6, v6

    #@1f
    mul-float/2addr v6, v3

    #@20
    float-to-int v4, v6

    #@21
    .line 500
    .local v4, "width":I
    const/4 v6, 0x1

    #@22
    invoke-static {p1, v4, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@25
    move-result-object v6

    #@26
    return-object v6
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioMetadata;
    .locals 3

    #@0
    .prologue
    .line 490
    new-instance v0, Landroid/hardware/radio/RadioMetadata;

    #@2
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata;)V

    #@8
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/hardware/radio/RadioMetadata$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 454
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 455
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x2

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 457
    const-string/jumbo v2, " key cannot be used to put a Bitmap"

    #@30
    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 459
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@41
    .line 460
    return-object p0
.end method

.method public putClock(Ljava/lang/String;JI)Landroid/hardware/radio/RadioMetadata$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "utcSecondsSinceEpoch"    # J
    .param p4, "timezoneOffsetMinutes"    # I

    #@0
    .prologue
    .line 475
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 476
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x3

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 478
    const-string/jumbo v2, " key cannot be used to put a RadioMetadata.Clock."

    #@30
    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 480
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    new-instance v1, Landroid/hardware/radio/RadioMetadata$Clock;

    #@40
    invoke-direct {v1, p2, p3, p4}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(JI)V

    #@43
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@46
    .line 481
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 430
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 431
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "The "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 433
    const-string/jumbo v2, " key cannot be used to put a long"

    #@2f
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 435
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@3d
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    #@40
    .line 436
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 407
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 408
    invoke-static {}, Landroid/hardware/radio/RadioMetadata;->-get0()Landroid/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x1

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 410
    const-string/jumbo v2, " key cannot be used to put a String"

    #@30
    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 412
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 413
    return-object p0
.end method
