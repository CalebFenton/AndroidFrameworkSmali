.class Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 388
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@9
    .line 389
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@f
    .line 390
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@15
    .line 387
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 382
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@5
    .line 383
    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@7
    .line 384
    iput-object p3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@9
    .line 381
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    const/4 v2, 0x0

    #@1
    .line 396
    .local v2, "manufacturer":Ljava/lang/String;
    const/4 v3, 0x0

    #@2
    .line 397
    .local v3, "model":Ljava/lang/String;
    const/4 v6, 0x0

    #@3
    .line 399
    .local v6, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@6
    move-result v0

    #@7
    .line 400
    .local v0, "count":I
    const/4 v1, 0x0

    #@8
    .end local v2    # "manufacturer":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@a
    .line 401
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 402
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 404
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v7, "manufacturer"

    #@15
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_1

    #@1b
    .line 405
    move-object v2, v5

    #@1c
    .line 400
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 406
    :cond_1
    const-string/jumbo v7, "model"

    #@22
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 407
    move-object v3, v5

    #@29
    .local v3, "model":Ljava/lang/String;
    goto :goto_1

    #@2a
    .line 408
    .end local v3    # "model":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "version"

    #@2d
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_0

    #@33
    .line 409
    move-object v6, v5

    #@34
    .local v6, "version":Ljava/lang/String;
    goto :goto_1

    #@35
    .line 412
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@37
    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 446
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 447
    :cond_0
    return v2

    #@a
    .line 446
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 449
    instance-of v3, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@10
    if-eqz v3, :cond_3

    #@12
    move-object v1, p1

    #@13
    .line 450
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@15
    .line 451
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@17
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 452
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@21
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 451
    if-eqz v3, :cond_2

    #@29
    .line 453
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@2b
    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 451
    :cond_2
    return v2

    #@32
    .line 455
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_3
    instance-of v3, p1, Landroid/hardware/usb/UsbAccessory;

    #@34
    if-eqz v3, :cond_5

    #@36
    move-object v0, p1

    #@37
    .line 456
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    #@39
    .line 457
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@3b
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_4

    #@45
    .line 458
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@47
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    .line 457
    if-eqz v3, :cond_4

    #@51
    .line 459
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@53
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v2

    #@5b
    .line 457
    :cond_4
    return v2

    #@5c
    .line 461
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 466
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 467
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    move v2, v1

    #@b
    .line 466
    :goto_1
    xor-int/2addr v0, v2

    #@c
    .line 468
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@e
    if-nez v2, :cond_2

    #@10
    .line 466
    :goto_2
    xor-int/2addr v0, v1

    #@11
    return v0

    #@12
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@17
    move-result v0

    #@18
    goto :goto_0

    #@19
    .line 467
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@1e
    move-result v2

    #@1f
    goto :goto_1

    #@20
    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v1

    #@26
    goto :goto_2
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 430
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_3

    #@11
    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_4

    #@21
    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@23
    if-eqz v0, :cond_2

    #@25
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 433
    :cond_2
    const/4 v0, 0x1

    #@32
    return v0

    #@33
    .line 430
    :cond_3
    return v2

    #@34
    .line 431
    :cond_4
    return v2

    #@35
    .line 432
    :cond_5
    return v2
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .locals 3
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 437
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@7
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@15
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_4

    #@1d
    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@1f
    if-eqz v0, :cond_2

    #@21
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@23
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_5

    #@2b
    .line 440
    :cond_2
    const/4 v0, 0x1

    #@2c
    return v0

    #@2d
    .line 437
    :cond_3
    return v2

    #@2e
    .line 438
    :cond_4
    return v2

    #@2f
    .line 439
    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AccessoryFilter[mManufacturer=\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 474
    const-string/jumbo v1, "\", mModel=\""

    #@15
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 474
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@1b
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 475
    const-string/jumbo v1, "\", mVersion=\""

    #@22
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 475
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@28
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 475
    const-string/jumbo v1, "\"]"

    #@2f
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 416
    const-string/jumbo v0, "usb-accessory"

    #@4
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 417
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 418
    const-string/jumbo v0, "manufacturer"

    #@e
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    #@10
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 421
    const-string/jumbo v0, "model"

    #@1a
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    #@1c
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 424
    const-string/jumbo v0, "version"

    #@26
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    #@28
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 426
    :cond_2
    const-string/jumbo v0, "usb-accessory"

    #@2e
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 415
    return-void
.end method
