.class public abstract Landroid/security/keystore/KeyProperties$KeyAlgorithm;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyAlgorithm"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "keymasterAlgorithm"    # I

    #@0
    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    #@3
    .line 191
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported key algorithm: "

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
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 187
    :pswitch_1
    const-string/jumbo v0, "EC"

    #@20
    return-object v0

    #@21
    .line 189
    :pswitch_2
    const-string/jumbo v0, "RSA"

    #@24
    return-object v0

    #@25
    .line 185
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    .locals 3
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keymasterDigest"    # I

    #@0
    .prologue
    .line 211
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported key algorithm: "

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
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 213
    :sswitch_0
    const-string/jumbo v0, "AES"

    #@20
    return-object v0

    #@21
    .line 215
    :sswitch_1
    packed-switch p1, :pswitch_data_0

    #@24
    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Unsupported HMAC digest: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 228
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 217
    :pswitch_0
    const-string/jumbo v0, "HmacSHA1"

    #@45
    return-object v0

    #@46
    .line 219
    :pswitch_1
    const-string/jumbo v0, "HmacSHA224"

    #@49
    return-object v0

    #@4a
    .line 221
    :pswitch_2
    const-string/jumbo v0, "HmacSHA256"

    #@4d
    return-object v0

    #@4e
    .line 223
    :pswitch_3
    const-string/jumbo v0, "HmacSHA384"

    #@51
    return-object v0

    #@52
    .line 225
    :pswitch_4
    const-string/jumbo v0, "HmacSHA512"

    #@55
    return-object v0

    #@56
    .line 211
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch

    #@60
    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const-string/jumbo v0, "EC"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 174
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 175
    :cond_0
    const-string/jumbo v0, "RSA"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 176
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 178
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Unsupported key algorithm: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method public static toKeymasterDigest(Ljava/lang/String;)I
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 243
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string/jumbo v2, "HMAC"

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_5

    #@f
    .line 244
    const-string/jumbo v2, "HMAC"

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 245
    .local v1, "digestUpper":Ljava/lang/String;
    const-string/jumbo v2, "SHA1"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 247
    const/4 v2, 0x2

    #@24
    return v2

    #@25
    .line 245
    :cond_0
    const-string/jumbo v2, "SHA224"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_1

    #@2e
    .line 249
    const/4 v2, 0x3

    #@2f
    return v2

    #@30
    .line 245
    :cond_1
    const-string/jumbo v2, "SHA256"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 251
    const/4 v2, 0x4

    #@3a
    return v2

    #@3b
    .line 245
    :cond_2
    const-string/jumbo v2, "SHA384"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_3

    #@44
    .line 253
    const/4 v2, 0x5

    #@45
    return v2

    #@46
    .line 245
    :cond_3
    const-string/jumbo v2, "SHA512"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 255
    const/4 v2, 0x6

    #@50
    return v2

    #@51
    .line 257
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@53
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v4, "Unsupported HMAC digest: "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 257
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 261
    .end local v1    # "digestUpper":Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    #@6c
    return v2
.end method

.method public static toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    const-string/jumbo v0, "AES"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 199
    const/16 v0, 0x20

    #@b
    return v0

    #@c
    .line 200
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "HMAC"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 201
    const/16 v0, 0x80

    #@1d
    return v0

    #@1e
    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Unsupported secret key algorithm: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 203
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method
