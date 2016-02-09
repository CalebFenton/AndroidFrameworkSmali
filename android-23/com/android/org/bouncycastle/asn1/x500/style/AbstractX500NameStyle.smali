.class public abstract Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 2
    .param p1, "enc"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 46
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 47
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 32
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 34
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@8
    move-result-object v1

    #@9
    .line 35
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 38
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    goto :goto_0

    #@1b
    .line 41
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .locals 5
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 162
    if-eqz p1, :cond_1

    #@5
    .line 164
    array-length v1, p3

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@a
    .line 166
    aget-object v1, p3, v0

    #@c
    if-eqz v1, :cond_0

    #@e
    aget-object v1, p3, v0

    #@10
    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 168
    aput-object v2, p3, v0

    #@18
    .line 169
    return v4

    #@19
    .line 164
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 175
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "i":I
    :goto_1
    array-length v1, p3

    #@1e
    if-eq v0, v1, :cond_3

    #@20
    .line 177
    aget-object v1, p3, v0

    #@22
    if-eqz v1, :cond_2

    #@24
    aget-object v1, p3, v0

    #@26
    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 179
    aput-object v2, p3, v0

    #@2e
    .line 180
    return v4

    #@2f
    .line 175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_1

    #@32
    .line 185
    :cond_3
    return v3
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .locals 7
    .param p1, "name1"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 134
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    move-result-object v1

    #@5
    .line 135
    .local v1, "rdns1":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@8
    move-result-object v2

    #@9
    .line 137
    .local v2, "rdns2":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v4, v1

    #@a
    array-length v5, v2

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 139
    return v6

    #@e
    .line 142
    :cond_0
    const/4 v3, 0x0

    #@f
    .line 144
    .local v3, "reverse":Z
    aget-object v4, v1, v6

    #@11
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@14
    move-result-object v4

    #@15
    if-eqz v4, :cond_1

    #@17
    aget-object v4, v2, v6

    #@19
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@1c
    move-result-object v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 146
    aget-object v4, v1, v6

    #@21
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v4

    #@29
    aget-object v5, v2, v6

    #@2b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    const/4 v3, 0x0

    #@3a
    .line 149
    :cond_1
    :goto_0
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    array-length v4, v1

    #@3c
    if-eq v0, v4, :cond_4

    #@3e
    .line 151
    aget-object v4, v1, v0

    #@40
    invoke-direct {p0, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/org/bouncycastle/asn1/x500/RDN;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_3

    #@46
    .line 153
    return v6

    #@47
    .line 146
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x1

    #@48
    goto :goto_0

    #@49
    .line 149
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 157
    :cond_4
    const/4 v4, 0x1

    #@4d
    return v4
.end method

.method public calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I
    .locals 6
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 53
    const/4 v1, 0x0

    #@1
    .line 54
    .local v1, "hashCodeValue":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    move-result-object v4

    #@5
    .line 57
    .local v4, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@7
    if-eq v2, v5, :cond_2

    #@9
    .line 59
    aget-object v5, v4, v2

    #@b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 61
    aget-object v5, v4, v2

    #@13
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@16
    move-result-object v0

    #@17
    .line 63
    .local v0, "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v3, 0x0

    #@18
    .local v3, "j":I
    :goto_1
    array-length v5, v0

    #@19
    if-eq v3, v5, :cond_1

    #@1b
    .line 65
    aget-object v5, v0, v3

    #@1d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    #@24
    move-result v5

    #@25
    xor-int/2addr v1, v5

    #@26
    .line 66
    aget-object v5, v0, v3

    #@28
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    #@2f
    move-result v5

    #@30
    xor-int/2addr v1, v5

    #@31
    .line 63
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_1

    #@34
    .line 71
    .end local v0    # "atv":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v3    # "j":I
    :cond_0
    aget-object v5, v4, v2

    #@36
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    #@41
    move-result v5

    #@42
    xor-int/2addr v1, v5

    #@43
    .line 72
    aget-object v5, v4, v2

    #@45
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4c
    move-result-object v5

    #@4d
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)I

    #@50
    move-result v5

    #@51
    xor-int/2addr v1, v5

    #@52
    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 76
    :cond_2
    return v1
.end method

.method protected encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    #@2
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method protected rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z
    .locals 1
    .param p1, "rdn1"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@0
    .prologue
    .line 190
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 5
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v1

    #@c
    const/16 v2, 0x23

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 100
    const/4 v1, 0x1

    #@11
    :try_start_0
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 103
    :catch_0
    move-exception v0

    #@17
    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "can\'t recode value for oid "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    const/16 v2, 0x5c

    #@41
    if-ne v1, v2, :cond_1

    #@43
    .line 110
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@46
    move-result-object p2

    #@47
    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4a
    move-result-object v1

    #@4b
    return-object v1
.end method
