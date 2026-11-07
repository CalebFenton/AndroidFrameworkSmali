.class public Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# static fields
.field private static volatile blacklist bcProvider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    .line 47
    return-void
.end method

.method private static declared-synchronized blacklist getBouncyCastleProvider()Ljava/security/Provider;
    .registers 3

    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    monitor-enter v0

    .line 25
    :try_start_3
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 28
    .local v1, "system":Ljava/security/Provider;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_22

    if-eqz v2, :cond_f

    .line 30
    monitor-exit v0

    return-object v1

    .line 32
    :cond_f
    :try_start_f
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    if-eqz v2, :cond_17

    .line 34
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_22

    monitor-exit v0

    return-object v2

    .line 38
    :cond_17
    :try_start_17
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    .line 40
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-object v2

    .line 24
    .end local v1    # "system":Ljava/security/Provider;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist getPrivateProvider()Ljava/security/Provider;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->provider:Ljava/security/Provider;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_f

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->provider:Ljava/security/Provider;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0

    .line 102
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error in BCJcaJceHelper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 61
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 62
    :catch_5
    move-exception v0

    .line 64
    .local v0, "originalException":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v1

    .line 65
    :catchall_f
    move-exception v1

    .line 66
    .local v1, "throwable":Ljava/lang/Throwable;
    throw v0
.end method

.method public blacklist createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 89
    :catch_5
    move-exception v0

    .line 91
    .local v0, "originalException":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v1

    .line 92
    :catchall_f
    move-exception v1

    .line 93
    .local v1, "throwable":Ljava/lang/Throwable;
    throw v0
.end method

.method public blacklist createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 76
    :catch_5
    move-exception v0

    .line 78
    .local v0, "originalException":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {p1, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v1

    .line 79
    :catchall_f
    move-exception v1

    .line 80
    .local v1, "throwable":Ljava/lang/Throwable;
    throw v0
.end method
