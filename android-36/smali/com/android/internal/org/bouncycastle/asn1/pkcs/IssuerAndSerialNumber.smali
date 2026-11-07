.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuerAndSerialNumber.java"


# instance fields
.field blacklist certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "certSerialNumber"    # Ljava/math/BigInteger;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 59
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Ljava/math/BigInteger;

    .line 49
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 52
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_8

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    return-object v0

    .line 31
    :cond_8
    if-eqz p0, :cond_14

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCertificateSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 84
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
