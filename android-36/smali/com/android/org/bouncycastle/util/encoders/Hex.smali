.class public Lcom/android/org/bouncycastle/util/encoders/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final blacklist encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static blacklist decode(Ljava/lang/String;)[B
    .registers 4

    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    :try_start_5
    sget-object v1, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v1, p0, v0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding Hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist decode([B)[B
    .registers 5

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    :try_start_5
    sget-object v1, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_11

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_11
    move-exception p0

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding Hex data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist decodeStrict(Ljava/lang/String;)[B
    .registers 4

    .line 164
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding Hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist decodeStrict(Ljava/lang/String;II)[B
    .registers 4

    .line 182
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 186
    new-instance p1, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception decoding Hex string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist encode([BIILjava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static blacklist encode([BLjava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static blacklist encode([B)[B
    .registers 3

    .line 41
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist encode([BII)[B
    .registers 5

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    :try_start_5
    sget-object v1, Lcom/android/org/bouncycastle/util/encoders/Hex;->encoder:Lcom/android/org/bouncycastle/util/encoders/HexEncoder;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    .line 62
    new-instance p1, Lcom/android/org/bouncycastle/util/encoders/EncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding Hex string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist toHexString([B)Ljava/lang/String;
    .registers 3

    .line 21
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString([BII)Ljava/lang/String;
    .registers 3

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
