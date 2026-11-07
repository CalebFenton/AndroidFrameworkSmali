.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private blacklist c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private final blacklist encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    .line 44
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 37
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Z)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_1a

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1e

    .line 59
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_18

    monitor-exit p0

    return-object v0

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_18

    throw v0
.end method

.method public blacklist getPointEncoding()[B
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isPointCompressed()Z
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 65
    array-length v1, p0

    if-lez v1, :cond_16

    aget-byte p0, p0, v0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-ne p0, v1, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method
