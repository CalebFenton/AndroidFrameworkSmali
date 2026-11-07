.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final blacklist lazyEvaluate:Z

.field private final blacklist limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 29
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    .line 89
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;IZ[[B)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z
    .param p4, "tmpBuffers"    # [[B

    .line 93
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 95
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 96
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .line 75
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 40
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .line 52
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 53
    return-void
.end method

.method static blacklist createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    const-string v0, " encountered"

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_124

    .line 580
    :pswitch_6
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    goto/16 :goto_f3

    .line 528
    :pswitch_a
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    move-result-object v0

    return-object v0

    .line 562
    :pswitch_13
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    move-result-object v0

    return-object v0

    .line 535
    :pswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;

    move-result-object v0

    return-object v0

    .line 570
    :pswitch_25
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;

    move-result-object v0

    return-object v0

    .line 539
    :pswitch_2e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object v0

    return-object v0

    .line 537
    :pswitch_37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    return-object v0

    .line 564
    :pswitch_40
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    move-result-object v0

    return-object v0

    .line 541
    :pswitch_49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    return-object v0

    .line 568
    :pswitch_52
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;

    move-result-object v0

    return-object v0

    .line 560
    :pswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;

    move-result-object v0

    return-object v0

    .line 556
    :pswitch_64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v0

    return-object v0

    .line 547
    :pswitch_6d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    move-result-object v0

    return-object v0

    .line 578
    :pswitch_76
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "tagNo":I
    .end local p1    # "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local p2    # "tmpBuffers":[[B
    throw v1

    .line 558
    .restart local p0    # "tagNo":I
    .restart local p1    # "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local p2    # "tmpBuffers":[[B
    :pswitch_94
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object v0

    return-object v0

    .line 566
    :pswitch_9e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    return-object v0

    .line 533
    :pswitch_a7
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 549
    :pswitch_b0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    move-result-object v0

    return-object v0

    .line 552
    :pswitch_b9
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_c2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    return-object v0

    .line 554
    :pswitch_cb
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    .line 526
    :pswitch_d4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 543
    :pswitch_dd
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0

    .line 530
    :pswitch_e6
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 587
    :catch_ef
    move-exception v0

    goto :goto_10f

    .line 583
    :catch_f1
    move-exception v0

    goto :goto_119

    .line 580
    :goto_f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "tagNo":I
    .end local p1    # "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local p2    # "tmpBuffers":[[B
    throw v1
    :try_end_10f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_10f} :catch_f1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_10f} :catch_ef

    .line 589
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "tagNo":I
    .restart local p1    # "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local p2    # "tmpBuffers":[[B
    :goto_10f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_119
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_dd
        :pswitch_d4
        :pswitch_cb
        :pswitch_c2
        :pswitch_b9
        :pswitch_b0
        :pswitch_6
        :pswitch_6
        :pswitch_a7
        :pswitch_6
        :pswitch_9e
        :pswitch_94
        :pswitch_76
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6d
        :pswitch_64
        :pswitch_5b
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
        :pswitch_13
        :pswitch_6
        :pswitch_a
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 11
    .param p0, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 463
    .local v0, "remainingBytes":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_98

    .line 468
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 469
    .local v1, "string":[C
    const/4 v2, 0x0

    .line 471
    .local v2, "stringPos":I
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 472
    .local v4, "buf":[B
    :goto_11
    const-string v5, "EOF encountered in middle of BMPString"

    const/4 v6, 0x0

    if-lt v0, v3, :cond_60

    .line 474
    invoke-static {p0, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v7

    if-ne v7, v3, :cond_5a

    .line 479
    aget-byte v5, v4, v6

    shl-int/2addr v5, v3

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 480
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 481
    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x4

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 482
    add-int/lit8 v5, v2, 0x3

    const/4 v6, 0x6

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 483
    add-int/lit8 v2, v2, 0x4

    .line 484
    add-int/lit8 v0, v0, -0x8

    goto :goto_11

    .line 476
    :cond_5a
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    :cond_60
    if-lez v0, :cond_88

    .line 488
    invoke-static {p0, v4, v6, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v6, v0, :cond_82

    .line 493
    const/4 v5, 0x0

    .line 496
    .local v5, "bufPos":I
    :goto_69
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufPos":I
    .local v6, "bufPos":I
    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    .line 497
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufPos":I
    .local v7, "bufPos":I
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    .line 498
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "stringPos":I
    .local v8, "stringPos":I
    or-int v9, v5, v6

    int-to-char v9, v9

    aput-char v9, v1, v2

    .line 500
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    if-lt v7, v0, :cond_7f

    move v2, v8

    goto :goto_88

    :cond_7f
    move v5, v7

    move v2, v8

    goto :goto_69

    .line 490
    .end local v7    # "bufPos":I
    .end local v8    # "stringPos":I
    .restart local v2    # "stringPos":I
    :cond_82
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-nez v3, :cond_92

    array-length v3, v1

    if-ne v3, v2, :cond_92

    .line 508
    return-object v1

    .line 505
    :cond_92
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 465
    .end local v1    # "string":[C
    .end local v2    # "stringPos":I
    .end local v4    # "buf":[B
    :cond_98
    new-instance v1, Ljava/io/IOException;

    const-string v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 5
    .param p0, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 443
    .local v0, "len":I
    array-length v1, p1

    if-lt v0, v1, :cond_c

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 448
    :cond_c
    aget-object v1, p1, v0

    .line 449
    .local v1, "buf":[B
    if-nez v1, :cond_15

    .line 451
    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    .line 454
    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    .line 456
    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;IZ)I
    .registers 9
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .param p2, "isParsing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 392
    .local v0, "length":I
    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    .line 395
    return v0

    .line 397
    :cond_9
    const/16 v1, 0x80

    if-ne v1, v0, :cond_f

    .line 400
    const/4 v1, -0x1

    return v1

    .line 402
    :cond_f
    if-ltz v0, :cond_6c

    .line 406
    const/16 v1, 0xff

    if-eq v1, v0, :cond_64

    .line 411
    and-int/lit8 v1, v0, 0x7f

    .local v1, "octetsCount":I
    const/4 v2, 0x0

    .line 413
    .local v2, "octetsPos":I
    const/4 v0, 0x0

    .line 416
    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 417
    .local v3, "octet":I
    if-ltz v3, :cond_5c

    .line 422
    ushr-int/lit8 v4, v0, 0x17

    if-nez v4, :cond_54

    .line 427
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    .line 429
    .end local v3    # "octet":I
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_19

    .line 431
    if-lt v0, p1, :cond_53

    if-eqz p2, :cond_30

    goto :goto_53

    .line 433
    :cond_30
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupted stream - out of bounds length found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_53
    :goto_53
    return v0

    .line 424
    .restart local v3    # "octet":I
    :cond_54
    new-instance v4, Ljava/io/IOException;

    const-string v5, "long form definite-length more than 31 bits"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_5c
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    .end local v1    # "octetsCount":I
    .end local v2    # "octetsPos":I
    .end local v3    # "octet":I
    :cond_64
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid long form definite-length 0xFF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_6c
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF found when length expected"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    and-int/lit8 v0, p1, 0x1f

    .line 345
    .local v0, "tagNo":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_4c

    .line 347
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 348
    .local v2, "b":I
    const-string v3, "EOF found inside tag value."

    if-ge v2, v1, :cond_1e

    .line 350
    if-gez v2, :cond_16

    .line 352
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string v3, "corrupted stream - high tag number < 31 found"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1e
    and-int/lit8 v0, v2, 0x7f

    .line 361
    if-eqz v0, :cond_44

    .line 366
    :goto_22
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_4c

    .line 368
    ushr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_3c

    .line 373
    shl-int/lit8 v0, v0, 0x7

    .line 375
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 376
    if-ltz v2, :cond_36

    .line 381
    and-int/lit8 v1, v2, 0x7f

    or-int/2addr v0, v1

    goto :goto_22

    .line 378
    :cond_36
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_3c
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Tag number more than 31 bits"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_44
    new-instance v1, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    .end local v2    # "b":I
    :cond_4c
    return v0
.end method


# virtual methods
.method blacklist buildConstructedBitString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 8
    .param p1, "contentsElements"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 256
    .local v0, "strings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_38

    .line 258
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 259
    .local v2, "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v3, :cond_1a

    .line 261
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    aput-object v3, v0, v1

    .line 256
    .end local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 265
    .restart local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1a
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    .end local v1    # "i":I
    .end local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_38
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    return-object v1
.end method

.method blacklist buildConstructedOctetString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 8
    .param p1, "contentsElements"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 278
    .local v0, "strings":[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_38

    .line 280
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 281
    .local v2, "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_1a

    .line 283
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v0, v1

    .line 278
    .end local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 287
    .restart local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1a
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v1    # "i":I
    .end local v2    # "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_38
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v1
.end method

.method protected blacklist buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v0, p0, p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 139
    .local v0, "defIn":Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit16 v1, p1, 0xe0

    if-nez v1, :cond_12

    .line 141
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 144
    :cond_12
    and-int/lit16 v1, p1, 0xc0

    .line 145
    .local v1, "tagClass":I
    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 147
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 148
    .local v2, "isConstructed":Z
    :goto_1d
    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 151
    .end local v2    # "isConstructed":Z
    :cond_22
    sparse-switch p2, :sswitch_data_8e

    .line 184
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encountered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :sswitch_45
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    move-result-object v2

    return-object v2

    .line 166
    :sswitch_4e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-ge v3, v2, :cond_57

    .line 168
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    return-object v2

    .line 170
    :cond_57
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_65

    .line 172
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    .line 176
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object v2

    return-object v2

    .line 182
    :sswitch_6e
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    move-result-object v2

    return-object v2

    .line 162
    :sswitch_7b
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 155
    :sswitch_84
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_84
        0x4 -> :sswitch_7b
        0x8 -> :sswitch_6e
        0x10 -> :sswitch_4e
        0x11 -> :sswitch_45
    .end sparse-switch
.end method

.method blacklist getLimit()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected blacklist readFully([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_a

    .line 118
    return-void

    .line 116
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist readLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 192
    .local v0, "tag":I
    if-gtz v0, :cond_13

    .line 194
    if-eqz v0, :cond_a

    .line 199
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_13
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 203
    .local v1, "tagNo":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 205
    .local v2, "length":I
    if-ltz v2, :cond_2b

    .line 210
    :try_start_1d
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_21} :catch_22

    return-object v3

    .line 212
    :catch_22
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v5, "corrupted stream detected"

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 220
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2b
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_6d

    .line 225
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 226
    .local v3, "indIn":Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v4, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 228
    .local v4, "sp":Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit16 v5, v0, 0xc0

    .line 229
    .local v5, "tagClass":I
    if-eqz v5, :cond_48

    .line 231
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    return-object v6

    .line 234
    :cond_48
    sparse-switch v1, :sswitch_data_76

    .line 248
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "unknown BER object encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 246
    :sswitch_54
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    move-result-object v6

    return-object v6

    .line 244
    :sswitch_59
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object v6

    return-object v6

    .line 242
    :sswitch_5e
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    move-result-object v6

    return-object v6

    .line 239
    :sswitch_63
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    move-result-object v6

    return-object v6

    .line 237
    :sswitch_68
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    move-result-object v6

    return-object v6

    .line 222
    .end local v3    # "indIn":Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
    .end local v5    # "tagClass":I
    :cond_6d
    new-instance v3, Ljava/io/IOException;

    const-string v4, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_76
    .sparse-switch
        0x3 -> :sswitch_68
        0x4 -> :sswitch_63
        0x8 -> :sswitch_5e
        0x10 -> :sswitch_59
        0x11 -> :sswitch_54
    .end sparse-switch
.end method

.method blacklist readTaggedObjectDL(IIZLcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "constructed"    # Z
    .param p4, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    if-nez p3, :cond_b

    .line 301
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    .line 302
    .local v0, "contentsOctets":[B
    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 305
    .end local v0    # "contentsOctets":[B
    :cond_b
    invoke-virtual {p0, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 306
    .local v0, "contentsElements":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-static {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method blacklist readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 312
    .local v0, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_d

    .line 314
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    .line 317
    :cond_d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 320
    .local v1, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_12

    .line 323
    return-object v1
.end method

.method blacklist readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6
    .param p1, "defIn"    # Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 329
    .local v0, "remaining":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 331
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    .line 334
    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    return-object v1
.end method
