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
    .line 43
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    #@3
    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 43
    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    #@3
    move-result-wide v2

    #@4
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 209
    :catch_0
    move-exception v0

    #@a
    .line 210
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/security/ProviderException;

    #@c
    const-string/jumbo v2, "Failed to get GateKeeper secure user ID"

    #@f
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v1
.end method

.method static getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;
    .locals 42
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "keyAliasInKeystore"    # Ljava/lang/String;
    .param p3, "keyUid"    # I

    #@0
    .prologue
    .line 78
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    #@2
    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@5
    .line 80
    .local v7, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    move-object/from16 v2, p0

    #@9
    move-object/from16 v3, p2

    #@b
    move/from16 v6, p3

    #@d
    .line 79
    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@10
    move-result v29

    #@11
    .line 81
    .local v29, "errorCode":I
    const/4 v2, 0x1

    #@12
    move/from16 v0, v29

    #@14
    if-eq v0, v2, :cond_0

    #@16
    .line 82
    new-instance v2, Ljava/security/ProviderException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Failed to obtain information about key. Keystore error: "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    move/from16 v0, v29

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 98
    :cond_0
    :try_start_0
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@34
    const v3, 0x100002be

    #@37
    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 99
    const/4 v10, 0x1

    #@3e
    .line 101
    .local v10, "insideSecureHardware":Z
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@40
    const v3, 0x100002be

    #@43
    const/4 v4, -0x1

    #@44
    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@47
    move-result v2

    #@48
    .line 100
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    #@4b
    move-result v11

    #@4c
    .line 110
    .local v11, "origin":I
    :goto_0
    const-wide/16 v2, -0x1

    #@4e
    const v4, 0x30000003

    #@51
    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@54
    move-result-wide v32

    #@55
    .line 111
    .local v32, "keySizeUnsigned":J
    const-wide/16 v2, -0x1

    #@57
    cmp-long v2, v32, v2

    #@59
    if-nez v2, :cond_3

    #@5b
    .line 112
    new-instance v2, Ljava/security/ProviderException;

    #@5d
    const-string/jumbo v3, "Key size not available"

    #@60
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 155
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    .end local v32    # "keySizeUnsigned":J
    :catch_0
    move-exception v26

    #@65
    .line 156
    .local v26, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/ProviderException;

    #@67
    const-string/jumbo v3, "Unsupported key characteristic"

    #@6a
    move-object/from16 v0, v26

    #@6c
    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    throw v2

    #@70
    .line 102
    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@72
    const v3, 0x100002be

    #@75
    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_2

    #@7b
    .line 103
    const/4 v10, 0x0

    #@7c
    .line 105
    .restart local v10    # "insideSecureHardware":Z
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@7e
    const v3, 0x100002be

    #@81
    const/4 v4, -0x1

    #@82
    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@85
    move-result v2

    #@86
    .line 104
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    #@89
    move-result v11

    #@8a
    .restart local v11    # "origin":I
    goto :goto_0

    #@8b
    .line 107
    .end local v10    # "insideSecureHardware":Z
    .end local v11    # "origin":I
    :cond_2
    new-instance v2, Ljava/security/ProviderException;

    #@8d
    const-string/jumbo v3, "Key origin not available"

    #@90
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@93
    throw v2

    #@94
    .line 113
    .restart local v10    # "insideSecureHardware":Z
    .restart local v11    # "origin":I
    .restart local v32    # "keySizeUnsigned":J
    :cond_3
    const-wide/32 v2, 0x7fffffff

    #@97
    cmp-long v2, v32, v2

    #@99
    if-lez v2, :cond_4

    #@9b
    .line 114
    new-instance v2, Ljava/security/ProviderException;

    #@9d
    new-instance v3, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v4, "Key too large: "

    #@a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    move-wide/from16 v0, v32

    #@ab
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    const-string/jumbo v4, " bits"

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v2

    #@be
    .line 116
    :cond_4
    move-wide/from16 v0, v32

    #@c0
    long-to-int v12, v0

    #@c1
    .line 118
    .local v12, "keySize":I
    const v2, 0x20000001

    #@c4
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@c7
    move-result-object v2

    #@c8
    .line 117
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allFromKeymaster(Ljava/util/Collection;)I

    #@cb
    move-result v16

    #@cc
    .line 120
    .local v16, "purposes":I
    new-instance v28, Ljava/util/ArrayList;

    #@ce
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    #@d1
    .line 121
    .local v28, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v39, Ljava/util/ArrayList;

    #@d3
    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    #@d6
    .line 123
    .local v39, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x20000006

    #@d9
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@dc
    move-result-object v2

    #@dd
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e0
    move-result-object v35

    #@e1
    .local v35, "keymasterPadding$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_5

    #@e7
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ea
    move-result-object v2

    #@eb
    check-cast v2, Ljava/lang/Integer;

    #@ed
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@f0
    move-result v34

    #@f1
    .line 126
    .local v34, "keymasterPadding":I
    :try_start_2
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    #@f4
    move-result-object v30

    #@f5
    .line 127
    .local v30, "jcaPadding":Ljava/lang/String;
    move-object/from16 v0, v28

    #@f7
    move-object/from16 v1, v30

    #@f9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@fc
    goto :goto_1

    #@fd
    .line 128
    .end local v30    # "jcaPadding":Ljava/lang/String;
    :catch_1
    move-exception v26

    #@fe
    .line 131
    .restart local v26    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-static/range {v34 .. v34}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    #@101
    move-result-object v38

    #@102
    .line 132
    .local v38, "padding":Ljava/lang/String;
    move-object/from16 v0, v39

    #@104
    move-object/from16 v1, v38

    #@106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    #@109
    goto :goto_1

    #@10a
    .line 133
    .end local v38    # "padding":Ljava/lang/String;
    :catch_2
    move-exception v27

    #@10b
    .line 134
    .local v27, "e2":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v2, Ljava/security/ProviderException;

    #@10d
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v4, "Unsupported encryption padding: "

    #@115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v3

    #@119
    move/from16 v0, v34

    #@11b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v3

    #@11f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v3

    #@123
    .line 134
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@126
    throw v2

    #@127
    .line 141
    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    .end local v27    # "e2":Ljava/lang/IllegalArgumentException;
    .end local v34    # "keymasterPadding":I
    :cond_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@12a
    move-result v2

    #@12b
    new-array v2, v2, [Ljava/lang/String;

    #@12d
    move-object/from16 v0, v28

    #@12f
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@132
    move-result-object v17

    #@133
    check-cast v17, [Ljava/lang/String;

    #@135
    .line 143
    .local v17, "encryptionPaddings":[Ljava/lang/String;
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    #@138
    move-result v2

    #@139
    new-array v2, v2, [Ljava/lang/String;

    #@13b
    move-object/from16 v0, v39

    #@13d
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@140
    move-result-object v18

    #@141
    check-cast v18, [Ljava/lang/String;

    #@143
    .line 146
    .local v18, "signaturePaddings":[Ljava/lang/String;
    const v2, 0x20000005

    #@146
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@149
    move-result-object v2

    #@14a
    .line 145
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    #@14d
    move-result-object v19

    #@14e
    .line 148
    .local v19, "digests":[Ljava/lang/String;
    const v2, 0x20000004

    #@151
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@154
    move-result-object v2

    #@155
    .line 147
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;

    #@158
    move-result-object v20

    #@159
    .line 150
    .local v20, "blockModes":[Ljava/lang/String;
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@15b
    const v3, 0x100001f8

    #@15e
    const/4 v4, 0x0

    #@15f
    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@162
    move-result v37

    #@163
    .line 152
    .local v37, "keymasterSwEnforcedUserAuthenticators":I
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@165
    const v3, 0x100001f8

    #@168
    const/4 v4, 0x0

    #@169
    invoke-virtual {v2, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    #@16c
    move-result v31

    #@16d
    .line 154
    .local v31, "keymasterHwEnforcedUserAuthenticators":I
    const v2, -0x5ffffe0a

    #@170
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    #@173
    move-result-object v36

    #@174
    .line 159
    .local v36, "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    const v2, 0x60000190

    #@177
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@17a
    move-result-object v13

    #@17b
    .line 161
    .local v13, "keyValidityStart":Ljava/util/Date;
    const v2, 0x60000191

    #@17e
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@181
    move-result-object v14

    #@182
    .line 163
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    const v2, 0x60000192

    #@185
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getDate(I)Ljava/util/Date;

    #@188
    move-result-object v15

    #@189
    .line 165
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const v2, 0x700001f7

    #@18c
    invoke-virtual {v7, v2}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    #@18f
    move-result v2

    #@190
    if-eqz v2, :cond_6

    #@192
    const/16 v21, 0x0

    #@194
    .line 167
    .local v21, "userAuthenticationRequired":Z
    :goto_2
    const-wide/16 v2, -0x1

    #@196
    const v4, 0x300001f9

    #@199
    invoke-virtual {v7, v4, v2, v3}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    #@19c
    move-result-wide v40

    #@19d
    .line 168
    .local v40, "userAuthenticationValidityDurationSeconds":J
    const-wide/32 v2, 0x7fffffff

    #@1a0
    cmp-long v2, v40, v2

    #@1a2
    if-lez v2, :cond_7

    #@1a4
    .line 169
    new-instance v2, Ljava/security/ProviderException;

    #@1a6
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v4, "User authentication timeout validity too long: "

    #@1ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v3

    #@1b2
    move-wide/from16 v0, v40

    #@1b4
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v3

    #@1b8
    .line 170
    const-string/jumbo v4, " seconds"

    #@1bb
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v3

    #@1bf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v3

    #@1c3
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@1c6
    throw v2

    #@1c7
    .line 165
    .end local v21    # "userAuthenticationRequired":Z
    .end local v40    # "userAuthenticationValidityDurationSeconds":J
    :cond_6
    const/16 v21, 0x1

    #@1c9
    .restart local v21    # "userAuthenticationRequired":Z
    goto :goto_2

    #@1ca
    .line 172
    .restart local v40    # "userAuthenticationValidityDurationSeconds":J
    :cond_7
    if-eqz v21, :cond_c

    #@1cc
    .line 173
    if-eqz v31, :cond_c

    #@1ce
    .line 174
    if-nez v37, :cond_b

    #@1d0
    const/16 v23, 0x1

    #@1d2
    .line 176
    .local v23, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_3
    iget-object v2, v7, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    #@1d4
    const v3, 0x700001fa

    #@1d7
    invoke-virtual {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    #@1da
    move-result v24

    #@1db
    .line 178
    .local v24, "userAuthenticationValidWhileOnBody":Z
    const/16 v25, 0x0

    #@1dd
    .line 179
    .local v25, "invalidatedByBiometricEnrollment":Z
    const/4 v2, 0x2

    #@1de
    move/from16 v0, v37

    #@1e0
    if-eq v0, v2, :cond_8

    #@1e2
    .line 180
    const/4 v2, 0x2

    #@1e3
    move/from16 v0, v31

    #@1e5
    if-ne v0, v2, :cond_a

    #@1e7
    .line 182
    :cond_8
    if-eqz v36, :cond_9

    #@1e9
    .line 183
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    #@1ec
    move-result v2

    #@1ed
    if-eqz v2, :cond_d

    #@1ef
    .line 182
    :cond_9
    const/16 v25, 0x0

    #@1f1
    .line 187
    :cond_a
    :goto_4
    new-instance v8, Landroid/security/keystore/KeyInfo;

    #@1f3
    .line 200
    move-wide/from16 v0, v40

    #@1f5
    long-to-int v0, v0

    #@1f6
    move/from16 v22, v0

    #@1f8
    move-object/from16 v9, p1

    #@1fa
    .line 187
    invoke-direct/range {v8 .. v25}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZ)V

    #@1fd
    return-object v8

    #@1fe
    .line 174
    .end local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    .end local v24    # "userAuthenticationValidWhileOnBody":Z
    .end local v25    # "invalidatedByBiometricEnrollment":Z
    :cond_b
    const/16 v23, 0x0

    #@200
    .restart local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    #@201
    .line 172
    .end local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :cond_c
    const/16 v23, 0x0

    #@203
    .restart local v23    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    goto :goto_3

    #@204
    .line 184
    .restart local v24    # "userAuthenticationValidWhileOnBody":Z
    .restart local v25    # "invalidatedByBiometricEnrollment":Z
    :cond_d
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    #@207
    move-result-object v2

    #@208
    move-object/from16 v0, v36

    #@20a
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@20d
    move-result v2

    #@20e
    if-eqz v2, :cond_e

    #@210
    const/16 v25, 0x0

    #@212
    goto :goto_4

    #@213
    :cond_e
    const/16 v25, 0x1

    #@215
    goto :goto_4
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
    .line 216
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@2
    .line 217
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
    .line 218
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 216
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    if-nez p2, :cond_0

    #@2
    .line 51
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@4
    const-string/jumbo v4, "keySpecClass == null"

    #@7
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 53
    :cond_0
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@d
    if-nez v3, :cond_2

    #@f
    .line 54
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Only Android KeyStore secret keys supported: "

    #@19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    .line 55
    if-eqz p1, :cond_1

    #@1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 54
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v4, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@32
    throw v4

    #@33
    .line 55
    :cond_1
    const-string/jumbo v3, "null"

    #@36
    goto :goto_0

    #@37
    .line 57
    :cond_2
    const-class v3, Ljavax/crypto/spec/SecretKeySpec;

    #@39
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_3

    #@3f
    .line 58
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@41
    .line 59
    const-string/jumbo v4, "Key material export of Android KeyStore keys is not supported"

    #@44
    .line 58
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3

    #@48
    .line 61
    :cond_3
    const-class v3, Landroid/security/keystore/KeyInfo;

    #@4a
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_4

    #@50
    .line 62
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@52
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v5, "Unsupported key spec: "

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3

    #@6e
    :cond_4
    move-object v2, p1

    #@6f
    .line 64
    nop

    #@70
    nop

    #@71
    .line 65
    .local v2, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 67
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    const-string/jumbo v3, "USRSKEY_"

    #@78
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_5

    #@7e
    .line 68
    const-string/jumbo v3, "USRSKEY_"

    #@81
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@84
    move-result v3

    #@85
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    .line 73
    .local v0, "entryAlias":Ljava/lang/String;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    #@8b
    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    #@8e
    move-result v4

    #@8f
    invoke-static {v3, v0, v1, v4}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    #@92
    move-result-object v3

    #@93
    return-object v3

    #@94
    .line 70
    .end local v0    # "entryAlias":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    #@96
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v5, "Invalid key alias: "

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v3
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
    .line 223
    if-nez p1, :cond_0

    #@2
    .line 224
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 225
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 226
    new-instance v0, Ljava/security/InvalidKeyException;

    #@11
    .line 227
    const-string/jumbo v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    #@14
    .line 226
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 230
    :cond_1
    return-object p1
.end method
