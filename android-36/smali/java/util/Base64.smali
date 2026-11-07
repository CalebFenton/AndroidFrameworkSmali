.class public Ljava/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Base64$Encoder;,
        Ljava/util/Base64$Decoder;,
        Ljava/util/Base64$DecInputStream;,
        Ljava/util/Base64$EncOutputStream;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 155
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 90
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 176
    sget-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 111
    sget-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static whitelist test-api getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .registers 12
    .param p0, "lineLength"    # I
    .param p1, "lineSeparator"    # [B

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Ljava/util/Base64$Decoder;->-$$Nest$sfgetfromBase64()[I

    move-result-object v0

    .line 135
    .local v0, "base64":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_36

    aget-byte v3, p1, v2

    .line 136
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 135
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 137
    .restart local v3    # "b":B
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal base64 line separator character 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v3    # "b":B
    :cond_36
    and-int/lit8 v7, p0, -0x4

    .line 142
    .end local p0    # "lineLength":I
    .local v7, "lineLength":I
    if-gtz v7, :cond_3d

    .line 143
    sget-object p0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object p0

    .line 145
    :cond_3d
    new-instance v4, Ljava/util/Base64$Encoder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    .end local p1    # "lineSeparator":[B
    .local v6, "lineSeparator":[B
    invoke-direct/range {v4 .. v9}, Ljava/util/Base64$Encoder;-><init>(Z[BIZLjava/util/Base64-IA;)V

    return-object v4
.end method

.method public static whitelist test-api getUrlDecoder()Ljava/util/Base64$Decoder;
    .registers 1

    .line 166
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static whitelist test-api getUrlEncoder()Ljava/util/Base64$Encoder;
    .registers 1

    .line 101
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    return-object v0
.end method
