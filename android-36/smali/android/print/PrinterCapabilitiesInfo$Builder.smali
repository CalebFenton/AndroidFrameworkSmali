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
.field private final greylist-max-o mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    if-eqz p1, :cond_d

    .line 461
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 462
    return-void

    .line 459
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setColorModes$0(I)V
    .registers 1
    .param p0, "currentMode"    # I

    .line 567
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setDuplexModes$1(I)V
    .registers 1
    .param p0, "currentMode"    # I

    .line 594
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private greylist-max-o throwIfDefaultAlreadySpecified(I)V
    .registers 4
    .param p1, "propertyIndex"    # I

    .line 645
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 648
    return-void

    .line 646
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default already specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 6
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;
    .param p2, "isDefault"    # Z

    .line 479
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 480
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fputmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V

    .line 482
    :cond_12
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 483
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    if-eqz p2, :cond_33

    .line 485
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 486
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v2

    aput v0, v2, v1

    .line 488
    :cond_33
    return-object p0
.end method

.method public whitelist addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 6
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;
    .param p2, "isDefault"    # Z

    .line 507
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 508
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fputmResolutions(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V

    .line 510
    :cond_12
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 511
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    if-eqz p2, :cond_33

    .line 513
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 514
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v2

    aput v0, v2, v1

    .line 516
    :cond_33
    return-object p0
.end method

.method public whitelist build()Landroid/print/PrinterCapabilitiesInfo;
    .registers 5

    .line 616
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 619
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_91

    .line 622
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 625
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq v0, v1, :cond_81

    .line 628
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmColorModes(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-eqz v0, :cond_79

    .line 631
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v3, 0x2

    aget v0, v0, v3

    if-eq v0, v1, :cond_71

    .line 634
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-nez v0, :cond_5d

    .line 635
    invoke-virtual {p0, v2, v2}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    .line 638
    :cond_5d
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmMinMargins(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 641
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0

    .line 639
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 5
    .param p1, "colorModes"    # I
    .param p2, "defaultColorMode"    # I

    .line 566
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$smenforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 568
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 569
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fputmColorModes(Landroid/print/PrinterCapabilitiesInfo;I)V

    .line 570
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 571
    return-object p0
.end method

.method public whitelist setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 5
    .param p1, "duplexModes"    # I
    .param p2, "defaultDuplexMode"    # I

    .line 593
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$smenforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 595
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 596
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fputmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;I)V

    .line 597
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 598
    return-object p0
.end method

.method public whitelist setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .registers 4
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .line 535
    if-eqz p1, :cond_8

    .line 538
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->-$$Nest$fputmMinMargins(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)V

    .line 539
    return-object p0

    .line 536
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
