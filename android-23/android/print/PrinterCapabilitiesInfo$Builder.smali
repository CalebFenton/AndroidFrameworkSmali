.class public final Landroid/print/PrinterCapabilitiesInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 429
    if-nez p1, :cond_0

    #@5
    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "printerId cannot be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 432
    :cond_0
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    #@10
    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    .line 428
    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .locals 2
    .param p1, "propertyIndex"    # I

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@5
    move-result-object v0

    #@6
    aget v0, v0, p1

    #@8
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Default already specified."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 621
    :cond_0
    return-void
.end method


# virtual methods
.method public addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;
    .param p2, "isDefault"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 450
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@3
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 451
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@b
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set2(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    #@13
    .line 453
    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    .line 454
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1f
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 455
    if-eqz p2, :cond_1

    #@28
    .line 456
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    #@2b
    .line 457
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@30
    move-result-object v1

    #@31
    aput v0, v1, v3

    #@33
    .line 459
    :cond_1
    return-object p0
.end method

.method public addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;
    .param p2, "isDefault"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 478
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@3
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 479
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@b
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set4(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    #@13
    .line 481
    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    .line 482
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1f
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 483
    if-eqz p2, :cond_1

    #@28
    .line 484
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    #@2b
    .line 485
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@30
    move-result-object v1

    #@31
    aput v0, v1, v3

    #@33
    .line 487
    :cond_1
    return-object p0
.end method

.method public build()Landroid/print/PrinterCapabilitiesInfo;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 593
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@5
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@d
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v1, "No media size specified."

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 596
    :cond_1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@22
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@25
    move-result-object v0

    #@26
    aget v0, v0, v1

    #@28
    if-ne v0, v2, :cond_2

    #@2a
    .line 597
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    const-string/jumbo v1, "No default media size specified."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 599
    :cond_2
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@35
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@38
    move-result-object v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@3d
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_4

    #@47
    .line 600
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v1, "No resolution specified."

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 602
    :cond_4
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@52
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@55
    move-result-object v0

    #@56
    aget v0, v0, v3

    #@58
    if-ne v0, v2, :cond_5

    #@5a
    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v1, "No default resolution specified."

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 605
    :cond_5
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@65
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get0(Landroid/print/PrinterCapabilitiesInfo;)I

    #@68
    move-result v0

    #@69
    if-nez v0, :cond_6

    #@6b
    .line 606
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6d
    const-string/jumbo v1, "No color mode specified."

    #@70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@73
    throw v0

    #@74
    .line 608
    :cond_6
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@76
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@79
    move-result-object v0

    #@7a
    const/4 v1, 0x2

    #@7b
    aget v0, v0, v1

    #@7d
    if-ne v0, v2, :cond_7

    #@7f
    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    #@81
    const-string/jumbo v1, "No default color mode specified."

    #@84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    .line 611
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@8a
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get2(Landroid/print/PrinterCapabilitiesInfo;)I

    #@8d
    move-result v0

    #@8e
    if-nez v0, :cond_8

    #@90
    .line 612
    invoke-virtual {p0, v3, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    #@93
    .line 615
    :cond_8
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@95
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get4(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    #@98
    move-result-object v0

    #@99
    if-nez v0, :cond_9

    #@9b
    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9d
    const-string/jumbo v1, "margins cannot be null"

    #@a0
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v0

    #@a4
    .line 618
    :cond_9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@a6
    return-object v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "colorModes"    # I
    .param p2, "defaultColorMode"    # I

    #@0
    .prologue
    .line 536
    move v1, p1

    #@1
    .line 537
    .local v1, "currentModes":I
    :goto_0
    if-lez v1, :cond_0

    #@3
    .line 538
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x1

    #@8
    shl-int v0, v3, v2

    #@a
    .line 539
    .local v0, "currentMode":I
    not-int v2, v0

    #@b
    and-int/2addr v1, v2

    #@c
    .line 540
    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@f
    goto :goto_0

    #@10
    .line 542
    .end local v0    # "currentMode":I
    :cond_0
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@13
    .line 543
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    invoke-static {v2, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set0(Landroid/print/PrinterCapabilitiesInfo;I)I

    #@18
    .line 544
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1a
    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput p2, v2, v3

    #@21
    .line 545
    return-object p0
.end method

.method public setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "duplexModes"    # I
    .param p2, "defaultDuplexMode"    # I

    #@0
    .prologue
    .line 566
    move v1, p1

    #@1
    .line 567
    .local v1, "currentModes":I
    :goto_0
    if-lez v1, :cond_0

    #@3
    .line 568
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x1

    #@8
    shl-int v0, v3, v2

    #@a
    .line 569
    .local v0, "currentMode":I
    not-int v2, v0

    #@b
    and-int/2addr v1, v2

    #@c
    .line 570
    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@f
    goto :goto_0

    #@10
    .line 572
    .end local v0    # "currentMode":I
    :cond_0
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@13
    .line 573
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    invoke-static {v2, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set1(Landroid/print/PrinterCapabilitiesInfo;I)I

    #@18
    .line 574
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1a
    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x3

    #@1f
    aput p2, v2, v3

    #@21
    .line 575
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    #@0
    .prologue
    .line 506
    if-nez p1, :cond_0

    #@2
    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "margins cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 509
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@d
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set3(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    #@10
    .line 510
    return-object p0
.end method
