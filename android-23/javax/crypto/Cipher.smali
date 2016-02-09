.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$NeedToSet;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$Transform;
    }
.end annotation


# static fields
.field private static synthetic -javax_crypto_Cipher$InitTypeSwitchesValues:[I = null

.field private static final ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final initLock:Ljava/lang/Object;

.field private mode:I

.field private provider:Ljava/security/Provider;

.field private final specifiedProvider:Ljava/security/Provider;

.field private final specifiedSpi:Ljavax/crypto/CipherSpi;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private final transformParts:[Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method private static synthetic -getjavax_crypto_Cipher$InitTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljavax/crypto/Cipher;->-javax_crypto_Cipher$InitTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljavax/crypto/Cipher;->-javax_crypto_Cipher$InitTypeSwitchesValues:[I

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
    sput-object v0, Ljavax/crypto/Cipher;->-javax_crypto_Cipher$InitTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 162
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "Cipher"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "transformParts"    # [Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 203
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    #@a
    .line 234
    iput-object p1, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@c
    .line 235
    iput-object p2, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    #@e
    .line 236
    iput-object p3, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    #@10
    .line 237
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@13
    .line 233
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 203
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    #@b
    .line 221
    if-nez p1, :cond_0

    #@d
    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "cipherSpi == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 224
    :cond_0
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    #@18
    if-nez v0, :cond_1

    #@1a
    if-nez p2, :cond_1

    #@1c
    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "provider == null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 227
    :cond_1
    iput-object p2, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    #@27
    .line 228
    iput-object p1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@29
    .line 229
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@2b
    .line 230
    iput-object v1, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    #@2d
    .line 220
    return-void
.end method

.method private static checkInputOffsetAndCount(III)V
    .locals 3
    .param p0, "inputArrayLength"    # I
    .param p1, "inputOffset"    # I
    .param p2, "inputLen"    # I

    #@0
    .prologue
    .line 1197
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1198
    if-le p1, p0, :cond_1

    #@6
    .line 1200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "input.length="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 1201
    const-string/jumbo v2, "; inputOffset="

    #@1b
    .line 1200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1202
    const-string/jumbo v2, "; inputLen="

    #@26
    .line 1200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 1199
    :cond_1
    sub-int v0, p0, p1

    #@38
    if-lt v0, p2, :cond_0

    #@3a
    .line 1196
    return-void
.end method

.method private checkMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 734
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_0

    #@6
    const/4 v0, 0x4

    #@7
    if-eq p1, v0, :cond_0

    #@9
    .line 735
    const/4 v0, 0x3

    #@a
    if-eq p1, v0, :cond_0

    #@c
    .line 736
    new-instance v0, Ljava/security/InvalidParameterException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid mode: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 733
    :cond_0
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
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
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    .line 387
    const-string/jumbo v4, "/"

    #@6
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 388
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    .line 391
    :cond_0
    const-string/jumbo v4, "/"

    #@13
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 392
    .local v2, "pieces":[Ljava/lang/String;
    array-length v4, v2

    #@18
    if-le v4, v7, :cond_1

    #@1a
    .line 393
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@1d
    move-result-object v4

    #@1e
    throw v4

    #@1f
    .line 396
    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    #@21
    .line 397
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@23
    if-ge v0, v4, :cond_3

    #@25
    .line 398
    aget-object v4, v2, v0

    #@27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 399
    .local v1, "piece":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_2

    #@31
    .line 400
    aput-object v1, v3, v0

    #@33
    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 404
    .end local v1    # "piece":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@37
    aget-object v4, v3, v4

    #@39
    if-nez v4, :cond_4

    #@3b
    .line 405
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@3e
    move-result-object v4

    #@3f
    throw v4

    #@40
    .line 407
    :cond_4
    aget-object v4, v3, v5

    #@42
    if-nez v4, :cond_5

    #@44
    aget-object v4, v3, v6

    #@46
    if-eqz v4, :cond_7

    #@48
    :cond_5
    aget-object v4, v3, v5

    #@4a
    if-eqz v4, :cond_6

    #@4c
    aget-object v4, v3, v6

    #@4e
    if-nez v4, :cond_7

    #@50
    .line 408
    :cond_6
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@53
    move-result-object v4

    #@54
    throw v4

    #@55
    .line 410
    :cond_7
    return-object v3
.end method

.method private static getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
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
    .line 339
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 340
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@b
    move-result-object v3

    #@c
    throw v3

    #@d
    .line 343
    :cond_1
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 347
    .local v2, "transformParts":[Ljava/lang/String;
    const/4 v3, 0x0

    #@12
    :try_start_0
    invoke-static {v3, p1, p0, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    .line 353
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v1, :cond_3

    #@18
    .line 354
    if-nez p1, :cond_2

    #@1a
    .line 355
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "No provider found for "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 348
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@35
    .line 350
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/ProviderException;

    #@37
    invoke-direct {v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    #@3a
    throw v3

    #@3b
    .line 357
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Provider "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 358
    const-string/jumbo v5, " does not provide "

    #@54
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@63
    throw v3

    #@64
    .line 361
    :cond_3
    new-instance v3, Ljavax/crypto/Cipher;

    #@66
    invoke-direct {v3, p0, v2, p1}, Ljavax/crypto/Cipher;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/security/Provider;)V

    #@69
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
    .line 261
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

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
    .line 289
    if-nez p1, :cond_0

    #@2
    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "provider == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 293
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@e
    move-result-object v0

    #@f
    .line 294
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_1

    #@11
    .line 295
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Provider not available: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 297
    :cond_1
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@2e
    move-result-object v1

    #@2f
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
    .line 322
    if-nez p1, :cond_0

    #@2
    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "provider == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 325
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

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
    .line 1725
    if-nez p0, :cond_0

    #@2
    .line 1726
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "transformation == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1728
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    .line 1730
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
    .line 1749
    if-nez p0, :cond_0

    #@3
    .line 1750
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "transformation == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1752
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    #@f
    .line 1754
    return-object v0
.end method

.method private getSpi()Ljavax/crypto/CipherSpi;
    .locals 3

    #@0
    .prologue
    .line 455
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-direct {p0, v1}, Ljavax/crypto/Cipher;->getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 456
    :catch_0
    move-exception v0

    #@7
    .line 457
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    #@9
    const-string/jumbo v2, "Exception thrown when params == null"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;
    .locals 5
    .param p1, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 426
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@6
    return-object v1

    #@7
    .line 429
    :cond_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 433
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    #@c
    if-eqz v1, :cond_1

    #@e
    if-nez p1, :cond_1

    #@10
    .line 434
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    return-object v1

    #@14
    .line 437
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/Cipher;->specifiedProvider:Ljava/security/Provider;

    #@16
    .line 438
    iget-object v3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@18
    iget-object v4, p0, Ljavax/crypto/Cipher;->transformParts:[Ljava/lang/String;

    #@1a
    .line 437
    invoke-static {p1, v1, v3, v4}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@1d
    move-result-object v0

    #@1e
    .line 439
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_2

    #@20
    .line 440
    new-instance v1, Ljava/security/ProviderException;

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "No provider found for "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 429
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .line 443
    .restart local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    :try_start_2
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@41
    check-cast v1, Ljavax/crypto/CipherSpi;

    #@43
    iput-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    #@45
    .line 444
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@47
    iput-object v1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    #@49
    .line 446
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    monitor-exit v2

    #@4c
    return-object v1
.end method

.method private static invalidTransformation(Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid transformation: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 630
    if-nez p2, :cond_0

    #@3
    .line 631
    return v2

    #@4
    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 634
    .local v0, "pattern":Ljava/lang/String;
    if-nez v0, :cond_1

    #@a
    .line 635
    return v2

    #@b
    .line 637
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 638
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

.method private static tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 12
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "transformParts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    new-instance v8, Ljava/util/ArrayList;

    #@2
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 498
    .local v8, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v9, 0x1

    #@6
    aget-object v9, p3, v9

    #@8
    if-eqz v9, :cond_0

    #@a
    const/4 v9, 0x2

    #@b
    aget-object v9, p3, v9

    #@d
    if-eqz v9, :cond_0

    #@f
    .line 499
    new-instance v9, Ljavax/crypto/Cipher$Transform;

    #@11
    new-instance v10, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/4 v11, 0x0

    #@17
    aget-object v11, p3, v11

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    const-string/jumbo v11, "/"

    #@20
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    const/4 v11, 0x1

    #@25
    aget-object v11, p3, v11

    #@27
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v10

    #@2b
    const-string/jumbo v11, "/"

    #@2e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v10

    #@32
    .line 500
    const/4 v11, 0x2

    #@33
    aget-object v11, p3, v11

    #@35
    .line 499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v10

    #@3d
    .line 500
    sget-object v11, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    #@3f
    .line 499
    invoke-direct {v9, v10, v11}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@42
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 502
    :cond_0
    const/4 v9, 0x1

    #@46
    aget-object v9, p3, v9

    #@48
    if-eqz v9, :cond_1

    #@4a
    .line 503
    new-instance v9, Ljavax/crypto/Cipher$Transform;

    #@4c
    new-instance v10, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const/4 v11, 0x0

    #@52
    aget-object v11, p3, v11

    #@54
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v10

    #@58
    const-string/jumbo v11, "/"

    #@5b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v10

    #@5f
    const/4 v11, 0x1

    #@60
    aget-object v11, p3, v11

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    .line 504
    sget-object v11, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@6c
    .line 503
    invoke-direct {v9, v10, v11}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@6f
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72
    .line 506
    :cond_1
    const/4 v9, 0x2

    #@73
    aget-object v9, p3, v9

    #@75
    if-eqz v9, :cond_2

    #@77
    .line 507
    new-instance v9, Ljavax/crypto/Cipher$Transform;

    #@79
    new-instance v10, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const/4 v11, 0x0

    #@7f
    aget-object v11, p3, v11

    #@81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v10

    #@85
    const-string/jumbo v11, "//"

    #@88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    const/4 v11, 0x2

    #@8d
    aget-object v11, p3, v11

    #@8f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 508
    sget-object v11, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@99
    .line 507
    invoke-direct {v9, v10, v11}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@9c
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f
    .line 510
    :cond_2
    new-instance v9, Ljavax/crypto/Cipher$Transform;

    #@a1
    const/4 v10, 0x0

    #@a2
    aget-object v10, p3, v10

    #@a4
    sget-object v11, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@a6
    invoke-direct {v9, v10, v11}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    #@a9
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 514
    const/4 v0, 0x0

    #@ad
    .line 515
    .local v0, "cause":Ljava/lang/Exception;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v7

    #@b1
    .end local v0    # "cause":Ljava/lang/Exception;
    .local v7, "transform$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@b4
    move-result v9

    #@b5
    if-eqz v9, :cond_8

    #@b7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ba
    move-result-object v6

    #@bb
    check-cast v6, Ljavax/crypto/Cipher$Transform;

    #@bd
    .line 516
    .local v6, "transform":Ljavax/crypto/Cipher$Transform;
    if-eqz p1, :cond_4

    #@bf
    .line 517
    const-string/jumbo v9, "Cipher"

    #@c2
    invoke-static {v6}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {p1, v9, v10}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@c9
    move-result-object v3

    #@ca
    .line 518
    .local v3, "service":Ljava/security/Provider$Service;
    if-eqz v3, :cond_3

    #@cc
    .line 521
    invoke-static {v6}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    #@cf
    move-result-object v9

    #@d0
    invoke-static {p0, p3, v9, v3}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@d3
    move-result-object v9

    #@d4
    return-object v9

    #@d5
    .line 524
    .end local v3    # "service":Ljava/security/Provider$Service;
    :cond_4
    sget-object v9, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@d7
    invoke-static {v6}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    #@da
    move-result-object v10

    #@db
    invoke-virtual {v9, v10}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    #@de
    move-result-object v5

    #@df
    .line 525
    .local v5, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-eqz v5, :cond_3

    #@e1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@e4
    move-result v9

    #@e5
    if-nez v9, :cond_3

    #@e7
    .line 528
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ea
    move-result-object v4

    #@eb
    .local v4, "service$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@ee
    move-result v9

    #@ef
    if-eqz v9, :cond_3

    #@f1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f4
    move-result-object v3

    #@f5
    check-cast v3, Ljava/security/Provider$Service;

    #@f7
    .line 529
    .restart local v3    # "service":Ljava/security/Provider$Service;
    if-eqz p0, :cond_6

    #@f9
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@fc
    move-result-object v9

    #@fd
    if-nez v9, :cond_7

    #@ff
    .line 533
    :cond_6
    :goto_1
    :try_start_0
    invoke-static {v6}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    #@102
    move-result-object v9

    #@103
    .line 532
    invoke-static {p0, p3, v9, v3}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@106
    move-result-object v2

    #@107
    .line 534
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-eqz v2, :cond_5

    #@109
    .line 535
    return-object v2

    #@10a
    .line 530
    .end local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_7
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {v3, v9}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    #@111
    move-result v9

    #@112
    .line 529
    if-eqz v9, :cond_5

    #@114
    goto :goto_1

    #@115
    .line 537
    :catch_0
    move-exception v1

    #@116
    .line 538
    .local v1, "e":Ljava/lang/Exception;
    if-nez v0, :cond_5

    #@118
    .line 539
    move-object v0, v1

    #@119
    .local v0, "cause":Ljava/lang/Exception;
    goto :goto_0

    #@11a
    .line 545
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "service":Ljava/security/Provider$Service;
    .end local v4    # "service$iterator":Ljava/util/Iterator;
    .end local v5    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .end local v6    # "transform":Ljavax/crypto/Cipher$Transform;
    :cond_8
    instance-of v9, v0, Ljava/security/InvalidKeyException;

    #@11c
    if-eqz v9, :cond_9

    #@11e
    .line 546
    check-cast v0, Ljava/security/InvalidKeyException;

    #@120
    throw v0

    #@121
    .line 547
    :cond_9
    instance-of v9, v0, Ljava/security/InvalidAlgorithmParameterException;

    #@123
    if-eqz v9, :cond_a

    #@125
    .line 548
    check-cast v0, Ljava/security/InvalidAlgorithmParameterException;

    #@127
    throw v0

    #@128
    .line 549
    :cond_a
    instance-of v9, v0, Ljava/lang/RuntimeException;

    #@12a
    if-eqz v9, :cond_b

    #@12c
    .line 550
    check-cast v0, Ljava/lang/RuntimeException;

    #@12e
    throw v0

    #@12f
    .line 551
    :cond_b
    if-eqz v0, :cond_c

    #@131
    .line 552
    new-instance v9, Ljava/security/InvalidKeyException;

    #@133
    const-string/jumbo v10, "No provider can be initialized with given key"

    #@136
    invoke-direct {v9, v10, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@139
    throw v9

    #@13a
    .line 553
    :cond_c
    if-eqz p0, :cond_d

    #@13c
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@13f
    move-result-object v9

    #@140
    if-nez v9, :cond_e

    #@142
    .line 554
    :cond_d
    const/4 v9, 0x0

    #@143
    return-object v9

    #@144
    .line 558
    :cond_e
    new-instance v9, Ljava/security/InvalidKeyException;

    #@146
    new-instance v10, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v11, "No provider offers "

    #@14e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v10

    #@152
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v10

    #@156
    const-string/jumbo v11, " for "

    #@159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v10

    #@15d
    .line 559
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@160
    move-result-object v11

    #@161
    invoke-interface {v11}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@164
    move-result-object v11

    #@165
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v10

    #@169
    .line 559
    const-string/jumbo v11, " key of class "

    #@16c
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v10

    #@170
    .line 560
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@173
    move-result-object v11

    #@174
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@177
    move-result-object v11

    #@178
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17b
    move-result-object v11

    #@17c
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v10

    #@180
    .line 560
    const-string/jumbo v11, " and export format "

    #@183
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v10

    #@187
    .line 561
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@18a
    move-result-object v11

    #@18b
    invoke-interface {v11}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@18e
    move-result-object v11

    #@18f
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v10

    #@193
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v10

    #@197
    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v9
.end method

.method private static tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 9
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "transformParts"    # [Ljava/lang/String;
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
    .line 582
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
    .line 583
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
    .line 587
    sget-object v4, Ljavax/crypto/Cipher;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-virtual {v4, p3, v5}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@1f
    move-result-object v2

    #@20
    .line 588
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v4, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@22
    if-eqz v4, :cond_0

    #@24
    iget-object v4, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@26
    if-nez v4, :cond_2

    #@28
    .line 589
    :cond_0
    return-object v8

    #@29
    .line 584
    .end local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_1
    return-object v8

    #@2a
    .line 591
    .restart local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_2
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@2c
    check-cast v3, Ljavax/crypto/CipherSpi;

    #@2e
    .line 592
    .local v3, "spi":Ljavax/crypto/CipherSpi;
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    #@30
    if-eq p2, v4, :cond_3

    #@32
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@34
    if-ne p2, v4, :cond_4

    #@36
    .line 593
    :cond_3
    const/4 v4, 0x1

    #@37
    aget-object v4, p1, v4

    #@39
    if-eqz v4, :cond_4

    #@3b
    .line 594
    const/4 v4, 0x1

    #@3c
    aget-object v4, p1, v4

    #@3e
    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    #@41
    .line 596
    :cond_4
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    #@43
    if-eq p2, v4, :cond_5

    #@45
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    #@47
    if-ne p2, v4, :cond_6

    #@49
    .line 597
    :cond_5
    const/4 v4, 0x2

    #@4a
    aget-object v4, p1, v4

    #@4c
    if-eqz v4, :cond_6

    #@4e
    .line 598
    const/4 v4, 0x2

    #@4f
    aget-object v4, p1, v4

    #@51
    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    #@54
    .line 601
    :cond_6
    if-eqz p0, :cond_7

    #@56
    .line 602
    invoke-static {}, Ljavax/crypto/Cipher;->-getjavax_crypto_Cipher$InitTypeSwitchesValues()[I

    #@59
    move-result-object v4

    #@5a
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get0(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/Cipher$InitType;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    #@61
    move-result v5

    #@62
    aget v4, v4, v5

    #@64
    packed-switch v4, :pswitch_data_0

    #@67
    .line 615
    new-instance v4, Ljava/lang/AssertionError;

    #@69
    const-string/jumbo v5, "This should never be reached"

    #@6c
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6f
    throw v4

    #@70
    .line 619
    .end local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_0
    move-exception v0

    #@71
    .line 622
    :goto_0
    return-object v8

    #@72
    .line 604
    .restart local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_0
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get2(Ljavax/crypto/Cipher$InitParams;)I

    #@75
    move-result v4

    #@76
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@79
    move-result-object v5

    #@7a
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get3(Ljavax/crypto/Cipher$InitParams;)Ljava/security/AlgorithmParameters;

    #@7d
    move-result-object v6

    #@7e
    .line 605
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get4(Ljavax/crypto/Cipher$InitParams;)Ljava/security/SecureRandom;

    #@81
    move-result-object v7

    #@82
    .line 604
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@85
    .line 618
    :cond_7
    :goto_1
    return-object v2

    #@86
    .line 608
    :pswitch_1
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get2(Ljavax/crypto/Cipher$InitParams;)I

    #@89
    move-result v4

    #@8a
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@8d
    move-result-object v5

    #@8e
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get5(Ljavax/crypto/Cipher$InitParams;)Ljava/security/spec/AlgorithmParameterSpec;

    #@91
    move-result-object v6

    #@92
    .line 609
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get4(Ljavax/crypto/Cipher$InitParams;)Ljava/security/SecureRandom;

    #@95
    move-result-object v7

    #@96
    .line 608
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@99
    goto :goto_1

    #@9a
    .line 620
    .end local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_1
    move-exception v1

    #@9b
    .local v1, "ignored":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    #@9c
    .line 612
    .end local v1    # "ignored":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_2
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get2(Ljavax/crypto/Cipher$InitParams;)I

    #@9f
    move-result v4

    #@a0
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get1(Ljavax/crypto/Cipher$InitParams;)Ljava/security/Key;

    #@a3
    move-result-object v5

    #@a4
    invoke-static {p0}, Ljavax/crypto/Cipher$InitParams;->-get4(Ljavax/crypto/Cipher$InitParams;)Ljava/security/SecureRandom;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    #@ab
    goto :goto_1

    #@ac
    .line 602
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
    .line 1649
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1650
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1652
    :cond_0
    if-ne p1, p2, :cond_1

    #@12
    .line 1653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "input == output"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1655
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@22
    move-result v0

    #@23
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
    const/4 v2, 0x0

    #@1
    .line 1470
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@3
    const/4 v1, 0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 1471
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v0

    #@11
    .line 1473
    :cond_0
    if-gez p2, :cond_1

    #@13
    .line 1474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "outputOffset < 0. outputOffset="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1476
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@30
    move-result-object v0

    #@31
    const/4 v1, 0x0

    #@32
    move v3, v2

    #@33
    move-object v4, p1

    #@34
    move v5, p2

    #@35
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    #@38
    move-result v0

    #@39
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
    .line 1573
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    #@9
    move-result v0

    #@a
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
    .line 1611
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1612
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1614
    :cond_0
    array-length v0, p1

    #@11
    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    #@14
    .line 1615
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@17
    move-result-object v0

    #@18
    move-object v1, p1

    #@19
    move v2, p2

    #@1a
    move v3, p3

    #@1b
    move-object v4, p4

    #@1c
    move v5, p5

    #@1d
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    #@20
    move-result v0

    #@21
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
    .line 1437
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@3
    const/4 v1, 0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v0

    #@11
    .line 1440
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@19
    move-result-object v0

    #@1a
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
    .line 1499
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1500
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1502
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@13
    move-result-object v0

    #@14
    array-length v1, p1

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@19
    move-result-object v0

    #@1a
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
    .line 1533
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1534
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1536
    :cond_0
    array-length v0, p1

    #@11
    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    #@14
    .line 1537
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 669
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCurrentSpi()Ljavax/crypto/CipherSpi;
    .locals 2

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 469
    iget-object v0, p0, Ljavax/crypto/Cipher;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@6
    return-object v0

    #@7
    .line 472
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->initLock:Ljava/lang/Object;

    #@9
    monitor-enter v0

    #@a
    .line 473
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v0

    #@d
    return-object v1

    #@e
    .line 472
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v0

    #@10
    throw v1
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    #@0
    .prologue
    .line 724
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 683
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cipher has not yet been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 686
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 710
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 647
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@3
    .line 648
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
    .line 768
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 772
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@b
    .line 774
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@d
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@10
    .line 767
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
    .line 948
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 949
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@b
    .line 951
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@d
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    #@10
    .line 947
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 8
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
    const/4 v5, 0x0

    #@1
    .line 993
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    #@4
    .line 1000
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    #@6
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p4

    #@b
    move-object v6, p3

    #@c
    move-object v7, v5

    #@d
    invoke-direct/range {v0 .. v7}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljavax/crypto/Cipher$InitParams;)V

    #@10
    invoke-direct {p0, v0}, Ljavax/crypto/Cipher;->getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;

    #@13
    .line 1001
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    #@15
    .line 992
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 9
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
    .line 810
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    #@3
    .line 815
    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    #@5
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    const/4 v7, 0x0

    #@a
    move v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    invoke-direct/range {v0 .. v7}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljavax/crypto/Cipher$InitParams;)V

    #@10
    invoke-direct {p0, v0}, Ljavax/crypto/Cipher;->getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 820
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    #@15
    .line 809
    return-void

    #@16
    .line 816
    :catch_0
    move-exception v8

    #@17
    .line 818
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/ProviderException;

    #@19
    const-string/jumbo v1, "Invalid parameters when params == null"

    #@1c
    invoke-direct {v0, v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
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
    .line 856
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 857
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@b
    .line 859
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@d
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@10
    .line 855
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 8
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
    const/4 v6, 0x0

    #@1
    .line 902
    invoke-direct {p0, p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    #@4
    .line 909
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    #@6
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    #@8
    move v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p4

    #@b
    move-object v5, p3

    #@c
    move-object v7, v6

    #@d
    invoke-direct/range {v0 .. v7}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljavax/crypto/Cipher$InitParams;)V

    #@10
    invoke-direct {p0, v0}, Ljavax/crypto/Cipher;->getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;

    #@13
    .line 910
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    #@15
    .line 901
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
    .line 1038
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1039
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@b
    .line 1041
    :cond_0
    sget-object v0, Ljavax/crypto/Cipher;->secureRandom:Ljava/security/SecureRandom;

    #@d
    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    #@10
    .line 1037
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 15
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
    .line 1081
    invoke-direct/range {p0 .. p1}, Ljavax/crypto/Cipher;->checkMode(I)V

    #@3
    .line 1082
    move-object/from16 v0, p2

    #@5
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    #@7
    if-eqz v1, :cond_0

    #@9
    move-object/from16 v1, p2

    #@b
    .line 1083
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@d
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@10
    move-result-object v9

    #@11
    .line 1084
    .local v9, "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    #@12
    .line 1085
    .local v10, "critical":Z
    if-eqz v9, :cond_0

    #@14
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1124
    .end local v9    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "critical":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1d
    move-result-object v4

    #@1e
    .line 1126
    .local v4, "key":Ljava/security/Key;
    :try_start_0
    new-instance v1, Ljavax/crypto/Cipher$InitParams;

    #@20
    sget-object v2, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    #@22
    const/4 v6, 0x0

    #@23
    const/4 v7, 0x0

    #@24
    const/4 v8, 0x0

    #@25
    move/from16 v3, p1

    #@27
    move-object/from16 v5, p3

    #@29
    invoke-direct/range {v1 .. v8}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljavax/crypto/Cipher$InitParams;)V

    #@2c
    invoke-direct {p0, v1}, Ljavax/crypto/Cipher;->getSpi(Ljavax/crypto/Cipher$InitParams;)Ljavax/crypto/CipherSpi;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 1131
    move/from16 v0, p1

    #@31
    iput v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@33
    .line 1080
    return-void

    #@34
    .line 1086
    .end local v4    # "key":Ljava/security/Key;
    .restart local v9    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "critical":Z
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v14

    #@38
    .local v14, "oid$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v13

    #@42
    check-cast v13, Ljava/lang/String;

    #@44
    .line 1087
    .local v13, "oid":Ljava/lang/String;
    const-string/jumbo v1, "2.5.29.15"

    #@47
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 1088
    const/4 v10, 0x1

    #@4e
    .line 1092
    .end local v13    # "oid":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_0

    #@50
    move-object/from16 v1, p2

    #@52
    .line 1093
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@54
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@57
    move-result-object v12

    #@58
    .line 1109
    .local v12, "keyUsage":[Z
    if-eqz v12, :cond_0

    #@5a
    .line 1110
    const/4 v1, 0x1

    #@5b
    move/from16 v0, p1

    #@5d
    if-ne v0, v1, :cond_4

    #@5f
    const/4 v1, 0x3

    #@60
    aget-boolean v1, v12, v1

    #@62
    if-eqz v1, :cond_5

    #@64
    .line 1113
    :cond_4
    const/4 v1, 0x3

    #@65
    move/from16 v0, p1

    #@67
    if-ne v0, v1, :cond_0

    #@69
    const/4 v1, 0x2

    #@6a
    aget-boolean v1, v12, v1

    #@6c
    if-nez v1, :cond_0

    #@6e
    .line 1114
    new-instance v1, Ljava/security/InvalidKeyException;

    #@70
    const-string/jumbo v2, "The public key in the certificate cannot be used for WRAP_MODE"

    #@73
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1

    #@77
    .line 1111
    :cond_5
    new-instance v1, Ljava/security/InvalidKeyException;

    #@79
    const-string/jumbo v2, "The public key in the certificate cannot be used for ENCRYPT_MODE"

    #@7c
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v1

    #@80
    .line 1127
    .end local v9    # "ce":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "critical":Z
    .end local v12    # "keyUsage":[Z
    .end local v14    # "oid$iterator":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/security/Key;
    :catch_0
    move-exception v11

    #@81
    .line 1129
    .local v11, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/ProviderException;

    #@83
    const-string/jumbo v2, "Invalid parameters when params == null"

    #@86
    invoke-direct {v1, v2, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@89
    throw v1
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
    .line 1704
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1705
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1707
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    #@12
    move-result-object v0

    #@13
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
    .line 1317
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1320
    :cond_0
    if-ne p1, p2, :cond_1

    #@12
    .line 1321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "input == output"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1323
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@22
    move-result v0

    #@23
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
    .line 1236
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    #@9
    move-result v0

    #@a
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
    const/4 v2, 0x0

    #@1
    .line 1271
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@3
    const/4 v1, 0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 1272
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v0

    #@11
    .line 1274
    :cond_0
    if-nez p1, :cond_1

    #@13
    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "input == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1277
    :cond_1
    if-nez p4, :cond_2

    #@1e
    .line 1278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "output == null"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1280
    :cond_2
    if-gez p5, :cond_3

    #@29
    .line 1281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "outputOffset < 0. outputOffset="

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 1283
    :cond_3
    array-length v0, p1

    #@44
    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    #@47
    .line 1284
    array-length v0, p1

    #@48
    if-nez v0, :cond_4

    #@4a
    .line 1285
    return v2

    #@4b
    .line 1287
    :cond_4
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@4e
    move-result-object v0

    #@4f
    move-object v1, p1

    #@50
    move v2, p2

    #@51
    move v3, p3

    #@52
    move-object v4, p4

    #@53
    move v5, p5

    #@54
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    #@57
    move-result v0

    #@58
    return v0
.end method

.method public final update([B)[B
    .locals 4
    .param p1, "input"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1149
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@9
    const/4 v1, 0x2

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 1150
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1152
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 1153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "input == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1155
    :cond_1
    array-length v0, p1

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 1156
    return-object v3

    #@21
    .line 1158
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@24
    move-result-object v0

    #@25
    array-length v1, p1

    #@26
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public final update([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1181
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@3
    const/4 v1, 0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 1182
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v0

    #@11
    .line 1184
    :cond_0
    if-nez p1, :cond_1

    #@13
    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "input == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1187
    :cond_1
    array-length v0, p1

    #@1d
    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    #@20
    .line 1188
    if-nez p3, :cond_2

    #@22
    .line 1189
    return-object v2

    #@23
    .line 1191
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 1410
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1411
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Cipher is not initialized"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1413
    :cond_0
    if-nez p1, :cond_1

    #@15
    .line 1414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "input == null"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1416
    :cond_1
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    #@25
    .line 1409
    return-void
.end method

.method public final updateAAD([B)V
    .locals 3
    .param p1, "input"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1345
    if-nez p1, :cond_0

    #@3
    .line 1346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "input == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1348
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@e
    const/4 v1, 0x1

    #@f
    if-eq v0, v1, :cond_1

    #@11
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@13
    const/4 v1, 0x2

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 1349
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 1351
    :cond_1
    array-length v0, p1

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 1352
    return-void

    #@20
    .line 1354
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@23
    move-result-object v0

    #@24
    array-length v1, p1

    #@25
    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    #@28
    .line 1344
    return-void
.end method

.method public final updateAAD([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 1380
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1381
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1383
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 1384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "input == null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1386
    :cond_1
    array-length v0, p1

    #@1c
    invoke-static {v0, p2, p3}, Ljavax/crypto/Cipher;->checkInputOffsetAndCount(III)V

    #@1f
    .line 1387
    array-length v0, p1

    #@20
    if-nez v0, :cond_2

    #@22
    .line 1388
    return-void

    #@23
    .line 1390
    :cond_2
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    #@2a
    .line 1379
    return-void
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
    .line 1674
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1675
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1677
    :cond_0
    invoke-direct {p0}, Ljavax/crypto/Cipher;->getSpi()Ljavax/crypto/CipherSpi;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method
