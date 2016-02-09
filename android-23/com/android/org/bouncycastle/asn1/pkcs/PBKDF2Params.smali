.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# static fields
.field private static final algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b
    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 131
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    .line 133
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@10
    .line 134
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@16
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@18
    .line 136
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 138
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    .line 140
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 142
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2c
    .line 143
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 145
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    .line 157
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    #@38
    .line 159
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3e
    .line 129
    :cond_0
    return-void

    #@3f
    .line 149
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@40
    goto :goto_0

    #@41
    .line 154
    :cond_2
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@43
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 71
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@a
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    int-to-long v2, p2

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 69
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    #@3
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    int-to-long v2, p3

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 85
    return-void
.end method

.method public constructor <init>([BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I
    .param p4, "prf"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    #@3
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    int-to-long v2, p3

    #@6
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    .line 109
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@d
    .line 104
    return-void
.end method

.method public constructor <init>([BILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "prf"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    #@3
    .line 125
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5
    .line 122
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 48
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 50
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 53
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 58
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 196
    :cond_0
    return-object v1
.end method

.method public getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    return-object v0

    #@7
    .line 221
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isDefaultPrf()Z
    .locals 2

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 231
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 233
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 238
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@20
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 246
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@28
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2b
    return-object v1

    #@2c
    .line 243
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@31
    goto :goto_0
.end method
