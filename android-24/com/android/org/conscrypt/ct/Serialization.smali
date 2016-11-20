.class public Lcom/android/org/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 166
    .local v0, "b":I
    const/4 v2, -0x1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 167
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    #@9
    const-string/jumbo v3, "Premature end of input, could not read byte."

    #@c
    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 170
    .end local v0    # "b":I
    :catch_0
    move-exception v1

    #@11
    .line 171
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    #@13
    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v2

    #@17
    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "b":I
    :cond_0
    int-to-byte v2, v0

    #@18
    return v2
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    #@3
    move-result v3

    #@4
    and-int/lit8 v1, v3, 0x3f

    #@6
    .line 40
    .local v1, "tag":I
    const/4 v3, 0x4

    #@7
    if-eq v1, v3, :cond_0

    #@9
    .line 41
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Wrong DER tag, expected OCTET STRING, got "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 44
    :cond_0
    const/4 v3, 0x1

    #@24
    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@27
    move-result v2

    #@28
    .line 45
    .local v2, "width":I
    and-int/lit16 v3, v2, 0x80

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 46
    and-int/lit16 v3, v2, -0x81

    #@2e
    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@31
    move-result v0

    #@32
    .line 51
    .local v0, "length":I
    :goto_0
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    #@35
    move-result-object v3

    #@36
    return-object v3

    #@37
    .line 48
    .end local v0    # "length":I
    :cond_1
    move v0, v2

    #@38
    .restart local v0    # "length":I
    goto :goto_0
.end method

.method public static readDEROctetString([B)[B
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    if-gez p1, :cond_0

    #@2
    .line 104
    :try_start_0
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Negative length: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 114
    :catch_0
    move-exception v2

    #@1d
    .line 115
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    #@1f
    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v3

    #@23
    .line 107
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-array v1, p1, [B

    #@25
    .line 108
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@28
    move-result v0

    #@29
    .line 109
    .local v0, "count":I
    if-ge v0, p1, :cond_1

    #@2b
    .line 110
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Premature end of input, expected "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 111
    const-string/jumbo v5, " bytes, only read "

    #@40
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v3, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    .line 113
    :cond_1
    return-object v1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 70
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    #@8
    move-result-object v0

    #@9
    .line 71
    .local v0, "data":[B
    new-instance p0, Ljava/io/ByteArrayInputStream;

    #@b
    .end local p0    # "input":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@e
    .line 73
    .restart local p0    # "input":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@11
    move-result v3

    #@12
    if-lez v3, :cond_0

    #@14
    .line 74
    invoke-static {p0, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    goto :goto_0

    #@1c
    .line 76
    :catch_0
    move-exception v1

    #@1d
    .line 77
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    #@1f
    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v3

    #@23
    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v3

    #@27
    new-array v3, v3, [[B

    #@29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, [[B

    #@2f
    return-object v3
.end method

.method public static readList([BII)[[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    .line 147
    if-gt p1, v8, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Invalid width: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 151
    :cond_1
    const-wide/16 v2, 0x0

    #@22
    .line 152
    .local v2, "result":J
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    #@25
    .line 153
    shl-long v4, v2, v8

    #@27
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    #@2a
    move-result v1

    #@2b
    and-int/lit16 v1, v1, 0xff

    #@2d
    int-to-long v6, v1

    #@2e
    or-long v2, v4, v6

    #@30
    .line 152
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 156
    :cond_2
    return-wide v2
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    const/4 v2, 0x4

    #@1
    if-gt p1, v2, :cond_0

    #@3
    if-gez p1, :cond_1

    #@5
    .line 128
    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Invalid width: "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 131
    :cond_1
    const/4 v1, 0x0

    #@20
    .line 132
    .local v1, "result":I
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    #@23
    .line 133
    shl-int/lit8 v2, v1, 0x8

    #@25
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    #@28
    move-result v3

    #@29
    and-int/lit16 v3, v3, 0xff

    #@2b
    or-int v1, v2, v3

    #@2d
    .line 132
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 136
    :cond_2
    return v1
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@3
    move-result v0

    #@4
    .line 92
    .local v0, "length":I
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 194
    return-void

    #@4
    .line 197
    :catch_0
    move-exception v0

    #@5
    .line 198
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@7
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .locals 9
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 212
    if-gez p3, :cond_0

    #@4
    .line 213
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Negative width: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 215
    :cond_0
    if-ge p3, v1, :cond_1

    #@20
    mul-int/lit8 v1, p3, 0x8

    #@22
    const-wide/16 v4, 0x1

    #@24
    shl-long/2addr v4, v1

    #@25
    cmp-long v1, p1, v4

    #@27
    if-ltz v1, :cond_1

    #@29
    .line 216
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Number too large, "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 217
    const-string/jumbo v5, " does not fit in "

    #@3e
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    .line 217
    const-string/jumbo v5, " bytes"

    #@49
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@54
    throw v1

    #@55
    .line 221
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    #@57
    .line 222
    add-int/lit8 v1, p3, -0x1

    #@59
    mul-int/lit8 v1, v1, 0x8

    #@5b
    int-to-long v2, v1

    #@5c
    .line 224
    .local v2, "shift":J
    const-wide/16 v4, 0x40

    #@5e
    cmp-long v1, v2, v4

    #@60
    if-gez v1, :cond_2

    #@62
    .line 225
    long-to-int v1, v2

    #@63
    shr-long v4, p1, v1

    #@65
    const-wide/16 v6, 0xff

    #@67
    and-long/2addr v4, v6

    #@68
    long-to-int v1, v4

    #@69
    int-to-byte v1, v1

    #@6a
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@6d
    .line 230
    :goto_1
    add-int/lit8 p3, p3, -0x1

    #@6f
    goto :goto_0

    #@70
    .line 227
    :cond_2
    const/4 v1, 0x0

    #@71
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    goto :goto_1

    #@75
    .line 232
    :catch_0
    move-exception v0

    #@76
    .line 233
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@78
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    #@7b
    throw v1

    #@7c
    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "shift":J
    :cond_3
    return-void
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    array-length v0, p1

    #@1
    int-to-long v0, v0

    #@2
    invoke-static {p0, v0, v1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    #@5
    .line 186
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    #@8
    .line 184
    return-void
.end method
