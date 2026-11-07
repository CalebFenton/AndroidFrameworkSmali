.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final blacklist encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

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

    .line 154
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static blacklist decode([BIILjava/io/OutputStream;)I
    .registers 8
    .param p0, "base32Data"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/io/OutputStream;

    .line 169
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 171
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to decode base32 data: "

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

.method public static blacklist decode(Ljava/lang/String;)[B
    .registers 7
    .param p0, "data"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    .line 129
    .local v0, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_d
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v2, p0, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_18

    .line 138
    nop

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 135
    :catch_18
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to decode base32 string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist decode([B)[B
    .registers 7
    .param p0, "data"    # [B

    .line 105
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    .line 106
    .local v0, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_a
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    array-length v3, p0

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4, v3, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_17

    .line 115
    nop

    .line 117
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 112
    :catch_17
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to decode base32 data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
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

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

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

    .line 79
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static blacklist encode([B)[B
    .registers 3
    .param p0, "data"    # [B

    .line 41
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encode([BII)[B
    .registers 9
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 54
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v0, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->getEncodedLength(I)I

    move-result v0

    .line 55
    .local v0, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 59
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_b
    sget-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encoder:Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;

    invoke-interface {v2, p0, p1, p2, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_16

    .line 64
    nop

    .line 66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 61
    :catch_16
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/encoders/EncoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encoding base32 string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist toBase32String([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 21
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->toBase32String([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toBase32String([BII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32;->encode([BII)[B

    move-result-object v0

    .line 30
    .local v0, "encoded":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
