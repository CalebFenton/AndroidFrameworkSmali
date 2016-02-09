.class public Lcom/android/org/bouncycastle/x509/X509Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509Attribute.java"


# instance fields
.field attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "at"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 26
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@9
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@c
    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@14
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@c
    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@f
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@14
    .line 52
    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    #@0
    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5
    move-result-object v1

    #@6
    .line 65
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@9
    move-result v3

    #@a
    new-array v2, v3, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    .line 67
    .local v2, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@10
    move-result v3

    #@11
    if-eq v0, v3, :cond_0

    #@13
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v2, v0

    #@19
    .line 67
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 72
    :cond_0
    return-object v2
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
