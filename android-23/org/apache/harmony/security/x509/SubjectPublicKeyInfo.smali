.class public final Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private publicKey:Ljava/security/PublicKey;

.field private subjectPublicKey:[B

.field private unusedBits:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 154
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 155
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 154
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    sput-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@16
    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V

    #@4
    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V
    .locals 2
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B
    .param p3, "unused"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    #@5
    .line 68
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V
    .locals 0
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B
    .param p3, "unused"    # I
    .param p4, "encoding"    # [B

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@5
    .line 76
    iput-object p2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    #@7
    .line 77
    iput p3, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    #@9
    .line 78
    iput-object p4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    #@b
    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "algID"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "subjectPublicKey"    # [B
    .param p3, "unused"    # I
    .param p4, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    #@3
    return-void
.end method

.method private static generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 148
    :catch_0
    move-exception v1

    #@a
    .line 151
    :goto_0
    const/4 v2, 0x0

    #@b
    return-object v2

    #@c
    .line 149
    :catch_1
    move-exception v0

    #@d
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    #@c
    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    #@e
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 6

    #@0
    .prologue
    .line 110
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@2
    if-nez v4, :cond_1

    #@4
    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    #@7
    move-result-object v2

    #@8
    .line 112
    .local v2, "encoded":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@a
    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@d
    .line 115
    .local v3, "keySpec":Ljava/security/spec/KeySpec;
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@f
    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 116
    .local v0, "algName":Ljava/lang/String;
    invoke-static {v3, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    #@16
    move-result-object v4

    #@17
    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@19
    .line 122
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1b
    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 123
    .local v1, "algOid":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@21
    if-nez v4, :cond_0

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 132
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@2b
    if-nez v4, :cond_1

    #@2d
    .line 133
    new-instance v4, Lorg/apache/harmony/security/x509/X509PublicKey;

    #@2f
    iget-object v5, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    #@31
    invoke-direct {v4, v1, v2, v5}, Lorg/apache/harmony/security/x509/X509PublicKey;-><init>(Ljava/lang/String;[B[B)V

    #@34
    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@36
    .line 136
    .end local v0    # "algName":Ljava/lang/String;
    .end local v1    # "algOid":Ljava/lang/String;
    .end local v2    # "encoded":[B
    .end local v3    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@38
    return-object v4

    #@39
    .line 124
    .restart local v0    # "algName":Ljava/lang/String;
    .restart local v1    # "algOid":Ljava/lang/String;
    .restart local v2    # "encoded":[B
    .restart local v3    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    invoke-static {v3, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->generateKeyForAlgorithm(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    #@3c
    move-result-object v4

    #@3d
    iput-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    #@3f
    goto :goto_0
.end method

.method public getSubjectPublicKey()[B
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    #@2
    return-object v0
.end method
