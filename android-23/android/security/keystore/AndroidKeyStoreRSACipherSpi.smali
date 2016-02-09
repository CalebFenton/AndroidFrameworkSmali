.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    #@0
    .prologue
    .line 352
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    #@3
    .line 350
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    #@6
    .line 353
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    #@8
    .line 352
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 5
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 460
    const v2, 0x10000002

    #@4
    const/4 v3, 0x1

    #@5
    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@8
    .line 461
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    #@b
    move-result v0

    #@c
    .line 462
    .local v0, "keymasterPadding":I
    if-ne v0, v4, :cond_0

    #@e
    .line 463
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    #@10
    .line 465
    :cond_0
    const v2, 0x20000006

    #@13
    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@16
    .line 466
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    #@19
    move-result v1

    #@1a
    .line 467
    .local v1, "purposeOverride":I
    if-eq v1, v4, :cond_2

    #@1c
    .line 468
    const/4 v2, 0x2

    #@1d
    if-eq v1, v2, :cond_1

    #@1f
    .line 469
    const/4 v2, 0x3

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 471
    :cond_1
    const v2, 0x20000005

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@29
    .line 459
    :cond_2
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 489
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .locals 1

    #@0
    .prologue
    .line 512
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    #@2
    return v0
.end method

.method protected final getModulusSizeBytes()I
    .locals 2

    #@0
    .prologue
    .line 498
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not initialized"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 501
    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    #@10
    return v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 358
    if-nez p2, :cond_0

    #@5
    .line 359
    new-instance v5, Ljava/security/InvalidKeyException;

    #@7
    const-string/jumbo v6, "Unsupported key: null"

    #@a
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 361
    :cond_0
    const-string/jumbo v5, "RSA"

    #@11
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 362
    new-instance v5, Ljava/security/InvalidKeyException;

    #@1d
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "Unsupported key algorithm: "

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    .line 363
    const-string/jumbo v7, ". Only "

    #@34
    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 363
    const-string/jumbo v7, "RSA"

    #@3b
    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 363
    const-string/jumbo v7, " supported"

    #@42
    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 366
    :cond_1
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@50
    if-eqz v5, :cond_2

    #@52
    move-object v4, p2

    #@53
    .line 367
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    #@55
    .line 374
    .local v4, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_0
    instance-of v5, v4, Ljava/security/PrivateKey;

    #@57
    if-eqz v5, :cond_4

    #@59
    .line 376
    packed-switch p1, :pswitch_data_0

    #@5c
    .line 392
    new-instance v5, Ljava/security/InvalidKeyException;

    #@5e
    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "RSA private keys cannot be used with opmode: "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    .line 392
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@75
    throw v5

    #@76
    .line 368
    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_2
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@78
    if-eqz v5, :cond_3

    #@7a
    move-object v4, p2

    #@7b
    .line 369
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    #@7d
    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    goto :goto_0

    #@7e
    .line 371
    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_3
    new-instance v5, Ljava/security/InvalidKeyException;

    #@80
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v7, "Unsupported key type: "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@97
    throw v5

    #@98
    .line 383
    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :pswitch_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    #@9b
    move-result v5

    #@9c
    if-nez v5, :cond_5

    #@9e
    .line 384
    new-instance v5, Ljava/security/InvalidKeyException;

    #@a0
    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v7, "RSA private keys cannot be used with "

    #@a8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    .line 386
    const-string/jumbo v7, " and padding "

    #@b7
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    .line 387
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    #@bd
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v6

    #@c5
    .line 388
    const-string/jumbo v7, ". Only RSA public keys supported for this mode"

    #@c8
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    .line 384
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v5

    #@d4
    .line 397
    :cond_4
    packed-switch p1, :pswitch_data_1

    #@d7
    .line 411
    new-instance v5, Ljava/security/InvalidKeyException;

    #@d9
    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v7, "RSA public keys cannot be used with "

    #@e1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v6

    #@e5
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    #@e8
    move-result-object v7

    #@e9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v6

    #@f1
    .line 411
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@f4
    throw v5

    #@f5
    .line 404
    :pswitch_1
    new-instance v5, Ljava/security/InvalidKeyException;

    #@f7
    .line 405
    new-instance v6, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v7, "RSA public keys cannot be used with "

    #@ff
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v6

    #@103
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    #@106
    move-result-object v7

    #@107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    .line 406
    const-string/jumbo v7, " and padding "

    #@10e
    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    .line 407
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    #@114
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@117
    move-result-object v7

    #@118
    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v6

    #@11c
    .line 408
    const-string/jumbo v7, ". Only RSA private keys supported for this opmode."

    #@11f
    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v6

    #@123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v6

    #@127
    .line 404
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@12a
    throw v5

    #@12b
    .line 416
    :cond_5
    :pswitch_2
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    #@12d
    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@130
    .line 417
    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    #@133
    move-result-object v5

    #@134
    .line 418
    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@137
    move-result-object v6

    #@138
    .line 417
    invoke-virtual {v5, v6, v7, v7, v1}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@13b
    move-result v0

    #@13c
    .line 419
    .local v0, "errorCode":I
    const/4 v5, 0x1

    #@13d
    if-eq v0, v5, :cond_6

    #@13f
    .line 420
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    #@142
    move-result-object v5

    #@143
    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@146
    move-result-object v6

    #@147
    invoke-virtual {v5, v6, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    #@14a
    move-result-object v5

    #@14b
    throw v5

    #@14c
    .line 422
    :cond_6
    const v5, 0x30000003

    #@14f
    invoke-virtual {v1, v5, v8, v9}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@152
    move-result-wide v2

    #@153
    .line 423
    .local v2, "keySizeBits":J
    cmp-long v5, v2, v8

    #@155
    if-nez v5, :cond_7

    #@157
    .line 424
    new-instance v5, Ljava/security/InvalidKeyException;

    #@159
    const-string/jumbo v6, "Size of key not known"

    #@15c
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@15f
    throw v5

    #@160
    .line 425
    :cond_7
    const-wide/32 v6, 0x7fffffff

    #@163
    cmp-long v5, v2, v6

    #@165
    if-lez v5, :cond_8

    #@167
    .line 426
    new-instance v5, Ljava/security/InvalidKeyException;

    #@169
    new-instance v6, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v7, "Key too large: "

    #@171
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v6

    #@175
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@178
    move-result-object v6

    #@179
    const-string/jumbo v7, " bits"

    #@17c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v6

    #@180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v6

    #@184
    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@187
    throw v5

    #@188
    .line 428
    :cond_8
    const-wide/16 v6, 0x7

    #@18a
    add-long/2addr v6, v2

    #@18b
    const-wide/16 v8, 0x8

    #@18d
    div-long/2addr v6, v8

    #@18e
    long-to-int v5, v6

    #@18f
    iput v5, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    #@191
    .line 430
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@194
    .line 357
    return-void

    #@195
    .line 376
    nop

    #@196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@1a2
    .line 397
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 477
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 447
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    #@3
    .line 448
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    #@5
    .line 449
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@8
    .line 446
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    #@0
    .prologue
    .line 454
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    #@3
    .line 453
    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .locals 0
    .param p1, "keymasterPadding"    # I

    #@0
    .prologue
    .line 508
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    #@2
    .line 507
    return-void
.end method
