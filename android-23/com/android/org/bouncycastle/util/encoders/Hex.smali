.class public Lcom/android/org/bouncycastle/util/encoders/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

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
    .line 149
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 128
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@7
    invoke-interface {v2, p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 131
    :catch_0
    move-exception v1

    #@10
    .line 132
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "exception decoding Hex string: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method public static decode([B)[B
    .locals 5
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 106
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@7
    array-length v3, p0

    #@8
    const/4 v4, 0x0

    #@9
    invoke-interface {v2, p0, v4, v3, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 109
    :catch_0
    move-exception v1

    #@12
    .line 110
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "exception decoding Hex data: "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2f
    throw v2
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
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

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
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

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
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static encode([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 56
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    #@7
    invoke-interface {v2, p0, p1, p2, v0}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 59
    :catch_0
    move-exception v1

    #@10
    .line 60
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/util/encoders/EncoderException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "exception encoding Hex string: "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 19
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

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
