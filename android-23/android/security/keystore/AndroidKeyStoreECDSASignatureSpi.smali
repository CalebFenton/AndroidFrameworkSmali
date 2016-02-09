.class abstract Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA1;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA224;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA256;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA384;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA512;
    }
.end annotation


# instance fields
.field private mGroupSizeBits:I

.field private final mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    #@3
    .line 143
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@6
    .line 146
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    #@8
    .line 145
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 187
    const v0, 0x10000002

    #@3
    const/4 v1, 0x3

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@7
    .line 188
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    #@9
    const v1, 0x20000005

    #@c
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@f
    .line 186
    return-void
.end method

.method protected final getAdditionalEntropyAmountForSign()I
    .locals 1

    #@0
    .prologue
    .line 193
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@2
    add-int/lit8 v0, v0, 0x7

    #@4
    div-int/lit8 v0, v0, 0x8

    #@6
    return v0
.end method

.method protected final getGroupSizeBits()I
    .locals 2

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not initialized"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 200
    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@10
    return v0
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 10
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 151
    const-string/jumbo v4, "EC"

    #@6
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 152
    new-instance v4, Ljava/security/InvalidKeyException;

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "Unsupported key algorithm: "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 153
    const-string/jumbo v6, ". Only"

    #@29
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 153
    const-string/jumbo v6, "EC"

    #@30
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 153
    const-string/jumbo v6, " supported"

    #@37
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@42
    throw v4

    #@43
    .line 156
    :cond_0
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    #@45
    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@48
    .line 157
    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    #@4b
    move-result-object v4

    #@4c
    .line 158
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 157
    invoke-virtual {v4, v5, v6, v6, v1}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@53
    move-result v0

    #@54
    .line 159
    .local v0, "errorCode":I
    const/4 v4, 0x1

    #@55
    if-eq v0, v4, :cond_1

    #@57
    .line 160
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v4, v5, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    #@62
    move-result-object v4

    #@63
    throw v4

    #@64
    .line 162
    :cond_1
    const v4, 0x30000003

    #@67
    invoke-virtual {v1, v4, v8, v9}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@6a
    move-result-wide v2

    #@6b
    .line 163
    .local v2, "keySizeBits":J
    cmp-long v4, v2, v8

    #@6d
    if-nez v4, :cond_2

    #@6f
    .line 164
    new-instance v4, Ljava/security/InvalidKeyException;

    #@71
    const-string/jumbo v5, "Size of key not known"

    #@74
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@77
    throw v4

    #@78
    .line 165
    :cond_2
    const-wide/32 v4, 0x7fffffff

    #@7b
    cmp-long v4, v2, v4

    #@7d
    if-lez v4, :cond_3

    #@7f
    .line 166
    new-instance v4, Ljava/security/InvalidKeyException;

    #@81
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v6, "Key too large: "

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    const-string/jumbo v6, " bits"

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v4

    #@a0
    .line 168
    :cond_3
    long-to-int v4, v2

    #@a1
    iput v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@a3
    .line 170
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@a6
    .line 150
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    #@3
    .line 176
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@6
    .line 174
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    #@0
    .prologue
    .line 181
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    #@3
    .line 180
    return-void
.end method
