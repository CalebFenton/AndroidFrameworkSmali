.class public Lcom/android/org/bouncycastle/util/encoders/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@7
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    div-int/lit8 v3, v3, 0x4

    #@6
    mul-int/lit8 v2, v3, 0x3

    #@8
    .line 127
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@d
    .line 131
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@f
    invoke-interface {v3, p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 134
    :catch_0
    move-exception v1

    #@18
    .line 135
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "unable to decode base64 string: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v3
.end method

.method public static decode([B)[B
    .locals 6
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 103
    array-length v3, p0

    #@1
    div-int/lit8 v3, v3, 0x4

    #@3
    mul-int/lit8 v2, v3, 0x3

    #@5
    .line 104
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@a
    .line 108
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@c
    array-length v4, p0

    #@d
    const/4 v5, 0x0

    #@e
    invoke-interface {v3, p0, v5, v4, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 111
    :catch_0
    move-exception v1

    #@17
    .line 112
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "unable to decode base64 data: "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v3
.end method

.method public static encode([BIILjava/io/OutputStream;)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static encode([BLjava/io/OutputStream;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@2
    array-length v1, p0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-interface {v0, p0, v2, v1, p1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static encode([B)[B
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 39
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([BII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static encode([BII)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 52
    add-int/lit8 v3, p2, 0x2

    #@2
    div-int/lit8 v3, v3, 0x3

    #@4
    mul-int/lit8 v2, v3, 0x4

    #@6
    .line 53
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@b
    .line 57
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@d
    invoke-interface {v3, p0, p1, p2, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 60
    :catch_0
    move-exception v1

    #@16
    .line 61
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/util/encoders/EncoderException;

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "exception encoding base64 string: "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method public static toBase64String([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 19
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static toBase64String([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([BII)[B

    #@3
    move-result-object v0

    #@4
    .line 28
    .local v0, "encoded":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
