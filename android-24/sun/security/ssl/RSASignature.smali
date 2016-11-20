.class public final Lsun/security/ssl/RSASignature;
.super Ljava/security/SignatureSpi;
.source "RSASignature.java"


# instance fields
.field private isReset:Z

.field private md5:Ljava/security/MessageDigest;

.field private final rawRsa:Ljava/security/Signature;

.field private sha:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 62
    const-string/jumbo v0, "NONEwithRSA"

    #@6
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@c
    .line 63
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    #@f
    .line 60
    return-void
.end method

.method private static checkNull(Ljava/security/Key;)V
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    if-nez p0, :cond_0

    #@2
    .line 105
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "Key must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 103
    :cond_0
    return-void
.end method

.method private getDigest()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    #@3
    .line 153
    const/16 v2, 0x24

    #@5
    new-array v0, v2, [B

    #@7
    .line 154
    .local v0, "data":[B
    iget-object v2, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@9
    const/4 v3, 0x0

    #@a
    const/16 v4, 0x10

    #@c
    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    #@f
    .line 155
    iget-object v2, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@11
    const/16 v3, 0x10

    #@13
    const/16 v4, 0x14

    #@15
    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    #@18
    .line 156
    const/4 v2, 0x1

    #@19
    iput-boolean v2, p0, Lsun/security/ssl/RSASignature;->isReset:Z
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 157
    return-object v0

    #@1c
    .line 158
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    #@1d
    .line 160
    .local v1, "e":Ljava/security/DigestException;
    new-instance v2, Ljava/security/SignatureException;

    #@1f
    invoke-direct {v2, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v2
.end method

.method static getInstance()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "MD5andSHA1withRSA"

    #@3
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static getInternalInstance()Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "MD5andSHA1withRSA"

    #@3
    const-string/jumbo v1, "SunJSSE"

    #@6
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private initDigests()V
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 131
    invoke-static {}, Lsun/security/ssl/JsseJce;->getMD5()Ljava/security/MessageDigest;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@a
    .line 132
    invoke-static {}, Lsun/security/ssl/JsseJce;->getSHA()Ljava/security/MessageDigest;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@10
    .line 129
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 97
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    #@9
    .line 98
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@b
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    #@e
    .line 99
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    #@11
    .line 95
    :cond_0
    return-void
.end method

.method static setHashes(Ljava/security/Signature;Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V
    .locals 3
    .param p0, "sig"    # Ljava/security/Signature;
    .param p1, "md5"    # Ljava/security/MessageDigest;
    .param p2, "sha"    # Ljava/security/MessageDigest;

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, "hashes"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/security/MessageDigest;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object p1, v1, v2

    #@9
    const/4 v2, 0x1

    #@a
    aput-object p2, v1, v2

    #@c
    invoke-virtual {p0, v0, v1}, Ljava/security/Signature;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 88
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2
    const-string/jumbo v1, "Parameters not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/RSASignature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@4
    .line 117
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    #@3
    .line 124
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    #@6
    .line 125
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@8
    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@b
    .line 122
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-static {p1}, Lsun/security/ssl/RSASignature;->checkNull(Ljava/security/Key;)V

    #@3
    .line 112
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->reset()V

    #@6
    .line 113
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@8
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@b
    .line 110
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    const-string/jumbo v1, "hashes"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 182
    new-instance v1, Ljava/security/InvalidParameterException;

    #@b
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Parameter not supported: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 182
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 185
    :cond_0
    instance-of v1, p2, [Ljava/security/MessageDigest;

    #@25
    if-nez v1, :cond_1

    #@27
    .line 186
    new-instance v1, Ljava/security/InvalidParameterException;

    #@29
    .line 187
    const-string/jumbo v2, "value must be MessageDigest[]"

    #@2c
    .line 186
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    :cond_1
    move-object v0, p2

    #@31
    .line 189
    nop

    #@32
    nop

    #@33
    .line 190
    .local v0, "digests":[Ljava/security/MessageDigest;
    const/4 v1, 0x0

    #@34
    aget-object v1, v0, v1

    #@36
    iput-object v1, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@38
    .line 191
    const/4 v1, 0x1

    #@39
    aget-object v1, v0, v1

    #@3b
    iput-object v1, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@3d
    .line 180
    return-void
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@2
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@9
    .line 166
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@b
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    #@3
    .line 138
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    #@6
    .line 139
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@8
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    #@b
    .line 140
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@d
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    #@10
    .line 136
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->initDigests()V

    #@3
    .line 145
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/ssl/RSASignature;->isReset:Z

    #@6
    .line 146
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->md5:Ljava/security/MessageDigest;

    #@8
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@b
    .line 147
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->sha:Ljava/security/MessageDigest;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@10
    .line 143
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lsun/security/ssl/RSASignature;->engineVerify([BII)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@2
    invoke-direct {p0}, Lsun/security/ssl/RSASignature;->getDigest()[B

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@9
    .line 176
    iget-object v0, p0, Lsun/security/ssl/RSASignature;->rawRsa:Ljava/security/Signature;

    #@b
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->verify([BII)Z

    #@e
    move-result v0

    #@f
    return v0
.end method
