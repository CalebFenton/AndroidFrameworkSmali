.class public abstract Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 4
    .param p1, "enc"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 49
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method public static blacklist copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 38
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_9

    .line 44
    :cond_1b
    return-object v0
.end method

.method private blacklist foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 8
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    .line 169
    array-length v2, p3

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_1a

    .line 171
    aget-object v3, p3, v2

    if-eqz v3, :cond_17

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 173
    aput-object v0, p3, v2

    .line 174
    return v1

    .line 169
    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .end local v2    # "i":I
    :cond_1a
    goto :goto_31

    .line 180
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1c
    array-length v3, p3

    if-eq v2, v3, :cond_31

    .line 182
    aget-object v3, p3, v2

    if-eqz v3, :cond_2e

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 184
    aput-object v0, p3, v2

    .line 185
    return v1

    .line 180
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 190
    .end local v2    # "i":I
    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 12
    .param p1, "name1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 138
    return v2

    .line 141
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 142
    .local v0, "rdns1":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 144
    .local v1, "rdns2":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v3, 0x0

    .line 146
    .local v3, "reverse":Z
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 147
    .local v4, "first1":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    .line 149
    .local v5, "first2":Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v6, 0x1

    if-eqz v4, :cond_34

    if-eqz v5, :cond_34

    .line 151
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    xor-int/2addr v7, v6

    move v3, v7

    .line 154
    :cond_34
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    array-length v8, v0

    if-eq v7, v8, :cond_44

    .line 156
    aget-object v8, v0, v7

    invoke-direct {p0, v3, v8, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v8

    if-nez v8, :cond_41

    .line 158
    return v2

    .line 154
    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 162
    .end local v7    # "i":I
    :cond_44
    return v6
.end method

.method public blacklist calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I
    .registers 8
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "hashCodeValue":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 59
    .local v1, "rdns":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-eq v2, v3, :cond_56

    .line 61
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 63
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 65
    .local v3, "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_18
    array-length v5, v3

    if-eq v4, v5, :cond_34

    .line 67
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 68
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v0, v5

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 70
    .end local v3    # "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_34
    goto :goto_53

    .line 73
    :cond_35
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 74
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v0, v3

    .line 59
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 78
    .end local v2    # "i":I
    :cond_56
    return v0
.end method

.method protected blacklist encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected blacklist rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .registers 4
    .param p1, "rdn1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 195
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public blacklist stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 7
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_33

    .line 102
    :try_start_10
    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 104
    :catch_15
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :cond_33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_45

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_45
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
