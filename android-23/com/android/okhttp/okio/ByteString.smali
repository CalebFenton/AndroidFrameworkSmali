.class public Lcom/android/okhttp/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/android/okhttp/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 45
    sput-object v0, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    #@9
    .line 50
    const/4 v0, 0x0

    #@a
    new-array v0, v0, [B

    #@c
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    #@12
    .line 44
    return-void

    #@13
    .line 46
    nop

    #@14
    :array_0
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

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@5
    .line 56
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    if-nez p0, :cond_0

    #@3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "base64 == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 137
    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/okio/Base64;->decode(Ljava/lang/String;)[B

    #@f
    move-result-object v0

    #@10
    .line 138
    .local v0, "decoded":[B
    if-eqz v0, :cond_1

    #@12
    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    #@14
    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@17
    :cond_1
    return-object v1
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    if-nez p0, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "hex == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    rem-int/lit8 v4, v4, 0x2

    #@11
    if-eqz v4, :cond_1

    #@13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Unexpected hex string: "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@30
    move-result v4

    #@31
    div-int/lit8 v4, v4, 0x2

    #@33
    new-array v3, v4, [B

    #@35
    .line 158
    .local v3, "result":[B
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@37
    if-ge v2, v4, :cond_2

    #@39
    .line 159
    mul-int/lit8 v4, v2, 0x2

    #@3b
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v4

    #@3f
    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    #@42
    move-result v4

    #@43
    shl-int/lit8 v0, v4, 0x4

    #@45
    .line 160
    .local v0, "d1":I
    mul-int/lit8 v4, v2, 0x2

    #@47
    add-int/lit8 v4, v4, 0x1

    #@49
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v4

    #@4d
    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeHexDigit(C)I

    #@50
    move-result v1

    #@51
    .line 161
    .local v1, "d2":I
    add-int v4, v0, v1

    #@53
    int-to-byte v4, v4

    #@54
    aput-byte v4, v3, v2

    #@56
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_0

    #@59
    .line 163
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_2
    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@5c
    move-result-object v4

    #@5d
    return-object v4
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 167
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 168
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 169
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Unexpected hex digit: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .locals 3
    .param p1, "digest"    # Ljava/lang/String;

    #@0
    .prologue
    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@6
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 118
    :catch_0
    move-exception v0

    #@10
    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@15
    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    if-nez p0, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "s == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 84
    :cond_0
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    #@d
    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@16
    .line 85
    .local v0, "byteString":Lcom/android/okhttp/okio/ByteString;
    iput-object p0, v0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    #@18
    .line 86
    return-object v0
.end method

.method public static varargs of([B)Lcom/android/okhttp/okio/ByteString;
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 64
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 65
    :cond_0
    new-instance v1, Lcom/android/okhttp/okio/ByteString;

    #@d
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [B

    #@13
    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@16
    return-object v1
.end method

.method public static of([BII)Lcom/android/okhttp/okio/ByteString;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    #@0
    .prologue
    .line 73
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 74
    :cond_0
    array-length v0, p0

    #@c
    int-to-long v0, v0

    #@d
    int-to-long v2, p1

    #@e
    int-to-long v4, p2

    #@f
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@12
    .line 76
    new-array v6, p2, [B

    #@14
    .line 77
    .local v6, "copy":[B
    const/4 v0, 0x0

    #@15
    invoke-static {p0, p1, v6, v0, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 78
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    #@1a
    invoke-direct {v0, v6}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@1d
    return-object v0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    if-nez p0, :cond_0

    #@2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "in == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 181
    :cond_0
    if-gez p1, :cond_1

    #@d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "byteCount < 0: "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 183
    :cond_1
    new-array v2, p1, [B

    #@29
    .line 184
    .local v2, "result":[B
    const/4 v0, 0x0

    #@2a
    .local v0, "offset":I
    :goto_0
    if-ge v0, p1, :cond_3

    #@2c
    .line 185
    sub-int v3, p1, v0

    #@2e
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    #@31
    move-result v1

    #@32
    .line 186
    .local v1, "read":I
    const/4 v3, -0x1

    #@33
    if-ne v1, v3, :cond_2

    #@35
    new-instance v3, Ljava/io/EOFException;

    #@37
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@3a
    throw v3

    #@3b
    .line 184
    :cond_2
    add-int/2addr v0, v1

    #@3c
    goto :goto_0

    #@3d
    .line 188
    .end local v1    # "read":I
    :cond_3
    new-instance v3, Lcom/android/okhttp/okio/ByteString;

    #@3f
    invoke-direct {v3, v2}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@42
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@3
    move-result v1

    #@4
    .line 348
    .local v1, "dataLength":I
    invoke-static {p1, v1}, Lcom/android/okhttp/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    .line 350
    .local v0, "byteString":Lcom/android/okhttp/okio/ByteString;
    :try_start_0
    const-class v5, Lcom/android/okhttp/okio/ByteString;

    #@a
    const-string/jumbo v6, "data"

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v4

    #@11
    .line 351
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@15
    .line 352
    iget-object v5, v0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@17
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 346
    return-void

    #@1b
    .line 355
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    #@1c
    .line 356
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v5

    #@22
    .line 353
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@23
    .line 354
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    array-length v0, v0

    #@3
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@6
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@8
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    #@b
    .line 360
    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encode([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 323
    if-ne p1, p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 324
    :cond_0
    instance-of v0, p1, Lcom/android/okhttp/okio/ByteString;

    #@7
    if-eqz v0, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 325
    check-cast v0, Lcom/android/okhttp/okio/ByteString;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@f
    move-result v0

    #@10
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@12
    array-length v2, v2

    #@13
    if-ne v0, v2, :cond_1

    #@15
    .line 326
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    #@17
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@19
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@1b
    array-length v2, v2

    #@1c
    invoke-virtual {p1, v1, v0, v1, v2}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    #@1f
    move-result v0

    #@20
    .line 324
    :goto_0
    return v0

    #@21
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v1

    #@22
    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 330
    iget v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    #@2
    .line 331
    .local v0, "result":I
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":I
    :goto_0
    return v0

    #@5
    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@a
    move-result v0

    #@b
    .end local v0    # "result":I
    iput v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    #@d
    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    array-length v4, v4

    #@3
    mul-int/lit8 v4, v4, 0x2

    #@5
    new-array v3, v4, [C

    #@7
    .line 144
    .local v3, "result":[C
    const/4 v1, 0x0

    #@8
    .line 145
    .local v1, "c":I
    iget-object v5, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@a
    const/4 v4, 0x0

    #@b
    array-length v6, v5

    #@c
    move v2, v1

    #@d
    .end local v1    # "c":I
    .local v2, "c":I
    :goto_0
    if-ge v4, v6, :cond_0

    #@f
    aget-byte v0, v5, v4

    #@11
    .line 146
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    #@13
    .end local v2    # "c":I
    .restart local v1    # "c":I
    sget-object v7, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    #@15
    shr-int/lit8 v8, v0, 0x4

    #@17
    and-int/lit8 v8, v8, 0xf

    #@19
    aget-char v7, v7, v8

    #@1b
    aput-char v7, v3, v2

    #@1d
    .line 147
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "c":I
    .restart local v2    # "c":I
    sget-object v7, Lcom/android/okhttp/okio/ByteString;->HEX_DIGITS:[C

    #@21
    and-int/lit8 v8, v0, 0xf

    #@23
    aget-char v7, v7, v8

    #@25
    aput-char v7, v3, v1

    #@27
    .line 145
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 149
    .end local v0    # "b":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@2c
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    #@2f
    return-object v4
.end method

.method public md5()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "MD5"

    #@3
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    array-length v0, v0

    #@3
    sub-int/2addr v0, p4

    #@4
    if-gt p1, v0, :cond_0

    #@6
    .line 318
    array-length v0, p2

    #@7
    sub-int/2addr v0, p4

    #@8
    if-gt p3, v0, :cond_0

    #@a
    .line 319
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@c
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    #@f
    move-result v0

    #@10
    .line 317
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public sha256()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 112
    const-string/jumbo v0, "SHA-256"

    #@3
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;->digest(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public substring(I)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    array-length v0, v0

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public substring(II)Lcom/android/okhttp/okio/ByteString;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 255
    if-gez p1, :cond_0

    #@3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "beginIndex < 0"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@e
    array-length v2, v2

    #@f
    if-le p2, v2, :cond_1

    #@11
    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "endIndex > length("

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@21
    array-length v4, v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, ")"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 260
    :cond_1
    sub-int v1, p2, p1

    #@37
    .line 261
    .local v1, "subLen":I
    if-gez v1, :cond_2

    #@39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v3, "endIndex < beginIndex"

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 263
    :cond_2
    if-nez p1, :cond_3

    #@44
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@46
    array-length v2, v2

    #@47
    if-ne p2, v2, :cond_3

    #@49
    .line 264
    return-object p0

    #@4a
    .line 267
    :cond_3
    new-array v0, v1, [B

    #@4c
    .line 268
    .local v0, "copy":[B
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@4e
    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 269
    new-instance v2, Lcom/android/okhttp/okio/ByteString;

    #@53
    invoke-direct {v2, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@56
    return-object v2
.end method

.method public toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x5a

    #@2
    const/16 v5, 0x41

    #@4
    .line 198
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@7
    array-length v4, v4

    #@8
    if-ge v1, v4, :cond_5

    #@a
    .line 199
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@c
    aget-byte v0, v4, v1

    #@e
    .line 200
    .local v0, "c":B
    if-lt v0, v5, :cond_0

    #@10
    if-le v0, v6, :cond_1

    #@12
    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 204
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@17
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, [B

    #@1d
    .line 205
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, 0x20

    #@21
    int-to-byte v4, v4

    #@22
    aput-byte v4, v3, v1

    #@24
    move v1, v2

    #@25
    .line 206
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    #@26
    if-ge v1, v4, :cond_4

    #@28
    .line 207
    aget-byte v0, v3, v1

    #@2a
    .line 208
    if-lt v0, v5, :cond_2

    #@2c
    if-le v0, v6, :cond_3

    #@2e
    .line 206
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_1

    #@31
    .line 209
    :cond_3
    add-int/lit8 v4, v0, 0x20

    #@33
    int-to-byte v4, v4

    #@34
    aput-byte v4, v3, v1

    #@36
    goto :goto_2

    #@37
    .line 211
    :cond_4
    new-instance v4, Lcom/android/okhttp/okio/ByteString;

    #@39
    invoke-direct {v4, v3}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@3c
    return-object v4

    #@3d
    .line 213
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x7a

    #@2
    const/16 v5, 0x61

    #@4
    .line 223
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@7
    array-length v4, v4

    #@8
    if-ge v1, v4, :cond_5

    #@a
    .line 224
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@c
    aget-byte v0, v4, v1

    #@e
    .line 225
    .local v0, "c":B
    if-lt v0, v5, :cond_0

    #@10
    if-le v0, v6, :cond_1

    #@12
    .line 223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 229
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@17
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, [B

    #@1d
    .line 230
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, -0x20

    #@21
    int-to-byte v4, v4

    #@22
    aput-byte v4, v3, v1

    #@24
    move v1, v2

    #@25
    .line 231
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    #@26
    if-ge v1, v4, :cond_4

    #@28
    .line 232
    aget-byte v0, v3, v1

    #@2a
    .line 233
    if-lt v0, v5, :cond_2

    #@2c
    if-le v0, v6, :cond_3

    #@2e
    .line 231
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_1

    #@31
    .line 234
    :cond_3
    add-int/lit8 v4, v0, -0x20

    #@33
    int-to-byte v4, v4

    #@34
    aput-byte v4, v3, v1

    #@36
    goto :goto_2

    #@37
    .line 236
    :cond_4
    new-instance v4, Lcom/android/okhttp/okio/ByteString;

    #@39
    invoke-direct {v4, v3}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@3c
    return-object v4

    #@3d
    .line 238
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 335
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@5
    array-length v0, v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 336
    const-string/jumbo v0, "ByteString[size=0]"

    #@b
    return-object v0

    #@c
    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@e
    array-length v0, v0

    #@f
    const/16 v1, 0x10

    #@11
    if-gt v0, v1, :cond_1

    #@13
    .line 340
    const-string/jumbo v0, "ByteString[size=%s data=%s]"

    #@16
    new-array v1, v2, [Ljava/lang/Object;

    #@18
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@1a
    array-length v2, v2

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v1, v3

    #@21
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    aput-object v2, v1, v4

    #@27
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 343
    :cond_1
    const-string/jumbo v0, "ByteString[size=%s md5=%s]"

    #@2f
    new-array v1, v2, [Ljava/lang/Object;

    #@31
    iget-object v2, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@33
    array-length v2, v2

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    aput-object v2, v1, v3

    #@3a
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    aput-object v2, v1, v4

    #@44
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    #@2
    .line 93
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    #@7
    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@9
    sget-object v2, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@b
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@e
    iput-object v0, p0, Lcom/android/okhttp/okio/ByteString;->utf8:Ljava/lang/String;

    #@10
    goto :goto_0
.end method

.method write(Lcom/android/okhttp/okio/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@4
    array-length v1, v1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@9
    .line 298
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "out == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/ByteString;->data:[B

    #@d
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@10
    .line 292
    return-void
.end method
