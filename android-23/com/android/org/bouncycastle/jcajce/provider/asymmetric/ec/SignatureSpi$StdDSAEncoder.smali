.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;
.super Ljava/lang/Object;
.source "SignatureSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 322
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .line 323
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x2

    #@9
    new-array v1, v2, [Ljava/math/BigInteger;

    #@b
    .line 325
    .local v1, "sig":[Ljava/math/BigInteger;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e
    move-result-object v2

    #@f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v1, v3

    #@19
    .line 326
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v1, v4

    #@27
    .line 328
    return-object v1
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 312
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    .line 313
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 315
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@17
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@1a
    const-string/jumbo v2, "DER"

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method
