.class public abstract Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method private static blacklist addMultiValuedRDN(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 6

    .line 165
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 171
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_10

    .line 173
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_10
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 178
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 182
    :cond_1a
    invoke-static {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->collectAttributeTypeAndValue(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 187
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    return-void

    .line 168
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist addRDN(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V
    .registers 5

    .line 192
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    const/4 p2, 0x1

    .line 194
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 195
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    .line 198
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-virtual {p1, p0, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    return-void
.end method

.method private static blacklist addRDNs(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V
    .registers 6

    .line 150
    :goto_0
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x2b

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_17

    .line 154
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-static {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->addMultiValuedRDN(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    goto :goto_0

    .line 158
    :cond_17
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDN(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1b
    return-void
.end method

.method public static blacklist appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .registers 7

    .line 323
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 325
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 328
    :goto_d
    array-length v3, p1

    if-eq v2, v3, :cond_2e

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_19

    :cond_14
    const/16 v3, 0x2b

    .line 336
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    :goto_19
    aget-object v3, p1, v2

    invoke-static {p0, v3, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 344
    :cond_21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 346
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    :cond_2e
    return-void
.end method

.method public static blacklist appendTypeAndValue(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .registers 4

    .line 356
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_10

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 364
    :cond_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b
    const/16 p2, 0x3d

    .line 367
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static blacklist atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_31

    if-nez p1, :cond_a

    goto :goto_31

    .line 575
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 576
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 578
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 583
    :cond_19
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public static blacklist canonicalString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 1

    .line 496
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1d

    .line 459
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 460
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v2, :cond_1d

    .line 462
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 466
    :cond_1d
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_29

    return-object p0

    :cond_29
    add-int/lit8 v0, v0, -0x1

    :goto_2b
    const/16 v2, 0x20

    const/16 v3, 0x5c

    if-ge v1, v0, :cond_42

    .line 475
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_42

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_42

    add-int/lit8 v1, v1, 0x2

    goto :goto_2b

    :cond_42
    add-int/lit8 v4, v1, 0x1

    move v5, v0

    :goto_45
    if-le v5, v4, :cond_58

    add-int/lit8 v6, v5, -0x1

    .line 481
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_58

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_58

    add-int/lit8 v5, v5, -0x2

    goto :goto_45

    :cond_58
    if-gtz v1, :cond_5c

    if-ge v5, v0, :cond_62

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    .line 488
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    :cond_62
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist collectAttributeTypeAndValue(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 6

    .line 205
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p3, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    const/4 p3, 0x1

    .line 207
    invoke-static {v0, p3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 208
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->nextToken(Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    .line 211
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 213
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static blacklist convertHex(C)I
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x66

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    add-int/lit8 p0, p0, -0x37

    return p0
.end method

.method public static blacklist decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 283
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 285
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_17
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2e

    .line 289
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 292
    :cond_2e
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p1, :cond_3b

    return-object p1

    .line 295
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown object id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - passed to distinguished name"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 503
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown encoding in name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isHexDigit(C)Z
    .registers 2

    .line 0
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
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist nextToken(Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;Z)Ljava/lang/String;
    .registers 3

    .line 219
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 220
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result p0

    if-ne p0, p1, :cond_d

    return-object v0

    .line 222
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 6

    .line 539
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 544
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p0

    .line 545
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p1

    .line 547
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_19

    return v2

    :cond_19
    move v0, v2

    .line 552
    :goto_1a
    array-length v1, p0

    if-eq v0, v1, :cond_2b

    .line 554
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 3

    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 141
    invoke-static {p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->addRDNs(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;Lcom/android/org/bouncycastle/asn1/x500/style/X500NameTokenizer;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 514
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    return-object p0

    .line 519
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 521
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .line 524
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 526
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v1, v4, :cond_27

    if-eq v3, v4, :cond_2b

    .line 529
    :cond_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 534
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist toOIDArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 241
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_14

    .line 245
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-object v1
.end method

.method private static blacklist toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .registers 5

    .line 229
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_14

    .line 233
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-object v1
.end method

.method private static blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x5c

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1c

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_3c

    .line 47
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_3c

    .line 50
    const-string v4, "\\#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    goto :goto_3d

    :cond_3c
    move v4, v3

    :goto_3d
    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    .line 58
    :goto_42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-eq v4, v11, :cond_95

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v12, :cond_51

    move v9, v5

    :cond_51
    if-ne v11, v2, :cond_5d

    if-nez v6, :cond_58

    xor-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 75
    :cond_58
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5b
    move v6, v3

    goto :goto_92

    :cond_5d
    if-ne v11, v0, :cond_69

    if-nez v6, :cond_69

    if-nez v8, :cond_69

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move v6, v5

    goto :goto_92

    :cond_69
    if-ne v11, v12, :cond_70

    if-nez v6, :cond_70

    if-nez v9, :cond_70

    goto :goto_92

    :cond_70
    if-eqz v6, :cond_8e

    .line 90
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v12

    if-eqz v12, :cond_8e

    if-eqz v10, :cond_8c

    .line 94
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v10

    add-int/2addr v6, v10

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v3

    move v10, v6

    goto :goto_92

    :cond_8c
    move v10, v11

    goto :goto_92

    .line 102
    :cond_8e
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    :goto_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 107
    :cond_95
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_b6

    .line 109
    :goto_9b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v12, :cond_b6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    if-eq v7, p0, :cond_b6

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_9b

    .line 115
    :cond_b6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 7

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_a
    if-eq v2, v0, :cond_2a

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    .line 309
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 310
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 312
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 315
    :cond_2a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 9

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    const/16 v2, 0x23

    const/16 v3, 0x5c

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v1, :cond_2b

    .line 378
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_27

    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    :cond_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 390
    :cond_2b
    :try_start_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3f} :catch_af

    .line 400
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_58

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_58

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_58

    goto :goto_59

    :cond_58
    move v6, v4

    .line 408
    :goto_59
    const-string v1, "\\"

    if-eq v6, p0, :cond_7d

    .line 410
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_75

    if-eq v2, v3, :cond_75

    const/16 v7, 0x2b

    if-eq v2, v7, :cond_75

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_75

    packed-switch v2, :pswitch_data_b8

    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 421
    :cond_75
    :pswitch_75
    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 p0, p0, 0x1

    goto :goto_59

    .line 435
    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 v2, 0x20

    if-lez p0, :cond_97

    .line 437
    :goto_85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-le p0, v4, :cond_97

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_97

    .line 439
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto :goto_85

    .line 444
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_9c
    if-lt p0, v4, :cond_aa

    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_aa

    .line 448
    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x1

    goto :goto_9c

    .line 452
    :cond_aa
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 396
    :catch_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other value has no encoded form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_b8
    .packed-switch 0x3b
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method
