.class public Landroid/content/om/FabricatedOverlay;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/FabricatedOverlay$StringTypeOverlayResource;,
        Landroid/content/om/FabricatedOverlay$Builder;
    }
.end annotation


# instance fields
.field final blacklist mOverlay:Landroid/os/FabricatedOverlayInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/os/FabricatedOverlayInternal;)V
    .registers 2
    .param p1, "overlay"    # Landroid/os/FabricatedOverlayInternal;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    .line 344
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "overlayName"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 354
    nop

    .line 356
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string v1, "\'targetPackage\' must not be empty nor null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4, v2}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    .line 361
    return-void
.end method

.method private static blacklist ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 406
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 408
    .local v0, "slashIndex":I
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 411
    .local v1, "colonIndex":I
    if-ltz v0, :cond_1a

    if-eqz v1, :cond_1a

    sub-int v2, v0, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    const-string v3, "\"%s\" is invalid resource name"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 417
    return-object p0
.end method

.method private static blacklist generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .registers 7
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "overlayName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "targetOverlayable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;)",
            "Landroid/os/FabricatedOverlayInternal;"
        }
    .end annotation

    .line 331
    .local p4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/FabricatedOverlayInternalEntry;>;"
    new-instance v0, Landroid/os/FabricatedOverlayInternal;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternal;-><init>()V

    .line 332
    .local v0, "overlay":Landroid/os/FabricatedOverlayInternal;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    .line 333
    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    .line 334
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    .line 335
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 337
    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;FILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 8
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "dimensionValue"    # F
    .param p2, "dimensionUnit"    # I
    .param p3, "configuration"    # Ljava/lang/String;

    .line 483
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 484
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 485
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 486
    const/4 v2, 0x0

    const-string v3, "dimensionUnit"

    invoke-static {p2, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 488
    invoke-static {p1, p2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 489
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 490
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;FLjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 5
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "configuration"    # Ljava/lang/String;

    .line 496
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 497
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 498
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 499
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 500
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 501
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 8
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "dataType"    # I
    .param p2, "value"    # I
    .param p3, "configuration"    # Ljava/lang/String;

    .line 425
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 426
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 427
    nop

    .line 428
    const/16 v1, 0x10

    const/16 v2, 0x1f

    const-string v3, "dataType"

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 433
    iput p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 434
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 435
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 8
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "dataType"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "configuration"    # Ljava/lang/String;

    .line 442
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 443
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 444
    nop

    .line 445
    const/4 v1, 0x3

    const/4 v2, 0x6

    const-string v3, "dataType"

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 447
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->stringData:Ljava/lang/String;

    .line 448
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 449
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 6
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "configuration"    # Ljava/lang/String;

    .line 470
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 471
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    .line 473
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 474
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 475
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 476
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 7
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "configuration"    # Ljava/lang/String;
    .param p3, "isNinePatch"    # Z

    .line 456
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 457
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    .line 459
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 460
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 461
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 462
    iput-boolean p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z

    .line 463
    return-object v0
.end method


# virtual methods
.method public whitelist getIdentifier()Landroid/content/om/OverlayIdentifier;
    .registers 4

    .line 92
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v1, v1, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method public blacklist getTargetOverlayable()Ljava/lang/String;
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setNinePatchResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "configuration"    # Ljava/lang/String;

    .line 590
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 592
    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    .line 591
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public blacklist setOwningPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "owningPackage"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public blacklist setResourceValue(Ljava/lang/String;FILjava/lang/String;)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "dimensionValue"    # F
    .param p3, "dimensionUnit"    # I
    .param p4, "configuration"    # Ljava/lang/String;

    .line 631
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;FILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method public blacklist setResourceValue(Ljava/lang/String;FLjava/lang/String;)V
    .registers 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "configuration"    # Ljava/lang/String;

    .line 651
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;FLjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "value"    # I
    .param p4, "configuration"    # Ljava/lang/String;

    .line 521
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "configuration"    # Ljava/lang/String;

    .line 552
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .registers 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "configuration"    # Ljava/lang/String;

    .line 610
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 612
    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    .line 611
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "configuration"    # Ljava/lang/String;

    .line 571
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 573
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    .line 572
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    return-void
.end method

.method public whitelist setTargetOverlayable(Ljava/lang/String;)V
    .registers 4
    .param p1, "targetOverlayable"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    .line 383
    return-void
.end method
