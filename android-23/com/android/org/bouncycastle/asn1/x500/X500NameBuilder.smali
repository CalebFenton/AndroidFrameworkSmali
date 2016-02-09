.class public Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
.super Ljava/lang/Object;
.source "X500NameBuilder.java"


# instance fields
.field private rdns:Ljava/util/Vector;

.field private template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V

    #@5
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 1
    .param p1, "template"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 12
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@a
    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@c
    .line 19
    return-void
.end method


# virtual methods
.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 59
    array-length v2, p1

    #@1
    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@3
    .line 61
    .local v0, "avs":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 63
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@9
    aget-object v3, p1, v1

    #@b
    aget-object v4, p2, v1

    #@d
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    aput-object v2, v0, v1

    #@12
    .line 61
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 47
    array-length v2, p2

    #@1
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    .line 49
    .local v1, "vals":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@5
    if-eq v0, v2, :cond_0

    #@7
    .line 51
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@9
    aget-object v3, p1, v0

    #@b
    aget-object v4, p2, v0

    #@d
    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 49
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 54
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public addMultiValuedRDN([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndVs"    # [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    .line 73
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    invoke-direct {v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    .line 35
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->addRDN(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;

    #@9
    .line 28
    return-object p0
.end method

.method public addRDN(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndV"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    .line 42
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 4

    #@0
    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@8
    .line 80
    .local v1, "vals":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 82
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@14
    aput-object v2, v1, v0

    #@16
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 85
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1b
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500NameBuilder;->template:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@1d
    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    #@20
    return-object v2
.end method
