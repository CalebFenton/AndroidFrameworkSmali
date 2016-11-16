.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private final encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .locals 2
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@7
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@10
    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 1
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 25
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Z)V

    #@4
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Z)V
    .locals 2
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "compressed"    # Z

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@b
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@14
    .line 30
    return-void
.end method


# virtual methods
.method public getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@16
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@18
    return-object v0
.end method

.method public getPointEncoding()[B
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isPointCompressed()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 68
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7
    move-result-object v0

    #@8
    .line 69
    .local v0, "octets":[B
    if-eqz v0, :cond_1

    #@a
    array-length v3, v0

    #@b
    if-lez v3, :cond_1

    #@d
    aget-byte v3, v0, v2

    #@f
    const/4 v4, 0x2

    #@10
    if-eq v3, v4, :cond_0

    #@12
    aget-byte v3, v0, v2

    #@14
    const/4 v4, 0x3

    #@15
    if-ne v3, v4, :cond_1

    #@17
    :cond_0
    :goto_0
    return v1

    #@18
    :cond_1
    move v1, v2

    #@19
    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    return-object v0
.end method
