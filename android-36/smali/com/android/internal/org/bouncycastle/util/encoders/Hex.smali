.class public Lcom/android/internal/org/bouncycastle/util/encoders/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final blacklist encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static blacklist decode(Ljava/lang/String;)[B
    .registers 6
    .param p0, "data"    # Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10

    .line 135
    nop

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 132
    :catch_10
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception decoding Hex string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist decode([B)[B
    .registers 6
    .param p0, "data"    # [B

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_12

    .line 113
    nop

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 110
    :catch_12
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception decoding Hex data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist decodeStrict(Ljava/lang/String;)[B
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 164
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 166
    :catch_c
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception decoding Hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist decodeStrict(Ljava/lang/String;II)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 182
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 184
    :catch_7
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception decoding Hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist encode([BIILjava/io/OutputStream;)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static blacklist encode([BLjava/io/OutputStream;)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static blacklist encode([B)[B
    .registers 3
    .param p0, "data"    # [B

    .line 41
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encode([BII)[B
    .registers 8
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_10

    .line 63
    nop

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 60
    :catch_10
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/encoders/EncoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encoding Hex string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist toHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 21
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toHexString([BII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v0

    .line 30
    .local v0, "encoded":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
