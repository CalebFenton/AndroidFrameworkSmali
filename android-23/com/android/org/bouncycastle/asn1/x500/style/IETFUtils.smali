.class public Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 306
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@9
    move-result-object v0

    #@a
    .line 307
    .local v0, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    #@b
    .line 309
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    #@c
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    #@d
    if-eq v2, v3, :cond_2

    #@f
    .line 311
    if-eqz v1, :cond_0

    #@11
    .line 313
    const/4 v1, 0x0

    #@12
    .line 320
    :goto_1
    aget-object v3, v0, v2

    #@14
    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    #@17
    .line 309
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 317
    :cond_0
    const/16 v3, 0x2b

    #@1c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1f
    goto :goto_1

    #@20
    .line 325
    .end local v0    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@23
    move-result-object v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 327
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@29
    move-result-object v3

    #@2a
    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    #@2d
    .line 302
    :cond_2
    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    .line 339
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 348
    :goto_0
    const/16 v1, 0x3d

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    .line 350
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 335
    return-void

    #@20
    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_0
.end method

.method private static atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .locals 7
    .param p0, "atv1"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 562
    if-ne p0, p1, :cond_0

    #@4
    .line 564
    return v6

    #@5
    .line 567
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 569
    return v5

    #@8
    .line 572
    :cond_1
    if-nez p1, :cond_2

    #@a
    .line 574
    return v5

    #@b
    .line 577
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    move-result-object v0

    #@f
    .line 578
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    move-result-object v1

    #@13
    .line 580
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-nez v4, :cond_3

    #@19
    .line 582
    return v5

    #@1a
    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 586
    .local v2, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 588
    .local v3, "v2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_4

    #@38
    .line 590
    return v5

    #@39
    .line 593
    :cond_4
    return v6
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 432
    array-length v2, p0

    #@1
    new-array v0, v2, [C

    #@3
    .line 434
    .local v0, "cs":[C
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 436
    aget-byte v2, p0, v1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    int-to-char v2, v2

    #@c
    aput-char v2, v0, v1

    #@e
    .line 434
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 439
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@13
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@16
    return-object v2
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x5c

    #@2
    const/16 v6, 0x20

    #@4
    const/4 v5, 0x0

    #@5
    .line 444
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 446
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    if-lez v4, :cond_0

    #@f
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v4

    #@13
    const/16 v5, 0x23

    #@15
    if-ne v4, v5, :cond_0

    #@17
    .line 448
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v1

    #@1b
    .line 450
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v4, v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 452
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@21
    .end local v1    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 456
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    const/4 v5, 0x1

    #@2e
    if-le v4, v5, :cond_4

    #@30
    .line 458
    const/4 v2, 0x0

    #@31
    .line 459
    .local v2, "start":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    #@33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@36
    move-result v5

    #@37
    if-ge v4, v5, :cond_1

    #@39
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v4

    #@3d
    if-ne v4, v7, :cond_1

    #@3f
    add-int/lit8 v4, v2, 0x1

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v4

    #@45
    if-ne v4, v6, :cond_1

    #@47
    .line 461
    add-int/lit8 v2, v2, 0x2

    #@49
    goto :goto_0

    #@4a
    .line 464
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4d
    move-result v4

    #@4e
    add-int/lit8 v0, v4, -0x1

    #@50
    .line 465
    .local v0, "end":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    #@52
    if-lez v4, :cond_2

    #@54
    add-int/lit8 v4, v0, -0x1

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v4

    #@5a
    if-ne v4, v7, :cond_2

    #@5c
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@5f
    move-result v4

    #@60
    if-ne v4, v6, :cond_2

    #@62
    .line 467
    add-int/lit8 v0, v0, -0x2

    #@64
    goto :goto_1

    #@65
    .line 470
    :cond_2
    if-gtz v2, :cond_3

    #@67
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6a
    move-result v4

    #@6b
    add-int/lit8 v4, v4, -0x1

    #@6d
    if-ge v0, v4, :cond_4

    #@6f
    .line 472
    :cond_3
    add-int/lit8 v4, v0, 0x1

    #@71
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    .line 476
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_4
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 478
    return-object v3
.end method

.method private static convertHex(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 118
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 120
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 122
    :cond_0
    const/16 v0, 0x61

    #@d
    if-gt v0, p0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 124
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 126
    :cond_1
    add-int/lit8 v0, p0, -0x41

    #@1a
    add-int/lit8 v0, v0, 0xa

    #@1c
    return v0
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 264
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string/jumbo v2, "OID."

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 266
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    const/4 v2, 0x4

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@18
    return-object v1

    #@19
    .line 268
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v1

    #@1d
    const/16 v2, 0x30

    #@1f
    if-lt v1, v2, :cond_1

    #@21
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v1

    #@25
    const/16 v2, 0x39

    #@27
    if-gt v1, v2, :cond_1

    #@29
    .line 270
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@2e
    return-object v1

    #@2f
    .line 273
    :cond_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    .line 274
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    #@3b
    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Unknown object id - "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, " - passed to distinguished name"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v1

    #@5c
    .line 279
    :cond_2
    return-object v0
.end method

.method private static decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "oValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 488
    :catch_0
    move-exception v0

    #@f
    .line 489
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "unknown encoding in name: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public static findAttrNamesForOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 6
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 236
    const/4 v1, 0x0

    #@1
    .line 237
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@4
    move-result-object v3

    #@5
    .local v3, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 241
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 245
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    #@1a
    .line 246
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    #@1b
    .line 248
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@1e
    move-result-object v3

    #@1f
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_3

    #@25
    .line 250
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Ljava/lang/String;

    #@2b
    .line 251
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_2

    #@35
    .line 253
    add-int/lit8 v2, v1, 0x1

    #@37
    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v0, v1

    #@39
    move v1, v2

    #@3a
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    #@3b
    .line 257
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static isHexDigit(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 113
    const/16 v2, 0x30

    #@4
    if-gt v2, p0, :cond_1

    #@6
    const/16 v2, 0x39

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x61

    #@d
    if-gt v2, p0, :cond_2

    #@f
    const/16 v2, 0x66

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    const/16 v2, 0x41

    #@15
    if-gt v2, p0, :cond_3

    #@17
    const/16 v2, 0x46

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public static rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .locals 6
    .param p0, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 520
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 522
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 524
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@10
    move-result-object v0

    #@11
    .line 525
    .local v0, "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@14
    move-result-object v1

    #@15
    .line 527
    .local v1, "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    array-length v3, v0

    #@16
    array-length v4, v1

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 529
    return v5

    #@1a
    .line 532
    :cond_0
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@1c
    if-eq v2, v3, :cond_5

    #@1e
    .line 534
    aget-object v3, v0, v2

    #@20
    aget-object v4, v1, v2

    #@22
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    .line 536
    return v5

    #@29
    .line 532
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 542
    .end local v0    # "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "i":I
    :cond_2
    return v5

    #@2d
    .line 547
    :cond_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_4

    #@33
    .line 549
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    #@3e
    move-result v3

    #@3f
    return v3

    #@40
    .line 553
    :cond_4
    return v5

    #@41
    .line 557
    .restart local v0    # "atvs1":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v1    # "atvs2":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v2    # "i":I
    :cond_5
    const/4 v3, 0x1

    #@42
    return v3
.end method

.method public static rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@0
    .prologue
    const/16 v13, 0x2b

    #@2
    const/16 v12, 0x3d

    #@4
    .line 131
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    #@6
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    #@9
    .line 132
    .local v2, "nTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@b
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    #@e
    .line 134
    .local v1, "builder":Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    :goto_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_6

    #@14
    .line 136
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 138
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    #@1b
    move-result v10

    #@1c
    if-lez v10, :cond_4

    #@1e
    .line 140
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    #@20
    invoke-direct {v5, v6, v13}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@23
    .line 141
    .local v5, "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    #@25
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@28
    move-result-object v10

    #@29
    invoke-direct {v7, v10, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@2c
    .line 143
    .local v7, "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 145
    .local v0, "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@33
    move-result v10

    #@34
    if-nez v10, :cond_0

    #@36
    .line 147
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v11, "badly formatted directory string"

    #@3b
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v10

    #@3f
    .line 150
    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    .line 151
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    move-result-object v3

    #@4b
    .line 153
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@4e
    move-result v10

    #@4f
    if-eqz v10, :cond_3

    #@51
    .line 155
    new-instance v4, Ljava/util/Vector;

    #@53
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@56
    .line 156
    .local v4, "oids":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    #@58
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    #@5b
    .line 158
    .local v9, "values":Ljava/util/Vector;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5e
    .line 159
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@65
    .line 161
    :goto_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@68
    move-result v10

    #@69
    if-eqz v10, :cond_2

    #@6b
    .line 163
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    #@6d
    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    invoke-direct {v7, v10, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@74
    .line 165
    .restart local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    .line 167
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@7b
    move-result v10

    #@7c
    if-nez v10, :cond_1

    #@7e
    .line 169
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v11, "badly formatted directory string"

    #@83
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v10

    #@87
    .line 172
    :cond_1
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@92
    move-result-object v3

    #@93
    .line 176
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@96
    .line 177
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@9d
    goto :goto_1

    #@9e
    .line 180
    :cond_2
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a1
    move-result-object v10

    #@a2
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    invoke-virtual {v1, v10, v11}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@a9
    goto/16 :goto_0

    #@ab
    .line 184
    .end local v4    # "oids":Ljava/util/Vector;
    .end local v9    # "values":Ljava/util/Vector;
    :cond_3
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    invoke-virtual {v1, v3, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@b2
    goto/16 :goto_0

    #@b4
    .line 189
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "pTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    #@b6
    invoke-direct {v7, v6, v12}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@b9
    .line 191
    .restart local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    .line 193
    .restart local v0    # "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    #@c0
    move-result v10

    #@c1
    if-nez v10, :cond_5

    #@c3
    .line 195
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@c5
    const-string/jumbo v11, "badly formatted directory string"

    #@c8
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v10

    #@cc
    .line 198
    :cond_5
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    .line 199
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d3
    move-result-object v10

    #@d4
    invoke-interface {p1, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d7
    move-result-object v3

    #@d8
    .line 201
    .restart local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@db
    move-result-object v10

    #@dc
    invoke-virtual {v1, v3, v10}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@df
    goto/16 :goto_0

    #@e1
    .line 205
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "vTok":Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@e4
    move-result-object v10

    #@e5
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@e8
    move-result-object v10

    #@e9
    return-object v10
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v5, 0x0

    #@3
    .line 496
    new-instance v3, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 498
    .local v3, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 500
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 502
    .local v0, "c1":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 504
    const/4 v2, 0x1

    #@16
    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-ge v2, v4, :cond_2

    #@1c
    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 507
    .local v1, "c2":C
    if-ne v0, v6, :cond_0

    #@22
    if-eq v1, v6, :cond_1

    #@24
    .line 509
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    .line 511
    :cond_1
    move v0, v1

    #@28
    .line 504
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 515
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "oids"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 224
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 226
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    aput-object v2, v1, v0

    #@12
    .line 224
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 229
    :cond_0
    return-object v1
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 212
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 214
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    aput-object v2, v1, v0

    #@12
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 217
    :cond_0
    return-object v1
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "elt"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v14, 0x22

    #@2
    const/16 v13, 0x5c

    #@4
    const/16 v12, 0x20

    #@6
    const/4 v11, 0x0

    #@7
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v10

    #@b
    if-eqz v10, :cond_0

    #@d
    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v10

    #@11
    if-gez v10, :cond_1

    #@13
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v10

    #@17
    if-gez v10, :cond_1

    #@19
    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    return-object v10

    #@1e
    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@21
    move-result-object v2

    #@22
    .line 31
    .local v2, "elts":[C
    const/4 v3, 0x0

    #@23
    .line 32
    .local v3, "escaped":Z
    const/4 v8, 0x0

    #@24
    .line 33
    .local v8, "quoted":Z
    new-instance v0, Ljava/lang/StringBuffer;

    #@26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@29
    move-result v10

    #@2a
    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2d
    .line 34
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    #@2e
    .line 38
    .local v9, "start":I
    aget-char v10, v2, v11

    #@30
    if-ne v10, v13, :cond_2

    #@32
    .line 40
    const/4 v10, 0x1

    #@33
    aget-char v10, v2, v10

    #@35
    const/16 v11, 0x23

    #@37
    if-ne v10, v11, :cond_2

    #@39
    .line 42
    const/4 v9, 0x2

    #@3a
    .line 43
    const-string/jumbo v10, "\\#"

    #@3d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 47
    :cond_2
    const/4 v7, 0x0

    #@41
    .line 48
    .local v7, "nonWhiteSpaceEncountered":Z
    const/4 v6, 0x0

    #@42
    .line 49
    .local v6, "lastEscaped":I
    const/4 v4, 0x0

    #@43
    .line 51
    .local v4, "hex1":C
    move v5, v9

    #@44
    .end local v4    # "hex1":C
    .local v5, "i":I
    :goto_0
    array-length v10, v2

    #@45
    if-eq v5, v10, :cond_e

    #@47
    .line 53
    aget-char v1, v2, v5

    #@49
    .line 55
    .local v1, "c":C
    if-eq v1, v12, :cond_3

    #@4b
    .line 57
    const/4 v7, 0x1

    #@4c
    .line 60
    :cond_3
    if-ne v1, v14, :cond_7

    #@4e
    .line 62
    if-nez v3, :cond_6

    #@50
    .line 64
    if-eqz v8, :cond_5

    #@52
    const/4 v8, 0x0

    #@53
    .line 70
    :goto_1
    const/4 v3, 0x0

    #@54
    .line 51
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@56
    goto :goto_0

    #@57
    .line 64
    :cond_5
    const/4 v8, 0x1

    #@58
    goto :goto_1

    #@59
    .line 68
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5c
    goto :goto_1

    #@5d
    .line 72
    :cond_7
    if-ne v1, v13, :cond_8

    #@5f
    if-nez v3, :cond_8

    #@61
    if-eqz v8, :cond_a

    #@63
    .line 79
    :cond_8
    if-ne v1, v12, :cond_9

    #@65
    if-eqz v3, :cond_b

    #@67
    .line 83
    :cond_9
    :goto_3
    if-eqz v3, :cond_d

    #@69
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    #@6c
    move-result v10

    #@6d
    if-eqz v10, :cond_d

    #@6f
    .line 85
    if-eqz v4, :cond_c

    #@71
    .line 87
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    #@74
    move-result v10

    #@75
    mul-int/lit8 v10, v10, 0x10

    #@77
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    #@7a
    move-result v11

    #@7b
    add-int/2addr v10, v11

    #@7c
    int-to-char v10, v10

    #@7d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@80
    .line 88
    const/4 v3, 0x0

    #@81
    .line 89
    const/4 v4, 0x0

    #@82
    .line 90
    .restart local v4    # "hex1":C
    goto :goto_2

    #@83
    .line 74
    .end local v4    # "hex1":C
    :cond_a
    const/4 v3, 0x1

    #@84
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@87
    move-result v6

    #@88
    goto :goto_2

    #@89
    .line 79
    :cond_b
    if-eqz v7, :cond_4

    #@8b
    goto :goto_3

    #@8c
    .line 92
    :cond_c
    move v4, v1

    #@8d
    .line 93
    .local v4, "hex1":C
    goto :goto_2

    #@8e
    .line 95
    .end local v4    # "hex1":C
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@91
    .line 96
    const/4 v3, 0x0

    #@92
    goto :goto_2

    #@93
    .line 100
    .end local v1    # "c":C
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@96
    move-result v10

    #@97
    if-lez v10, :cond_f

    #@99
    .line 102
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@9c
    move-result v10

    #@9d
    add-int/lit8 v10, v10, -0x1

    #@9f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    #@a2
    move-result v10

    #@a3
    if-ne v10, v12, :cond_f

    #@a5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@a8
    move-result v10

    #@a9
    add-int/lit8 v10, v10, -0x1

    #@ab
    if-eq v6, v10, :cond_f

    #@ad
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@b0
    move-result v10

    #@b1
    add-int/lit8 v10, v10, -0x1

    #@b3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    #@b6
    goto :goto_4

    #@b7
    .line 108
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ba
    move-result-object v10

    #@bb
    return-object v10
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    sub-int/2addr v4, p1

    #@5
    div-int/lit8 v4, v4, 0x2

    #@7
    new-array v0, v4, [B

    #@9
    .line 288
    .local v0, "data":[B
    const/4 v1, 0x0

    #@a
    .local v1, "index":I
    :goto_0
    array-length v4, v0

    #@b
    if-eq v1, v4, :cond_0

    #@d
    .line 290
    mul-int/lit8 v4, v1, 0x2

    #@f
    add-int/2addr v4, p1

    #@10
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    .line 291
    .local v2, "left":C
    mul-int/lit8 v4, v1, 0x2

    #@16
    add-int/2addr v4, p1

    #@17
    add-int/lit8 v4, v4, 0x1

    #@19
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    .line 293
    .local v3, "right":C
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    #@20
    move-result v4

    #@21
    shl-int/lit8 v4, v4, 0x4

    #@23
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    #@26
    move-result v5

    #@27
    or-int/2addr v4, v5

    #@28
    int-to-byte v4, v4

    #@29
    aput-byte v4, v0, v1

    #@2b
    .line 288
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 296
    .end local v2    # "left":C
    .end local v3    # "right":C
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@31
    move-result-object v4

    #@32
    return-object v4
.end method

.method public static valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/16 v13, 0x23

    #@2
    const/16 v12, 0x20

    #@4
    const/16 v11, 0x5c

    #@6
    const/4 v10, 0x0

    #@7
    .line 355
    new-instance v6, Ljava/lang/StringBuffer;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@c
    .line 357
    .local v6, "vBuf":Ljava/lang/StringBuffer;
    instance-of v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@e
    if-eqz v7, :cond_0

    #@10
    instance-of v7, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@12
    if-eqz v7, :cond_4

    #@14
    .line 373
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v8, "#"

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@23
    move-result-object v8

    #@24
    const-string/jumbo v9, "DER"

    #@27
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@2a
    move-result-object v8

    #@2b
    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 381
    .end local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@41
    move-result v1

    #@42
    .line 382
    .local v1, "end":I
    const/4 v3, 0x0

    #@43
    .line 384
    .local v3, "index":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@46
    move-result v7

    #@47
    const/4 v8, 0x2

    #@48
    if-lt v7, v8, :cond_1

    #@4a
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    #@4d
    move-result v7

    #@4e
    if-ne v7, v11, :cond_1

    #@50
    const/4 v7, 0x1

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    #@54
    move-result v7

    #@55
    if-ne v7, v13, :cond_1

    #@57
    .line 386
    const/4 v3, 0x2

    #@58
    .line 389
    :cond_1
    :goto_1
    if-eq v3, v1, :cond_7

    #@5a
    .line 391
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5d
    move-result v7

    #@5e
    const/16 v8, 0x2c

    #@60
    if-eq v7, v8, :cond_2

    #@62
    .line 392
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@65
    move-result v7

    #@66
    const/16 v8, 0x22

    #@68
    if-ne v7, v8, :cond_6

    #@6a
    .line 400
    :cond_2
    :goto_2
    const-string/jumbo v7, "\\"

    #@6d
    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    .line 401
    add-int/lit8 v3, v3, 0x1

    #@72
    .line 402
    add-int/lit8 v1, v1, 0x1

    #@74
    .line 405
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_1

    #@77
    .line 359
    .end local v1    # "end":I
    .end local v3    # "index":I
    .restart local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_4
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@79
    .end local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    .line 360
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@80
    move-result v7

    #@81
    if-lez v7, :cond_5

    #@83
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    #@86
    move-result v7

    #@87
    if-ne v7, v13, :cond_5

    #@89
    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v8, "\\"

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a0
    goto :goto_0

    #@a1
    .line 366
    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    goto :goto_0

    #@a5
    .line 376
    .end local v5    # "v":Ljava/lang/String;
    .restart local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    #@a6
    .line 377
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@a8
    const-string/jumbo v8, "Other value has no encoded form"

    #@ab
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v7

    #@af
    .line 393
    .end local v0    # "e":Ljava/io/IOException;
    .end local p0    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v1    # "end":I
    .restart local v3    # "index":I
    :cond_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@b2
    move-result v7

    #@b3
    if-eq v7, v11, :cond_2

    #@b5
    .line 394
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@b8
    move-result v7

    #@b9
    const/16 v8, 0x2b

    #@bb
    if-eq v7, v8, :cond_2

    #@bd
    .line 395
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@c0
    move-result v7

    #@c1
    const/16 v8, 0x3d

    #@c3
    if-eq v7, v8, :cond_2

    #@c5
    .line 396
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@c8
    move-result v7

    #@c9
    const/16 v8, 0x3c

    #@cb
    if-eq v7, v8, :cond_2

    #@cd
    .line 397
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@d0
    move-result v7

    #@d1
    const/16 v8, 0x3e

    #@d3
    if-eq v7, v8, :cond_2

    #@d5
    .line 398
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@d8
    move-result v7

    #@d9
    const/16 v8, 0x3b

    #@db
    if-ne v7, v8, :cond_3

    #@dd
    goto :goto_2

    #@de
    .line 408
    :cond_7
    const/4 v4, 0x0

    #@df
    .line 409
    .local v4, "start":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@e2
    move-result v7

    #@e3
    if-lez v7, :cond_8

    #@e5
    .line 411
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@e8
    move-result v7

    #@e9
    if-le v7, v4, :cond_8

    #@eb
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@ee
    move-result v7

    #@ef
    if-ne v7, v12, :cond_8

    #@f1
    .line 413
    const-string/jumbo v7, "\\"

    #@f4
    invoke-virtual {v6, v4, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@f7
    .line 414
    add-int/lit8 v4, v4, 0x2

    #@f9
    goto :goto_3

    #@fa
    .line 418
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@fd
    move-result v7

    #@fe
    add-int/lit8 v2, v7, -0x1

    #@100
    .line 420
    .local v2, "endBuf":I
    :goto_4
    if-ltz v2, :cond_9

    #@102
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@105
    move-result v7

    #@106
    if-ne v7, v12, :cond_9

    #@108
    .line 422
    invoke-virtual {v6, v2, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@10b
    .line 423
    add-int/lit8 v2, v2, -0x1

    #@10d
    goto :goto_4

    #@10e
    .line 426
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@111
    move-result-object v7

    #@112
    return-object v7
.end method
