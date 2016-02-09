.class public Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "MacData.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

.field iterationCount:Ljava/math/BigInteger;

.field salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 18
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    #@8
    .line 15
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@e
    .line 44
    const/4 v0, 0x1

    #@f
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@15
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    #@1b
    .line 46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1e
    move-result v0

    #@1f
    const/4 v1, 0x3

    #@20
    if-ne v0, v1, :cond_0

    #@22
    .line 48
    const/4 v0, 0x2

    #@23
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@2f
    .line 40
    :goto_0
    return-void

    #@30
    .line 52
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    #@32
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@34
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    .locals 2
    .param p1, "digInfo"    # Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@5
    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    #@7
    .line 63
    int-to-long v0, p3

    #@8
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@e
    .line 59
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 36
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@2
    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 96
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->digInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 97
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->salt:[B

    #@e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@16
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->ONE:Ljava/math/BigInteger;

    #@18
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 101
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@20
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    #@22
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 104
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2a
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2d
    return-object v1
.end method
