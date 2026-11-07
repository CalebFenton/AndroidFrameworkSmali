.class public Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "MacData.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field blacklist digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

.field blacklist iterationCount:Ljava/math/BigInteger;

.field blacklist salt:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    const/4 v0, 0x2

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    return-void

    .line 57
    :cond_38
    sget-object p1, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    .line 67
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    int-to-long p1, p3

    .line 68
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .registers 2

    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    if-eqz v0, :cond_7

    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIterationCount()Ljava/math/BigInteger;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    return-object p0
.end method

.method public blacklist getSalt()[B
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 106
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_29
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
