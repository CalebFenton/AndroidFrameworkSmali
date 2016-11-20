.class public final Lsun/security/ec/ECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "ECKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ec/ECKeyFactory$1;,
        Lsun/security/ec/ECKeyFactory$2;
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/security/KeyFactory;

.field public static final ecInternalProvider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 65
    new-instance v1, Lsun/security/ec/ECKeyFactory$1;

    #@2
    const-string/jumbo v2, "SunEC-Internal"

    #@5
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v1, v2, v4, v5, v3}, Lsun/security/ec/ECKeyFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 66
    .local v1, "p":Ljava/security/Provider;
    new-instance v2, Lsun/security/ec/ECKeyFactory$2;

    #@d
    invoke-direct {v2, v1}, Lsun/security/ec/ECKeyFactory$2;-><init>(Ljava/security/Provider;)V

    #@10
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    .line 78
    :try_start_0
    const-string/jumbo v2, "EC"

    #@16
    invoke-static {v2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    #@19
    move-result-object v2

    #@1a
    sput-object v2, Lsun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 82
    sput-object v1, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    #@1e
    .line 53
    return-void

    #@1f
    .line 79
    :catch_0
    move-exception v0

    #@20
    .line 80
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@22
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    #@3
    return-void
.end method

.method private static checkKey(Ljava/security/interfaces/ECKey;)V
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 117
    instance-of v1, p0, Lsun/security/ec/ECPublicKeyImpl;

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 118
    return-void

    #@9
    .line 120
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/ECPrivateKey;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 121
    instance-of v1, p0, Lsun/security/ec/ECPrivateKeyImpl;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 122
    return-void

    #@12
    .line 125
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    #@14
    const-string/jumbo v2, "Neither a public nor a private key"

    #@17
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 128
    :cond_2
    check-cast p0, Ljava/security/Key;

    #@1d
    .end local p0    # "key":Ljava/security/interfaces/ECKey;
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 129
    .local v0, "keyAlg":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_3

    #@2a
    .line 130
    new-instance v1, Ljava/security/InvalidKeyException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Not an EC key: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 114
    :cond_3
    return-void
.end method

.method private implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 245
    check-cast v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@7
    .line 246
    .local v1, "pkcsSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    #@9
    invoke-virtual {v1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    #@10
    return-object v2

    #@11
    .line 247
    .end local v1    # "pkcsSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    #@13
    if-eqz v2, :cond_1

    #@15
    move-object v0, p1

    #@16
    .line 248
    check-cast v0, Ljava/security/spec/ECPrivateKeySpec;

    #@18
    .line 249
    .local v0, "ecSpec":Ljava/security/spec/ECPrivateKeySpec;
    new-instance v2, Lsun/security/ec/ECPrivateKeyImpl;

    #@1a
    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@25
    return-object v2

    #@26
    .line 251
    .end local v0    # "ecSpec":Ljava/security/spec/ECPrivateKeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@28
    const-string/jumbo v3, "Only ECPrivateKeySpec and PKCS8EncodedKeySpec supported for EC private keys"

    #@2b
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2
.end method

.method private implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 227
    check-cast v1, Ljava/security/spec/X509EncodedKeySpec;

    #@7
    .line 228
    .local v1, "x509Spec":Ljava/security/spec/X509EncodedKeySpec;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    #@9
    invoke-virtual {v1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    #@10
    return-object v2

    #@11
    .line 229
    .end local v1    # "x509Spec":Ljava/security/spec/X509EncodedKeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    #@13
    if-eqz v2, :cond_1

    #@15
    move-object v0, p1

    #@16
    .line 230
    check-cast v0, Ljava/security/spec/ECPublicKeySpec;

    #@18
    .line 231
    .local v0, "ecSpec":Ljava/security/spec/ECPublicKeySpec;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    #@1a
    .line 232
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    #@1d
    move-result-object v3

    #@1e
    .line 233
    invoke-virtual {v0}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    #@21
    move-result-object v4

    #@22
    .line 231
    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@25
    return-object v2

    #@26
    .line 236
    .end local v0    # "ecSpec":Ljava/security/spec/ECPublicKeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@28
    const-string/jumbo v3, "Only ECPublicKeySpec and X509EncodedKeySpec supported for EC public keys"

    #@2b
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2
.end method

.method private implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    instance-of v1, p1, Ljava/security/interfaces/ECPrivateKey;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 207
    instance-of v1, p1, Lsun/security/ec/ECPrivateKeyImpl;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 208
    return-object p1

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 210
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    #@c
    .line 211
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    #@e
    .line 212
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@11
    move-result-object v2

    #@12
    .line 213
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@15
    move-result-object v3

    #@16
    .line 211
    invoke-direct {v1, v2, v3}, Lsun/security/ec/ECPrivateKeyImpl;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@19
    return-object v1

    #@1a
    .line 215
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_1
    const-string/jumbo v1, "PKCS#8"

    #@1d
    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 216
    new-instance v1, Lsun/security/ec/ECPrivateKeyImpl;

    #@29
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Lsun/security/ec/ECPrivateKeyImpl;-><init>([B)V

    #@30
    return-object v1

    #@31
    .line 218
    :cond_2
    new-instance v1, Ljava/security/InvalidKeyException;

    #@33
    const-string/jumbo v2, "Private keys must be instance of ECPrivateKey or have PKCS#8 encoding"

    #@36
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1
.end method

.method private implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    instance-of v2, p1, Ljava/security/interfaces/ECPublicKey;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 186
    instance-of v2, p1, Lsun/security/ec/ECPublicKeyImpl;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 187
    return-object p1

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 189
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    #@c
    .line 190
    .local v0, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    #@e
    .line 191
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@11
    move-result-object v3

    #@12
    .line 192
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@15
    move-result-object v4

    #@16
    .line 190
    invoke-direct {v2, v3, v4}, Lsun/security/ec/ECPublicKeyImpl;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@19
    return-object v2

    #@1a
    .line 194
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_1
    const-string/jumbo v2, "X.509"

    #@1d
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 195
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@2a
    move-result-object v1

    #@2b
    .line 196
    .local v1, "encoded":[B
    new-instance v2, Lsun/security/ec/ECPublicKeyImpl;

    #@2d
    invoke-direct {v2, v1}, Lsun/security/ec/ECPublicKeyImpl;-><init>([B)V

    #@30
    return-object v2

    #@31
    .line 198
    .end local v1    # "encoded":[B
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    #@33
    const-string/jumbo v3, "Public keys must be instance of ECPublicKey or have X.509 encoding"

    #@36
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2
.end method

.method public static toECKey(Ljava/security/Key;)Ljava/security/interfaces/ECKey;
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    instance-of v1, p0, Ljava/security/interfaces/ECKey;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 103
    check-cast v0, Ljava/security/interfaces/ECKey;

    #@7
    .line 104
    .local v0, "ecKey":Ljava/security/interfaces/ECKey;
    invoke-static {v0}, Lsun/security/ec/ECKeyFactory;->checkKey(Ljava/security/interfaces/ECKey;)V

    #@a
    .line 105
    return-object v0

    #@b
    .line 107
    .end local v0    # "ecKey":Ljava/security/interfaces/ECKey;
    :cond_0
    sget-object v1, Lsun/security/ec/ECKeyFactory;->INSTANCE:Ljava/security/KeyFactory;

    #@d
    invoke-virtual {v1, p0}, Ljava/security/KeyFactory;->translateKey(Ljava/security/Key;)Ljava/security/Key;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/security/interfaces/ECKey;

    #@13
    return-object v1
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 177
    :catch_0
    move-exception v0

    #@6
    .line 178
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@8
    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v2

    #@c
    .line 175
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    #@d
    .line 176
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    throw v1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 165
    :catch_0
    move-exception v0

    #@6
    .line 166
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@8
    invoke-direct {v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v2

    #@c
    .line 163
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    #@d
    .line 164
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    throw v1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/ec/ECKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object p1

    #@4
    .line 266
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v2, p1

    #@9
    .line 267
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    #@b
    .line 268
    .local v2, "ecKey":Ljava/security/interfaces/ECPublicKey;
    const-class v3, Ljava/security/spec/ECPublicKeySpec;

    #@d
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 269
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    #@15
    .line 270
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@18
    move-result-object v4

    #@19
    .line 271
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1c
    move-result-object v5

    #@1d
    .line 269
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    #@20
    return-object v3

    #@21
    .line 263
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :catch_0
    move-exception v0

    #@22
    .line 264
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@24
    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v3

    #@28
    .line 273
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_0
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    #@2a
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 274
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@32
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@39
    return-object v3

    #@3a
    .line 276
    :cond_1
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@3c
    .line 277
    const-string/jumbo v4, "KeySpec must be ECPublicKeySpec or X509EncodedKeySpec for EC public keys"

    #@3f
    .line 276
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 280
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/ECPrivateKey;

    #@45
    if-eqz v3, :cond_5

    #@47
    .line 281
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@49
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_3

    #@4f
    .line 282
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@51
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@54
    move-result-object v4

    #@55
    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@58
    return-object v3

    #@59
    .line 283
    :cond_3
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    #@5b
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_4

    #@61
    move-object v1, p1

    #@62
    .line 284
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    #@64
    .line 285
    .local v1, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    #@66
    .line 286
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    #@69
    move-result-object v4

    #@6a
    .line 287
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@6d
    move-result-object v5

    #@6e
    .line 285
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    #@71
    return-object v3

    #@72
    .line 290
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@74
    .line 291
    const-string/jumbo v4, "KeySpec must be ECPrivateKeySpec or PKCS8EncodedKeySpec for EC private keys"

    #@77
    .line 290
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v3

    #@7b
    .line 296
    :cond_5
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@7d
    const-string/jumbo v4, "Neither public nor private key"

    #@80
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@83
    throw v3
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    if-nez p1, :cond_0

    #@2
    .line 143
    new-instance v1, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v2, "Key must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 146
    .local v0, "keyAlg":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 147
    new-instance v1, Ljava/security/InvalidKeyException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Not an EC key: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 149
    :cond_1
    instance-of v1, p1, Ljava/security/PublicKey;

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 150
    check-cast p1, Ljava/security/PublicKey;

    #@38
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 151
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v1, p1, Ljava/security/PrivateKey;

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 152
    check-cast p1, Ljava/security/PrivateKey;

    #@43
    .end local p1    # "key":Ljava/security/Key;
    invoke-direct {p0, p1}, Lsun/security/ec/ECKeyFactory;->implTranslatePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    #@46
    move-result-object v1

    #@47
    return-object v1

    #@48
    .line 154
    .restart local p1    # "key":Ljava/security/Key;
    :cond_3
    new-instance v1, Ljava/security/InvalidKeyException;

    #@4a
    const-string/jumbo v2, "Neither a public nor a private key"

    #@4d
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
.end method
