.class public final Landroid/security/keystore2/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 3
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 121
    const-string/jumbo v0, "secp224r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 122
    return-object v0

    .line 123
    :cond_a
    const-string/jumbo v0, "secp256r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 124
    return-object v0

    .line 125
    :cond_14
    const-string/jumbo v0, "secp384r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 126
    return-object v0

    .line 127
    :cond_1e
    const-string/jumbo v0, "secp521r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 128
    return-object v0

    .line 130
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 115
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 116
    .local v0, "parameters":Ljava/security/AlgorithmParameters;
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 117
    const-class v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    return-object v1
.end method

.method static blacklist getDigestOutputSizeBits(I)I
    .registers 4
    .param p0, "keymasterDigest"    # I

    .line 36
    packed-switch p0, :pswitch_data_30

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_1c
    const/16 v0, 0x200

    return v0

    .line 48
    :pswitch_1f
    const/16 v0, 0x180

    return v0

    .line 46
    :pswitch_22
    const/16 v0, 0x100

    return v0

    .line 44
    :pswitch_25
    const/16 v0, 0xe0

    return v0

    .line 42
    :pswitch_28
    const/16 v0, 0xa0

    return v0

    .line 40
    :pswitch_2b
    const/16 v0, 0x80

    return v0

    .line 38
    :pswitch_2e
    const/4 v0, -0x1

    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist getEcCurveFromKeymaster(I)Ljava/lang/String;
    .registers 2
    .param p0, "ecCurve"    # I

    .line 87
    packed-switch p0, :pswitch_data_16

    .line 97
    const-string v0, ""

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "secp521r1"

    return-object v0

    .line 93
    :pswitch_a
    const-string/jumbo v0, "secp384r1"

    return-object v0

    .line 91
    :pswitch_e
    const-string/jumbo v0, "secp256r1"

    return-object v0

    .line 89
    :pswitch_12
    const-string/jumbo v0, "secp224r1"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method static blacklist getKeymasterEcCurve(Ljava/lang/String;)I
    .registers 2
    .param p0, "ecCurveName"    # Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "secp224r1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_b
    const-string/jumbo v0, "secp256r1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_16
    const-string/jumbo v0, "secp384r1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    const/4 v0, 0x2

    return v0

    .line 107
    :cond_21
    const-string/jumbo v0, "secp521r1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 108
    const/4 v0, 0x3

    return v0

    .line 110
    :cond_2c
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z
    .registers 6
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 136
    .local v1, "curveSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 137
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 138
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2d} :catch_33
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_2d} :catch_33

    if-eqz v2, :cond_31

    .line 139
    const/4 v0, 0x1

    return v0

    .line 143
    .end local v1    # "curveSpec":Ljava/security/spec/ECParameterSpec;
    :cond_31
    nop

    .line 144
    return v0

    .line 141
    :catch_33
    move-exception v1

    .line 142
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return v0
.end method

.method static blacklist isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterBlockMode"    # I

    .line 59
    sparse-switch p0, :sswitch_data_20

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 61
    :sswitch_1e
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x20 -> :sswitch_1c
    .end sparse-switch
.end method

.method static blacklist isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterPadding"    # I

    .line 74
    packed-switch p0, :pswitch_data_20

    .line 81
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 76
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method
