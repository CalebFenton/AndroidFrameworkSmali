.class public final Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
.super Landroid/hardware/biometrics/CryptoObject;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 3
    .param p1, "operationHandle"    # J

    .line 1077
    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/CryptoObject;-><init>(J)V

    .line 1078
    return-void
.end method

.method public constructor whitelist <init>(Landroid/security/identity/IdentityCredential;)V
    .registers 2
    .param p1, "credential"    # Landroid/security/identity/IdentityCredential;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1047
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    .line 1048
    return-void
.end method

.method public constructor whitelist <init>(Landroid/security/identity/PresentationSession;)V
    .registers 2
    .param p1, "session"    # Landroid/security/identity/PresentationSession;

    .line 1056
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Landroid/security/identity/PresentationSession;)V

    .line 1057
    return-void
.end method

.method public constructor whitelist <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1, "signature"    # Ljava/security/Signature;

    .line 1018
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 1019
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 1027
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 1028
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/KeyAgreement;)V
    .registers 2
    .param p1, "keyAgreement"    # Ljavax/crypto/KeyAgreement;

    .line 1066
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/KeyAgreement;)V

    .line 1067
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 1036
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 1037
    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 1093
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1111
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .registers 2

    .line 1128
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getKeyAgreement()Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 1101
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOperationHandle()J
    .registers 3

    .line 1149
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getPresentationSession()Landroid/security/identity/PresentationSession;
    .registers 2

    .line 1119
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getPresentationSession()Landroid/security/identity/PresentationSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .registers 2

    .line 1085
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
