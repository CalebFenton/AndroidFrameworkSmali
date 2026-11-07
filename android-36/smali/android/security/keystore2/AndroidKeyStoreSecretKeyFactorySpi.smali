.class public Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method

.method private static blacklist getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 272
    :catch_9
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;
    .registers 51
    .param p0, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "securityLevel":I
    const/4 v2, 0x0

    .line 75
    .local v2, "insideSecureHardware":Z
    const/4 v3, -0x1

    .line 76
    .local v3, "origin":I
    const/4 v4, -0x1

    .line 77
    .local v4, "keySize":I
    const/4 v5, 0x0

    .line 80
    .local v5, "purposes":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 81
    .local v6, "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 82
    .local v7, "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 83
    .local v8, "keymasterSwEnforcedUserAuthenticators":I
    const/4 v9, 0x0

    .line 84
    .local v9, "keymasterHwEnforcedUserAuthenticators":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 85
    .local v10, "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 86
    .local v11, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 87
    .local v12, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 88
    .local v13, "keyValidityStart":Ljava/util/Date;
    const/4 v14, 0x0

    .line 89
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    const/4 v15, 0x0

    .line 90
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const-wide/16 v16, 0x0

    .line 91
    .local v16, "userAuthenticationValidityDurationSeconds":J
    const/16 v18, 0x1

    .line 92
    .local v18, "userAuthenticationRequired":Z
    const/16 v19, 0x0

    .line 93
    .local v19, "userAuthenticationValidWhileOnBody":Z
    const/16 v20, 0x0

    .line 94
    .local v20, "unlockedDeviceRequired":Z
    const/16 v21, 0x0

    .line 95
    .local v21, "trustedUserPresenceRequired":Z
    const/16 v22, 0x0

    .line 96
    .local v22, "trustedUserConfirmationRequired":Z
    const/16 v23, -0x1

    .line 98
    .local v23, "remainingUsageCount":I
    :try_start_36
    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3a} :catch_34e

    move/from16 v24, v1

    .end local v1    # "securityLevel":I
    .local v24, "securityLevel":I
    :try_start_3c
    array-length v1, v0
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3d} :catch_34a

    move-object/from16 v25, v0

    move/from16 v28, v2

    move/from16 v34, v5

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    move-wide/from16 v13, v16

    move/from16 v39, v18

    move/from16 v43, v19

    move/from16 v44, v20

    move/from16 v45, v21

    move/from16 v47, v22

    move/from16 v49, v23

    move/from16 v48, v24

    const/4 v2, 0x0

    .end local v2    # "insideSecureHardware":Z
    .end local v5    # "purposes":I
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v16    # "userAuthenticationValidityDurationSeconds":J
    .end local v18    # "userAuthenticationRequired":Z
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .end local v20    # "unlockedDeviceRequired":Z
    .end local v21    # "trustedUserPresenceRequired":Z
    .end local v22    # "trustedUserConfirmationRequired":Z
    .end local v23    # "remainingUsageCount":I
    .end local v24    # "securityLevel":I
    .local v13, "userAuthenticationValidityDurationSeconds":J
    .local v28, "insideSecureHardware":Z
    .local v31, "keyValidityStart":Ljava/util/Date;
    .local v32, "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v33, "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v34, "purposes":I
    .local v39, "userAuthenticationRequired":Z
    .local v43, "userAuthenticationValidWhileOnBody":Z
    .local v44, "unlockedDeviceRequired":Z
    .local v45, "trustedUserPresenceRequired":Z
    .local v47, "trustedUserConfirmationRequired":Z
    .local v48, "securityLevel":I
    .local v49, "remainingUsageCount":I
    :goto_5a
    if-ge v2, v1, :cond_2c0

    :try_start_5c
    aget-object v5, v25, v2

    .line 99
    .local v5, "a":Landroid/system/keystore2/Authorization;
    iget-object v15, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v15, v15, Landroid/hardware/security/keymint/KeyParameter;->tag:I
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_62} :catch_2a1

    const-wide/32 v16, 0x7fffffff

    sparse-switch v15, :sswitch_data_35e

    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .local v18, "userAuthenticationValidityDurationSeconds":J
    goto/16 :goto_299

    .line 186
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :sswitch_6e
    const/4 v15, 0x1

    .line 187
    .end local v44    # "unlockedDeviceRequired":Z
    .local v15, "unlockedDeviceRequired":Z
    move/from16 v26, v1

    move/from16 v44, v15

    goto/16 :goto_29b

    .line 197
    .end local v15    # "unlockedDeviceRequired":Z
    .restart local v44    # "unlockedDeviceRequired":Z
    :sswitch_75
    :try_start_75
    iget v15, v5, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 198
    invoke-static {v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v15

    .line 199
    .end local v47    # "trustedUserConfirmationRequired":Z
    .local v15, "trustedUserConfirmationRequired":Z
    move/from16 v26, v1

    move/from16 v47, v15

    goto/16 :goto_29b

    .line 193
    .end local v15    # "trustedUserConfirmationRequired":Z
    .restart local v47    # "trustedUserConfirmationRequired":Z
    :sswitch_81
    iget v15, v5, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 194
    invoke-static {v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v15

    .line 195
    .end local v45    # "trustedUserPresenceRequired":Z
    .local v15, "trustedUserPresenceRequired":Z
    move/from16 v26, v1

    move/from16 v45, v15

    goto/16 :goto_29b

    .line 189
    .end local v15    # "trustedUserPresenceRequired":Z
    .restart local v45    # "trustedUserPresenceRequired":Z
    :sswitch_8d
    iget v15, v5, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 190
    invoke-static {v15}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v15

    .line 191
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .local v15, "userAuthenticationValidWhileOnBody":Z
    move/from16 v26, v1

    move/from16 v43, v15

    goto/16 :goto_29b

    .line 174
    .end local v15    # "userAuthenticationValidWhileOnBody":Z
    .restart local v43    # "userAuthenticationValidWhileOnBody":Z
    :sswitch_99
    const/4 v15, 0x0

    .line 175
    .end local v39    # "userAuthenticationRequired":Z
    .local v15, "userAuthenticationRequired":Z
    move/from16 v26, v1

    move/from16 v39, v15

    goto/16 :goto_29b

    .line 170
    .end local v15    # "userAuthenticationRequired":Z
    .restart local v39    # "userAuthenticationRequired":Z
    :sswitch_a0
    nop

    .line 171
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v15

    .line 172
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    move/from16 v26, v1

    move-object/from16 v33, v15

    goto/16 :goto_29b

    .line 166
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_ab
    nop

    .line 167
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v15

    .line 168
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v15, "keyValidityForOriginationEnd":Ljava/util/Date;
    move/from16 v26, v1

    move-object/from16 v32, v15

    goto/16 :goto_29b

    .line 163
    .end local v15    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    :sswitch_b6
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v15

    .line 164
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .local v15, "keyValidityStart":Ljava/util/Date;
    move/from16 v26, v1

    move-object/from16 v31, v15

    goto/16 :goto_29b

    .line 177
    .end local v15    # "keyValidityStart":Ljava/util/Date;
    .restart local v31    # "keyValidityStart":Ljava/util/Date;
    :sswitch_c0
    nop

    .line 178
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 179
    cmp-long v15, v13, v16

    if-gtz v15, :cond_cf

    move/from16 v26, v1

    goto/16 :goto_29b

    .line 180
    :cond_cf
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User authentication timeout validity too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .end local v28    # "insideSecureHardware":Z
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v34    # "purposes":I
    .end local v39    # "userAuthenticationRequired":Z
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .end local v44    # "unlockedDeviceRequired":Z
    .end local v45    # "trustedUserPresenceRequired":Z
    .end local v47    # "trustedUserConfirmationRequired":Z
    .end local v48    # "securityLevel":I
    .end local v49    # "remainingUsageCount":I
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v0
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_ee} :catch_ee

    .line 212
    .end local v5    # "a":Landroid/system/keystore2/Authorization;
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v28    # "insideSecureHardware":Z
    .restart local v31    # "keyValidityStart":Ljava/util/Date;
    .restart local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v34    # "purposes":I
    .restart local v39    # "userAuthenticationRequired":Z
    .restart local v43    # "userAuthenticationValidWhileOnBody":Z
    .restart local v44    # "unlockedDeviceRequired":Z
    .restart local v45    # "trustedUserPresenceRequired":Z
    .restart local v47    # "trustedUserConfirmationRequired":Z
    .restart local v48    # "securityLevel":I
    .restart local v49    # "remainingUsageCount":I
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :catch_ee
    move-exception v0

    move-wide/from16 v16, v13

    move/from16 v2, v28

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v5, v34

    move/from16 v18, v39

    move/from16 v19, v43

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v47

    move/from16 v1, v48

    move/from16 v23, v49

    goto/16 :goto_351

    .line 201
    .restart local v5    # "a":Landroid/system/keystore2/Authorization;
    :sswitch_10b
    nop

    .line 202
    :try_start_10c
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 203
    .local v20, "remainingUsageCountUnsigned":J
    cmp-long v15, v20, v16

    if-gtz v15, :cond_11f

    .line 208
    move/from16 v26, v1

    move-wide/from16 v0, v20

    .end local v20    # "remainingUsageCountUnsigned":J
    .local v0, "remainingUsageCountUnsigned":J
    long-to-int v15, v0

    move/from16 v49, v15

    .end local v49    # "remainingUsageCount":I
    .local v15, "remainingUsageCount":I
    goto/16 :goto_29b

    .line 204
    .end local v0    # "remainingUsageCountUnsigned":J
    .end local v15    # "remainingUsageCount":I
    .restart local v20    # "remainingUsageCountUnsigned":J
    .restart local v49    # "remainingUsageCount":I
    :cond_11f
    move-wide/from16 v0, v20

    .end local v20    # "remainingUsageCountUnsigned":J
    .restart local v0    # "remainingUsageCountUnsigned":J
    new-instance v2, Ljava/security/ProviderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10c .. :try_end_128} :catch_2a1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    :try_start_12a
    const-string v13, "Usage count of limited use key too long: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .end local v28    # "insideSecureHardware":Z
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v34    # "purposes":I
    .end local v39    # "userAuthenticationRequired":Z
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .end local v44    # "unlockedDeviceRequired":Z
    .end local v45    # "trustedUserPresenceRequired":Z
    .end local v47    # "trustedUserConfirmationRequired":Z
    .end local v48    # "securityLevel":I
    .end local v49    # "remainingUsageCount":I
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v2

    .line 108
    .end local v0    # "remainingUsageCountUnsigned":J
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v28    # "insideSecureHardware":Z
    .restart local v31    # "keyValidityStart":Ljava/util/Date;
    .restart local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v34    # "purposes":I
    .restart local v39    # "userAuthenticationRequired":Z
    .restart local v43    # "userAuthenticationValidWhileOnBody":Z
    .restart local v44    # "unlockedDeviceRequired":Z
    .restart local v45    # "trustedUserPresenceRequired":Z
    .restart local v47    # "trustedUserConfirmationRequired":Z
    .restart local v48    # "securityLevel":I
    .restart local v49    # "remainingUsageCount":I
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_13c
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    invoke-static {v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v0

    .line 109
    .local v0, "keySizeUnsigned":J
    cmp-long v13, v0, v16

    if-gtz v13, :cond_14d

    .line 113
    long-to-int v4, v0

    .line 114
    move-wide/from16 v13, v18

    goto/16 :goto_29b

    .line 110
    :cond_14d
    new-instance v2, Ljava/security/ProviderException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Key too large: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bits"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .end local v28    # "insideSecureHardware":Z
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v34    # "purposes":I
    .end local v39    # "userAuthenticationRequired":Z
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .end local v44    # "unlockedDeviceRequired":Z
    .end local v45    # "trustedUserPresenceRequired":Z
    .end local v47    # "trustedUserConfirmationRequired":Z
    .end local v48    # "securityLevel":I
    .end local v49    # "remainingUsageCount":I
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v2

    .line 120
    .end local v0    # "keySizeUnsigned":J
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v28    # "insideSecureHardware":Z
    .restart local v31    # "keyValidityStart":Ljava/util/Date;
    .restart local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v34    # "purposes":I
    .restart local v39    # "userAuthenticationRequired":Z
    .restart local v43    # "userAuthenticationValidWhileOnBody":Z
    .restart local v44    # "unlockedDeviceRequired":Z
    .restart local v45    # "trustedUserPresenceRequired":Z
    .restart local v47    # "trustedUserConfirmationRequired":Z
    .restart local v48    # "securityLevel":I
    .restart local v49    # "remainingUsageCount":I
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_16c
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v0
    :try_end_178
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12a .. :try_end_178} :catch_27c

    move v1, v0

    .line 122
    .local v1, "paddingMode":I
    const/4 v0, 0x5

    if-eq v1, v0, :cond_189

    const/4 v0, 0x3

    if-ne v1, v0, :cond_180

    goto :goto_189

    .line 129
    :cond_180
    nop

    .line 130
    :try_start_181
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "jcaPadding":Ljava/lang/String;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_192

    .line 124
    .end local v0    # "jcaPadding":Ljava/lang/String;
    :cond_189
    :goto_189
    nop

    .line 125
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "padding":Ljava/lang/String;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_191
    .catch Ljava/lang/IllegalArgumentException; {:try_start_181 .. :try_end_191} :catch_194

    .line 128
    nop

    .line 137
    .end local v0    # "padding":Ljava/lang/String;
    :goto_192
    goto/16 :goto_299

    .line 134
    :catch_194
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_195
    new-instance v2, Ljava/security/ProviderException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported padding: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .end local v28    # "insideSecureHardware":Z
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v34    # "purposes":I
    .end local v39    # "userAuthenticationRequired":Z
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .end local v44    # "unlockedDeviceRequired":Z
    .end local v45    # "trustedUserPresenceRequired":Z
    .end local v47    # "trustedUserConfirmationRequired":Z
    .end local v48    # "securityLevel":I
    .end local v49    # "remainingUsageCount":I
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v2

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "paddingMode":I
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v28    # "insideSecureHardware":Z
    .restart local v31    # "keyValidityStart":Ljava/util/Date;
    .restart local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v34    # "purposes":I
    .restart local v39    # "userAuthenticationRequired":Z
    .restart local v43    # "userAuthenticationValidWhileOnBody":Z
    .restart local v44    # "unlockedDeviceRequired":Z
    .restart local v45    # "trustedUserPresenceRequired":Z
    .restart local v47    # "trustedUserConfirmationRequired":Z
    .restart local v48    # "securityLevel":I
    .restart local v49    # "remainingUsageCount":I
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_1ae
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 141
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v0

    .line 140
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    goto/16 :goto_299

    .line 144
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :sswitch_1c3
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 146
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v0

    .line 145
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    goto/16 :goto_299

    .line 116
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :sswitch_1d8
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 117
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    .line 116
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v0

    or-int v0, v34, v0

    .line 118
    .end local v34    # "purposes":I
    .local v0, "purposes":I
    move/from16 v34, v0

    move-wide/from16 v13, v18

    goto/16 :goto_29b

    .line 101
    .end local v0    # "purposes":I
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v34    # "purposes":I
    :sswitch_1f0
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget v0, v5, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 102
    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0
    :try_end_1fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_195 .. :try_end_1fa} :catch_27c

    move v1, v0

    .line 103
    .end local v28    # "insideSecureHardware":Z
    .local v1, "insideSecureHardware":Z
    :try_start_1fb
    iget v0, v5, Landroid/system/keystore2/Authorization;->securityLevel:I
    :try_end_1fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fb .. :try_end_1fd} :catch_22e

    move v13, v0

    .line 104
    .end local v48    # "securityLevel":I
    .local v13, "securityLevel":I
    :try_start_1fe
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 105
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result v0

    .line 104
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v0
    :try_end_20a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fe .. :try_end_20a} :catch_213

    .line 106
    .end local v3    # "origin":I
    .local v0, "origin":I
    move v3, v0

    move/from16 v28, v1

    move/from16 v48, v13

    move-wide/from16 v13, v18

    goto/16 :goto_29b

    .line 212
    .end local v0    # "origin":I
    .end local v5    # "a":Landroid/system/keystore2/Authorization;
    .restart local v3    # "origin":I
    :catch_213
    move-exception v0

    move v2, v1

    move v1, v13

    move-wide/from16 v16, v18

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v5, v34

    move/from16 v18, v39

    move/from16 v19, v43

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v47

    move/from16 v23, v49

    goto/16 :goto_351

    .end local v13    # "securityLevel":I
    .restart local v48    # "securityLevel":I
    :catch_22e
    move-exception v0

    move v2, v1

    move-wide/from16 v16, v18

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v5, v34

    move/from16 v18, v39

    move/from16 v19, v43

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v47

    move/from16 v1, v48

    move/from16 v23, v49

    goto/16 :goto_351

    .line 150
    .end local v1    # "insideSecureHardware":Z
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v5    # "a":Landroid/system/keystore2/Authorization;
    .local v13, "userAuthenticationValidityDurationSeconds":J
    .restart local v28    # "insideSecureHardware":Z
    :sswitch_24a
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    :try_start_24e
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result v0

    .line 151
    .local v0, "authenticatorType":I
    iget v1, v5, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v1

    if-eqz v1, :cond_263

    .line 152
    move v1, v0

    move v9, v1

    move-wide/from16 v13, v18

    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .local v1, "keymasterHwEnforcedUserAuthenticators":I
    goto :goto_29b

    .line 154
    .end local v1    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    :cond_263
    move v1, v0

    .line 156
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .local v1, "keymasterSwEnforcedUserAuthenticators":I
    move v8, v1

    move-wide/from16 v13, v18

    goto :goto_29b

    .line 158
    .end local v0    # "authenticatorType":I
    .end local v1    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :sswitch_268
    move/from16 v26, v1

    move-wide/from16 v18, v13

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    iget-object v0, v5, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 160
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v0

    .line 159
    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 158
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24e .. :try_end_27b} :catch_27c

    .line 161
    goto :goto_299

    .line 212
    .end local v5    # "a":Landroid/system/keystore2/Authorization;
    :catch_27c
    move-exception v0

    move-wide/from16 v16, v18

    move/from16 v2, v28

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v5, v34

    move/from16 v18, v39

    move/from16 v19, v43

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v47

    move/from16 v1, v48

    move/from16 v23, v49

    goto/16 :goto_351

    .line 98
    :goto_299
    move-wide/from16 v13, v18

    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :goto_29b
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v26

    goto/16 :goto_5a

    .line 212
    :catch_2a1
    move-exception v0

    move-wide/from16 v18, v13

    move-wide/from16 v16, v18

    move/from16 v2, v28

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v5, v34

    move/from16 v18, v39

    move/from16 v19, v43

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v47

    move/from16 v1, v48

    move/from16 v23, v49

    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    goto/16 :goto_351

    .line 214
    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    :cond_2c0
    move-wide/from16 v18, v13

    .line 215
    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    const/4 v0, -0x1

    if-eq v4, v0, :cond_342

    .line 218
    if-eq v3, v0, :cond_33a

    .line 222
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 223
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, [Ljava/lang/String;

    .line 224
    .local v35, "encryptionPaddings":[Ljava/lang/String;
    new-array v1, v0, [Ljava/lang/String;

    .line 225
    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, [Ljava/lang/String;

    .line 227
    .local v36, "signaturePaddings":[Ljava/lang/String;
    const/4 v0, 0x1

    if-eqz v39, :cond_2e6

    if-eqz v9, :cond_2e6

    if-nez v8, :cond_2e6

    move/from16 v42, v0

    goto :goto_2e8

    :cond_2e6
    const/16 v42, 0x0

    .line 231
    .local v42, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_2e8
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, [Ljava/lang/String;

    .line 232
    .local v37, "digests":[Ljava/lang/String;
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, [Ljava/lang/String;

    .line 234
    .local v38, "blockModes":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, "invalidatedByBiometricEnrollment":Z
    const/4 v5, 0x2

    if-eq v8, v5, :cond_307

    if-ne v9, v5, :cond_304

    goto :goto_307

    :cond_304
    move/from16 v46, v2

    goto :goto_31c

    .line 238
    :cond_307
    :goto_307
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_318

    .line 239
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_318

    goto :goto_319

    :cond_318
    move v0, v1

    :goto_319
    move v2, v0

    move/from16 v46, v2

    .line 242
    .end local v2    # "invalidatedByBiometricEnrollment":Z
    .local v46, "invalidatedByBiometricEnrollment":Z
    :goto_31c
    new-instance v26, Landroid/security/keystore/KeyInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    move-wide/from16 v13, v18

    .end local v18    # "userAuthenticationValidityDurationSeconds":J
    .restart local v13    # "userAuthenticationValidityDurationSeconds":J
    long-to-int v1, v13

    .line 256
    if-eqz v42, :cond_32c

    .line 257
    move/from16 v41, v9

    goto :goto_32e

    .line 258
    :cond_32c
    move/from16 v41, v8

    :goto_32e
    move-object/from16 v27, v0

    move/from16 v40, v1

    move/from16 v29, v3

    move/from16 v30, v4

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .local v29, "origin":I
    .local v30, "keySize":I
    invoke-direct/range {v26 .. v49}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V

    .line 242
    return-object v26

    .line 219
    .end local v13    # "userAuthenticationValidityDurationSeconds":J
    .end local v29    # "origin":I
    .end local v30    # "keySize":I
    .end local v35    # "encryptionPaddings":[Ljava/lang/String;
    .end local v36    # "signaturePaddings":[Ljava/lang/String;
    .end local v37    # "digests":[Ljava/lang/String;
    .end local v38    # "blockModes":[Ljava/lang/String;
    .end local v42    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    .end local v46    # "invalidatedByBiometricEnrollment":Z
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v18    # "userAuthenticationValidityDurationSeconds":J
    :cond_33a
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key origin not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_342
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key size not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    .end local v28    # "insideSecureHardware":Z
    .end local v31    # "keyValidityStart":Ljava/util/Date;
    .end local v32    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v33    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v34    # "purposes":I
    .end local v39    # "userAuthenticationRequired":Z
    .end local v43    # "userAuthenticationValidWhileOnBody":Z
    .end local v44    # "unlockedDeviceRequired":Z
    .end local v45    # "trustedUserPresenceRequired":Z
    .end local v47    # "trustedUserConfirmationRequired":Z
    .end local v48    # "securityLevel":I
    .end local v49    # "remainingUsageCount":I
    .local v2, "insideSecureHardware":Z
    .local v5, "purposes":I
    .local v13, "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v16    # "userAuthenticationValidityDurationSeconds":J
    .local v18, "userAuthenticationRequired":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    .local v20, "unlockedDeviceRequired":Z
    .restart local v21    # "trustedUserPresenceRequired":Z
    .restart local v22    # "trustedUserConfirmationRequired":Z
    .restart local v23    # "remainingUsageCount":I
    .restart local v24    # "securityLevel":I
    :catch_34a
    move-exception v0

    move/from16 v1, v24

    goto :goto_351

    .end local v24    # "securityLevel":I
    .local v1, "securityLevel":I
    :catch_34e
    move-exception v0

    move/from16 v24, v1

    .line 213
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_351
    move/from16 v24, v1

    .end local v1    # "securityLevel":I
    .restart local v24    # "securityLevel":I
    new-instance v1, Ljava/security/ProviderException;

    move/from16 v25, v2

    .end local v2    # "insideSecureHardware":Z
    .local v25, "insideSecureHardware":Z
    const-string v2, "Unsupported key characteristic"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_35e
    .sparse-switch
        -0x5ffffe0a -> :sswitch_268
        0x100001f8 -> :sswitch_24a
        0x100002be -> :sswitch_1f0
        0x20000001 -> :sswitch_1d8
        0x20000004 -> :sswitch_1c3
        0x20000005 -> :sswitch_1ae
        0x20000006 -> :sswitch_16c
        0x30000003 -> :sswitch_13c
        0x30000195 -> :sswitch_10b
        0x300001f9 -> :sswitch_c0
        0x60000190 -> :sswitch_b6
        0x60000191 -> :sswitch_ab
        0x60000192 -> :sswitch_a0
        0x700001f7 -> :sswitch_99
        0x700001fa -> :sswitch_8d
        0x700001fb -> :sswitch_81
        0x700001fc -> :sswitch_75
        0x700001fd -> :sswitch_6e
    .end sparse-switch
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 51
    if-eqz p2, :cond_6a

    .line 54
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2d

    .line 55
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1e
    const-string/jumbo v2, "null"

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2d
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 62
    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 67
    .local v0, "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :cond_45
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_62
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_6a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_f

    .line 288
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_7

    .line 293
    return-object p1

    .line 289
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_f
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
