.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field public static final DEFAULT_SDK_TARGET_FOR_CRYPTO_PROVIDER_WORKAROUND:I = 0x17

.field private static sdkTargetForCryptoProviderWorkaround:I = 0x0

.field private static volatile seedGenerator:Ljava/security/SecureRandom; = null

.field static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private counter:J

.field private digest:Ljava/security/MessageDigest;

.field private provider:Ljava/security/Provider;

.field private randomBytes:[B

.field private randomBytesUsed:I

.field private secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    #@3
    .line 297
    const/16 v0, 0x17

    #@5
    .line 296
    sput v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    #@7
    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 161
    const-wide/16 v0, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    #@6
    .line 107
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@8
    .line 115
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@a
    .line 639
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    #@c
    .line 162
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, v0, v2}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    #@10
    .line 155
    return-void
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .locals 1
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@4
    .line 228
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 3
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 234
    const-wide/16 v0, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    #@6
    .line 107
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@8
    .line 115
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@a
    .line 639
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    #@c
    .line 235
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@e
    .line 236
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@10
    .line 237
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@12
    .line 233
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "seed"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 189
    const-wide/16 v0, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    #@6
    .line 107
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@8
    .line 115
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@a
    .line 639
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    #@c
    .line 190
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    #@10
    .line 188
    return-void
.end method

