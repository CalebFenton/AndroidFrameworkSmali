.class public Lcom/android/org/bouncycastle/util/encoders/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final blacklist encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

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

    .line 154
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static blacklist decode([BIILjava/io/OutputStream;)I
    .registers 5

    .line 169
    :try_start_0
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 173
    new-instance p1, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to decode base64 data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist decode(Ljava/lang/String;)[B
    .registers 4

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    :try_start_d
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, v1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_17
    move-exception p0

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to decode base64 string: "

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

    .line 105
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 106
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    :try_start_a
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2, v1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_16

    .line 117
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_16
    move-exception p0

    .line 114
    new-instance v0, Lcom/android/org/bouncycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to decode base64 data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist encode([BIILjava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

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

    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1, p1}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public static blacklist encode([B)[B
    .registers 3

    .line 41
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist encode([BII)[B
    .registers 6

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/util/encoders/Base64;->encoder:Lcom/android/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p2}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->getEncodedLength(I)I

    move-result v1

    .line 55
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 59
    :try_start_b
    invoke-interface {v0, p0, p1, p2, v2}, Lcom/android/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_13

    .line 66
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_13
    move-exception p0

    .line 63
    new-instance p1, Lcom/android/org/bouncycastle/util/encoders/EncoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding base64 string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist toBase64String([B)Ljava/lang/String;
    .registers 3

    .line 21
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toBase64String([BII)Ljava/lang/String;
    .registers 3

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([BII)[B

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
