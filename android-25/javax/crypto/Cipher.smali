.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$CipherSpiAndProvider;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$NeedToSet;,
        Ljavax/crypto/Cipher$SpiAndProviderUpdater;,
        Ljavax/crypto/Cipher$Transform;
    }
.end annotation


# static fields
.field private static final synthetic -javax-crypto-Cipher$InitTypeSwitchesValues:[I = null

.field private static final ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final KEY_USAGE_EXTENSION_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private exmech:Ljavax/crypto/ExemptionMechanism;

.field private initialized:Z

.field private opmode:I

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/CipherSpi;

.field private final spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

.field private final tokenizedTransformation:[Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static synthetic -getjavax-crypto-Cipher$InitTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljavax/crypto/Cipher$InitType;->values()[Ljavax/crypto/Cipher$InitType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    #@10
    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    #@19
    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@22
    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    #@0
    iput-object p1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .locals 0

    #@0
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 628
    const-string/jumbo v0, "jca"

    #@3
    const-string/jumbo v1, "Cipher"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    .line 627
    sput-object v0, Ljavax/crypto/Cipher;->debug:Lsun/security/util/Debug;

    #@c
    .line 625
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 681
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@7
    .line 685
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@9
    .line 703
    if-nez p1, :cond_0

    #@b
    .line 704
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "cipherSpi == null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 706
    :cond_0
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    #@16
    if-nez v0, :cond_1

    #@18
    if-nez p2, :cond_1

    #@1a
    .line 707
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "provider == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 710
    :cond_1
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@25
    .line 711
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@27
    .line 712
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@29
    .line 713
    iput-object v1, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    #@2b
    .line 716
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@2d
    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    #@30
    .line 715
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@32
    .line 702
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "tokenizedTransformation"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 681
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@6
    .line 685
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@8
    .line 723
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@a
    .line 724
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@c
    .line 725
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@e
    .line 726
    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    #@10
    .line 729
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@12
    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    #@15
    .line 728
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@17
    .line 722
    return-void
.end method

.method private checkCipherState()V
    .locals 2

    #@0
    .prologue
    .line 1639
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1640
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1641
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Cipher not initialized"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1643
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@13
    const/4 v1, 0x1

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 1644
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@18
    const/4 v1, 0x2

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 1645
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v1, "Cipher not initialized for encryption/decryption"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1638
    :cond_1
    return-void
.end method

.method private static checkOpmode(I)V
    .locals 2
    .param p0, "opmode"    # I

    #@0
    .prologue
    .line 1088
    const/4 v0, 0x1

    #@1
    if-lt p0, v0, :cond_0

    #@3
    const/4 v0, 0x4

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 1089
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    #@8
    const-string/jumbo v1, "Invalid operation mode"

    #@b
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1087
    :cond_1
    return-void
.end method

.method private chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 9
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

    #@0
    .prologue
    .line 954
    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p6

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    #@b
    .line 956
    .local v0, "initParams":Ljavax/crypto/Cipher$InitParams;
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@d
    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@f
    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@11
    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 951
    return-void

    #@15
    .line 957
    .end local v0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    :catch_0
    move-exception v8

    #@16
    .line 959
    .local v8, "lastException":Ljava/lang/Exception;
    instance-of v1, v8, Ljava/security/InvalidKeyException;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 960
    check-cast v8, Ljava/security/InvalidKeyException;

    #@1c
    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    #@1d
    .line 962
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v8, Ljava/security/InvalidAlgorithmParameterException;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 963
    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    #@23
    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    #@24
    .line 965
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_1
    instance-of v1, v8, Ljava/lang/RuntimeException;

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 966
    check-cast v8, Ljava/lang/RuntimeException;

    #@2a
    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    #@2b
    .line 968
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_2
    if-eqz p3, :cond_3

    #@2d
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    .line 969
    .local v7, "kName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/security/InvalidKeyException;

    #@37
    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "No installed provider supports this key: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    .line 969
    invoke-direct {v1, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4e
    throw v1

    #@4f
    .line 968
    .end local v7    # "kName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "(null)"

    #@52
    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_0
.end method

.method static final createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 906
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 908
    .local v2, "tokenizedTransformation":[Ljava/lang/String;
    const/4 v0, 0x0

    #@6
    .line 911
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    const/4 v3, 0x0

    #@7
    :try_start_0
    invoke-static {v3, p1, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 917
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-nez v0, :cond_1

    #@d
    .line 918
    if-nez p1, :cond_0

    #@f
    .line 919
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "No provider found for "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 912
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :catch_0
    move-exception v1

    #@2a
    .line 914
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2c
    const-string/jumbo v4, "Key/Algorithm excepton despite not passing one"

    #@2f
    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v3

    #@33
    .line 921
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_0
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Provider "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 922
    const-string/jumbo v5, " does not provide "

    #@4c
    .line 921
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 927
    :cond_1
    new-instance v3, Ljavax/crypto/Cipher;

    #@5e
    invoke-direct {v3, v4, p1, p0, v2}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    #@61
    return-object v3
.end method

.method private getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2443
    if-nez p1, :cond_0

    #@3
    .line 2444
    return-object v3

    #@4
    .line 2447
    :cond_0
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 2449
    .local v0, "alg":Ljava/lang/String;
    const-string/jumbo v1, "RC2"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 2450
    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    #@19
    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 2453
    :cond_1
    const-string/jumbo v1, "RC5"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 2454
    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    #@29
    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 2457
    :cond_2
    const-string/jumbo v1, "PBE"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 2458
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@39
    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 2461
    :cond_3
    const-string/jumbo v1, "DES"

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_4

    #@47
    .line 2462
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@49
    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@4c
    move-result-object v1

    #@4d
    return-object v1

    #@4e
    .line 2464
    :cond_4
    return-object v3
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 803
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 850
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 851
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Missing provider"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 853
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 854
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 855
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "No such provider: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 858
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 898
    if-nez p1, :cond_0

    #@2
    .line 899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Missing provider"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 901
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 2493
    if-nez p0, :cond_0

    #@2
    .line 2494
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "transformation == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2497
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    .line 2498
    const v0, 0x7fffffff

    #@11
    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2526
    if-nez p0, :cond_0

    #@3
    .line 2527
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "transformation == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 2530
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    .line 2531
    return-object v0
.end method

.method static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2679
    if-nez p2, :cond_0

    #@3
    .line 2680
    return v2

    #@4
    .line 2682
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2683
    .local v0, "pattern":Ljava/lang/String;
    if-nez v0, :cond_1

    #@a
    .line 2684
    return v2

    #@b
    .line 2686
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 2687
    .local v1, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    return v2
.end method

.method private static tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 734
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 735
    :cond_0
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@c
    const-string/jumbo v6, "No transformation given"

    #@f
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 744
    :cond_1
    new-array v4, v7, [Ljava/lang/String;

    #@15
    .line 745
    .local v4, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    #@16
    .line 746
    .local v0, "count":I
    new-instance v3, Ljava/util/StringTokenizer;

    #@18
    const-string/jumbo v5, "/"

    #@1b
    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .local v3, "parser":Ljava/util/StringTokenizer;
    move v1, v0

    #@1f
    .line 748
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_2

    #@25
    if-ge v1, v7, :cond_2

    #@27
    .line 749
    add-int/lit8 v0, v1, 0x1

    #@29
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    aput-object v5, v4, v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    #@33
    move v1, v0

    #@34
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    #@35
    .line 751
    :cond_2
    if-eqz v1, :cond_3

    #@37
    const/4 v5, 0x2

    #@38
    if-ne v1, v5, :cond_4

    #@3a
    .line 752
    :cond_3
    :try_start_2
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@3c
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "Invalid transformation format:"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@53
    throw v5
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    #@54
    .line 756
    :catch_0
    move-exception v2

    #@55
    .local v2, "e":Ljava/util/NoSuchElementException;
    move v0, v1

    #@56
    .line 757
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_1
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@58
    new-instance v6, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v7, "Invalid transformation format:"

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v5

    #@70
    .line 751
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "count":I
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    #@73
    move-result v5

    #@74
    if-nez v5, :cond_3

    #@76
    .line 760
    aget-object v5, v4, v6

    #@78
    if-eqz v5, :cond_5

    #@7a
    aget-object v5, v4, v6

    #@7c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7f
    move-result v5

    #@80
    if-nez v5, :cond_6

    #@82
    .line 761
    :cond_5
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@84
    new-instance v6, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v7, "Invalid transformation:algorithm not specified-"

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v5

    #@9c
    .line 765
    :cond_6
    return-object v4

    #@9d
    .line 756
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_1
    move-exception v2

    #@9e
    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    goto :goto_1
.end method

.method static tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 13
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "tokenizedTransformation"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 2845
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2846
    .local v7, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v8, 0x1

    #@6
    aget-object v8, p2, v8

    #@8
    if-eqz v8, :cond_0

    #@a
    const/4 v8, 0x2

    #@b
    aget-object v8, p2, v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 2847
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    #@11
    new-instance v9, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/4 v10, 0x0

    #@17
    aget-object v10, p2, v10

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    const-string/jumbo v10, "/"

    #@20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v9

    #@24
    const/4 v10, 0x1

    #@25
    aget-object v10, p2, v10

    #@27
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v9

    #@2b
    const-string/jumbo v10, "/"

    #@2e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    .line 2848
    const/4 v10, 0x2

    #@33
    aget-object v10, p2, v10

    #@35
    .line 2847
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    .line 2848
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    #@3f
    .line 2847
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@42
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 2850
    :cond_0
    const/4 v8, 0x1

    #@46
    aget-object v8, p2, v8

    #@48
    if-eqz v8, :cond_1

    #@4a
    .line 2851
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    #@4c
    new-instance v9, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const/4 v10, 0x0

    #@52
    aget-object v10, p2, v10

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    const-string/jumbo v10, "/"

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    const/4 v10, 0x1

    #@60
    aget-object v10, p2, v10

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    .line 2852
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@6c
    .line 2851
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@6f
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72
    .line 2854
    :cond_1
    const/4 v8, 0x2

    #@73
    aget-object v8, p2, v8

    #@75
    if-eqz v8, :cond_2

    #@77
    .line 2855
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    #@79
    new-instance v9, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const/4 v10, 0x0

    #@7f
    aget-object v10, p2, v10

    #@81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    const-string/jumbo v10, "//"

    #@88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    const/4 v10, 0x2

    #@8d
    aget-object v10, p2, v10

    #@8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    .line 2856
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@99
    .line 2855
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@9c
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f
    .line 2858
    :cond_2
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    #@a1
    const/4 v9, 0x0

    #@a2
    aget-object v9, p2, v9

    #@a4
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@a6
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@a9
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 2862
    const/4 v0, 0x0

    #@ad
    .line 2864
    .local v0, "cause":Ljava/lang/Exception;
    if-eqz p1, :cond_4

    #@af
    .line 2865
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b2
    move-result-object v6

    #@b3
    .local v6, "transform$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@b6
    move-result v8

    #@b7
    if-eqz v8, :cond_9

    #@b9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bc
    move-result-object v5

    #@bd
    check-cast v5, Ljavax/crypto/Cipher$Transform;

    #@bf
    .line 2866
    .local v5, "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v8, "Cipher"

    #@c2
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    #@c5
    move-result-object v9

    #@c6
    invoke-virtual {p1, v8, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@c9
    move-result-object v4

    #@ca
    .line 2867
    .local v4, "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_3

    #@cc
    .line 2870
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    #@cf
    move-result-object v8

    #@d0
    invoke-static {p0, p2, v8, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@d3
    move-result-object v8

    #@d4
    return-object v8

    #@d5
    .line 2874
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@d8
    move-result-object v9

    #@d9
    const/4 v8, 0x0

    #@da
    array-length v10, v9

    #@db
    .end local v0    # "cause":Ljava/lang/Exception;
    :goto_0
    if-ge v8, v10, :cond_9

    #@dd
    aget-object v2, v9, v8

    #@df
    .line 2875
    .local v2, "prov":Ljava/security/Provider;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e2
    move-result-object v6

    #@e3
    .restart local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@e6
    move-result v11

    #@e7
    if-eqz v11, :cond_8

    #@e9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ec
    move-result-object v5

    #@ed
    check-cast v5, Ljavax/crypto/Cipher$Transform;

    #@ef
    .line 2876
    .restart local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v11, "Cipher"

    #@f2
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    #@f5
    move-result-object v12

    #@f6
    invoke-virtual {v2, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@f9
    move-result-object v4

    #@fa
    .line 2877
    .restart local v4    # "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_5

    #@fc
    .line 2881
    if-eqz p0, :cond_6

    #@fe
    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@100
    if-nez v11, :cond_7

    #@102
    .line 2885
    :cond_6
    :goto_2
    :try_start_0
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    #@105
    move-result-object v11

    #@106
    .line 2884
    invoke-static {p0, p2, v11, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@109
    move-result-object v3

    #@10a
    .line 2886
    .local v3, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v3, :cond_5

    #@10c
    .line 2887
    return-object v3

    #@10d
    .line 2882
    .end local v3    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_7
    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@10f
    invoke-virtual {v4, v11}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@112
    move-result v11

    #@113
    .line 2881
    if-eqz v11, :cond_5

    #@115
    goto :goto_2

    #@116
    .line 2889
    :catch_0
    move-exception v1

    #@117
    .line 2890
    .local v1, "e":Ljava/lang/Exception;
    if-nez v0, :cond_5

    #@119
    .line 2891
    move-object v0, v1

    #@11a
    .local v0, "cause":Ljava/lang/Exception;
    goto :goto_1

    #@11b
    .line 2874
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@11d
    goto :goto_0

    #@11e
    .line 2898
    .end local v2    # "prov":Ljava/security/Provider;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_9
    instance-of v8, v0, Ljava/security/InvalidKeyException;

    #@120
    if-eqz v8, :cond_a

    #@122
    .line 2899
    check-cast v0, Ljava/security/InvalidKeyException;

    #@124
    throw v0

    #@125
    .line 2900
    :cond_a
    instance-of v8, v0, Ljava/security/InvalidAlgorithmParameterException;

    #@127
    if-eqz v8, :cond_b

    #@129
    .line 2901
    check-cast v0, Ljava/security/InvalidAlgorithmParameterException;

    #@12b
    throw v0

    #@12c
    .line 2902
    :cond_b
    instance-of v8, v0, Ljava/lang/RuntimeException;

    #@12e
    if-eqz v8, :cond_c

    #@130
    .line 2903
    check-cast v0, Ljava/lang/RuntimeException;

    #@132
    throw v0

    #@133
    .line 2904
    :cond_c
    if-eqz v0, :cond_d

    #@135
    .line 2905
    new-instance v8, Ljava/security/InvalidKeyException;

    #@137
    const-string/jumbo v9, "No provider can be initialized with given key"

    #@13a
    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13d
    throw v8

    #@13e
    .line 2906
    :cond_d
    if-eqz p0, :cond_e

    #@140
    iget-object v8, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@142
    if-nez v8, :cond_f

    #@144
    .line 2907
    :cond_e
    const/4 v8, 0x0

    #@145
    return-object v8

    #@146
    .line 2911
    :cond_f
    new-instance v8, Ljava/security/InvalidKeyException;

    #@148
    .line 2912
    new-instance v9, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    const-string/jumbo v10, "No provider offers "

    #@150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v9

    #@154
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v9

    #@15c
    const-string/jumbo v10, " for "

    #@15f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v9

    #@163
    .line 2913
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@165
    invoke-interface {v10}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@168
    move-result-object v10

    #@169
    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v9

    #@16d
    .line 2913
    const-string/jumbo v10, " key of class "

    #@170
    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v9

    #@174
    .line 2914
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@176
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@179
    move-result-object v10

    #@17a
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17d
    move-result-object v10

    #@17e
    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v9

    #@182
    .line 2914
    const-string/jumbo v10, " and export format "

    #@185
    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v9

    #@189
    .line 2915
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@18b
    invoke-interface {v10}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@18e
    move-result-object v10

    #@18f
    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v9

    #@193
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v9

    #@197
    .line 2911
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v8
.end method

.method static tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 9
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

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2946
    :try_start_0
    const-string/jumbo v4, "SupportedModes"

    #@4
    const/4 v5, 0x1

    #@5
    aget-object v5, p1, v5

    #@7
    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 2947
    const-string/jumbo v4, "SupportedPaddings"

    #@10
    const/4 v5, 0x2

    #@11
    aget-object v5, p1, v5

    #@13
    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 2951
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@1b
    .line 2952
    const/4 v4, 0x0

    #@1c
    invoke-virtual {p3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Ljavax/crypto/CipherSpi;

    #@22
    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@25
    move-result-object v5

    #@26
    .line 2951
    invoke-direct {v2, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    #@29
    .line 2953
    .local v2, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    #@2b
    if-eqz v4, :cond_0

    #@2d
    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    #@2f
    if-nez v4, :cond_2

    #@31
    .line 2954
    :cond_0
    return-object v8

    #@32
    .line 2948
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_1
    return-object v8

    #@33
    .line 2956
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_2
    iget-object v3, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    #@35
    .line 2957
    .local v3, "spi":Ljavax/crypto/CipherSpi;
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@37
    if-eq p2, v4, :cond_3

    #@39
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@3b
    if-ne p2, v4, :cond_4

    #@3d
    .line 2958
    :cond_3
    const/4 v4, 0x1

    #@3e
    aget-object v4, p1, v4

    #@40
    if-eqz v4, :cond_4

    #@42
    .line 2959
    const/4 v4, 0x1

    #@43
    aget-object v4, p1, v4

    #@45
    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    #@48
    .line 2961
    :cond_4
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@4a
    if-eq p2, v4, :cond_5

    #@4c
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@4e
    if-ne p2, v4, :cond_6

    #@50
    .line 2962
    :cond_5
    const/4 v4, 0x2

    #@51
    aget-object v4, p1, v4

    #@53
    if-eqz v4, :cond_6

    #@55
    .line 2963
    const/4 v4, 0x2

    #@56
    aget-object v4, p1, v4

    #@58
    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    #@5b
    .line 2966
    :cond_6
    if-eqz p0, :cond_7

    #@5d
    .line 2967
    invoke-static {}, Ljavax/crypto/Cipher;->-getjavax-crypto-Cipher$InitTypeSwitchesValues()[I

    #@60
    move-result-object v4

    #@61
    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    #@63
    invoke-virtual {v5}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    #@66
    move-result v5

    #@67
    aget v4, v4, v5

    #@69
    packed-switch v4, :pswitch_data_0

    #@6c
    .line 2980
    new-instance v4, Ljava/lang/AssertionError;

    #@6e
    const-string/jumbo v5, "This should never be reached"

    #@71
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@74
    throw v4

    #@75
    .line 2984
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_0
    move-exception v0

    #@76
    .line 2987
    :goto_0
    return-object v8

    #@77
    .line 2969
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_0
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@79
    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@7b
    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    #@7d
    .line 2970
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@7f
    .line 2969
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@82
    .line 2983
    :cond_7
    :goto_1
    new-instance v4, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@84
    iget-object v5, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    #@86
    invoke-direct {v4, v3, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    #@89
    return-object v4

    #@8a
    .line 2973
    :pswitch_1
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@8c
    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@8e
    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    #@90
    .line 2974
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@92
    .line 2973
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@95
    goto :goto_1

    #@96
    .line 2985
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_1
    move-exception v1

    #@97
    .local v1, "ignored":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    #@98
    .line 2977
    .end local v1    # "ignored":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_2
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    #@9a
    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    #@9c
    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    #@9e
    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    #@a1
    goto :goto_1

    #@a2
    .line 2967
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2337
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2339
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 2340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Buffers must not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 2342
    :cond_1
    if-ne p1, p2, :cond_2

    #@12
    .line 2343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 2346
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 2347
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@23
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@26
    throw v0

    #@27
    .line 2350
    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@2a
    .line 2351
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@2c
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@2f
    move-result v0

    #@30
    return v0
.end method

.method public final doFinal([BI)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1995
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@5
    .line 1998
    if-eqz p1, :cond_0

    #@7
    if-gez p2, :cond_1

    #@9
    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Bad arguments"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 2002
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@15
    .line 2003
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@17
    move v3, v2

    #@18
    move-object v4, p1

    #@19
    move v5, p2

    #@1a
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public final doFinal([BII[B)I
    .locals 6
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

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2179
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@4
    .line 2182
    if-eqz p1, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 2184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Bad arguments"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2183
    :cond_1
    array-length v0, p1

    #@12
    sub-int/2addr v0, p2

    #@13
    if-gt p3, v0, :cond_0

    #@15
    if-ltz p3, :cond_0

    #@17
    .line 2187
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1a
    .line 2188
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1c
    move-object v1, p1

    #@1d
    move v2, p2

    #@1e
    move v3, p3

    #@1f
    move-object v4, p4

    #@20
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public final doFinal([BII[BI)I
    .locals 6
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

    #@0
    .prologue
    .line 2258
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2261
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 2264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Bad arguments"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 2262
    :cond_1
    array-length v0, p1

    #@11
    sub-int/2addr v0, p2

    #@12
    if-gt p3, v0, :cond_0

    #@14
    if-ltz p3, :cond_0

    #@16
    .line 2263
    if-ltz p5, :cond_0

    #@18
    .line 2267
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1b
    .line 2268
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1d
    move-object v1, p1

    #@1e
    move v2, p2

    #@1f
    move v3, p3

    #@20
    move-object v4, p4

    #@21
    move v5, p5

    #@22
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1936
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@4
    .line 1938
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@7
    .line 1939
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2048
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2051
    if-nez p1, :cond_0

    #@5
    .line 2052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Null input buffer"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 2055
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@11
    .line 2056
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@13
    array-length v1, p1

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2105
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2108
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 2110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Bad arguments"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 2109
    :cond_1
    array-length v0, p1

    #@11
    sub-int/2addr v0, p2

    #@12
    if-gt p3, v0, :cond_0

    #@14
    if-ltz p3, :cond_0

    #@16
    .line 2113
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@19
    .line 2114
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1b
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 1005
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@3
    .line 1006
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getCurrentSpi()Ljavax/crypto/CipherSpi;
    .locals 1

    #@0
    .prologue
    .line 2665
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@2
    return-object v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    #@0
    .prologue
    .line 1081
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@3
    .line 1082
    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    #@5
    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    #@0
    .prologue
    .line 1054
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@3
    .line 1055
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 1031
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1034
    :cond_0
    if-gez p1, :cond_2

    #@a
    .line 1035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1032
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "Cipher not initialized"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1038
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1f
    .line 1039
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@21
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 1070
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@3
    .line 1071
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@5
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 981
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@3
    .line 982
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1143
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@5
    .line 1142
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1393
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@5
    .line 1391
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 7
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

    #@0
    .prologue
    .line 1452
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@3
    .line 1453
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    #@6
    .line 1455
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    #@8
    const/4 v4, 0x0

    #@9
    move-object v0, p0

    #@a
    move v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v5, p3

    #@d
    move-object v6, p4

    #@e
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@11
    .line 1457
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@14
    .line 1458
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    #@16
    .line 1450
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1195
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@3
    .line 1196
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    #@6
    .line 1199
    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@8
    const/4 v4, 0x0

    #@9
    const/4 v5, 0x0

    #@a
    move-object v0, p0

    #@b
    move v2, p1

    #@c
    move-object v3, p2

    #@d
    move-object v6, p3

    #@e
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1205
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@14
    .line 1206
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    #@16
    .line 1193
    return-void

    #@17
    .line 1200
    :catch_0
    move-exception v7

    #@18
    .line 1202
    .local v7, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@1a
    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v0
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 1265
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
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

    #@0
    .prologue
    .line 1326
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@3
    .line 1327
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    #@6
    .line 1329
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    #@8
    const/4 v5, 0x0

    #@9
    move-object v0, p0

    #@a
    move v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v6, p4

    #@e
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@11
    .line 1331
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@14
    .line 1332
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    #@16
    .line 1324
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1524
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    #@5
    .line 1522
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v1, 0x3

    #@3
    .line 1591
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@6
    .line 1592
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    #@9
    .line 1596
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    #@b
    if-eqz v0, :cond_0

    #@d
    move-object v7, p2

    #@e
    .line 1599
    check-cast v7, Ljava/security/cert/X509Certificate;

    #@10
    .line 1600
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@13
    move-result-object v8

    #@14
    .line 1602
    .local v8, "critSet":Ljava/util/Set;
    if-eqz v8, :cond_0

    #@16
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1620
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "critSet":Ljava/util/Set;
    :cond_0
    if-nez p2, :cond_3

    #@1e
    const/4 v3, 0x0

    #@1f
    .line 1623
    :goto_0
    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@21
    const/4 v4, 0x0

    #@22
    const/4 v5, 0x0

    #@23
    move-object v0, p0

    #@24
    move v2, p1

    #@25
    move-object v6, p3

    #@26
    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1629
    iput-boolean v11, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@2b
    .line 1630
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    #@2d
    .line 1590
    return-void

    #@2e
    .line 1603
    .restart local v7    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "critSet":Ljava/util/Set;
    :cond_1
    const-string/jumbo v0, "2.5.29.15"

    #@31
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    .line 1602
    if-eqz v0, :cond_0

    #@37
    .line 1604
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@3a
    move-result-object v10

    #@3b
    .line 1607
    .local v10, "keyUsageInfo":[Z
    if-eqz v10, :cond_0

    #@3d
    .line 1608
    if-ne p1, v11, :cond_2

    #@3f
    .line 1609
    array-length v0, v10

    #@40
    if-le v0, v1, :cond_2

    #@42
    .line 1610
    aget-boolean v0, v10, v1

    #@44
    if-nez v0, :cond_2

    #@46
    .line 1614
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    #@48
    const-string/jumbo v1, "Wrong key usage"

    #@4b
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 1611
    :cond_2
    if-ne p1, v1, :cond_0

    #@51
    .line 1612
    array-length v0, v10

    #@52
    if-le v0, v2, :cond_0

    #@54
    .line 1613
    aget-boolean v0, v10, v2

    #@56
    if-nez v0, :cond_0

    #@58
    goto :goto_1

    #@59
    .line 1620
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "critSet":Ljava/util/Set;
    .end local v10    # "keyUsageInfo":[Z
    :cond_3
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5c
    move-result-object v3

    #@5d
    .local v3, "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    #@5e
    .line 1624
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v9

    #@5f
    .line 1626
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    #@61
    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@64
    throw v0
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 2419
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2420
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2421
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Cipher not initialized"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2423
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@13
    const/4 v1, 0x4

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 2424
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v1, "Cipher not initialized for unwrapping keys"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 2428
    :cond_1
    const/4 v0, 0x3

    #@20
    if-eq p3, v0, :cond_2

    #@22
    .line 2429
    const/4 v0, 0x2

    #@23
    if-eq p3, v0, :cond_2

    #@25
    .line 2430
    const/4 v0, 0x1

    #@26
    if-eq p3, v0, :cond_2

    #@28
    .line 2431
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2a
    const-string/jumbo v1, "Invalid key type"

    #@2d
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 2434
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@34
    .line 2435
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@36
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 1880
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 1882
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Buffers must not be null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1885
    :cond_1
    if-ne p1, p2, :cond_2

    #@12
    .line 1886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1889
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 1890
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@23
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@26
    throw v0

    #@27
    .line 1893
    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@2a
    .line 1894
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@2c
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@2f
    move-result v0

    #@30
    return v0
.end method

.method public final update([BII[B)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1765
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@4
    .line 1768
    if-eqz p1, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 1770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Bad arguments"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1769
    :cond_1
    array-length v0, p1

    #@12
    sub-int/2addr v0, p2

    #@13
    if-gt p3, v0, :cond_0

    #@15
    if-ltz p3, :cond_0

    #@17
    .line 1773
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1a
    .line 1774
    if-nez p3, :cond_2

    #@1c
    .line 1775
    return v5

    #@1d
    .line 1777
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1f
    move-object v1, p1

    #@20
    move v2, p2

    #@21
    move v3, p3

    #@22
    move-object v4, p4

    #@23
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public final update([BII[BI)I
    .locals 6
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

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1823
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@4
    .line 1826
    if-eqz p1, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 1829
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Bad arguments"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1827
    :cond_1
    array-length v0, p1

    #@12
    sub-int/2addr v0, p2

    #@13
    if-gt p3, v0, :cond_0

    #@15
    if-ltz p3, :cond_0

    #@17
    .line 1828
    if-ltz p5, :cond_0

    #@19
    .line 1832
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1c
    .line 1833
    if-nez p3, :cond_2

    #@1e
    .line 1834
    return v1

    #@1f
    .line 1836
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@21
    move-object v1, p1

    #@22
    move v2, p2

    #@23
    move v3, p3

    #@24
    move-object v4, p4

    #@25
    move v5, p5

    #@26
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public final update([B)[B
    .locals 3
    .param p1, "input"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1672
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@5
    .line 1675
    if-nez p1, :cond_0

    #@7
    .line 1676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Null input buffer"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1679
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@13
    .line 1680
    array-length v0, p1

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1681
    return-object v1

    #@17
    .line 1683
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@19
    array-length v1, p1

    #@1a
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public final update([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1711
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@4
    .line 1714
    if-eqz p1, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 1716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Bad arguments"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1715
    :cond_1
    array-length v0, p1

    #@12
    sub-int/2addr v0, p2

    #@13
    if-gt p3, v0, :cond_0

    #@15
    if-ltz p3, :cond_0

    #@17
    .line 1719
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1a
    .line 1720
    if-nez p3, :cond_2

    #@1c
    .line 1721
    return-object v1

    #@1d
    .line 1723
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1f
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 2644
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2647
    if-nez p1, :cond_0

    #@5
    .line 2648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "src ByteBuffer is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 2651
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@11
    .line 2652
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 2653
    return-void

    #@18
    .line 2655
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1a
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    #@1d
    .line 2643
    return-void
.end method

.method public final updateAAD([B)V
    .locals 2
    .param p1, "src"    # [B

    #@0
    .prologue
    .line 2560
    if-nez p1, :cond_0

    #@2
    .line 2561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "src buffer is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2564
    :cond_0
    array-length v0, p1

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    #@10
    .line 2559
    return-void
.end method

.method public final updateAAD([BII)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 2598
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    #@3
    .line 2601
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 2603
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Bad arguments"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 2601
    :cond_1
    if-ltz p3, :cond_0

    #@12
    .line 2602
    add-int v0, p3, p2

    #@14
    array-length v1, p1

    #@15
    if-gt v0, v1, :cond_0

    #@17
    .line 2606
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@1a
    .line 2607
    if-nez p3, :cond_2

    #@1c
    .line 2608
    return-void

    #@1d
    .line 2610
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@1f
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    #@22
    .line 2597
    return-void
.end method

.method updateProviderIfNeeded()V
    .locals 6

    #@0
    .prologue
    .line 937
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    #@2
    iget-object v3, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@4
    iget-object v4, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@6
    const/4 v5, 0x0

    #@7
    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 935
    return-void

    #@b
    .line 938
    :catch_0
    move-exception v1

    #@c
    .line 939
    .local v1, "lastException":Ljava/lang/Exception;
    new-instance v0, Ljava/security/ProviderException;

    #@e
    .line 940
    const-string/jumbo v2, "Could not construct CipherSpi instance"

    #@11
    .line 939
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@14
    .line 941
    .local v0, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_0

    #@16
    .line 942
    invoke-virtual {v0, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@19
    .line 944
    :cond_0
    throw v0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 2375
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2376
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2377
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Cipher not initialized"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2379
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    #@13
    const/4 v1, 0x3

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 2380
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v1, "Cipher not initialized for wrapping keys"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 2385
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    #@22
    .line 2386
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    #@24
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
