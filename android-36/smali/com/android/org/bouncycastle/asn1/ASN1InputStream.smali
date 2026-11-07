.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"


# instance fields
.field private final blacklist lazyEvaluate:Z

.field private final blacklist limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 30
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    const/16 v0, 0xb

    .line 90
    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;IZ[[B)V
    .registers 5

    .line 95
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 97
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 98
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4

    .line 77
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 4

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static blacklist createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    const/4 v0, 0x1

    .line 526
    const-string v1, " encountered"

    packed-switch p0, :pswitch_data_118

    .line 583
    :pswitch_6
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :pswitch_20
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    move-result-object p0

    return-object p0

    .line 565
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    move-result-object p0

    return-object p0

    .line 538
    :pswitch_32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GeneralString;

    move-result-object p0

    return-object p0

    .line 573
    :pswitch_3b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1VisibleString;

    move-result-object p0

    return-object p0

    .line 542
    :pswitch_44
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    return-object p0

    .line 540
    :pswitch_4d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    return-object p0

    .line 567
    :pswitch_56
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    move-result-object p0

    return-object p0

    .line 544
    :pswitch_5f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    return-object p0

    .line 571
    :pswitch_68
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1VideotexString;

    move-result-object p0

    return-object p0

    .line 563
    :pswitch_71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1T61String;

    move-result-object p0

    return-object p0

    .line 559
    :pswitch_7a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1PrintableString;

    move-result-object p0

    return-object p0

    .line 550
    :pswitch_83
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1NumericString;

    move-result-object p0

    return-object p0

    .line 581
    :pswitch_8c
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :pswitch_a6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object p0

    return-object p0

    .line 569
    :pswitch_b0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p0

    return-object p0

    .line 536
    :pswitch_b9
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_c2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    move-result-object p0

    return-object p0

    .line 555
    :pswitch_cb
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    .line 548
    :pswitch_d4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Null;

    move-result-object p0

    return-object p0

    .line 557
    :pswitch_dd
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    .line 529
    :pswitch_e6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    .line 546
    :pswitch_ef
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    return-object p0

    .line 533
    :pswitch_f8
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p0
    :try_end_100
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_100} :catch_10c
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_100} :catch_101

    return-object p0

    :catch_101
    move-exception p0

    .line 592
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_10c
    move-exception p0

    .line 588
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_ef
        :pswitch_e6
        :pswitch_dd
        :pswitch_d4
        :pswitch_cb
        :pswitch_c2
        :pswitch_6
        :pswitch_6
        :pswitch_b9
        :pswitch_6
        :pswitch_b0
        :pswitch_a6
        :pswitch_8c
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_83
        :pswitch_7a
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
        :pswitch_6
        :pswitch_20
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 12

    .line 465
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_91

    .line 471
    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    .line 474
    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 475
    :goto_12
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_60

    .line 477
    invoke-static {p0, v4, v5, v3}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v3, :cond_5a

    .line 482
    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    .line 483
    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    .line 484
    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    .line 485
    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_12

    .line 479
    :cond_5a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    if-lez v0, :cond_82

    .line 491
    invoke-static {p0, v4, v5, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v0, :cond_7c

    :cond_68
    add-int/lit8 v7, v5, 0x1

    .line 499
    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    .line 500
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    .line 501
    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_68

    goto :goto_82

    .line 493
    :cond_7c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p0

    if-nez p0, :cond_8b

    if-ne v1, v6, :cond_8b

    return-object v2

    .line 508
    :cond_8b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 468
    :cond_91
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 4

    .line 445
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 446
    array-length v1, p1

    if-lt v0, v1, :cond_c

    .line 448
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 451
    :cond_c
    aget-object v1, p1, v0

    if-nez v1, :cond_14

    .line 454
    new-array v1, v0, [B

    aput-object v1, p1, v0

    .line 457
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;IZ)I
    .registers 8

    .line 394
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x80

    if-ne v1, v0, :cond_f

    const/4 p0, -0x1

    return p0

    :cond_f
    if-ltz v0, :cond_67

    const/16 v1, 0xff

    if-eq v1, v0, :cond_5f

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    .line 419
    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_57

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_4f

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_19

    if-lt v1, p1, :cond_4e

    if-eqz p2, :cond_2f

    goto :goto_4e

    .line 436
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    return v1

    .line 427
    :cond_4f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 422
    :cond_57
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_5f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :cond_67
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist readTagNumber(Ljava/io/InputStream;I)I
    .registers 6

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4f

    .line 350
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    .line 351
    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1d

    if-gez p1, :cond_15

    .line 355
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_47

    :goto_21
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_46

    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3e

    shl-int/lit8 p1, v0, 0x7

    .line 378
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_38

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_21

    .line 381
    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    return v0

    .line 366
    :cond_47
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    return p1
.end method


# virtual methods
.method blacklist buildConstructedBitString(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 6

    .line 257
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p0

    new-array v0, p0, [Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    :goto_7
    if-eq v1, p0, :cond_33

    .line 261
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 262
    instance-of v3, v2, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v3, :cond_18

    .line 264
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 268
    :cond_18
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_33
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERBitString;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1BitString;)V

    return-object p0
.end method

.method blacklist buildConstructedOctetString(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 6

    .line 279
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p0

    new-array v0, p0, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x0

    :goto_7
    if-eq v1, p0, :cond_33

    .line 283
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 284
    instance-of v3, v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_18

    .line 286
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 290
    :cond_18
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_33
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object p0
.end method

.method protected blacklist buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v0, p0, p3, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_12

    .line 143
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_12
    and-int/lit16 p3, p1, 0xc0

    const/4 v1, 0x1

    if-eqz p3, :cond_22

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 150
    :goto_1d
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p1, 0x3

    if-eq p2, p1, :cond_8f

    const/4 p1, 0x4

    if-eq p2, p1, :cond_86

    const/16 p1, 0x8

    if-eq p2, p1, :cond_79

    const/16 p1, 0x10

    if-eq p2, p1, :cond_59

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3d

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSet;

    move-result-object p0

    return-object p0

    .line 186
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_59
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p1

    if-ge p1, v1, :cond_62

    .line 170
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/DLSequence;

    return-object p0

    .line 172
    :cond_62
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz p1, :cond_70

    .line 174
    new-instance p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object p0

    .line 178
    :cond_70
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSequence;

    move-result-object p0

    return-object p0

    .line 184
    :cond_79
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSequence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->toASN1External()Lcom/android/org/bouncycastle/asn1/ASN1External;

    move-result-object p0

    return-object p0

    .line 164
    :cond_86
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    .line 157
    :cond_8f
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0
.end method

.method blacklist getLimit()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return p0
.end method

.method protected blacklist readLength()I
    .registers 3

    .line 109
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result p0

    return p0
.end method

.method public greylist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_12

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected end-of-contents marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_12
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    if-ltz v2, :cond_2a

    .line 213
    :try_start_1c
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 217
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2a
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_7a

    .line 228
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 229
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v3, v2, v4, p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 p0, v0, 0xc0

    if-eqz p0, :cond_47

    .line 234
    invoke-virtual {v3, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x3

    if-eq v1, p0, :cond_75

    const/4 p0, 0x4

    if-eq v1, p0, :cond_70

    const/16 p0, 0x8

    if-eq v1, p0, :cond_6b

    const/16 p0, 0x10

    if-eq v1, p0, :cond_66

    const/16 p0, 0x11

    if-ne v1, p0, :cond_5e

    .line 249
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/BERSet;

    move-result-object p0

    return-object p0

    .line 251
    :cond_5e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown BER object encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_66
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object p0

    return-object p0

    .line 245
    :cond_6b
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/DLExternal;

    move-result-object p0

    return-object p0

    .line 242
    :cond_70
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/BEROctetString;

    move-result-object p0

    return-object p0

    .line 240
    :cond_75
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/BERBitStringParser;->parse(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/org/bouncycastle/asn1/BERBitString;

    move-result-object p0

    return-object p0

    .line 225
    :cond_7a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist readTaggedObjectDL(IIZLcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    if-nez p3, :cond_b

    .line 304
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    .line 305
    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 308
    :cond_b
    invoke-virtual {p0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    .line 309
    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method blacklist readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3

    .line 314
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_d

    .line 317
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p0

    .line 320
    :cond_d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 323
    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_12

    return-object v1
.end method

.method blacklist readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 5

    .line 331
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 334
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p0

    .line 337
    :cond_e
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    return-object p0
.end method
