.class public Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field private name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field private serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 68
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@e
    .line 69
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 1
    .param p1, "certificate"    # Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 75
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@9
    .line 76
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .locals 1
    .param p1, "certificate"    # Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@9
    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 115
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@9
    .line 116
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 104
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@9
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@10
    .line 102
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 52
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 59
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getName()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 131
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 133
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 134
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 136
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
