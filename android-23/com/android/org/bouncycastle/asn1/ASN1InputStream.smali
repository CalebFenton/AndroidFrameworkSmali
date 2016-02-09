.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 29
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 99
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    #@5
    .line 100
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    #@7
    .line 101
    const/16 v0, 0xb

    #@9
    new-array v0, v0, [[B

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    #@d
    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    #@0
    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    #@7
    .line 80
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    #@9
    .line 39
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    #@9
    .line 53
    return-void
.end method

.method static createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    #@3
    .line 469
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unknown tag "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " encountered"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 433
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    #@27
    move-result v0

    #@28
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    .line 435
    :pswitch_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@2f
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    #@36
    return-object v0

    #@37
    .line 437
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@3e
    move-result-object v0

    #@3f
    return-object v0

    #@40
    .line 439
    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    #@43
    move-result-object v0

    #@44
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@47
    move-result-object v0

    #@48
    return-object v0

    #@49
    .line 441
    :pswitch_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@4b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    #@52
    return-object v0

    #@53
    .line 443
    :pswitch_6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    #@5c
    return-object v0

    #@5d
    .line 445
    :pswitch_7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@5f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@62
    move-result-object v1

    #@63
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    #@66
    return-object v0

    #@67
    .line 447
    :pswitch_8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@69
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@6c
    move-result-object v1

    #@6d
    const/4 v2, 0x0

    #@6e
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    #@71
    return-object v0

    #@72
    .line 449
    :pswitch_9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@74
    return-object v0

    #@75
    .line 451
    :pswitch_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    #@77
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@7a
    move-result-object v1

    #@7b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    #@7e
    return-object v0

    #@7f
    .line 453
    :pswitch_b
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    #@82
    move-result-object v0

    #@83
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@86
    move-result-object v0

    #@87
    return-object v0

    #@88
    .line 455
    :pswitch_c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@8a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@8d
    move-result-object v1

    #@8e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@91
    return-object v0

    #@92
    .line 457
    :pswitch_d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@97
    move-result-object v1

    #@98
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    #@9b
    return-object v0

    #@9c
    .line 459
    :pswitch_e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@9e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@a1
    move-result-object v1

    #@a2
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    #@a5
    return-object v0

    #@a6
    .line 461
    :pswitch_f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@a8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@ab
    move-result-object v1

    #@ac
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    #@af
    return-object v0

    #@b0
    .line 463
    :pswitch_10
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@b2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@b5
    move-result-object v1

    #@b6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    #@b9
    return-object v0

    #@ba
    .line 465
    :pswitch_11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@bc
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@bf
    move-result-object v1

    #@c0
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    #@c3
    return-object v0

    #@c4
    .line 467
    :pswitch_12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    #@c6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@c9
    move-result-object v1

    #@ca
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    #@cd
    return-object v0

    #@ce
    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 8
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    #@3
    move-result v6

    #@4
    div-int/lit8 v3, v6, 0x2

    #@6
    .line 404
    .local v3, "len":I
    new-array v0, v3, [C

    #@8
    .line 405
    .local v0, "buf":[C
    const/4 v4, 0x0

    #@9
    .local v4, "totalRead":I
    move v5, v4

    #@a
    .line 406
    .end local v4    # "totalRead":I
    .local v5, "totalRead":I
    :goto_0
    if-ge v5, v3, :cond_0

    #@c
    .line 408
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    #@f
    move-result v1

    #@10
    .line 409
    .local v1, "ch1":I
    if-gez v1, :cond_1

    #@12
    .line 421
    .end local v1    # "ch1":I
    :cond_0
    return-object v0

    #@13
    .line 413
    .restart local v1    # "ch1":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    #@16
    move-result v2

    #@17
    .line 414
    .local v2, "ch2":I
    if-ltz v2, :cond_0

    #@19
    .line 418
    add-int/lit8 v4, v5, 0x1

    #@1b
    .end local v5    # "totalRead":I
    .restart local v4    # "totalRead":I
    shl-int/lit8 v6, v1, 0x8

    #@1d
    and-int/lit16 v7, v2, 0xff

    #@1f
    or-int/2addr v6, v7

    #@20
    int-to-char v6, v6

    #@21
    aput-char v6, v0, v5

    #@23
    move v5, v4

    #@24
    .end local v4    # "totalRead":I
    .restart local v5    # "totalRead":I
    goto :goto_0
.end method

.method private static getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 4
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    #@3
    move-result v1

    #@4
    .line 381
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    #@7
    move-result v2

    #@8
    array-length v3, p1

    #@9
    if-ge v2, v3, :cond_1

    #@b
    .line 383
    aget-object v0, p1, v1

    #@d
    .line 385
    .local v0, "buf":[B
    if-nez v0, :cond_0

    #@f
    .line 387
    new-array v0, v1, [B

    #@11
    .end local v0    # "buf":[B
    aput-object v0, p1, v1

    #@13
    .line 390
    .restart local v0    # "buf":[B
    :cond_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@16
    .line 392
    return-object v0

    #@17
    .line 396
    .end local v0    # "buf":[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v1

    #@4
    .line 330
    .local v1, "length":I
    if-gez v1, :cond_0

    #@6
    .line 332
    new-instance v4, Ljava/io/EOFException;

    #@8
    const-string/jumbo v5, "EOF found when length expected"

    #@b
    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 335
    :cond_0
    const/16 v4, 0x80

    #@11
    if-ne v1, v4, :cond_1

    #@13
    .line 337
    const/4 v4, -0x1

    #@14
    return v4

    #@15
    .line 340
    :cond_1
    const/16 v4, 0x7f

    #@17
    if-le v1, v4, :cond_6

    #@19
    .line 342
    and-int/lit8 v3, v1, 0x7f

    #@1b
    .line 345
    .local v3, "size":I
    const/4 v4, 0x4

    #@1c
    if-le v3, v4, :cond_2

    #@1e
    .line 347
    new-instance v4, Ljava/io/IOException;

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "DER length more than 4 bytes: "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 350
    :cond_2
    const/4 v1, 0x0

    #@39
    .line 351
    const/4 v0, 0x0

    #@3a
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    #@3c
    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3f
    move-result v2

    #@40
    .line 355
    .local v2, "next":I
    if-gez v2, :cond_3

    #@42
    .line 357
    new-instance v4, Ljava/io/EOFException;

    #@44
    const-string/jumbo v5, "EOF found reading length"

    #@47
    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v4

    #@4b
    .line 360
    :cond_3
    shl-int/lit8 v4, v1, 0x8

    #@4d
    add-int v1, v4, v2

    #@4f
    .line 351
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 363
    .end local v2    # "next":I
    :cond_4
    if-gez v1, :cond_5

    #@54
    .line 365
    new-instance v4, Ljava/io/IOException;

    #@56
    const-string/jumbo v5, "corrupted stream - negative length found"

    #@59
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v4

    #@5d
    .line 368
    :cond_5
    if-lt v1, p1, :cond_6

    #@5f
    .line 370
    new-instance v4, Ljava/io/IOException;

    #@61
    const-string/jumbo v5, "corrupted stream - out of bounds length found"

    #@64
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 374
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_6
    return v1
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    and-int/lit8 v1, p1, 0x1f

    #@2
    .line 295
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    #@4
    if-ne v1, v2, :cond_3

    #@6
    .line 297
    const/4 v1, 0x0

    #@7
    .line 299
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@a
    move-result v0

    #@b
    .line 303
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    #@d
    if-nez v2, :cond_0

    #@f
    .line 305
    new-instance v2, Ljava/io/IOException;

    #@11
    const-string/jumbo v3, "corrupted stream - invalid high tag number found"

    #@14
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 308
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    and-int/lit16 v2, v0, 0x80

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 310
    and-int/lit8 v2, v0, 0x7f

    #@20
    or-int/2addr v1, v2

    #@21
    .line 311
    shl-int/lit8 v1, v1, 0x7

    #@23
    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@26
    move-result v0

    #@27
    goto :goto_0

    #@28
    .line 315
    :cond_1
    if-gez v0, :cond_2

    #@2a
    .line 317
    new-instance v2, Ljava/io/EOFException;

    #@2c
    const-string/jumbo v3, "EOF found inside tag value."

    #@2f
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 320
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    #@35
    or-int/2addr v1, v2

    #@36
    .line 323
    .end local v0    # "b":I
    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 199
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_0

    #@b
    .line 201
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    goto :goto_0

    #@f
    .line 204
    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    and-int/lit8 v5, p1, 0x20

    #@2
    if-eqz v5, :cond_0

    #@4
    const/4 v2, 0x1

    #@5
    .line 142
    .local v2, "isConstructed":Z
    :goto_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    #@7
    invoke-direct {v0, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    #@a
    .line 144
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v5, p1, 0x40

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 146
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    #@10
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@13
    move-result-object v6

    #@14
    invoke-direct {v5, v2, p2, v6}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    #@17
    return-object v5

    #@18
    .line 140
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v2    # "isConstructed":Z
    :cond_0
    const/4 v2, 0x0

    #@19
    .restart local v2    # "isConstructed":Z
    goto :goto_0

    #@1a
    .line 149
    .restart local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :cond_1
    and-int/lit16 v5, p1, 0x80

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 151
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@20
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    #@23
    invoke-virtual {v5, v2, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@26
    move-result-object v5

    #@27
    return-object v5

    #@28
    .line 154
    :cond_2
    if-eqz v2, :cond_5

    #@2a
    .line 157
    sparse-switch p2, :sswitch_data_0

    #@2d
    .line 186
    new-instance v5, Ljava/io/IOException;

    #@2f
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "unknown tag "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    const-string/jumbo v7, " encountered"

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 163
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@51
    move-result-object v4

    #@52
    .line 164
    .local v4, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@55
    move-result v5

    #@56
    new-array v3, v5, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@58
    .line 166
    .local v3, "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    #@59
    .local v1, "i":I
    :goto_1
    array-length v5, v3

    #@5a
    if-eq v1, v5, :cond_3

    #@5c
    .line 168
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5f
    move-result-object v5

    #@60
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@62
    aput-object v5, v3, v1

    #@64
    .line 166
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_1

    #@67
    .line 171
    :cond_3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@69
    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@6c
    return-object v5

    #@6d
    .line 173
    .end local v1    # "i":I
    .end local v3    # "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    #@6f
    if-eqz v5, :cond_4

    #@71
    .line 175
    new-instance v5, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    #@73
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    #@76
    move-result-object v6

    #@77
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    #@7a
    return-object v5

    #@7b
    .line 179
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@82
    move-result-object v5

    #@83
    return-object v5

    #@84
    .line 182
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@87
    move-result-object v5

    #@88
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@8b
    move-result-object v5

    #@8c
    return-object v5

    #@8d
    .line 184
    :sswitch_3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@8f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@92
    move-result-object v6

    #@93
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@96
    return-object v5

    #@97
    .line 190
    :cond_5
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    #@99
    invoke-static {p2, v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9c
    move-result-object v5

    #@9d
    return-object v5

    #@9e
    .line 157
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method getLimit()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    #@2
    return v0
.end method

.method protected readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@3
    move-result v0

    #@4
    array-length v1, p1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 121
    new-instance v0, Ljava/io/EOFException;

    #@9
    const-string/jumbo v1, "EOF encountered in middle of object"

    #@c
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 117
    :cond_0
    return-void
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    #@2
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    #@3
    move-result v5

    #@4
    .line 217
    .local v5, "tag":I
    if-gtz v5, :cond_1

    #@6
    .line 219
    if-nez v5, :cond_0

    #@8
    .line 221
    new-instance v7, Ljava/io/IOException;

    #@a
    const-string/jumbo v8, "unexpected end-of-contents marker"

    #@d
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v7

    #@11
    .line 224
    :cond_0
    const/4 v7, 0x0

    #@12
    return-object v7

    #@13
    .line 230
    :cond_1
    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    #@16
    move-result v6

    #@17
    .line 232
    .local v6, "tagNo":I
    and-int/lit8 v7, v5, 0x20

    #@19
    if-eqz v7, :cond_2

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 237
    .local v2, "isConstructed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    #@1f
    move-result v3

    #@20
    .line 239
    .local v3, "length":I
    if-gez v3, :cond_6

    #@22
    .line 241
    if-nez v2, :cond_3

    #@24
    .line 243
    new-instance v7, Ljava/io/IOException;

    #@26
    const-string/jumbo v8, "indefinite length primitive encoding encountered"

    #@29
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v7

    #@2d
    .line 232
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "isConstructed":Z
    goto :goto_0

    #@2f
    .line 246
    .restart local v3    # "length":I
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@31
    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    #@33
    invoke-direct {v1, p0, v7}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    #@36
    .line 247
    .local v1, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@38
    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    #@3a
    invoke-direct {v4, v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    #@3d
    .line 249
    .local v4, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v5, 0x40

    #@3f
    if-eqz v7, :cond_4

    #@41
    .line 251
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    #@43
    invoke-direct {v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@46
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@49
    move-result-object v7

    #@4a
    return-object v7

    #@4b
    .line 254
    :cond_4
    and-int/lit16 v7, v5, 0x80

    #@4d
    if-eqz v7, :cond_5

    #@4f
    .line 256
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    #@51
    const/4 v8, 0x1

    #@52
    invoke-direct {v7, v8, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@55
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@58
    move-result-object v7

    #@59
    return-object v7

    #@5a
    .line 260
    :cond_5
    sparse-switch v6, :sswitch_data_0

    #@5d
    .line 271
    new-instance v7, Ljava/io/IOException;

    #@5f
    const-string/jumbo v8, "unknown BER object encountered"

    #@62
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v7

    #@66
    .line 263
    :sswitch_0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    #@68
    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@6b
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6e
    move-result-object v7

    #@6f
    return-object v7

    #@70
    .line 265
    :sswitch_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    #@72
    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@75
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@78
    move-result-object v7

    #@79
    return-object v7

    #@7a
    .line 267
    :sswitch_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    #@7c
    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@7f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@82
    move-result-object v7

    #@83
    return-object v7

    #@84
    .line 269
    :sswitch_3
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    #@86
    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    #@89
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8c
    move-result-object v7

    #@8d
    return-object v7

    #@8e
    .line 278
    .end local v1    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_6
    :try_start_0
    invoke-virtual {p0, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    move-result-object v7

    #@92
    return-object v7

    #@93
    .line 281
    :catch_0
    move-exception v0

    #@94
    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    #@96
    const-string/jumbo v8, "corrupted stream detected"

    #@99
    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9c
    throw v7

    #@9d
    .line 260
    nop

    #@9e
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
