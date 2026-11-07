.class public Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;
.super Ljava/lang/Object;
.source "DefaultSignedAttributeTableGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final blacklist table:Ljava/util/Hashtable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 3
    .param p1, "attributeTable"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_c

    .line 46
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    goto :goto_13

    .line 50
    :cond_c
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    .line 52
    :goto_13
    return-void
.end method

.method private static blacklist copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .line 122
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 124
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 125
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_9

    .line 131
    :cond_1b
    return-object v0
.end method


# virtual methods
.method protected blacklist createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;
    .registers 10
    .param p1, "parameters"    # Ljava/util/Map;

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 69
    .local v0, "std":Ljava/util/Hashtable;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 71
    nop

    .line 72
    const-string v1, "contentType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 75
    .local v1, "contentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v1, :cond_2e

    .line 77
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 79
    .local v2, "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v1    # "contentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_2e
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 85
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 86
    .local v1, "signingTime":Ljava/util/Date;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;-><init>(Ljava/util/Date;)V

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 88
    .restart local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v1    # "signingTime":Ljava/util/Date;
    .end local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_53
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 93
    const-string v1, "digest"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 95
    .local v1, "messageDigest":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 97
    .restart local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "messageDigest":[B
    .end local v2    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_7b
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 102
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    .line 103
    const-string v5, "digestAlgID"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 104
    const-string/jumbo v6, "signatureAlgID"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;ILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 105
    .local v1, "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v1    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_ad
    return-object v0
.end method

.method public blacklist getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 4
    .param p1, "parameters"    # Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
