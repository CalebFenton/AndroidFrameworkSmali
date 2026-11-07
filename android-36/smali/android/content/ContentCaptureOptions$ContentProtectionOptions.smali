.class public Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentCaptureOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProtectionOptions"
.end annotation


# instance fields
.field public final blacklist bufferSize:I

.field public final blacklist enableReceiver:Z

.field public final blacklist optionalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist optionalGroupsThreshold:I

.field public final blacklist requiredGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpShort(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->dumpShort(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .registers 1

    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 7

    .line 421
    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    sget-object v4, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    .line 427
    return-void
.end method

.method public constructor blacklist <init>(ZILjava/util/List;Ljava/util/List;I)V
    .registers 6
    .param p1, "enableReceiver"    # Z
    .param p2, "bufferSize"    # I
    .param p5, "optionalGroupsThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .line 439
    .local p3, "requiredGroups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "optionalGroups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-boolean p1, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    .line 441
    iput p2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    .line 442
    iput-object p3, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    .line 443
    iput-object p4, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    .line 444
    iput p5, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    .line 445
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .registers 7
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 488
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 489
    .local v1, "enableReceiver":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .local v2, "bufferSize":I
    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v3

    .line 491
    .local v3, "requiredGroups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v4

    .line 492
    .local v4, "optionalGroups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 493
    .local v5, "optionalGroupsThreshold":I
    new-instance v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method private static blacklist createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .local v0, "size":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda1;-><init>()V

    .line 511
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 512
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 513
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 510
    return-object v1
.end method

.method private blacklist dumpShort(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 466
    const-string v0, "enableReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 468
    const-string v0, ", bufferSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 470
    const-string v0, ", requiredGroupsSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 472
    const-string v0, ", optionalGroupsSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 474
    const-string v0, ", optionalGroupsThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 476
    return-void
.end method

.method static synthetic blacklist lambda$createGroupsFromParcel$0(I)Ljava/util/ArrayList;
    .registers 2
    .param p0, "i"    # I

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 503
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 505
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 479
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 482
    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    .line 483
    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProtectionOptions ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    nop

    .line 451
    const-string v1, "enableReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    const-string v2, ", bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
    const-string v2, ", requiredGroupsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    .line 456
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 457
    const-string v2, ", optionalGroupsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    .line 458
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    const-string v2, ", optionalGroupsThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
