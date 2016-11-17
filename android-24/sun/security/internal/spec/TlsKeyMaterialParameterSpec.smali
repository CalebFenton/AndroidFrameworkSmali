.class public Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
.super Ljava/lang/Object;
.source "TlsKeyMaterialParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cipherAlgorithm:Ljava/lang/String;

.field private final cipherKeyLength:I

.field private final clientRandom:[B

.field private final expandedCipherKeyLength:I

.field private final ivLength:I

.field private final macKeyLength:I

.field private final majorVersion:I

.field private final masterSecret:Ljavax/crypto/SecretKey;

.field private final minorVersion:I

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final serverRandom:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V
    .locals 2
    .param p1, "masterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "clientRandom"    # [B
    .param p5, "serverRandom"    # [B
    .param p6, "cipherAlgorithm"    # Ljava/lang/String;
    .param p7, "cipherKeyLength"    # I
    .param p8, "expandedCipherKeyLength"    # I
    .param p9, "ivLength"    # I
    .param p10, "macKeyLength"    # I
    .param p11, "prfHashAlg"    # Ljava/lang/String;
    .param p12, "prfHashLength"    # I
    .param p13, "prfBlockSize"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "TlsMasterSecret"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Not a TLS master secret"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 100
    :cond_0
    if-nez p6, :cond_1

    #@1b
    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@20
    throw v0

    #@21
    .line 103
    :cond_1
    iput-object p1, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->masterSecret:Ljavax/crypto/SecretKey;

    #@23
    .line 105
    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    #@26
    move-result v0

    #@27
    .line 104
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    #@29
    .line 107
    invoke-static {p3}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    #@2c
    move-result v0

    #@2d
    .line 106
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    #@2f
    .line 108
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, [B

    #@35
    iput-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->clientRandom:[B

    #@37
    .line 109
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, [B

    #@3d
    iput-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->serverRandom:[B

    #@3f
    .line 110
    iput-object p6, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherAlgorithm:Ljava/lang/String;

    #@41
    .line 111
    invoke-static {p7}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherKeyLength:I

    #@47
    .line 112
    invoke-static {p8}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->expandedCipherKeyLength:I

    #@4d
    .line 113
    invoke-static {p9}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    #@50
    move-result v0

    #@51
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->ivLength:I

    #@53
    .line 114
    invoke-static {p10}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->macKeyLength:I

    #@59
    .line 115
    iput-object p11, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashAlg:Ljava/lang/String;

    #@5b
    .line 116
    iput p12, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashLength:I

    #@5d
    .line 117
    iput p13, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfBlockSize:I

    #@5f
    .line 96
    return-void
.end method

.method private static checkSign(I)I
    .locals 2
    .param p0, "k"    # I

    #@0
    .prologue
    .line 121
    if-gez p0, :cond_0

    #@2
    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Value must not be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 124
    :cond_0
    return p0
.end method


# virtual methods
.method public getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCipherKeyLength()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherKeyLength:I

    #@2
    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->clientRandom:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getExpandedCipherKeyLength()I
    .locals 2

    #@0
    .prologue
    .line 200
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    #@2
    const/4 v1, 0x3

    #@3
    if-lt v0, v1, :cond_0

    #@5
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    #@7
    const/4 v1, 0x2

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 201
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 203
    :cond_0
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->expandedCipherKeyLength:I

    #@e
    return v0
.end method

.method public getIvLength()I
    .locals 2

    #@0
    .prologue
    .line 217
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    #@2
    const/4 v1, 0x3

    #@3
    if-lt v0, v1, :cond_0

    #@5
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    #@7
    const/4 v1, 0x2

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 218
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 221
    :cond_0
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->ivLength:I

    #@e
    return v0
.end method

.method public getMacKeyLength()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->macKeyLength:I

    #@2
    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    #@2
    return v0
.end method

.method public getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->masterSecret:Ljavax/crypto/SecretKey;

    #@2
    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    #@2
    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfBlockSize:I

    #@2
    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashAlg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashLength:I

    #@2
    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->serverRandom:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
