.class public Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
.super Ljava/lang/Object;
.source "X500NameBuilder.java"


# instance fields
.field private blacklist rdns:Ljava/util/Vector;

.field private blacklist template:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 24
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 3
    .param p1, "template"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 8
    .param p1, "oids"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 106
    array-length v0, p1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 108
    .local v0, "avs":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-eq v1, v2, :cond_15

    .line 110
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 8
    .param p1, "oids"    # [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;

    .line 87
    array-length v0, p2

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 89
    .local v0, "vals":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 91
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 94
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist addMultiValuedRDN([Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 4
    .param p1, "attrTAndVs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 124
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>([Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    return-object p0
.end method

.method public blacklist addRDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 5
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    return-object p0
.end method

.method public blacklist addRDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;

    .line 48
    return-object p0
.end method

.method public blacklist addRDN(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;
    .registers 4
    .param p1, "attrTAndV"    # Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 138
    .local v0, "vals":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-eq v1, v2, :cond_19

    .line 140
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    aput-object v2, v0, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 143
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)V

    return-object v1
.end method
