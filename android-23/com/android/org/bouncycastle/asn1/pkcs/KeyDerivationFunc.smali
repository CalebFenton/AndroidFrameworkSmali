.class public Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyDerivationFunc.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "objectId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@a
    .line 17
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    .line 23
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 39
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
