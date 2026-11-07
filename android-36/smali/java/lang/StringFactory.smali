.class public final Ljava/lang/StringFactory;
.super Ljava/lang/Object;
.source "StringFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newEmptyString()Ljava/lang/String;
    .registers 2

    .line 40
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 44
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([BB)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "coder"    # B

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 49
    invoke-static {p0, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_8
    array-length v1, p0

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/StringFactory;->newStringFromUtf16Bytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([BI)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "high"    # I

    .line 64
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([BII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .line 68
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist newStringFromBytes([BIII)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist newStringFromBytes([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 75
    invoke-static {p3}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 84
    or-int v0, p1, p2

    if-ltz v0, :cond_4c

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_4c

    .line 92
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "canonicalCharsetName":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 94
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_19
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 96
    invoke-static {p0, v2, p1, p2}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_27
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 98
    new-array v1, p2, [C

    .line 99
    .local v1, "value":[C
    move v3, p2

    .line 100
    .local v3, "length":I
    invoke-static {p0, p1, p2, v1}, Llibcore/util/CharsetUtils;->asciiBytesToChars([BII[C)V

    goto :goto_47

    .line 102
    .end local v1    # "value":[C
    .end local v3    # "length":I
    :cond_36
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 103
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->length()I

    move-result v3

    .line 107
    .restart local v3    # "length":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    move-object v1, v4

    .line 109
    .local v1, "value":[C
    :goto_47
    invoke-static {v1, v2, v3}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    .end local v0    # "canonicalCharsetName":Ljava/lang/String;
    .end local v1    # "value":[C
    .end local v3    # "length":I
    :cond_4c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    array-length v1, p0

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method public static blacklist newStringFromBytes([BLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 79
    array-length v0, p0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 113
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native blacklist newStringFromChars(II[C)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist newStringFromChars([C)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [C

    .line 117
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newStringFromChars([CII)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "charCount"    # I

    .line 121
    or-int v0, p1, p2

    if-ltz v0, :cond_d

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_d

    .line 124
    invoke-static {p1, p2, p0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    array-length v1, p0

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method public static blacklist newStringFromCodePoints([III)Ljava/lang/String;
    .registers 8
    .param p0, "codePoints"    # [I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 151
    if-eqz p0, :cond_2b

    .line 154
    or-int v0, p1, p2

    if-ltz v0, :cond_24

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_24

    .line 157
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 158
    .local v0, "value":[C
    add-int v1, p1, p2

    .line 159
    .local v1, "end":I
    const/4 v2, 0x0

    .line 160
    .local v2, "length":I
    move v3, p1

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_1e

    .line 161
    aget v4, p0, v3

    invoke-static {v4, v0, v2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v4

    add-int/2addr v2, v4

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 163
    .end local v3    # "i":I
    :cond_1e
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 155
    .end local v0    # "value":[C
    .end local v1    # "end":I
    .end local v2    # "length":I
    :cond_24
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    array-length v1, p0

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 152
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "codePoints == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native blacklist newStringFromString(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist newStringFromStringBuffer(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 5
    .param p0, "stringBuffer"    # Ljava/lang/StringBuffer;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[B

    move-result-object v0

    .line 140
    .local v0, "value":[B
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 141
    .local v1, "length":I
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->isLatin1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 142
    invoke-static {v0, v3, v3, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 144
    :cond_16
    invoke-static {v0, v3, v1}, Ljava/lang/StringFactory;->newStringFromUtf16Bytes([BII)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 146
    .end local v0    # "value":[B
    .end local v1    # "length":I
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public static blacklist newStringFromStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[B

    move-result-object v0

    .line 168
    .local v0, "value":[B
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 169
    .local v1, "length":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isLatin1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 170
    invoke-static {v0, v3, v3, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 172
    :cond_14
    invoke-static {v0, v3, v1}, Ljava/lang/StringFactory;->newStringFromUtf16Bytes([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static native blacklist newStringFromUtf16Bytes([BII)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist newStringFromUtf8Bytes([BII)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
