.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBEParameter.java"


# instance fields
.field iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    .line 36
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    .line 33
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
    array-length v0, p1

    #@4
    const/16 v1, 0x8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "salt length must be 8"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 28
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@13
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@18
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1a
    int-to-long v2, p2

    #@1b
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@20
    .line 22
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 46
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 51
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 68
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->salt:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBEParameter;->iterations:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 71
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@11
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@14
    return-object v1
.end method
