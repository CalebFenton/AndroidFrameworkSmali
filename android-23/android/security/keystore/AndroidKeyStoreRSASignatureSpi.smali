.class abstract Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding;
    }
.end annotation


# instance fields
.field private final mKeymasterDigest:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "keymasterDigest"    # I
    .param p2, "keymasterPadding"    # I

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    #@3
    .line 134
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;->mKeymasterDigest:I

    #@5
    .line 135
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;->mKeymasterPadding:I

    #@7
    .line 133
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 160
    const v0, 0x10000002

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@7
    .line 161
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;->mKeymasterDigest:I

    #@9
    const v1, 0x20000005

    #@c
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@f
    .line 162
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;->mKeymasterPadding:I

    #@11
    const v1, 0x20000006

    #@14
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@17
    .line 159
    return-void
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 3
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "RSA"

    #@3
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 141
    new-instance v0, Ljava/security/InvalidKeyException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unsupported key algorithm: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 142
    const-string/jumbo v2, ". Only"

    #@26
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 142
    const-string/jumbo v2, "RSA"

    #@2d
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 142
    const-string/jumbo v2, " supported"

    #@34
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@43
    .line 139
    return-void
.end method

.method protected final resetAll()V
    .locals 0

    #@0
    .prologue
    .line 149
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@3
    .line 148
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    #@0
    .prologue
    .line 154
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    #@3
    .line 153
    return-void
.end method
