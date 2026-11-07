.class public Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field private blacklist name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    .registers 3
    .param p1, "certificate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 76
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 78
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .registers 3
    .param p1, "certificate"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 117
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 118
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 105
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 107
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 108
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_8

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    return-object v0

    .line 56
    :cond_8
    if-eqz p0, :cond_14

    .line 58
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 135
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 138
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
