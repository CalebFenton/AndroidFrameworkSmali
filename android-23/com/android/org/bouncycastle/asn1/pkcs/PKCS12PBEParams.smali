.class public Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PKCS12PBEParams.java"


# instance fields
.field iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 31
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    .line 32
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    .line 29
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "iterations"    # I

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    int-to-long v2, p2

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 22
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 40
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 47
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIterations()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 64
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iv:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 65
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 67
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
