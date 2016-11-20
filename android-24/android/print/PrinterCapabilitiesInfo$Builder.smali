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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setColorModes_int_colorModes_int_defaultColorMode_LambdaImpl0;,
        Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setDuplexModes_int_duplexModes_int_defaultDuplexMode_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method static synthetic -android_print_PrinterCapabilitiesInfo$Builder_lambda$1(I)V
    .locals 0
    .param p0, "currentMode"    # I

    #@0
    .prologue
    .line 565
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -android_print_PrinterCapabilitiesInfo$Builder_lambda$2(I)V
    .locals 0
    .param p0, "currentMode"    # I

    #@0
    .prologue
    .line 592
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@3
    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 456
    if-nez p1, :cond_0

    #@5
    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "printerId cannot be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 459
    :cond_0
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    #@10
    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@15
    .line 455
    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .locals 2
    .param p1, "propertyIndex"    # I

    #@0
    .prologue
    .line 643
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
    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Default already specified."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 642
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
    .line 477
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@3
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 478
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@b
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set2(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    #@13
    .line 480
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
    .line 481
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1f
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get3(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 482
    if-eqz p2, :cond_1

    #@28
    .line 483
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    #@2b
    .line 484
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@30
    move-result-object v1

    #@31
    aput v0, v1, v3

    #@33
    .line 486
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
    .line 505
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@3
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 506
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@b
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->-set4(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    #@13
    .line 508
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
    .line 509
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@1f
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get5(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 510
    if-eqz p2, :cond_1

    #@28
    .line 511
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    #@2b
    .line 512
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@30
    move-result-object v1

    #@31
    aput v0, v1, v3

    #@33
    .line 514
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
    .line 614
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
    .line 615
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v1, "No media size specified."

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 617
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
    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2c
    const-string/jumbo v1, "No default media size specified."

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 620
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
    .line 621
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v1, "No resolution specified."

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 623
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
    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v1, "No default resolution specified."

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    .line 626
    :cond_5
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@65
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get0(Landroid/print/PrinterCapabilitiesInfo;)I

    #@68
    move-result v0

    #@69
    if-nez v0, :cond_6

    #@6b
    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6d
    const-string/jumbo v1, "No color mode specified."

    #@70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@73
    throw v0

    #@74
    .line 629
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
    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    #@81
    const-string/jumbo v1, "No default color mode specified."

    #@84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    .line 632
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@8a
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get2(Landroid/print/PrinterCapabilitiesInfo;)I

    #@8d
    move-result v0

    #@8e
    if-nez v0, :cond_8

    #@90
    .line 633
    invoke-virtual {p0, v3, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    #@93
    .line 636
    :cond_8
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@95
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get4(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    #@98
    move-result-object v0

    #@99
    if-nez v0, :cond_9

    #@9b
    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9d
    const-string/jumbo v1, "margins cannot be null"

    #@a0
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v0

    #@a4
    .line 639
    :cond_9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@a6
    return-object v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2
    .param p1, "colorModes"    # I
    .param p2, "defaultColorMode"    # I

    #@0
    .prologue
    .line 565
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setColorModes_int_colorModes_int_defaultColorMode_LambdaImpl0;

    #@2
    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setColorModes_int_colorModes_int_defaultColorMode_LambdaImpl0;-><init>()V

    #@5
    .line 564
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-wrap0(ILjava/util/function/IntConsumer;)V

    #@8
    .line 566
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    #@b
    .line 567
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@d
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set0(Landroid/print/PrinterCapabilitiesInfo;I)I

    #@10
    .line 568
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@12
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x2

    #@17
    aput p2, v0, v1

    #@19
    .line 569
    return-object p0
.end method

.method public setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2
    .param p1, "duplexModes"    # I
    .param p2, "defaultDuplexMode"    # I

    #@0
    .prologue
    .line 592
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setDuplexModes_int_duplexModes_int_defaultDuplexMode_LambdaImpl0;

    #@2
    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$Builder$-android_print_PrinterCapabilitiesInfo$Builder_setDuplexModes_int_duplexModes_int_defaultDuplexMode_LambdaImpl0;-><init>()V

    #@5
    .line 591
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-wrap0(ILjava/util/function/IntConsumer;)V

    #@8
    .line 593
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    #@b
    .line 594
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@d
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set1(Landroid/print/PrinterCapabilitiesInfo;I)I

    #@10
    .line 595
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@12
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-get1(Landroid/print/PrinterCapabilitiesInfo;)[I

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x3

    #@17
    aput p2, v0, v1

    #@19
    .line 596
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    #@0
    .prologue
    .line 533
    if-nez p1, :cond_0

    #@2
    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "margins cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 536
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    #@d
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-set3(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    #@10
    .line 537
    return-object p0
.end method
