.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$SpiAndProviderUpdater;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$CipherSpiAndProvider;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$Transform;,
        Ljavax/crypto/Cipher$NeedToSet;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final greylist-max-o ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final whitelist test-api DECRYPT_MODE:I = 0x2

.field public static final whitelist test-api ENCRYPT_MODE:I = 0x1

.field private static final greylist-max-o KEY_USAGE_EXTENSION_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final whitelist test-api PRIVATE_KEY:I = 0x2

.field public static final whitelist test-api PUBLIC_KEY:I = 0x1

.field public static final whitelist test-api SECRET_KEY:I = 0x3

.field public static final whitelist test-api UNWRAP_MODE:I = 0x4

.field public static final whitelist test-api WRAP_MODE:I = 0x3


# instance fields
.field private greylist-max-o exmech:Ljavax/crypto/ExemptionMechanism;

.field private greylist-max-o initialized:Z

.field private greylist-max-o opmode:I

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o spi:Ljavax/crypto/CipherSpi;

.field private final greylist-max-o spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

.field private final greylist-max-o tokenizedTransformation:[Ljava/lang/String;

.field private final greylist-max-o transformation:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettokenizedTransformation(Ljavax/crypto/Cipher;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputprovider(Ljavax/crypto/Cipher;Ljava/security/Provider;)V
    .registers 2

    iput-object p1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputspi(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)V
    .registers 2

    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 365
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 403
    if-eqz p1, :cond_2a

    .line 406
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    if-nez v0, :cond_19

    if-eqz p2, :cond_11

    goto :goto_19

    .line 407
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_19
    :goto_19
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 411
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 412
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 415
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 417
    return-void

    .line 404
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "tokenizedTransformation"    # [Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 365
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 423
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 424
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 425
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 426
    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 428
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 430
    return-void
.end method

.method private greylist-max-o checkCipherState()V
    .registers 3

    .line 1657
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_23

    .line 1658
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_1b

    .line 1661
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    goto :goto_23

    .line 1663
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_23
    :goto_23
    return-void
.end method

.method private static greylist-max-o checkOpmode(I)V
    .registers 3
    .param p0, "opmode"    # I

    .line 1030
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v0, 0x4

    if-gt p0, v0, :cond_7

    .line 1033
    return-void

    .line 1031
    :cond_7
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid operation mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 14
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "params"    # Ljava/security/AlgorithmParameters;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 790
    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_19

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v4, p6

    .end local p1    # "initType":Ljavax/crypto/Cipher$InitType;
    .end local p2    # "opmode":I
    .end local p3    # "key":Ljava/security/Key;
    .end local p4    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p5    # "params":Ljava/security/AlgorithmParameters;
    .end local p6    # "random":Ljava/security/SecureRandom;
    .local v1, "initType":Ljavax/crypto/Cipher$InitType;
    .local v2, "opmode":I
    .local v3, "key":Ljava/security/Key;
    .local v4, "random":Ljava/security/SecureRandom;
    .local v5, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v6, "params":Ljava/security/AlgorithmParameters;
    :try_start_8
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    .line 792
    .local v0, "initParams":Ljavax/crypto/Cipher$InitParams;
    iget-object p1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object p2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object p3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {p1, v0, p2, p3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 808
    nop

    .line 809
    .end local v0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    return-void

    .line 793
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v1    # "initType":Ljavax/crypto/Cipher$InitType;
    .end local v2    # "opmode":I
    .end local v3    # "key":Ljava/security/Key;
    .end local v4    # "random":Ljava/security/SecureRandom;
    .end local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "params":Ljava/security/AlgorithmParameters;
    .restart local p1    # "initType":Ljavax/crypto/Cipher$InitType;
    .restart local p2    # "opmode":I
    .restart local p3    # "key":Ljava/security/Key;
    .restart local p4    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p5    # "params":Ljava/security/AlgorithmParameters;
    .restart local p6    # "random":Ljava/security/SecureRandom;
    :catch_19
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v4, p6

    move-object p1, v0

    .line 795
    .end local p2    # "opmode":I
    .end local p3    # "key":Ljava/security/Key;
    .end local p4    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p5    # "params":Ljava/security/AlgorithmParameters;
    .end local p6    # "random":Ljava/security/SecureRandom;
    .restart local v1    # "initType":Ljavax/crypto/Cipher$InitType;
    .restart local v2    # "opmode":I
    .restart local v3    # "key":Ljava/security/Key;
    .restart local v4    # "random":Ljava/security/SecureRandom;
    .restart local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v6    # "params":Ljava/security/AlgorithmParameters;
    .local p1, "lastException":Ljava/lang/Exception;
    :goto_21
    instance-of p2, p1, Ljava/security/InvalidKeyException;

    if-nez p2, :cond_5b

    .line 798
    instance-of p2, p1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez p2, :cond_57

    .line 801
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_53

    .line 804
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_3a

    :cond_38
    const-string p2, "(null)"

    .line 805
    .local p2, "kName":Ljava/lang/String;
    :goto_3a
    new-instance p3, Ljava/security/InvalidKeyException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No installed provider supports this key: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 802
    .end local p2    # "kName":Ljava/lang/String;
    :cond_53
    move-object p2, p1

    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 799
    :cond_57
    move-object p2, p1

    check-cast p2, Ljava/security/InvalidAlgorithmParameterException;

    throw p2

    .line 796
    :cond_5b
    move-object p2, p1

    check-cast p2, Ljava/security/InvalidKeyException;

    throw p2
.end method

.method static final greylist-max-o createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 7
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 741
    const-string v0, "Cipher"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "tokenizedTransformation":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 746
    .local v1, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    nop

    .line 747
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v2, p1, v0}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v3
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_10} :catch_5b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_10} :catch_5b

    .line 751
    .end local v1    # "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .local v3, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    nop

    .line 753
    if-nez v3, :cond_55

    .line 754
    if-nez p1, :cond_2e

    .line 755
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_2e
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not provide "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_55
    new-instance v1, Ljavax/crypto/Cipher;

    invoke-direct {v1, v2, p1, p0, v0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 748
    .end local v3    # "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v1    # "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :catch_5b
    move-exception v2

    .line 750
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Key/Algorithm excepton despite not passing one"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 2467
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2468
    return-object v0

    .line 2471
    :cond_4
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2473
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "RC2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2474
    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2477
    :cond_1d
    const-string v2, "RC5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2478
    const-class v0, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2481
    :cond_2c
    const-string v2, "PBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2482
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2485
    :cond_3b
    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2486
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2488
    :cond_4a
    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 6
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 685
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 688
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 689
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_13

    .line 693
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1

    .line 690
    :cond_13
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    .end local v0    # "p":Ljava/security/Provider;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 733
    if-eqz p1, :cond_7

    .line 736
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0

    .line 734
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2517
    if-eqz p0, :cond_9

    .line 2521
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2522
    const v0, 0x7fffffff

    return v0

    .line 2518
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2550
    if-eqz p0, :cond_7

    .line 2554
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2555
    const/4 v0, 0x0

    return-object v0

    .line 2551
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getOpmodeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "opmode"    # I

    .line 1036
    packed-switch p0, :pswitch_data_12

    .line 1046
    const-string v0, ""

    return-object v0

    .line 1044
    :pswitch_6
    const-string v0, "key unwrapping"

    return-object v0

    .line 1042
    :pswitch_9
    const-string v0, "key wrapping"

    return-object v0

    .line 1040
    :pswitch_c
    const-string v0, "decryption"

    return-object v0

    .line 1038
    :pswitch_f
    const-string v0, "encryption"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2705
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 2706
    return v0

    .line 2708
    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2709
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 2710
    return v0

    .line 2712
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    .local v0, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static greylist-max-o tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 434
    const-string v0, "Invalid transformation format:"

    if-eqz p0, :cond_90

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    .line 444
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 445
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 446
    .local v3, "count":I
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "/"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v4, "parser":Ljava/util/StringTokenizer;
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5
    :try_end_19
    .catch Ljava/util/NoSuchElementException; {:try_start_15 .. :try_end_19} :catch_78

    if-eqz v5, :cond_2e

    if-ge v3, v1, :cond_2e

    .line 449
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "count":I
    .local v5, "count":I
    :try_start_1f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_29
    .catch Ljava/util/NoSuchElementException; {:try_start_1f .. :try_end_29} :catch_2b

    move v3, v5

    goto :goto_15

    .line 456
    :catch_2b
    move-exception v1

    move v3, v5

    goto :goto_79

    .line 451
    .end local v5    # "count":I
    .restart local v3    # "count":I
    :cond_2e
    if-eqz v3, :cond_61

    const/4 v1, 0x2

    if-eq v3, v1, :cond_61

    :try_start_33
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_37
    .catch Ljava/util/NoSuchElementException; {:try_start_33 .. :try_end_37} :catch_78

    if-nez v1, :cond_61

    .line 459
    nop

    .line 460
    const/4 v0, 0x0

    aget-object v1, v2, v0

    if-eqz v1, :cond_48

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_48

    .line 465
    return-object v2

    .line 461
    :cond_48
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transformation:algorithm not specified-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_61
    :try_start_61
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "parser":Ljava/util/StringTokenizer;
    .end local p0    # "transformation":Ljava/lang/String;
    throw v1
    :try_end_78
    .catch Ljava/util/NoSuchElementException; {:try_start_61 .. :try_end_78} :catch_78

    .line 456
    .restart local v2    # "parts":[Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v4    # "parser":Ljava/util/StringTokenizer;
    .restart local p0    # "transformation":Ljava/lang/String;
    :catch_78
    move-exception v1

    .line 457
    .local v1, "e":Ljava/util/NoSuchElementException;
    :goto_79
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 435
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "parser":Ljava/util/StringTokenizer;
    :cond_90
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "No transformation given"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 14
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "tokenizedTransformation"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2872
    .local v0, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v1, 0x1

    aget-object v2, p2, v1

    const-string v3, "/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    aget-object v2, p2, v4

    if-eqz v2, :cond_3f

    .line 2873
    new-instance v2, Ljavax/crypto/Cipher$Transform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v2, v6, v7}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2876
    :cond_3f
    aget-object v2, p2, v1

    if-eqz v2, :cond_66

    .line 2877
    new-instance v2, Ljavax/crypto/Cipher$Transform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v2, v1, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    :cond_66
    aget-object v1, p2, v4

    if-eqz v1, :cond_8f

    .line 2881
    new-instance v1, Ljavax/crypto/Cipher$Transform;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2884
    :cond_8f
    new-instance v1, Ljavax/crypto/Cipher$Transform;

    aget-object v2, p2, v5

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    const/4 v1, 0x0

    .line 2890
    .local v1, "cause":Ljava/lang/Exception;
    const-string v2, "Cipher"

    if-eqz p1, :cond_c5

    .line 2891
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher$Transform;

    .line 2892
    .local v4, "transform":Ljavax/crypto/Cipher$Transform;
    invoke-static {v4}, Ljavax/crypto/Cipher$Transform;->-$$Nest$fgetname(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v5

    .line 2893
    .local v5, "service":Ljava/security/Provider$Service;
    if-nez v5, :cond_bb

    .line 2894
    goto :goto_a4

    .line 2896
    :cond_bb
    invoke-static {v4}, Ljavax/crypto/Cipher$Transform;->-$$Nest$fgetneedToSet(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v2

    invoke-static {p0, p2, v2, v5}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v2

    return-object v2

    .end local v4    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v5    # "service":Ljava/security/Provider$Service;
    :cond_c4
    goto :goto_10b

    .line 2900
    :cond_c5
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    array-length v4, v3

    :goto_ca
    if-ge v5, v4, :cond_10b

    aget-object v6, v3, v5

    .line 2901
    .local v6, "prov":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_108

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/crypto/Cipher$Transform;

    .line 2902
    .local v8, "transform":Ljavax/crypto/Cipher$Transform;
    invoke-static {v8}, Ljavax/crypto/Cipher$Transform;->-$$Nest$fgetname(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v9

    .line 2903
    .local v9, "service":Ljava/security/Provider$Service;
    if-nez v9, :cond_e9

    .line 2904
    goto :goto_d2

    .line 2907
    :cond_e9
    if-eqz p0, :cond_f7

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-eqz v10, :cond_f7

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2908
    invoke-virtual {v9, v10}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    .line 2910
    :cond_f7
    :try_start_f7
    invoke-static {v8}, Ljavax/crypto/Cipher$Transform;->-$$Nest$fgetneedToSet(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v10

    invoke-static {p0, p2, v10, v9}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v10
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_ff} :catch_103

    .line 2912
    .local v10, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v10, :cond_102

    .line 2913
    return-object v10

    .line 2919
    .end local v10    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_102
    goto :goto_107

    .line 2915
    :catch_103
    move-exception v10

    .line 2916
    .local v10, "e":Ljava/lang/Exception;
    if-nez v1, :cond_107

    .line 2917
    move-object v1, v10

    .line 2921
    .end local v8    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v9    # "service":Ljava/security/Provider$Service;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_107
    :goto_107
    goto :goto_d2

    .line 2900
    .end local v6    # "prov":Ljava/security/Provider;
    :cond_108
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 2924
    :cond_10b
    :goto_10b
    instance-of v2, v1, Ljava/security/InvalidKeyException;

    if-nez v2, :cond_183

    .line 2926
    instance-of v2, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v2, :cond_17f

    .line 2928
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_17b

    .line 2930
    if-nez v1, :cond_173

    .line 2932
    if-eqz p0, :cond_171

    iget-object v2, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v2, :cond_120

    goto :goto_171

    .line 2937
    :cond_120
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider offers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2938
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2939
    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2940
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and export format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2941
    invoke-interface {v4}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2933
    :cond_171
    :goto_171
    const/4 v2, 0x0

    return-object v2

    .line 2931
    :cond_173
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "No provider can be initialized with given key"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2929
    :cond_17b
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 2927
    :cond_17f
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    .line 2925
    :cond_183
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
.end method

.method static greylist-max-o tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 11
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "tokenizedTransformation"    # [Ljava/lang/String;
    .param p2, "type"    # Ljavax/crypto/Cipher$NeedToSet;
    .param p3, "service"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2972
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SupportedModes"

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-static {p3, v1, v3}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "SupportedPaddings"

    const/4 v3, 0x2

    aget-object v4, p1, v3

    .line 2973
    invoke-static {p3, v1, v4}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_94

    .line 2977
    :cond_19
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    .line 2978
    invoke-virtual {p3, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/CipherSpi;

    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    .line 2979
    .local v1, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    if-eqz v4, :cond_93

    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v4, :cond_31

    goto :goto_93

    .line 2982
    :cond_31
    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    .line 2983
    .local v4, "spi":Ljavax/crypto/CipherSpi;
    sget-object v5, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v5, :cond_3b

    sget-object v5, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v5, :cond_44

    :cond_3b
    aget-object v5, p1, v2

    if-eqz v5, :cond_44

    .line 2985
    aget-object v2, p1, v2

    invoke-virtual {v4, v2}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 2987
    :cond_44
    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v2, :cond_4c

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v2, :cond_55

    :cond_4c
    aget-object v2, p1, v3

    if-eqz v2, :cond_55

    .line 2989
    aget-object v2, p1, v3

    invoke-virtual {v4, v2}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    .line 2992
    :cond_55
    if-eqz p0, :cond_8b

    .line 2993
    iget-object v2, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v2}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_9a

    .line 3006
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_85

    .line 2999
    :pswitch_63
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 3001
    goto :goto_8b

    .line 2995
    :pswitch_6f
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 2997
    goto :goto_8b

    .line 3003
    :pswitch_7b
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 3004
    goto :goto_8b

    .line 3006
    :goto_85
    const-string v3, "This should never be reached"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .end local p1    # "tokenizedTransformation":[Ljava/lang/String;
    .end local p2    # "type":Ljavax/crypto/Cipher$NeedToSet;
    .end local p3    # "service":Ljava/security/Provider$Service;
    throw v2

    .line 3009
    .restart local p0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .restart local p1    # "tokenizedTransformation":[Ljava/lang/String;
    .restart local p2    # "type":Ljavax/crypto/Cipher$NeedToSet;
    .restart local p3    # "service":Ljava/security/Provider$Service;
    :cond_8b
    :goto_8b
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v3, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v4, v3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_92
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_92} :catch_97
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_92} :catch_95

    return-object v2

    .line 2980
    .end local v4    # "spi":Ljavax/crypto/CipherSpi;
    :cond_93
    :goto_93
    return-object v0

    .line 2974
    .end local v1    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_94
    :goto_94
    return-object v0

    .line 3011
    :catch_95
    move-exception v1

    goto :goto_99

    .line 3010
    :catch_97
    move-exception v1

    .line 3012
    nop

    .line 3013
    :goto_99
    return-object v0

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_6f
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public final whitelist test-api doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2355
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2357
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 2360
    if-eq p1, p2, :cond_1f

    .line 2364
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2368
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2369
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 2365
    :cond_19
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 2361
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BI)I
    .registers 9
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2013
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2016
    if-eqz p1, :cond_16

    if-ltz p2, :cond_16

    .line 2020
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2021
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v4, p1

    move v5, p2

    .end local p1    # "output":[B
    .end local p2    # "outputOffset":I
    .local v4, "output":[B
    .local v5, "outputOffset":I
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result p1

    return p1

    .line 2016
    .end local v4    # "output":[B
    .end local v5    # "outputOffset":I
    .restart local p1    # "output":[B
    .restart local p2    # "outputOffset":I
    :cond_16
    move-object v4, p1

    move v5, p2

    .line 2017
    .end local p1    # "output":[B
    .end local p2    # "outputOffset":I
    .restart local v4    # "output":[B
    .restart local v5    # "outputOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api doFinal([BII[B)I
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2197
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2200
    if-eqz p1, :cond_1c

    if-ltz p2, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1c

    if-ltz p3, :cond_1c

    .line 2205
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2206
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .local v2, "input":[B
    .local v3, "inputOffset":I
    .local v4, "inputLen":I
    .local v5, "output":[B
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result p1

    return p1

    .line 2200
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .end local v5    # "output":[B
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_1c
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2202
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .restart local v2    # "input":[B
    .restart local v3    # "inputOffset":I
    .restart local v4    # "inputLen":I
    .restart local v5    # "output":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api doFinal([BII[BI)I
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2276
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2279
    if-eqz p1, :cond_1e

    if-ltz p2, :cond_1e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1e

    if-ltz p3, :cond_1e

    if-ltz p5, :cond_1e

    .line 2285
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2286
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v2, "input":[B
    .local v3, "inputOffset":I
    .local v4, "inputLen":I
    .local v5, "output":[B
    .local v6, "outputOffset":I
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result p1

    return p1

    .line 2279
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .end local v5    # "output":[B
    .end local v6    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_1e
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 2282
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v2    # "input":[B
    .restart local v3    # "inputOffset":I
    .restart local v4    # "inputLen":I
    .restart local v5    # "output":[B
    .restart local v6    # "outputOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1954
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1956
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1957
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api doFinal([B)[B
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2066
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2069
    if-eqz p1, :cond_11

    .line 2073
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2074
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 2070
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2123
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2126
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_17

    if-ltz p3, :cond_17

    .line 2131
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2132
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 2128
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 831
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getBlockSize()I
    .registers 2

    .line 841
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 842
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public greylist-max-o test-api getCurrentSpi()Ljavax/crypto/CipherSpi;
    .registers 2

    .line 2691
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object v0
.end method

.method public final whitelist test-api getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .line 917
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 918
    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    return-object v0
.end method

.method public final whitelist test-api getIV()[B
    .registers 2

    .line 890
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 891
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 867
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_11

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 868
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_11
    :goto_11
    if-ltz p1, :cond_1d

    .line 874
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 875
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0

    .line 871
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 906
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 907
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 817
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 818
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(ILjava/security/Key;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1103
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1104
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1383
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1384
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1446
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1448
    sget-object v2, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/AlgorithmParameters;
    .end local p4    # "random":Ljava/security/SecureRandom;
    .local v3, "opmode":I
    .local v4, "key":Ljava/security/Key;
    .local v6, "params":Ljava/security/AlgorithmParameters;
    .local v7, "random":Ljava/security/SecureRandom;
    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1450
    const/4 p1, 0x1

    iput-boolean p1, v1, Ljavax/crypto/Cipher;->initialized:Z

    .line 1451
    iput v3, v1, Ljavax/crypto/Cipher;->opmode:I

    .line 1461
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1159
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1162
    :try_start_6
    sget-object v2, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;
    :try_end_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_8} :catch_1b

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    .local v3, "opmode":I
    .local v4, "key":Ljava/security/Key;
    .local v7, "random":Ljava/security/SecureRandom;
    :try_start_e
    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_11} :catch_18

    .line 1166
    nop

    .line 1168
    const/4 p1, 0x1

    iput-boolean p1, v1, Ljavax/crypto/Cipher;->initialized:Z

    .line 1169
    iput v3, v1, Ljavax/crypto/Cipher;->opmode:I

    .line 1179
    return-void

    .line 1163
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v3    # "opmode":I
    .end local v4    # "key":Ljava/security/Key;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catch_1b
    move-exception v0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object p1, v0

    .line 1165
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    .restart local v3    # "opmode":I
    .restart local v4    # "key":Ljava/security/Key;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    .local p1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :goto_21
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1242
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1243
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1305
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1307
    sget-object v2, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    .local v3, "opmode":I
    .local v4, "key":Ljava/security/Key;
    .local v5, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v7, "random":Ljava/security/SecureRandom;
    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1309
    const/4 p1, 0x1

    iput-boolean p1, v1, Ljavax/crypto/Cipher;->initialized:Z

    .line 1310
    iput v3, v1, Ljavax/crypto/Cipher;->opmode:I

    .line 1320
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/cert/Certificate;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1529
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 1530
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1601
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1605
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    .line 1608
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1609
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 1611
    .local v2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_45

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1612
    const-string v3, "2.5.29.15"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1613
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    .line 1616
    .local v3, "keyUsageInfo":[Z
    if-eqz v3, :cond_45

    const/4 v4, 0x3

    if-ne p1, v1, :cond_32

    array-length v5, v3

    if-le v5, v4, :cond_32

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_3d

    :cond_32
    if-ne p1, v4, :cond_45

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_45

    aget-boolean v4, v3, v5

    if-eqz v4, :cond_3d

    goto :goto_45

    .line 1623
    :cond_3d
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v4, "Wrong key usage"

    invoke-direct {v1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1629
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "keyUsageInfo":[Z
    :cond_45
    :goto_45
    if-nez p2, :cond_49

    const/4 v0, 0x0

    goto :goto_4d

    :cond_49
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_4d
    move-object v5, v0

    .line 1632
    .local v5, "publicKey":Ljava/security/PublicKey;
    :try_start_4e
    sget-object v3, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;
    :try_end_50
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4e .. :try_end_50} :catch_61

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    .end local p1    # "opmode":I
    .end local p3    # "random":Ljava/security/SecureRandom;
    .local v4, "opmode":I
    .local v8, "random":Ljava/security/SecureRandom;
    :try_start_55
    invoke-direct/range {v2 .. v8}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_58
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_55 .. :try_end_58} :catch_5e

    .line 1636
    nop

    .line 1638
    iput-boolean v1, v2, Ljavax/crypto/Cipher;->initialized:Z

    .line 1639
    iput v4, v2, Ljavax/crypto/Cipher;->opmode:I

    .line 1649
    return-void

    .line 1633
    :catch_5e
    move-exception v0

    move-object p1, v0

    goto :goto_66

    .end local v4    # "opmode":I
    .end local v8    # "random":Ljava/security/SecureRandom;
    .restart local p1    # "opmode":I
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catch_61
    move-exception v0

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    move-object p1, v0

    .line 1635
    .end local p3    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "opmode":I
    .restart local v8    # "random":Ljava/security/SecureRandom;
    .local p1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :goto_66
    new-instance p3, Ljava/security/InvalidKeyException;

    invoke-direct {p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final whitelist test-api unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2443
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1e

    .line 2444
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_16

    .line 2447
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    goto :goto_1e

    .line 2448
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2445
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2452
    :cond_1e
    :goto_1e
    const/4 v0, 0x3

    if-eq p3, v0, :cond_30

    const/4 v0, 0x2

    if-eq p3, v0, :cond_30

    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    goto :goto_30

    .line 2455
    :cond_28
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2458
    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2459
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1898
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1900
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 1903
    if-eq p1, p2, :cond_1f

    .line 1907
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1911
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1912
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1908
    :cond_19
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1904
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII[B)I
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1783
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1786
    if-eqz p1, :cond_20

    if-ltz p2, :cond_20

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_20

    if-ltz p3, :cond_20

    .line 1791
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1792
    if-nez p3, :cond_14

    .line 1793
    const/4 v0, 0x0

    return v0

    .line 1795
    :cond_14
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .local v2, "input":[B
    .local v3, "inputOffset":I
    .local v4, "inputLen":I
    .local v5, "output":[B
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result p1

    return p1

    .line 1786
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .end local v5    # "output":[B
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    :cond_20
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1788
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .restart local v2    # "input":[B
    .restart local v3    # "inputOffset":I
    .restart local v4    # "inputLen":I
    .restart local v5    # "output":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api update([BII[BI)I
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1841
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1844
    if-eqz p1, :cond_22

    if-ltz p2, :cond_22

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_22

    if-ltz p3, :cond_22

    if-ltz p5, :cond_22

    .line 1850
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1851
    if-nez p3, :cond_16

    .line 1852
    const/4 v0, 0x0

    return v0

    .line 1854
    :cond_16
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v2, "input":[B
    .local v3, "inputOffset":I
    .local v4, "inputLen":I
    .local v5, "output":[B
    .local v6, "outputOffset":I
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result p1

    return p1

    .line 1844
    .end local v2    # "input":[B
    .end local v3    # "inputOffset":I
    .end local v4    # "inputLen":I
    .end local v5    # "output":[B
    .end local v6    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_22
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 1847
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v2    # "input":[B
    .restart local v3    # "inputOffset":I
    .restart local v4    # "inputLen":I
    .restart local v5    # "output":[B
    .restart local v6    # "outputOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api update([B)[B
    .registers 5
    .param p1, "input"    # [B

    .line 1690
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1693
    if-eqz p1, :cond_16

    .line 1697
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1698
    array-length v0, p1

    if-nez v0, :cond_d

    .line 1699
    const/4 v0, 0x0

    return-object v0

    .line 1701
    :cond_d
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0

    .line 1694
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 1729
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1732
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1b

    if-ltz p3, :cond_1b

    .line 1737
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1738
    if-nez p3, :cond_14

    .line 1739
    const/4 v0, 0x0

    return-object v0

    .line 1741
    :cond_14
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0

    .line 1734
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 2668
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2671
    if-eqz p1, :cond_15

    .line 2675
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2676
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_f

    .line 2677
    return-void

    .line 2679
    :cond_f
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    .line 2680
    return-void

    .line 2672
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src ByteBuffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD([B)V
    .registers 4
    .param p1, "src"    # [B

    .line 2584
    if-eqz p1, :cond_8

    .line 2588
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 2589
    return-void

    .line 2585
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 2622
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2625
    if-eqz p1, :cond_1a

    if-ltz p2, :cond_1a

    if-ltz p3, :cond_1a

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1a

    .line 2630
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2631
    if-nez p3, :cond_14

    .line 2632
    return-void

    .line 2634
    :cond_14
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    .line 2635
    return-void

    .line 2627
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o updateProviderIfNeeded()V
    .registers 5

    .line 773
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 781
    nop

    .line 782
    return-void

    .line 774
    :catch_c
    move-exception v0

    .line 775
    .local v0, "lastException":Ljava/lang/Exception;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Could not construct CipherSpi instance"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 777
    .local v1, "e":Ljava/security/ProviderException;
    nop

    .line 778
    invoke-virtual {v1, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 780
    throw v1
.end method

.method public final whitelist test-api wrap(Ljava/security/Key;)[B
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2396
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1e

    .line 2397
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_16

    .line 2400
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    goto :goto_1e

    .line 2401
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for wrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2398
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2406
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2407
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
