.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    #@0
    .prologue
    const v4, 0x30000008

    #@3
    .line 165
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 164
    :cond_0
    :goto_0
    return-void

    #@7
    .line 168
    :sswitch_0
    const/16 v2, 0x20

    #@9
    .line 167
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 171
    const-wide/16 v2, 0x60

    #@11
    .line 170
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@14
    goto :goto_0

    #@15
    .line 179
    :sswitch_1
    array-length v2, p3

    #@16
    const/4 v3, 0x1

    #@17
    if-eq v2, v3, :cond_1

    #@19
    .line 180
    new-instance v2, Ljava/security/ProviderException;

    #@1b
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unsupported number of authorized digests for HMAC key: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 182
    array-length v4, p3

    #@28
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 183
    const-string/jumbo v4, ". Exactly one digest must be authorized"

    #@2f
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 180
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 185
    :cond_1
    const/4 v2, 0x0

    #@3c
    aget v1, p3, v2

    #@3e
    .line 186
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@41
    move-result v0

    #@42
    .line 187
    .local v0, "digestOutputSizeBits":I
    const/4 v2, -0x1

    #@43
    if-ne v0, v2, :cond_2

    #@45
    .line 188
    new-instance v2, Ljava/security/ProviderException;

    #@47
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "HMAC key authorized for unsupported digest: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 190
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 188
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    .line 192
    :cond_2
    int-to-long v2, v0

    #@64
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@67
    goto :goto_0

    #@68
    .line 165
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V
    .locals 10
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "userAuthenticationRequired"    # Z
    .param p2, "userAuthenticationValidityDurationSeconds"    # I
    .param p3, "userAuthenticationValidWhileOnBody"    # Z
    .param p4, "invalidatedByBiometricEnrollment"    # Z

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    const v1, 0x700001f7

    #@5
    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@8
    .line 104
    return-void

    #@9
    .line 107
    :cond_0
    const/4 v1, -0x1

    #@a
    if-ne p2, v1, :cond_4

    #@c
    .line 111
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    #@12
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@18
    .line 115
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    #@1a
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    #@1d
    move-result-wide v2

    #@1e
    .line 116
    .local v2, "fingerprintOnlySid":J
    :goto_0
    const-wide/16 v8, 0x0

    #@20
    cmp-long v1, v2, v8

    #@22
    if-nez v1, :cond_2

    #@24
    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    #@26
    .line 118
    const-string/jumbo v8, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    #@29
    .line 117
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 115
    .end local v2    # "fingerprintOnlySid":J
    :cond_1
    const-wide/16 v2, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 123
    .restart local v2    # "fingerprintOnlySid":J
    :cond_2
    if-eqz p4, :cond_3

    #@32
    .line 126
    move-wide v6, v2

    #@33
    .line 134
    .local v6, "sid":J
    :goto_1
    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@36
    move-result-object v1

    #@37
    const v8, -0x5ffffe0a

    #@3a
    .line 133
    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@3d
    .line 135
    const v1, 0x100001f8

    #@40
    const/4 v8, 0x2

    #@41
    invoke-virtual {p0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@44
    .line 136
    if-eqz p3, :cond_5

    #@46
    .line 137
    new-instance v1, Ljava/security/ProviderException;

    #@48
    const-string/jumbo v8, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    #@4b
    invoke-direct {v1, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 130
    .end local v6    # "sid":J
    :cond_3
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    #@52
    move-result-wide v6

    #@53
    .restart local v6    # "sid":J
    goto :goto_1

    #@54
    .line 143
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "fingerprintOnlySid":J
    .end local v6    # "sid":J
    :cond_4
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    #@57
    move-result-wide v4

    #@58
    .line 145
    .local v4, "rootSid":J
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@5b
    move-result-object v1

    #@5c
    .line 144
    const v8, -0x5ffffe0a

    #@5f
    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@62
    .line 146
    const v1, 0x100001f8

    #@65
    .line 147
    const/4 v8, 0x3

    #@66
    .line 146
    invoke-virtual {p0, v1, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@69
    .line 149
    int-to-long v8, p2

    #@6a
    .line 148
    const v1, 0x300001f9

    #@6d
    invoke-virtual {p0, v1, v8, v9}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@70
    .line 150
    if-eqz p3, :cond_5

    #@72
    .line 151
    const v1, 0x700001fa

    #@75
    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@78
    .line 101
    .end local v4    # "rootSid":J
    :cond_5
    return-void
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    #@0
    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    #@3
    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown digest: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 37
    :pswitch_0
    const/4 v0, -0x1

    #@1e
    return v0

    #@1f
    .line 39
    :pswitch_1
    const/16 v0, 0x80

    #@21
    return v0

    #@22
    .line 41
    :pswitch_2
    const/16 v0, 0xa0

    #@24
    return v0

    #@25
    .line 43
    :pswitch_3
    const/16 v0, 0xe0

    #@27
    return v0

    #@28
    .line 45
    :pswitch_4
    const/16 v0, 0x100

    #@2a
    return v0

    #@2b
    .line 47
    :pswitch_5
    const/16 v0, 0x180

    #@2d
    return v0

    #@2e
    .line 49
    :pswitch_6
    const/16 v0, 0x200

    #@30
    return v0

    #@31
    .line 35
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    #@0
    .prologue
    .line 198
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    #@3
    move-result-wide v0

    #@4
    .line 199
    .local v0, "rootSid":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 200
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 203
    :cond_0
    return-wide v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterBlockMode"    # I

    #@0
    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported block mode: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 59
    :sswitch_0
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 63
    :sswitch_1
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 57
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    #@0
    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    #@3
    .line 78
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 73
    :pswitch_1
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 76
    :pswitch_2
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 71
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
