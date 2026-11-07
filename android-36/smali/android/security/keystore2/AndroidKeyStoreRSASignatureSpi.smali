.class abstract Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;
.super Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PSSPadding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding;,
        Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;
    }
.end annotation


# instance fields
.field private final blacklist mKeymasterDigest:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "keymasterDigest"    # I
    .param p2, "keymasterPadding"    # I

    .line 183
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;-><init>()V

    .line 184
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;->mKeymasterDigest:I

    .line 185
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;->mKeymasterPadding:I

    .line 186
    return-void
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;->mKeymasterDigest:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSASignatureSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method protected final blacklist initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 6
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 194
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 195
    return-void

    .line 191
    :cond_10
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist resetAll()V
    .registers 1

    .line 199
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 200
    return-void
.end method

.method protected final blacklist resetWhilePreservingInitState()V
    .registers 1

    .line 204
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 205
    return-void
.end method
