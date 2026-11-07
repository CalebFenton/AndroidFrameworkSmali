.class public Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# static fields
.field private static volatile blacklist bcProvider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private static declared-synchronized blacklist getBouncyCastleProvider()Ljava/security/Provider;
    .registers 3

    const-class v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    monitor-enter v0

    .line 25
    :try_start_3
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    if-eqz v2, :cond_f

    .line 30
    monitor-exit v0

    return-object v1

    .line 32
    :cond_f
    :try_start_f
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    if-eqz v1, :cond_19

    .line 34
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    goto :goto_24

    .line 38
    :cond_19
    :try_start_19
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    .line 40
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_17

    monitor-exit v0

    return-object v1

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_17

    throw v1
.end method

.method private blacklist getPrivateProvider()Ljava/security/Provider;
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    instance-of v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_d

    .line 100
    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateProvider()Ljava/security/Provider;

    move-result-object p0

    return-object p0

    .line 102
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error in BCJcaJceHelper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 3

    .line 61
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 64
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-static {p1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 66
    :catchall_f
    throw v0
.end method

.method public blacklist createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 3

    .line 88
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 91
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-static {p1, p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 93
    :catchall_f
    throw v0
.end method

.method public blacklist createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 3

    .line 75
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 78
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getPrivateProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-static {p1, p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p0

    .line 80
    :catchall_f
    throw v0
.end method
