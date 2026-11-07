.class public Landroid/hardware/biometrics/CryptoObject;
.super Ljava/lang/Object;
.source "CryptoObject.java"


# instance fields
.field private final greylist-max-o mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "operationHandle"    # J

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/IdentityCredential;)V
    .registers 2
    .param p1, "credential"    # Landroid/security/identity/IdentityCredential;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/PresentationSession;)V
    .registers 2
    .param p1, "session"    # Landroid/security/identity/PresentationSession;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1, "signature"    # Ljava/security/Signature;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/KeyAgreement;)V
    .registers 2
    .param p1, "keyAgreement"    # Ljavax/crypto/KeyAgreement;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public greylist-max-o getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/IdentityCredential;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyAgreement;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getOpId()J
    .registers 3

    .line 162
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 163
    const-wide/16 v0, 0x0

    return-wide v0

    .line 164
    :cond_7
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 165
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 166
    :cond_16
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_25

    .line 167
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 168
    :cond_25
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_34

    .line 169
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/PresentationSession;

    invoke-virtual {v0}, Landroid/security/identity/PresentationSession;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 171
    :cond_34
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/PresentationSession;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getSignature()Ljava/security/Signature;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
