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
.field private mObjectInfo:Landroid/mtp/MtpObjectInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 354
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo;)V

    #@9
    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@b
    .line 355
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@d
    const/4 v1, -0x1

    #@e
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    #@11
    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .param p1, "objectInfo"    # Landroid/mtp/MtpObjectInfo;

    #@0
    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 365
    new-instance v0, Landroid/mtp/MtpObjectInfo;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/mtp/MtpObjectInfo;-><init>(Landroid/mtp/MtpObjectInfo;)V

    #@9
    iput-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@b
    .line 366
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@d
    const/4 v1, -0x1

    #@e
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    #@11
    .line 367
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@13
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get0(Landroid/mtp/MtpObjectInfo;)I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set0(Landroid/mtp/MtpObjectInfo;I)I

    #@1a
    .line 368
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@1c
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get1(Landroid/mtp/MtpObjectInfo;)I

    #@1f
    move-result v1

    #@20
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set1(Landroid/mtp/MtpObjectInfo;I)I

    #@23
    .line 369
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@25
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get2(Landroid/mtp/MtpObjectInfo;)I

    #@28
    move-result v1

    #@29
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set2(Landroid/mtp/MtpObjectInfo;I)I

    #@2c
    .line 370
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2e
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get3(Landroid/mtp/MtpObjectInfo;)J

    #@31
    move-result-wide v2

    #@32
    invoke-static {v0, v2, v3}, Landroid/mtp/MtpObjectInfo;->-set3(Landroid/mtp/MtpObjectInfo;J)J

    #@35
    .line 371
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@37
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get4(Landroid/mtp/MtpObjectInfo;)J

    #@3a
    move-result-wide v2

    #@3b
    invoke-static {v0, v2, v3}, Landroid/mtp/MtpObjectInfo;->-set4(Landroid/mtp/MtpObjectInfo;J)J

    #@3e
    .line 372
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@40
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get5(Landroid/mtp/MtpObjectInfo;)I

    #@43
    move-result v1

    #@44
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set5(Landroid/mtp/MtpObjectInfo;I)I

    #@47
    .line 373
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@49
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get6(Landroid/mtp/MtpObjectInfo;)I

    #@4c
    move-result v1

    #@4d
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set7(Landroid/mtp/MtpObjectInfo;I)I

    #@50
    .line 374
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@52
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get7(Landroid/mtp/MtpObjectInfo;)I

    #@55
    move-result v1

    #@56
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set8(Landroid/mtp/MtpObjectInfo;I)I

    #@59
    .line 375
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@5b
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get8(Landroid/mtp/MtpObjectInfo;)I

    #@5e
    move-result v1

    #@5f
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set9(Landroid/mtp/MtpObjectInfo;I)I

    #@62
    .line 376
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@64
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get9(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    .line 377
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@6d
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get10(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    #@74
    .line 378
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@76
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get11(Landroid/mtp/MtpObjectInfo;)I

    #@79
    move-result v1

    #@7a
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set12(Landroid/mtp/MtpObjectInfo;I)I

    #@7d
    .line 379
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@7f
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get12(Landroid/mtp/MtpObjectInfo;)I

    #@82
    move-result v1

    #@83
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set13(Landroid/mtp/MtpObjectInfo;I)I

    #@86
    .line 380
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@88
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get13(Landroid/mtp/MtpObjectInfo;)I

    #@8b
    move-result v1

    #@8c
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set14(Landroid/mtp/MtpObjectInfo;I)I

    #@8f
    .line 381
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@91
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get14(Landroid/mtp/MtpObjectInfo;)I

    #@94
    move-result v1

    #@95
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set15(Landroid/mtp/MtpObjectInfo;I)I

    #@98
    .line 382
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@9a
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get15(Landroid/mtp/MtpObjectInfo;)I

    #@9d
    move-result v1

    #@9e
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set16(Landroid/mtp/MtpObjectInfo;I)I

    #@a1
    .line 383
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@a3
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get16(Landroid/mtp/MtpObjectInfo;)I

    #@a6
    move-result v1

    #@a7
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set17(Landroid/mtp/MtpObjectInfo;I)I

    #@aa
    .line 384
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@ac
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get17(Landroid/mtp/MtpObjectInfo;)I

    #@af
    move-result v1

    #@b0
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set18(Landroid/mtp/MtpObjectInfo;I)I

    #@b3
    .line 385
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@b5
    invoke-static {p1}, Landroid/mtp/MtpObjectInfo;->-get18(Landroid/mtp/MtpObjectInfo;)I

    #@b8
    move-result v1

    #@b9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set19(Landroid/mtp/MtpObjectInfo;I)I

    #@bc
    .line 364
    return-void
.end method


# virtual methods
.method public build()Landroid/mtp/MtpObjectInfo;
    .locals 2

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    .line 497
    .local v0, "result":Landroid/mtp/MtpObjectInfo;
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@5
    .line 498
    return-object v0
.end method

.method public setAssociationDesc(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set0(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 395
    return-object p0
.end method

.method public setAssociationType(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set1(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 400
    return-object p0
.end method

.method public setCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set2(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 405
    return-object p0
.end method

.method public setDateCreated(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-set3(Landroid/mtp/MtpObjectInfo;J)J

    #@5
    .line 410
    return-object p0
.end method

.method public setDateModified(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1, p2}, Landroid/mtp/MtpObjectInfo;->-set4(Landroid/mtp/MtpObjectInfo;J)J

    #@5
    .line 415
    return-object p0
.end method

.method public setFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set5(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 420
    return-object p0
.end method

.method public setImagePixDepth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set7(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 425
    return-object p0
.end method

.method public setImagePixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set8(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 430
    return-object p0
.end method

.method public setImagePixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set9(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 435
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 440
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 445
    return-object p0
.end method

.method public setObjectHandle(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set6(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 390
    return-object p0
.end method

.method public setParent(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set12(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 450
    return-object p0
.end method

.method public setProtectionStatus(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set13(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 455
    return-object p0
.end method

.method public setSequenceNumber(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set14(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 460
    return-object p0
.end method

.method public setStorageId(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set15(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 465
    return-object p0
.end method

.method public setThumbCompressedSize(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set16(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 470
    return-object p0
.end method

.method public setThumbFormat(I)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    invoke-static {v0, p1}, Landroid/mtp/MtpObjectInfo;->-set17(Landroid/mtp/MtpObjectInfo;I)I

    #@5
    .line 475
    return-object p0
.end method

.method public setThumbPixHeight(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set18(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 480
    return-object p0
.end method

.method public setThumbPixWidth(J)Landroid/mtp/MtpObjectInfo$Builder;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo$Builder;->mObjectInfo:Landroid/mtp/MtpObjectInfo;

    #@2
    const-string/jumbo v1, "value"

    #@5
    invoke-static {p1, p2, v1}, Landroid/mtp/MtpObjectInfo;->-wrap0(JLjava/lang/String;)I

    #@8
    move-result v1

    #@9
    invoke-static {v0, v1}, Landroid/mtp/MtpObjectInfo;->-set19(Landroid/mtp/MtpObjectInfo;I)I

    #@c
    .line 485
    return-object p0
.end method
