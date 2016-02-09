.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 28
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@d
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 1
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 21
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    .line 19
    return-void
.end method


# virtual methods
.method public getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@b
    return-object v0
.end method