.method private getDefaultPRNG(Z[B)V
    .locals 5
    .param p1, "setSeed"    # Z
    .param p2, "seed"    # [B

    #@0
    .prologue
    .line 194
    invoke-static {}, Ljava/security/SecureRandom;->getPrngAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 195
    .local v1, "prng":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 197
    new-instance v3, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v4, "No SecureRandom implementation!"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 200
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    #@12
    move-result-object v2

    #@13
    .line 201
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2}, Ljava/security/SecureRandom;->getSecureRandomSpi()Ljava/security/SecureRandomSpi;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@19
    .line 202
    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@1f
    .line 203
    if-eqz p1, :cond_1

    #@21
    .line 204
    iget-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@23
    invoke-virtual {v3, p2}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 216
    :cond_1
    invoke-virtual {p0}, Ljava/security/SecureRandom;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v3

    #@2a
    const-class v4, Ljava/security/SecureRandom;

    #@2c
    if-ne v3, v4, :cond_2

    #@2e
    .line 217
    iput-object v1, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@30
    .line 193
    :cond_2
    return-void

    #@31
    .line 206
    .end local v2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v0

    #@32
    .line 208
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@34
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v3
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
    .line 278
    const-string/jumbo v1, "SecureRandom"

    #@3
    .line 279
    const-class v2, Ljava/security/SecureRandomSpi;

    #@5
    .line 278
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 280
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/SecureRandom;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/security/SecureRandomSpi;

    #@f
    .line 281
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 280
    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 5
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
    .line 363
    :try_start_0
    const-string/jumbo v2, "SecureRandom"

    #@3
    .line 364
    const-class v3, Ljava/security/SecureRandomSpi;

    #@5
    .line 363
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 365
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/SecureRandom;

    #@b
    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/security/SecureRandomSpi;

    #@f
    .line 366
    iget-object v4, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 365
    invoke-direct {v3, v2, v4, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v3

    #@15
    .line 367
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v1

    #@16
    .line 368
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    const-string/jumbo v2, "Crypto"

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 369
    const-string/jumbo v2, " ********** PLEASE READ ************ "

    #@22
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@25
    .line 370
    const-string/jumbo v2, " * "

    #@28
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@2b
    .line 371
    const-string/jumbo v2, " * New versions of the Android SDK no longer support the Crypto provider."

    #@2e
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@31
    .line 372
    const-string/jumbo v2, " * If your app was relying on setSeed() to derive keys from strings, you"

    #@34
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@37
    .line 373
    const-string/jumbo v2, " * should switch to using SecretKeySpec to load raw key bytes directly OR"

    #@3a
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@3d
    .line 374
    const-string/jumbo v2, " * use a real key derivation function (KDF). See advice here : "

    #@40
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@43
    .line 375
    const-string/jumbo v2, " * http://android-developers.blogspot.com/2016/06/security-crypto-provider-deprecated-in.html "

    #@46
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@49
    .line 376
    const-string/jumbo v2, " *********************************** "

    #@4c
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@4f
    .line 377
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    #@56
    move-result v2

    #@57
    .line 378
    sget v3, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    #@59
    .line 377
    if-gt v2, v3, :cond_0

    #@5b
    .line 379
    const-string/jumbo v2, " Returning an instance of SecureRandom from the Crypto provider"

    #@5e
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@61
    .line 380
    const-string/jumbo v2, " as a temporary measure so that the apps targeting earlier SDKs"

    #@64
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@67
    .line 381
    const-string/jumbo v2, " keep working. Please do not rely on the presence of the Crypto"

    #@6a
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@6d
    .line 382
    const-string/jumbo v2, " provider in the codebase, as our plan is to delete it"

    #@70
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@73
    .line 383
    const-string/jumbo v2, " completely in the future."

    #@76
    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@79
    .line 384
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;

    #@7c
    move-result-object v2

    #@7d
    return-object v2

    #@7e
    .line 388
    :cond_0
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    const-string/jumbo v1, "SecureRandom"

    #@3
    .line 448
    const-class v2, Ljava/security/SecureRandomSpi;

    #@5
    .line 447
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 449
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/SecureRandom;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/security/SecureRandomSpi;

    #@f
    .line 450
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 449
    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method private static getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    :try_start_0
    const-class v4, Ljava/security/SecureRandom;

    #@2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v4

    #@6
    .line 398
    const-string/jumbo v5, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    #@9
    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 403
    .local v0, "cryptoProvider":Ljava/security/Provider;
    const-string/jumbo v4, "SecureRandom"

    #@16
    invoke-virtual {v0, v4, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@19
    move-result-object v3

    #@1a
    .line 404
    .local v3, "service":Ljava/security/Provider$Service;
    const-class v4, Ljava/security/SecureRandomSpi;

    #@1c
    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@1f
    move-result-object v2

    #@20
    .line 405
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v5, Ljava/security/SecureRandom;

    #@22
    .line 406
    iget-object v4, v2, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@24
    check-cast v4, Ljava/security/SecureRandomSpi;

    #@26
    iget-object v6, v2, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@28
    .line 405
    invoke-direct {v5, v4, v6, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@2b
    return-object v5

    #@2c
    .line 400
    .end local v0    # "cryptoProvider":Ljava/security/Provider;
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .end local v3    # "service":Ljava/security/Provider$Service;
    :catch_0
    move-exception v1

    #@2d
    .line 401
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@2f
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@32
    throw v4
.end method

.method private static getPrngAlgorithm()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 618
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/security/Provider;

    #@18
    .line 619
    .local v0, "p":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v3

    #@20
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Ljava/security/Provider$Service;

    #@2c
    .line 620
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, "SecureRandom"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 621
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    return-object v4

    #@3e
    .line 625
    .end local v0    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    #@3f
    return-object v4
.end method

.method public static getSdkTargetForCryptoProviderWorkaround()I
    .locals 1

    #@0
    .prologue
    .line 314
    sget v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    #@2
    return v0
.end method

.method public static getSeed(I)[B
    .locals 1
    .param p0, "numBytes"    # I

    #@0
    .prologue
    .line 578
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 579
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    #@b
    .line 580
    :cond_0
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    #@d
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method private static longToByteArray(J)[B
    .locals 4
    .param p0, "l"    # J

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 601
    new-array v1, v3, [B

    #@4
    .line 603
    .local v1, "retVal":[B
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@7
    .line 604
    long-to-int v2, p0

    #@8
    int-to-byte v2, v2

    #@9
    aput-byte v2, v1, v0

    #@b
    .line 605
    shr-long/2addr p0, v3

    #@c
    .line 603
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 608
    :cond_0
    return-object v1
.end method

.method public static setSdkTargetForCryptoProviderWorkaround(I)V
    .locals 0
    .param p0, "sdkTargetVersion"    # I

    #@0
    .prologue
    .line 305
    sput p0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    #@2
    .line 304
    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 593
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
    .line 478
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, "unknown"

    #@a
    goto :goto_0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method getSecureRandomSpi()Ljava/security/SecureRandomSpi;
    .locals 1

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@2
    return-object v0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "numBits"    # I

    #@0
    .prologue
    .line 549
    add-int/lit8 v4, p1, 0x7

    #@2
    div-int/lit8 v3, v4, 0x8

    #@4
    .line 550
    .local v3, "numBytes":I
    new-array v0, v3, [B

    #@6
    .line 551
    .local v0, "b":[B
    const/4 v2, 0x0

    #@7
    .line 553
    .local v2, "next":I
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@a
    .line 554
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@d
    .line 555
    shl-int/lit8 v4, v2, 0x8

    #@f
    aget-byte v5, v0, v1

    #@11
    and-int/lit16 v5, v5, 0xff

    #@13
    add-int v2, v4, v5

    #@15
    .line 554
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 557
    :cond_0
    mul-int/lit8 v4, v3, 0x8

    #@1a
    sub-int/2addr v4, p1

    #@1b
    ushr-int v4, v2, v4

    #@1d
    return v4
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 531
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@3
    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 530
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
    .locals 3
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 514
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 515
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@8
    invoke-static {p1, p2}, Ljava/security/SecureRandom;->longToByteArray(J)[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    #@f
    .line 507
    :cond_0
    return-void
.end method

.method public declared-synchronized setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 491
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    #@3
    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 490
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
