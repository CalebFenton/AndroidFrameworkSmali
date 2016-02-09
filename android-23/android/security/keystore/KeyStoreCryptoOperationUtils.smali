.class abstract Landroid/security/keystore/KeyStoreCryptoOperationUtils;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationUtils.java"


# static fields
.field private static volatile sRng:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 77
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 81
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@8
    .line 89
    :pswitch_0
    invoke-static {p0, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 83
    :pswitch_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@f
    const-string/jumbo v1, "Invalid IV"

    #@12
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@15
    return-object v0

    #@16
    .line 85
    :pswitch_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@18
    const-string/jumbo v1, "Caller-provided IV not permitted"

    #@1b
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1e
    return-object v0

    #@1f
    .line 81
    nop

    #@20
    :pswitch_data_0
    .packed-switch -0x37
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 47
    const/4 v1, 0x1

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 48
    return-object v2

    #@5
    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0, v1, p2}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    #@c
    move-result-object v0

    #@d
    .line 55
    .local v0, "e":Ljava/security/InvalidKeyException;
    packed-switch p2, :pswitch_data_0

    #@10
    .line 66
    :cond_1
    return-object v0

    #@11
    .line 61
    :pswitch_0
    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 62
    return-object v2

    #@16
    .line 55
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .locals 2
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    #@0
    .prologue
    .line 99
    if-gtz p1, :cond_0

    #@2
    .line 100
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@4
    return-object v1

    #@5
    .line 102
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 103
    invoke-static {}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    #@a
    move-result-object p0

    #@b
    .line 105
    :cond_1
    new-array v0, p1, [B

    #@d
    .line 106
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@10
    .line 107
    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 113
    sget-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    new-instance v0, Ljava/security/SecureRandom;

    #@6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@9
    sput-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    #@b
    .line 116
    :cond_0
    sget-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    #@d
    return-object v0
.end method
