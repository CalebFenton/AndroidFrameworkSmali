.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addMultiValuedRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 8
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "tokenizer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    .line 165
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_10

    .line 173
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_10
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 178
    .local v1, "oids":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 182
    .local v2, "values":Ljava/util/Vector;
    :cond_1a
    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->collectAttributeTypeAndValue(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v0, :cond_1a

    .line 187
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 188
    return-void

    .line 168
    .end local v1    # "oids":Ljava/util/Vector;
    .end local v2    # "values":Ljava/util/Vector;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "badly formatted directory string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "token"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 194
    .local v0, "tokenizer":Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "typeToken":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "valueToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 198
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 201
    return-void
.end method

.method private static blacklist addRDNs(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 6
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "builder"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .param p2, "tokenizer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    .line 150
    nop

    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "token":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 152
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_19

    .line 154
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-static {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addMultiValuedRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    goto :goto_1

    .line 158
    :cond_19
    invoke-static {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_1d
    return-void
.end method

.method public static blacklist appendRDN(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .registers 7
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .line 323
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 326
    .local v0, "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    .line 328
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    array-length v3, v0

    if-eq v2, v3, :cond_20

    .line 330
    if-eqz v1, :cond_13

    .line 332
    const/4 v1, 0x0

    goto :goto_18

    .line 336
    :cond_13
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    :goto_18
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 341
    .end local v0    # "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_20
    goto :goto_2e

    .line 344
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 349
    :cond_2e
    :goto_2e
    return-void
.end method

.method public static blacklist appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 364
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :goto_1b
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    return-void
.end method

.method private static blacklist atvAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .registers 9
    .param p0, "atv1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 565
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 567
    return v0

    .line 570
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_31

    if-nez p1, :cond_a

    goto :goto_31

    .line 575
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 576
    .local v2, "o1":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 578
    .local v3, "o2":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 580
    return v1

    .line 583
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, "v2":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 588
    return v1

    .line 591
    :cond_30
    return v0

    .line 572
    .end local v2    # "o1":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "o2":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "v1":Ljava/lang/String;
    .end local v5    # "v2":Ljava/lang/String;
    :cond_31
    :goto_31
    return v1
.end method

.method public static blacklist canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 496
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1e

    .line 459
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 460
    .local v0, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    if-eqz v1, :cond_1e

    .line 462
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 466
    .end local v0    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1e
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    .line 471
    return-object p0

    .line 474
    :cond_2a
    const/4 v1, 0x0

    .local v1, "start":I
    add-int/lit8 v2, v0, -0x1

    .line 475
    .local v2, "last":I
    :goto_2d
    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-ge v1, v2, :cond_44

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_44

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_44

    .line 477
    add-int/lit8 v1, v1, 0x2

    goto :goto_2d

    .line 480
    :cond_44
    move v5, v2

    .local v5, "end":I
    add-int/lit8 v6, v1, 0x1

    .line 481
    .local v6, "first":I
    :goto_47
    if-le v5, v6, :cond_5a

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_5a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_5a

    .line 483
    add-int/lit8 v5, v5, -0x2

    goto :goto_47

    .line 486
    :cond_5a
    if-gtz v1, :cond_5e

    if-ge v5, v2, :cond_64

    .line 488
    :cond_5e
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    :cond_64
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist collectAttributeTypeAndValue(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 9
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;
    .param p3, "token"    # Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 207
    .local v0, "tokenizer":Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "typeToken":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "valueToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 211
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private static blacklist convertHex(C)I
    .registers 2
    .param p0, "c"    # C

    .line 125
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 127
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 129
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 131
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 133
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static blacklist decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;

    .line 283
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 285
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 287
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2e

    .line 289
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 292
    :cond_2e
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 293
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_3b

    .line 298
    return-object v0

    .line 295
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist decodeObject(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "oValue"    # Ljava/lang/String;

    .line 503
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 505
    :catch_f
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist findAttrNamesForOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .registers 7
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 258
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 264
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_18
    new-array v1, v0, [Ljava/lang/String;

    .line 265
    .local v1, "aliases":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 269
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 272
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "count":I
    .local v4, "count":I
    aput-object v3, v1, v0

    move v0, v4

    .line 274
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "count":I
    .restart local v0    # "count":I
    :cond_3a
    goto :goto_1f

    .line 276
    .end local v2    # "en":Ljava/util/Enumeration;
    :cond_3b
    return-object v1
.end method

.method private static blacklist isHexDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 120
    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private static blacklist nextToken(Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;
    .registers 5
    .param p0, "tokenizer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    .param p1, "expectMoreTokens"    # Z

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-ne v1, p1, :cond_d

    .line 224
    return-object v0

    .line 222
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "badly formatted directory string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8
    .param p0, "rdn1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 541
    return v2

    .line 544
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 545
    .local v0, "atvs1":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 547
    .local v1, "atvs2":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_19

    .line 549
    return v2

    .line 552
    :cond_19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v0

    if-eq v3, v4, :cond_2b

    .line 554
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 556
    return v2

    .line 552
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 560
    .end local v3    # "i":I
    :cond_2b
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist rDNsFromString(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 138
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "tokenizer":Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 141
    .local v1, "builder":Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDNs(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    .line 144
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 514
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 516
    return-object p0

    .line 519
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 521
    .local v0, "res":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    .local v1, "c1":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 526
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 527
    .local v3, "c2":C
    const/16 v4, 0x20

    if-ne v1, v4, :cond_27

    if-eq v3, v4, :cond_2b

    .line 529
    :cond_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    move v1, v3

    .line 524
    .end local v3    # "c2":C
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 534
    .end local v2    # "k":I
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist toOIDArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "oids"    # Ljava/util/Vector;

    .line 241
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 243
    .local v0, "tmp":[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    .line 245
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 248
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static blacklist toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 4
    .param p0, "values"    # Ljava/util/Vector;

    .line 229
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 231
    .local v0, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    .line 233
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 236
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "elt"    # Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 31
    return-object p0

    .line 33
    :cond_7
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1c

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1c
    const/4 v1, 0x0

    .line 39
    .local v1, "escaped":Z
    const/4 v3, 0x0

    .line 40
    .local v3, "quoted":Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 41
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 45
    .local v5, "start":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v0, :cond_3e

    .line 47
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x23

    if-ne v7, v9, :cond_3e

    .line 49
    const/4 v5, 0x2

    .line 50
    const-string v7, "\\#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_3e
    const/4 v7, 0x0

    .line 55
    .local v7, "nonWhiteSpaceEncountered":Z
    const/4 v9, 0x0

    .line 56
    .local v9, "lastEscaped":I
    const/4 v10, 0x0

    .line 58
    .local v10, "hex1":C
    move v11, v5

    .local v11, "i":I
    :goto_42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x20

    if-eq v11, v12, :cond_99

    .line 60
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 62
    .local v12, "c":C
    if-eq v12, v13, :cond_51

    .line 64
    const/4 v7, 0x1

    .line 67
    :cond_51
    if-ne v12, v2, :cond_61

    .line 69
    if-nez v1, :cond_5c

    .line 71
    if-nez v3, :cond_59

    move v13, v8

    goto :goto_5a

    :cond_59
    move v13, v6

    :goto_5a
    move v3, v13

    .end local v3    # "quoted":Z
    .local v13, "quoted":Z
    goto :goto_96

    .line 75
    .end local v13    # "quoted":Z
    .restart local v3    # "quoted":Z
    :cond_5c
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    const/4 v1, 0x0

    goto :goto_96

    .line 79
    :cond_61
    if-ne v12, v0, :cond_6d

    if-nez v1, :cond_6d

    if-nez v3, :cond_6d

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    goto :goto_96

    .line 86
    :cond_6d
    if-ne v12, v13, :cond_74

    if-nez v1, :cond_74

    if-nez v7, :cond_74

    .line 88
    goto :goto_96

    .line 90
    :cond_74
    if-eqz v1, :cond_92

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v13

    if-eqz v13, :cond_92

    .line 92
    if-eqz v10, :cond_90

    .line 94
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v13

    mul-int/lit8 v13, v13, 0x10

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v14

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    const/4 v1, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    goto :goto_96

    .line 99
    :cond_90
    move v10, v12

    .line 100
    goto :goto_96

    .line 102
    :cond_92
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    const/4 v1, 0x0

    .line 58
    .end local v12    # "c":C
    :goto_96
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 107
    .end local v11    # "i":I
    :cond_99
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_ba

    .line 109
    :goto_9f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_ba

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    if-eq v9, v0, :cond_ba

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_9f

    .line 115
    :cond_ba
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueFromHexString(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 307
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    array-length v2, v0

    if-eq v1, v2, :cond_2e

    .line 309
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 310
    .local v2, "left":C
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 312
    .local v3, "right":C
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 307
    .end local v2    # "left":C
    .end local v3    # "right":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 315
    .end local v1    # "index":I
    :cond_2e
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist valueToString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 10
    .param p0, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v0, "vBuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    const/4 v2, 0x0

    const/16 v3, 0x5c

    const/16 v4, 0x23

    if-eqz v1, :cond_2c

    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v1, :cond_2c

    .line 378
    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "v":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_28

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_28

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    .end local v1    # "v":Ljava/lang/String;
    goto :goto_41

    .line 390
    :cond_2c
    :try_start_2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v5, "DER"

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_40} :catch_a5

    .line 397
    nop

    .line 400
    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 401
    .local v1, "end":I
    const/4 v5, 0x0

    .line 403
    .local v5, "index":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-lt v6, v8, :cond_5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5c

    .line 405
    add-int/lit8 v5, v5, 0x2

    .line 408
    :cond_5c
    :goto_5c
    const-string v2, "\\"

    if-eq v5, v1, :cond_72

    .line 410
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_ae

    .line 428
    add-int/lit8 v5, v5, 0x1

    .line 429
    goto :goto_5c

    .line 421
    :sswitch_6a
    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    add-int/lit8 v5, v5, 0x2

    .line 423
    add-int/lit8 v1, v1, 0x1

    .line 424
    goto :goto_5c

    .line 434
    :cond_72
    const/4 v4, 0x0

    .line 435
    .local v4, "start":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v8, 0x20

    if-lez v6, :cond_8d

    .line 437
    :goto_7b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v4, :cond_8d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_8d

    .line 439
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v4, v4, 0x2

    goto :goto_7b

    .line 444
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v7

    .line 446
    .local v2, "endBuf":I
    :goto_92
    if-lt v2, v4, :cond_a0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_a0

    .line 448
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 449
    add-int/lit8 v2, v2, -0x1

    goto :goto_92

    .line 452
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 394
    .end local v1    # "end":I
    .end local v2    # "endBuf":I
    .end local v4    # "start":I
    .end local v5    # "index":I
    :catch_a5
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Other value has no encoded form"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_ae
    .sparse-switch
        0x22 -> :sswitch_6a
        0x2b -> :sswitch_6a
        0x2c -> :sswitch_6a
        0x3b -> :sswitch_6a
        0x3c -> :sswitch_6a
        0x3d -> :sswitch_6a
        0x3e -> :sswitch_6a
        0x5c -> :sswitch_6a
    .end sparse-switch
.end method
