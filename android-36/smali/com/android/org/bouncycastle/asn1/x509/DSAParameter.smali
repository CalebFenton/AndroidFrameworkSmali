.class public Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DSAParameter.java"


# instance fields
.field blacklist g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 64
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 67
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 68
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    .line 61
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 52
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 53
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    .registers 2

    .line 33
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    if-eqz v0, :cond_7

    .line 35
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getG()Ljava/math/BigInteger;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
