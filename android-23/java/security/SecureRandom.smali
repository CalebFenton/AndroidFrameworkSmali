.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "SecureRandom"

.field private static volatile internalSecureRandom:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final secureRandomSpi:Ljava/security/SecureRandomSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "SecureRandom"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 88
    const-wide/16 v2, 0x0

    #@3
    invoke-direct {p0, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@6
    .line 89
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getSecureRandomService()Ljava/security/Provider$Service;

    #@9
    move-result-object v1

    #@a
    .line 90
    .local v1, "service":Ljava/security/Provider$Service;
    if-nez v1, :cond_0

    #@c
    .line 91
    iput-object v4, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@e
    .line 92
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    #@10
    invoke-direct {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    #@13
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@15
    .line 93
    const-string/jumbo v2, "SHA1PRNG"

    #@18
    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@1a
    .line 87
    :goto_0
    return-void

    #@1b
    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@21
    .line 97
    const/4 v2, 0x0

    #@22
    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/security/SecureRandomSpi;

    #@28
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@2a
    .line 98
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 99
    :catch_0
    move-exception v0

    #@32
    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@34
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v2
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .locals 1
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "unknown"

    #@3
    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@6
    .line 125
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    #@5
    .line 134
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@7
    .line 135
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@9
    .line 136
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@b
    .line 132
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "seed"    # [B

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    #@3
    .line 112
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    #@6
    .line 110
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    if-nez p0, :cond_0

    #@3
    .line 154
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 156
    :cond_0
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 157
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/SecureRandom;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljava/security/SecureRandomSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 184
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 185
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 186
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 188
    :cond_2
    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 210
    if-nez p1, :cond_0

    #@3
    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 213
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 216
    :cond_1
    sget-object v1, Ljava/security/SecureRandom;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 217
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/SecureRandom;

    #@1f
    check-cast v0, Ljava/security/SecureRandomSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method

.method public static getSeed(I)[B
    .locals 2
    .param p0, "numBytes"    # I

    #@0
    .prologue
    .line 313
    sget-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    #@2
    .line 314
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_0

    #@4
    .line 316
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    .end local v0    # "result":Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    .restart local v0    # "result":Ljava/security/SecureRandom;
    sput-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    #@b
    .line 318
    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "numBits"    # I

    #@0
    .prologue
    .line 285
    if-gez p1, :cond_1

    #@2
    .line 286
    const/4 p1, 0x0

    #@3
    .line 292
    :cond_0
    :goto_0
    add-int/lit8 v4, p1, 0x7

    #@5
    div-int/lit8 v0, v4, 0x8

    #@7
    .line 293
    .local v0, "bytes":I
    new-array v2, v0, [B

    #@9
    .line 294
    .local v2, "next":[B
    const/4 v3, 0x0

    #@a
    .line 296
    .local v3, "ret":I
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@d
    .line 297
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@10
    .line 298
    aget-byte v4, v2, v1

    #@12
    and-int/lit16 v4, v4, 0xff

    #@14
    shl-int/lit8 v5, v3, 0x8

    #@16
    or-int v3, v4, v5

    #@18
    .line 297
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 288
    .end local v0    # "bytes":I
    .end local v1    # "i":I
    .end local v2    # "next":[B
    .end local v3    # "ret":I
    :cond_1
    const/16 v4, 0x20

    #@1d
    if-le p1, v4, :cond_0

    #@1f
    .line 289
    const/16 p1, 0x20

    #@21
    goto :goto_0

    #@22
    .line 300
    .restart local v0    # "bytes":I
    .restart local v1    # "i":I
    .restart local v2    # "next":[B
    .restart local v3    # "ret":I
    :cond_2
    mul-int/lit8 v4, v0, 0x8

    #@24
    sub-int/2addr v4, p1

    #@25
    ushr-int/2addr v3, v4

    #@26
    .line 301
    return v3
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 271
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@3
    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 270
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 254
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-nez v1, :cond_0

    #@6
    .line 255
    return-void

    #@7
    .line 257
    :cond_0
    const/16 v1, 0x8

    #@9
    new-array v0, v1, [B

    #@b
    .line 258
    .local v0, "byteSeed":[B
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v2, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@11
    .line 259
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    #@14
    .line 253
    return-void
.end method

.method public declared-synchronized setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 244
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@3
    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 243
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
