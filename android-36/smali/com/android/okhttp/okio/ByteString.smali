.class public Lcom/android/okhttp/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/okhttp/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o EMPTY:Lcom/android/okhttp/okio/ByteString;

.field static final greylist-max-o HEX_DIGITS:[C

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field final greylist-max-o data:[B

.field transient greylist-max-o hashCode:I

.field transient greylist-max-o utf8:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 49
    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    .line 54
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    return-void

    nop

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor greylist-max-o <init>([B)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    return-void
.end method

.method public static greylist-max-o decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 2

    if-eqz p0, :cond_10

    .line 141
    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    .line 142
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o decodeHex(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 6

    if-eqz p0, :cond_4e

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_37

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_32

    mul-int/lit8 v3, v2, 0x2

    .line 163
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 164
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 165
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 167
    :cond_32
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0

    .line 159
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x66

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    const/16 v0, 0x41

    if-lt p0, v0, :cond_20

    const/16 v0, 0x46

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x37

    return p0

    .line 174
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static greylist-max-o encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .registers 3

    if-eqz p0, :cond_10

    .line 88
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 89
    iput-object p0, v0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs blacklist of([B)Lcom/android/okhttp/okio/ByteString;
    .registers 2

    if-eqz p0, :cond_e

    .line 69
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    .line 68
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o of([BII)Lcom/android/okhttp/okio/ByteString;
    .registers 10

    if-eqz p0, :cond_15

    .line 78
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 80
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance p0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object p0

    .line 77
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_37

    if-ltz p1, :cond_20

    .line 187
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_1a

    sub-int v2, p1, v1

    .line 189
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    add-int/2addr v1, v2

    goto :goto_7

    .line 190
    :cond_14
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 192
    :cond_1a
    new-instance p0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object p0

    .line 185
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 365
    invoke-static {p1, v0}, Lcom/android/okhttp/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;

    move-result-object p1

    .line 367
    :try_start_8
    const-class v0, Lcom/android/okhttp/okio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 369
    iget-object p1, p1, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a

    return-void

    .line 373
    :catch_1a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 371
    :catch_20
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 379
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public greylist-max-o base64()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o base64Url()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o compareTo(Lcom/android/okhttp/okio/ByteString;)I
    .registers 11

    .line 339
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_27

    .line 342
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 343
    invoke-virtual {p1, v4}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_23
    if-ge v7, v8, :cond_26

    return v5

    :cond_26
    return v6

    :cond_27
    if-ne v0, v1, :cond_2a

    return v3

    :cond_2a
    if-ge v0, v1, :cond_2d

    return v5

    :cond_2d
    return v6
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/ByteString;->compareTo(Lcom/android/okhttp/okio/ByteString;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 328
    :cond_4
    instance-of v1, p1, Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    .line 329
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v3, p0

    if-ne v1, v3, :cond_1c

    array-length v1, p0

    .line 330
    invoke-virtual {p1, v2, p0, v2, v1}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public greylist-max-o getByte(I)B
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 334
    iget v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    return v0
.end method

.method public greylist-max-o hex()Ljava/lang/String;
    .registers 9

    .line 147
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 149
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v2, v1, :cond_25

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 150
    sget-object v6, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    .line 151
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 153
    :cond_25
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public greylist-max-o md5()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 111
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 5

    .line 312
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, p0, p1, p4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o rangeEquals(I[BII)Z
    .registers 6

    .line 321
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_12

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_12

    .line 323
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 116
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o size()I
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public greylist-max-o substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 6

    if-ltz p1, :cond_44

    .line 260
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_25

    sub-int v1, p2, p1

    if-ltz v1, :cond_1d

    if-nez p1, :cond_11

    .line 267
    array-length v2, v0

    if-ne p2, v2, :cond_11

    return-object p0

    .line 271
    :cond_11
    new-array p0, v1, [B

    const/4 p2, 0x0

    .line 272
    invoke-static {v0, p1, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    new-instance p1, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {p1, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object p1

    .line 265
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > length("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 6

    const/4 v0, 0x0

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_39

    .line 203
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_36

    const/16 v4, 0x5a

    if-le v2, v4, :cond_11

    goto :goto_36

    .line 208
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 209
    aput-byte v2, p0, v0

    .line 210
    :goto_1e
    array-length v0, p0

    if-ge v1, v0, :cond_30

    .line 211
    aget-byte v0, p0, v1

    if-lt v0, v3, :cond_2d

    if-le v0, v4, :cond_28

    goto :goto_2d

    :cond_28
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 213
    aput-byte v0, p0, v1

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 215
    :cond_30
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    return-object p0
.end method

.method public greylist-max-o toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 6

    const/4 v0, 0x0

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_39

    .line 228
    aget-byte v2, v1, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_36

    const/16 v4, 0x7a

    if-le v2, v4, :cond_11

    goto :goto_36

    .line 233
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    .line 234
    aput-byte v2, p0, v0

    .line 235
    :goto_1e
    array-length v0, p0

    if-ge v1, v0, :cond_30

    .line 236
    aget-byte v0, p0, v1

    if-lt v0, v3, :cond_2d

    if-le v0, v4, :cond_28

    goto :goto_2d

    :cond_28
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    .line 238
    aput-byte v0, p0, v1

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 240
    :cond_30
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    return-object p0
.end method

.method public greylist-max-o toByteArray()[B
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    array-length v1, v0

    if-nez v1, :cond_8

    .line 353
    const-string p0, "ByteString[size=0]"

    return-object p0

    .line 356
    :cond_8
    array-length v1, v0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_21

    .line 357
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ByteString[size=%s data=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_21
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ByteString[size=%s md5=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o utf8()Ljava/lang/String;
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    sget-object v2, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 4

    .line 303
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    return-void
.end method

.method public greylist-max-o write(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 298
    iget-object p0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 297
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
