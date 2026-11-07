.class public Landroid/mtp/MtpObjectInfo$Builder;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 360
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    .line 361
    return-void
.end method

.method public constructor whitelist <init>(Landroid/mtp/MtpObjectInfo;)V
    .registers 5
    .param p1, "objectInfo"    # Landroid/mtp/MtpObjectInfo;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo-IA;)V

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 371
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    .line 372
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationDesc(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    .line 373
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmAssociationType(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    .line 374
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    .line 375
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateCreated(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    .line 376
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmDateModified(Landroid/mtp/MtpObjectInfo;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    .line 377
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixDepth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    .line 379
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    .line 380
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmImagePixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    .line 381
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmKeywords(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmName(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmParent(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    .line 384
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmProtectionStatus(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    .line 385
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmSequenceNumber(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    .line 386
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmStorageId(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    .line 387
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    .line 388
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbFormat(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    .line 389
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixHeight(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    .line 390
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fgetmThumbPixWidth(Landroid/mtp/MtpObjectInfo;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    .line 391
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/mtp/MtpObjectInfo;
    .registers 3

    .line 509
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 510
    .local v0, "result":Landroid/mtp/MtpObjectInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 511
    return-object v0
.end method

.method public whitelist setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 399
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V

    .line 400
    return-object p0
.end method

.method public whitelist setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 404
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V

    .line 405
    return-object p0
.end method

.method public whitelist setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 409
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    .line 410
    return-object p0
.end method

.method public whitelist setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 414
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V

    .line 415
    return-object p0
.end method

.method public whitelist setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 419
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V

    .line 420
    return-object p0
.end method

.method public whitelist setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 424
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V

    .line 425
    return-object p0
.end method

.method public whitelist setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 429
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V

    .line 430
    return-object p0
.end method

.method public whitelist setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 434
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V

    .line 435
    return-object p0
.end method

.method public whitelist setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 439
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V

    .line 440
    return-object p0
.end method

.method public whitelist setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 444
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_10

    .line 445
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 446
    :cond_10
    if-nez p1, :cond_14

    .line 449
    const-string p1, ""

    .line 451
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    .line 452
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 456
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V

    .line 458
    return-object p0
.end method

.method public whitelist setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 394
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V

    .line 395
    return-object p0
.end method

.method public whitelist setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 462
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V

    .line 463
    return-object p0
.end method

.method public whitelist setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 467
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V

    .line 468
    return-object p0
.end method

.method public whitelist setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 472
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V

    .line 473
    return-object p0
.end method

.method public whitelist setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 477
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V

    .line 478
    return-object p0
.end method

.method public whitelist setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 482
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V

    .line 483
    return-object p0
.end method

.method public whitelist setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 487
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V

    .line 488
    return-object p0
.end method

.method public whitelist setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 492
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V

    .line 493
    return-object p0
.end method

.method public whitelist setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .registers 5
    .param p1, "value"    # J

    .line 497
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    const-string/jumbo v1, "value"

    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$smlongToUint32(JLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V

    .line 498
    return-object p0
.end method
