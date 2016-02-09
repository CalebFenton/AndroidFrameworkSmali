.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 1
    .param p0, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@0
    .prologue
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crypto"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .param p2, "flags"    # I
    .param p3, "cancel"    # Ljava/lang/Object;
    .param p4, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 48
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@7
    move-result-object v1

    #@8
    move-object v2, p3

    #@9
    .line 49
    check-cast v2, Landroid/os/CancellationSignal;

    #@b
    .line 50
    invoke-static {p4}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@e
    move-result-object v4

    #@f
    move v3, p2

    #@10
    move-object v5, p5

    #@11
    .line 48
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    #@14
    .line 47
    return-void
.end method

.method private static getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 35
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@8
    return-object v0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 39
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    if-nez p0, :cond_0

    #@3
    .line 69
    return-object v1

    #@4
    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 71
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    #@c
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    #@13
    return-object v0

    #@14
    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 73
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    #@1c
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    #@23
    return-object v0

    #@24
    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 75
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    #@2c
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    #@33
    return-object v0

    #@34
    .line 77
    :cond_3
    return-object v1
.end method

.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V

    #@5
    return-object v0
.end method

.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    if-nez p0, :cond_0

    #@3
    .line 55
    return-object v1

    #@4
    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 57
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@c
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    #@13
    return-object v0

    #@14
    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 59
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    #@23
    return-object v0

    #@24
    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 61
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@2c
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    #@33
    return-object v0

    #@34
    .line 63
    :cond_3
    return-object v1
.end method
