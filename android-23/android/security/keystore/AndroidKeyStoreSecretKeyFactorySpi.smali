.class public Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    #@3
    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 41
    return-void
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;
    .locals 36
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    new-instance v25, Landroid/security/keymaster/KeyCharacteristics;

    #@2
    invoke-direct/range {v25 .. v25}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@5
    .line 76
    .local v25, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, p2

    #@b
    move-object/from16 v2, v25

    #@d
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@10
    move-result v23

    #@11
    .line 77
    .local v23, "errorCode":I
    const/4 v4, 0x1

    #@12
    move/from16 v0, v23

    #@14
    if-eq v0, v4, :cond_0

    #@16
    .line 78
    new-instance v4, Ljava/security/ProviderException;

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v18, "Failed to obtain information about key. Keystore error: "

    #@20
    move-object/from16 v0, v18

    #@22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    move/from16 v0, v23

    #@28
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 93
    :cond_0
    :try_start_0
    move-object/from16 v0, v25

    #@36
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@38
    const v5, 0x100002be

    #@3b
    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    .line 94
    const/4 v6, 0x1

    #@42
    .line 96
    .local v6, "insideSecureHardware":Z
    move-object/from16 v0, v25

    #@44
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@46
    const v5, 0x100002be

    #@49
    const/16 v18, -0x1

    #@4b
    move/from16 v0, v18

    #@4d
    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@50
    move-result v4

    #@51
    .line 95
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    #@54
    move-result v7

    #@55
    .line 105
    .local v7, "origin":I
    :goto_0
    const-wide/16 v4, -0x1

    #@57
    const v18, 0x30000003

    #@5a
    move-object/from16 v0, v25

    #@5c
    move/from16 v1, v18

    #@5e
    invoke-virtual {v0, v1, v4, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@61
    move-result-wide v26

    #@62
    .line 106
    .local v26, "keySizeUnsigned":J
    const-wide/16 v4, -0x1

    #@64
    cmp-long v4, v26, v4

    #@66
    if-nez v4, :cond_3

    #@68
    .line 107
    new-instance v4, Ljava/security/ProviderException;

    #@6a
    const-string/jumbo v5, "Key size not available"

    #@6d
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@70
    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    .line 148
    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    .end local v26    # "keySizeUnsigned":J
    :catch_0
    move-exception v20

    #@72
    .line 149
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/ProviderException;

    #@74
    const-string/jumbo v5, "Unsupported key characteristic"

    #@77
    move-object/from16 v0, v20

    #@79
    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7c
    throw v4

    #@7d
    .line 97
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    move-object/from16 v0, v25

    #@7f
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@81
    const v5, 0x100002be

    #@84
    invoke-virtual {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    #@87
    move-result v4

    #@88
    if-eqz v4, :cond_2

    #@8a
    .line 98
    const/4 v6, 0x0

    #@8b
    .line 100
    .restart local v6    # "insideSecureHardware":Z
    move-object/from16 v0, v25

    #@8d
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@8f
    const v5, 0x100002be

    #@92
    const/16 v18, -0x1

    #@94
    move/from16 v0, v18

    #@96
    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@99
    move-result v4

    #@9a
    .line 99
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    #@9d
    move-result v7

    #@9e
    .restart local v7    # "origin":I
    goto :goto_0

    #@9f
    .line 102
    .end local v6    # "insideSecureHardware":Z
    .end local v7    # "origin":I
    :cond_2
    new-instance v4, Ljava/security/ProviderException;

    #@a1
    const-string/jumbo v5, "Key origin not available"

    #@a4
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v4

    #@a8
    .line 108
    .restart local v6    # "insideSecureHardware":Z
    .restart local v7    # "origin":I
    .restart local v26    # "keySizeUnsigned":J
    :cond_3
    const-wide/32 v4, 0x7fffffff

    #@ab
    cmp-long v4, v26, v4

    #@ad
    if-lez v4, :cond_4

    #@af
    .line 109
    new-instance v4, Ljava/security/ProviderException;

    #@b1
    new-instance v5, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v18, "Key too large: "

    #@b9
    move-object/from16 v0, v18

    #@bb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    move-wide/from16 v0, v26

    #@c1
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    const-string/jumbo v18, " bits"

    #@c8
    move-object/from16 v0, v18

    #@ca
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v4

    #@d6
    .line 111
    :cond_4
    move-wide/from16 v0, v26

    #@d8
    long-to-int v8, v0

    #@d9
    .line 113
    .local v8, "keySize":I
    const v4, 0x20000001

    #@dc
    move-object/from16 v0, v25

    #@de
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@e1
    move-result-object v4

    #@e2
    .line 112
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    #@e5
    move-result v12

    #@e6
    .line 115
    .local v12, "purposes":I
    new-instance v22, Ljava/util/ArrayList;

    #@e8
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@eb
    .line 116
    .local v22, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    #@ed
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    #@f0
    .line 118
    .local v33, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x20000006

    #@f3
    move-object/from16 v0, v25

    #@f5
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@f8
    move-result-object v4

    #@f9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fc
    move-result-object v30

    #@fd
    .local v30, "keymasterPadding$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_5

    #@103
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@106
    move-result-object v4

    #@107
    check-cast v4, Ljava/lang/Integer;

    #@109
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@10c
    move-result v29

    #@10d
    .line 121
    .local v29, "keymasterPadding":I
    :try_start_2
    invoke-static/range {v29 .. v29}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@110
    move-result-object v24

    #@111
    .line 122
    .local v24, "jcaPadding":Ljava/lang/String;
    move-object/from16 v0, v22

    #@113
    move-object/from16 v1, v24

    #@115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@118
    goto :goto_1

    #@119
    .line 123
    .end local v24    # "jcaPadding":Ljava/lang/String;
    :catch_1
    move-exception v20

    #@11a
    .line 126
    .restart local v20    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static/range {v29 .. v29}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    #@11d
    move-result-object v32

    #@11e
    .line 127
    .local v32, "padding":Ljava/lang/String;
    move-object/from16 v0, v33

    #@120
    move-object/from16 v1, v32

    #@122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    #@125
    goto :goto_1

    #@126
    .line 128
    .end local v32    # "padding":Ljava/lang/String;
    :catch_2
    move-exception v21

    #@127
    .line 129
    .local v21, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v4, Ljava/security/ProviderException;

    #@129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v18, "Unsupported encryption padding: "

    #@131
    move-object/from16 v0, v18

    #@133
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v5

    #@137
    move/from16 v0, v29

    #@139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v5

    #@13d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v5

    #@141
    .line 129
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@144
    throw v4

    #@145
    .line 136
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .end local v21    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v29    # "keymasterPadding":I
    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@148
    move-result v4

    #@149
    new-array v4, v4, [Ljava/lang/String;

    #@14b
    move-object/from16 v0, v22

    #@14d
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@150
    move-result-object v13

    #@151
    check-cast v13, [Ljava/lang/String;

    #@153
    .line 138
    .local v13, "encryptionPaddings":[Ljava/lang/String;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    #@156
    move-result v4

    #@157
    new-array v4, v4, [Ljava/lang/String;

    #@159
    move-object/from16 v0, v33

    #@15b
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15e
    move-result-object v14

    #@15f
    check-cast v14, [Ljava/lang/String;

    #@161
    .line 141
    .local v14, "signaturePaddings":[Ljava/lang/String;
    const v4, 0x20000005

    #@164
    move-object/from16 v0, v25

    #@166
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@169
    move-result-object v4

    #@16a
    .line 140
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    #@16d
    move-result-object v15

    #@16e
    .line 143
    .local v15, "digests":[Ljava/lang/String;
    const v4, 0x20000004

    #@171
    move-object/from16 v0, v25

    #@173
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@176
    move-result-object v4

    #@177
    .line 142
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    #@17a
    move-result-object v16

    #@17b
    .line 145
    .local v16, "blockModes":[Ljava/lang/String;
    move-object/from16 v0, v25

    #@17d
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@17f
    const v5, 0x100001f8

    #@182
    const/16 v18, 0x0

    #@184
    move/from16 v0, v18

    #@186
    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@189
    move-result v31

    #@18a
    .line 147
    .local v31, "keymasterSwEnforcedUserAuthenticators":I
    move-object/from16 v0, v25

    #@18c
    iget-object v4, v0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@18e
    const v5, 0x100001f8

    #@191
    const/16 v18, 0x0

    #@193
    move/from16 v0, v18

    #@195
    invoke-virtual {v4, v5, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    #@198
    move-result v28

    #@199
    .line 152
    .local v28, "keymasterHwEnforcedUserAuthenticators":I
    const v4, 0x60000190

    #@19c
    move-object/from16 v0, v25

    #@19e
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@1a1
    move-result-object v9

    #@1a2
    .line 154
    .local v9, "keyValidityStart":Ljava/util/Date;
    const v4, 0x60000191

    #@1a5
    move-object/from16 v0, v25

    #@1a7
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@1aa
    move-result-object v10

    #@1ab
    .line 156
    .local v10, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v4, 0x60000192

    #@1ae
    move-object/from16 v0, v25

    #@1b0
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@1b3
    move-result-object v11

    #@1b4
    .line 158
    .local v11, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v4, 0x700001f7

    #@1b7
    move-object/from16 v0, v25

    #@1b9
    invoke-virtual {v0, v4}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    #@1bc
    move-result v4

    #@1bd
    if-eqz v4, :cond_6

    #@1bf
    const/16 v17, 0x0

    #@1c1
    .line 160
    .local v17, "userAuthenticationRequired":Z
    :goto_2
    const-wide/16 v4, -0x1

    #@1c3
    const v18, 0x300001f9

    #@1c6
    move-object/from16 v0, v25

    #@1c8
    move/from16 v1, v18

    #@1ca
    invoke-virtual {v0, v1, v4, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@1cd
    move-result-wide v34

    #@1ce
    .line 161
    .local v34, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v4, 0x7fffffff

    #@1d1
    cmp-long v4, v34, v4

    #@1d3
    if-lez v4, :cond_7

    #@1d5
    .line 162
    new-instance v4, Ljava/security/ProviderException;

    #@1d7
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v18, "User authentication timeout validity too long: "

    #@1df
    move-object/from16 v0, v18

    #@1e1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v5

    #@1e5
    move-wide/from16 v0, v34

    #@1e7
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v5

    #@1eb
    .line 163
    const-string/jumbo v18, " seconds"

    #@1ee
    .line 162
    move-object/from16 v0, v18

    #@1f0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v5

    #@1f4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f7
    move-result-object v5

    #@1f8
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@1fb
    throw v4

    #@1fc
    .line 158
    .end local v17    # "userAuthenticationRequired":Z
    .end local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_6
    const/16 v17, 0x1

    #@1fe
    .restart local v17    # "userAuthenticationRequired":Z
    goto :goto_2

    #@1ff
    .line 165
    .restart local v34    # "userAuthenticationValidityDurationSeconds":J
    :cond_7
    if-eqz v17, :cond_9

    #@201
    .line 166
    if-eqz v28, :cond_9

    #@203
    .line 167
    if-nez v31, :cond_8

    #@205
    const/16 v19, 0x1

    #@207
    .line 169
    .local v19, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_3
    new-instance v4, Landroid/security/keystore/KeyInfo;

    #@209
    .line 182
    move-wide/from16 v0, v34

    #@20b
    long-to-int v0, v0

    #@20c
    move/from16 v18, v0

    #@20e
    move-object/from16 v5, p1

    #@210
    .line 169
    invoke-direct/range {v4 .. v19}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZ)V

    #@213
    return-object v4

    #@214
    .line 167
    .end local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_8
    const/16 v19, 0x0

    #@216
    .restart local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    #@217
    .line 165
    .end local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_9
    const/16 v19, 0x0

    #@219
    .restart local v19    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 190
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 188
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    if-nez p2, :cond_0

    #@2
    .line 49
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v3, "keySpecClass == null"

    #@7
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 51
    :cond_0
    instance-of v2, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@d
    if-nez v2, :cond_2

    #@f
    .line 52
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Only Android KeyStore secret keys supported: "

    #@19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    .line 53
    if-eqz p1, :cond_1

    #@1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 52
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 53
    :cond_1
    const-string/jumbo v2, "null"

    #@36
    goto :goto_0

    #@37
    .line 55
    :cond_2
    const-class v2, Ljavax/crypto/spec/SecretKeySpec;

    #@39
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_3

    #@3f
    .line 56
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@41
    .line 57
    const-string/jumbo v3, "Key material export of Android KeyStore keys is not supported"

    #@44
    .line 56
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 59
    :cond_3
    const-class v2, Landroid/security/keystore/KeyInfo;

    #@4a
    invoke-virtual {v2, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_4

    #@50
    .line 60
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Unsupported key spec: "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v2

    #@6e
    .line 62
    :cond_4
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreKey;

    #@70
    .end local p1    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 64
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v2, "USRSKEY_"

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_5

    #@7d
    .line 65
    const-string/jumbo v2, "USRSKEY_"

    #@80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@83
    move-result v2

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    .line 70
    .local v0, "entryAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@8a
    invoke-static {v2, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    .line 67
    .end local v0    # "entryAlias":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@91
    new-instance v3, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v4, "Invalid key alias: "

    #@99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v2
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    if-nez p1, :cond_0

    #@2
    .line 196
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 197
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 198
    new-instance v0, Ljava/security/InvalidKeyException;

    #@11
    .line 199
    const-string/jumbo v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    #@14
    .line 198
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 202
    :cond_1
    return-object p1
.end method
