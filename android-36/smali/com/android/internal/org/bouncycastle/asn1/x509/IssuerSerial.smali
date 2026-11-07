.class public Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuerSerial.java"


# instance fields
.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist issuerUID:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field blacklist serial:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_2f

    .line 54
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_55

    .line 62
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 64
    :cond_55
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 3
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serial"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 85
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serial"    # Ljava/math/BigInteger;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    .line 78
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_8

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0

    .line 34
    :cond_8
    if-eqz p0, :cond_14

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 39
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getIssuerUID()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public blacklist getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 117
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->serial:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_19

    .line 122
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->issuerUID:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 125
    :cond_19
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
