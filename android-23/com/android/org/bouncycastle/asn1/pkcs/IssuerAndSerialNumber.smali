.class public Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@e
    .line 39
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "certSerialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@d
    .line 55
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@d
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@14
    .line 44
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 32
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCertificateSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getName()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 80
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 83
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
