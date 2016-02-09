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
    .line 148
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 147
    :cond_0
    :goto_0
    return-void

    #@7
    .line 151
    :sswitch_0
    const/16 v2, 0x20

    #@9
    .line 150
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 154
    const-wide/16 v2, 0x60

    #@11
    .line 153
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@14
    goto :goto_0

    #@15
    .line 162
    :sswitch_1
    array-length v2, p3

    #@16
    const/4 v3, 0x1

    #@17
    if-eq v2, v3, :cond_1

    #@19
    .line 163
    new-instance v2, Ljava/security/ProviderException;

    #@1b
    .line 164
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
    .line 165
    array-length v4, p3

    #@28
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 166
    const-string/jumbo v4, ". Exactly one digest must be authorized"

    #@2f
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 163
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 168
    :cond_1
    const/4 v2, 0x0

    #@3c
    aget v1, p3, v2

    #@3e
    .line 169
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@41
    move-result v0

    #@42
    .line 170
    .local v0, "digestOutputSizeBits":I
    const/4 v2, -0x1

    #@43
    if-ne v0, v2, :cond_2

    #@45
    .line 171
    new-instance v2, Ljava/security/ProviderException;

    #@47
    .line 172
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
    .line 173
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 171
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2

    #@63
    .line 175
    :cond_2
    int-to-long v2, v0

    #@64
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@67
    goto :goto_0

    #@68
    .line 148
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    .locals 12
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "userAuthenticationRequired"    # Z
    .param p2, "userAuthenticationValidityDurationSeconds"    # I

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const v8, 0x100001f8

    #@5
    const v7, -0x5ffffe0a

    #@8
    .line 100
    if-nez p1, :cond_0

    #@a
    .line 101
    const v1, 0x700001f7

    #@d
    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@10
    .line 102
    return-void

    #@11
    .line 105
    :cond_0
    const/4 v1, -0x1

    #@12
    if-ne p2, v1, :cond_3

    #@14
    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    #@1a
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@20
    .line 113
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    #@22
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    #@25
    move-result-wide v2

    #@26
    .line 114
    .local v2, "fingerprintOnlySid":J
    :goto_0
    cmp-long v1, v2, v10

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2c
    .line 116
    const-string/jumbo v6, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    #@2f
    .line 115
    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 113
    .end local v2    # "fingerprintOnlySid":J
    :cond_1
    const-wide/16 v2, 0x0

    #@35
    .restart local v2    # "fingerprintOnlySid":J
    goto :goto_0

    #@36
    .line 120
    :cond_2
    invoke-static {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@39
    move-result-object v1

    #@3a
    .line 119
    invoke-virtual {p0, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@3d
    .line 121
    const/4 v1, 0x2

    #@3e
    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@41
    .line 99
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "fingerprintOnlySid":J
    :goto_1
    return-void

    #@42
    .line 125
    :cond_3
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    #@45
    move-result-wide v4

    #@46
    .line 126
    .local v4, "rootSid":J
    cmp-long v1, v4, v10

    #@48
    if-nez v1, :cond_4

    #@4a
    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4c
    const-string/jumbo v6, "Secure lock screen must be enabled to create keys requiring user authentication"

    #@4f
    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v1

    #@53
    .line 131
    :cond_4
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@56
    move-result-object v1

    #@57
    .line 130
    invoke-virtual {p0, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    #@5a
    .line 133
    const/4 v1, 0x3

    #@5b
    .line 132
    invoke-virtual {p0, v8, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@5e
    .line 135
    int-to-long v6, p2

    #@5f
    .line 134
    const v1, 0x300001f9

    #@62
    invoke-virtual {p0, v1, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@65
    goto :goto_1
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
