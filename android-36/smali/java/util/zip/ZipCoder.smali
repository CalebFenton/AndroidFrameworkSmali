.class Ljava/util/zip/ZipCoder;
.super Ljava/lang/Object;
.source "ZipCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipCoder$UTF8ZipCoder;
    }
.end annotation


# static fields
.field static final blacklist UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;


# instance fields
.field private final greylist-max-o cs:Ljava/nio/charset/Charset;

.field protected greylist-max-o dec:Ljava/nio/charset/CharsetDecoder;

.field private greylist-max-o enc:Ljava/nio/charset/CharsetEncoder;

.field private blacklist slashBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipCoder$UTF8ZipCoder;-><init>(Ljava/nio/charset/Charset;Ljava/util/zip/ZipCoder-IA;)V

    sput-object v0, Ljava/util/zip/ZipCoder;->UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;)V
    .registers 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    .line 175
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/charset/Charset;Ljava/util/zip/ZipCoder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private greylist-max-o encoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    .line 187
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_18

    .line 188
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 189
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 190
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    .line 192
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->enc:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method public static greylist-max-o get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;
    .registers 2
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .line 56
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    sget-object v0, Ljava/util/zip/ZipCoder;->UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    return-object v0

    .line 59
    :cond_b
    new-instance v0, Ljava/util/zip/ZipCoder;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method static blacklist hash(Ljava/lang/String;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    .local v0, "hsh":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 144
    .local v1, "len":I
    if-lez v1, :cond_18

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_18

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    add-int/lit8 v0, v2, 0x2f

    .line 147
    :cond_18
    return v0
.end method

.method private blacklist slashBytes()[B
    .registers 5

    .line 203
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->slashBytes:[B

    if-nez v0, :cond_1c

    .line 205
    const-string v0, "/"

    iget-object v1, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 206
    .local v0, "slash":[B
    const-string v1, "//"

    iget-object v2, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 207
    .local v1, "doubleSlash":[B
    array-length v2, v0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Ljava/util/zip/ZipCoder;->slashBytes:[B

    .line 209
    .end local v0    # "slash":[B
    .end local v1    # "doubleSlash":[B
    :cond_1c
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->slashBytes:[B

    return-object v0
.end method

.method static greylist-max-o toStringUTF8([BI)Ljava/lang/String;
    .registers 4
    .param p0, "ba"    # [B
    .param p1, "len"    # I

    .line 104
    sget-object v0, Ljava/util/zip/ZipCoder;->UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/zip/ZipCoder$UTF8ZipCoder;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist checkedHash([BII)I
    .registers 11
    .param p1, "a"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    if-nez p3, :cond_4

    .line 122
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_4
    const/4 v0, 0x0

    .line 128
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 129
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 130
    .local v2, "limit":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    .line 131
    .local v3, "decoded":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_25

    .line 132
    mul-int/lit8 v5, v0, 0x1f

    aget-char v6, v3, v4

    add-int v0, v5, v6

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 134
    .end local v4    # "i":I
    :cond_25
    if-lez v2, :cond_33

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v3, v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_33

    .line 135
    mul-int/lit8 v4, v0, 0x1f

    add-int/lit8 v0, v4, 0x2f

    .line 137
    :cond_33
    return v0
.end method

.method protected greylist-max-o decoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    .line 178
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_18

    .line 179
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 180
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 181
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    .line 183
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipCoder;->dec:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method greylist-max-o getBytes(Ljava/lang/String;)[B
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .line 89
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 91
    .local v1, "pos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 92
    .local v2, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_27

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 95
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 96
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_35} :catch_36

    .line 97
    return-object v3

    .line 98
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .end local v3    # "bytes":[B
    :catch_36
    move-exception v0

    .line 99
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist hasTrailingSlash(Ljava/nio/DirectByteBuffer;I)Z
    .registers 8
    .param p1, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p2, "end"    # I

    .line 158
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->slashBytes()[B

    move-result-object v0

    .line 159
    .local v0, "slashBytes":[B
    array-length v1, v0

    sub-int v1, p2, v1

    .local v1, "i":I
    :goto_7
    if-ge v1, p2, :cond_1a

    .line 160
    invoke-virtual {p1, v1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v2

    .line 161
    .local v2, "b":B
    sub-int v3, v1, p2

    array-length v4, v0

    add-int/2addr v3, v4

    aget-byte v3, v0, v3

    if-eq v2, v3, :cond_17

    .line 162
    const/4 v3, 0x0

    return v3

    .line 159
    .end local v2    # "b":B
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 165
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method blacklist hasTrailingSlash([BI)Z
    .registers 9
    .param p1, "a"    # [B
    .param p2, "end"    # I

    .line 151
    invoke-direct {p0}, Ljava/util/zip/ZipCoder;->slashBytes()[B

    move-result-object v3

    .line 152
    .local v3, "slashBytes":[B
    array-length v0, v3

    if-lt p2, v0, :cond_17

    array-length v0, v3

    sub-int v1, p2, v0

    array-length v5, v3

    .line 153
    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    .end local p1    # "a":[B
    .end local p2    # "end":I
    .local v0, "a":[B
    .local v2, "end":I
    invoke-static/range {v0 .. v5}, Ljava/util/Arrays;->mismatch([BII[BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    .line 152
    .end local v0    # "a":[B
    .end local v2    # "end":I
    .restart local p1    # "a":[B
    .restart local p2    # "end":I
    :cond_17
    move-object v0, p1

    move v2, p2

    .line 153
    .end local p1    # "a":[B
    .end local p2    # "end":I
    .restart local v0    # "a":[B
    .restart local v2    # "end":I
    :cond_19
    const/4 p1, 0x0

    .line 152
    :goto_1a
    return p1
.end method

.method greylist-max-o isUTF8()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method blacklist toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;
    .registers 6
    .param p1, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Ljava/nio/DirectByteBuffer;->slice(II)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 82
    :catch_11
    move-exception v0

    .line 83
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o toString([B)Ljava/lang/String;
    .registers 4
    .param p1, "ba"    # [B

    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/ZipCoder;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toString([BI)Ljava/lang/String;
    .registers 4
    .param p1, "ba"    # [B
    .param p2, "length"    # I

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/zip/ZipCoder;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist toString([BII)Ljava/lang/String;
    .registers 6
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipCoder;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 65
    :catch_11
    move-exception v0

    .line 66
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
