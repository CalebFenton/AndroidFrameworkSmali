.class final Ljava/util/zip/ZipCoder$UTF8ZipCoder;
.super Ljava/util/zip/ZipCoder;
.source "ZipCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UTF8ZipCoder"
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/nio/charset/Charset;)V
    .registers 3
    .param p1, "utf8"    # Ljava/nio/charset/Charset;

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipCoder;-><init>(Ljava/nio/charset/Charset;Ljava/util/zip/ZipCoder-IA;)V

    .line 216
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/charset/Charset;Ljava/util/zip/ZipCoder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/zip/ZipCoder$UTF8ZipCoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method blacklist checkedHash([BII)I
    .registers 10
    .param p1, "a"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    if-nez p3, :cond_4

    .line 250
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_4
    add-int v0, p2, p3

    .line 254
    .local v0, "end":I
    const/4 v1, 0x0

    .line 255
    .local v1, "h":I
    :goto_7
    if-ge p2, v0, :cond_22

    .line 256
    aget-byte v2, p1, p2

    .line 257
    .local v2, "b":B
    if-ltz v2, :cond_14

    .line 259
    mul-int/lit8 v3, v1, 0x1f

    add-int v1, v3, v2

    .line 260
    add-int/lit8 p2, p2, 0x1

    .line 271
    .end local v2    # "b":B
    goto :goto_7

    .line 269
    .restart local v2    # "b":B
    :cond_14
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4, p3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v3}, Ljava/util/zip/ZipCoder$UTF8ZipCoder;->hash(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 273
    .end local v2    # "b":B
    :cond_22
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2e

    .line 274
    mul-int/lit8 v2, v1, 0x1f

    add-int/lit8 v1, v2, 0x2f

    .line 276
    :cond_2e
    return v1
.end method

.method blacklist getBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 244
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist hasTrailingSlash(Ljava/nio/DirectByteBuffer;I)Z
    .registers 5
    .param p1, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p2, "end"    # I

    .line 287
    if-lez p2, :cond_e

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method blacklist hasTrailingSlash([BI)Z
    .registers 5
    .param p1, "a"    # [B
    .param p2, "end"    # I

    .line 281
    if-lez p2, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method blacklist isUTF8()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method blacklist toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;
    .registers 8
    .param p1, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 233
    new-array v0, p3, [B

    .line 234
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, p3}, Ljava/nio/DirectByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 237
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1, p3, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method blacklist toString([BII)Ljava/lang/String;
    .registers 6
    .param p1, "ba"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 227
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
