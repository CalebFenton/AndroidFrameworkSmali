.class public Lcom/android/org/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final blacklist DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final blacklist DER_TAG_MASK:I = 0x3f

.field private static final blacklist DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist readByte(Ljava/io/InputStream;)B
    .registers 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 172
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 175
    int-to-byte v1, v0

    return v1

    .line 173
    :cond_9
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    const-string v2, "Premature end of input, could not read byte."

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    throw v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_11

    .line 176
    .end local v0    # "b":I
    .restart local p0    # "input":Ljava/io/InputStream;
    :catch_11
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist readDEROctetString(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    .line 46
    .local v0, "tag":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 50
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 51
    .local v1, "width":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_19

    .line 52
    and-int/lit16 v2, v1, -0x81

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .local v2, "length":I
    goto :goto_1a

    .line 54
    .end local v2    # "length":I
    :cond_19
    move v2, v1

    .line 57
    .restart local v2    # "length":I
    :goto_1a
    invoke-static {p0, v2}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    return-object v3

    .line 47
    .end local v1    # "width":I
    .end local v2    # "length":I
    :cond_1f
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist readDEROctetString([B)[B
    .registers 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readFixedBytes(Ljava/io/InputStream;I)[B
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 109
    if-ltz p1, :cond_30

    .line 113
    :try_start_2
    new-array v0, p1, [B

    .line 114
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 115
    .local v1, "count":I
    if-lt v1, p1, :cond_b

    .line 119
    return-object v0

    .line 116
    :cond_b
    new-instance v2, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Premature end of input, expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, only read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "length":I
    throw v2

    .line 120
    .end local v0    # "data":[B
    .end local v1    # "count":I
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "length":I
    :catch_2e
    move-exception v0

    goto :goto_49

    .line 110
    :cond_30
    new-instance v0, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "length":I
    throw v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_49} :catch_2e

    .line 121
    .local v0, "e":Ljava/io/IOException;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "length":I
    :goto_49
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist readList(Ljava/io/InputStream;II)[[B
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 77
    .local v1, "data":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    .end local p0    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    :goto_e
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_1c

    .line 80
    invoke-static {v2, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_2a

    goto :goto_e

    .line 84
    :cond_1c
    nop

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    .line 82
    :catch_2a
    move-exception p0

    .line 83
    .local p0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v3, p0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist readList([BII)[[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readLong(Ljava/io/InputStream;I)J
    .registers 10
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 153
    const/16 v0, 0x8

    if-gt p1, v0, :cond_1a

    if-ltz p1, :cond_1a

    .line 157
    const-wide/16 v1, 0x0

    .line 158
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, p1, :cond_19

    .line 159
    shl-long v4, v1, v0

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 162
    .end local v3    # "i":I
    :cond_19
    return-wide v1

    .line 154
    .end local v1    # "result":J
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist readNumber(Ljava/io/InputStream;I)I
    .registers 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x4

    if-gt p1, v0, :cond_17

    if-ltz p1, :cond_17

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_16

    .line 139
    shl-int/lit8 v2, v0, 0x8

    invoke-static {p0}, Lcom/android/org/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 142
    .end local v1    # "i":I
    :cond_16
    return v0

    .line 134
    .end local v0    # "result":I
    :cond_17
    new-instance v0, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist readVariableBytes(Ljava/io/InputStream;I)[B
    .registers 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 97
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 98
    .local v0, "length":I
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist writeFixedBytes(Ljava/io/OutputStream;[B)V
    .registers 4
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_5
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist writeNumber(Ljava/io/OutputStream;JI)V
    .registers 10
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 218
    if-ltz p3, :cond_65

    .line 221
    const/16 v0, 0x8

    if-ge p3, v0, :cond_3a

    mul-int/lit8 v0, p3, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    goto :goto_3a

    .line 222
    :cond_11
    new-instance v0, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_3a
    :goto_3a
    if-lez p3, :cond_63

    .line 228
    add-int/lit8 v0, p3, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    .line 230
    .local v0, "shift":J
    const-wide/16 v2, 0x40

    cmp-long v2, v0, v2

    if-gez v2, :cond_54

    .line 231
    long-to-int v2, v0

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    :try_start_50
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_58

    .line 233
    :cond_54
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_5c

    .line 236
    :goto_58
    nop

    .end local v0    # "shift":J
    add-int/lit8 p3, p3, -0x1

    .line 237
    goto :goto_3a

    .line 238
    :catch_5c
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :cond_63
    nop

    .line 241
    return-void

    .line 219
    :cond_65
    new-instance v0, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .registers 5
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 191
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 192
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 193
    return-void
.end method
