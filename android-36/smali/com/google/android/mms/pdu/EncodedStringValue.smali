.class public Lcom/google/android/mms/pdu/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private blacklist mCharacterSet:I

.field private blacklist mData:[B


# direct methods
.method public constructor greylist <init>(I[B)V
    .registers 6
    .param p1, "charset"    # I
    .param p2, "data"    # [B

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p2, :cond_14

    .line 61
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    .line 62
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 63
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-void

    .line 58
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    :try_start_3
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 81
    const/16 v0, 0x6a

    iput v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_10} :catch_11

    .line 84
    goto :goto_19

    .line 82
    :catch_11
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "EncodedStringValue"

    const-string v2, "Default encoding must be supported."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_19
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 74
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 75
    return-void
.end method

.method public static greylist concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .registers 5
    .param p0, "addr"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 266
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-gt v2, v1, :cond_1e

    .line 267
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    if-ge v2, v1, :cond_1b

    .line 269
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 273
    .end local v2    # "i":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 4
    .param p0, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 278
    if-nez p0, :cond_4

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_4
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    return-object v0
.end method

.method public static greylist encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .param p0, "array"    # [Ljava/lang/String;

    .line 287
    array-length v0, p0

    .line 288
    .local v0, "count":I
    if-lez v0, :cond_15

    .line 289
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 290
    .local v1, "encodedArray":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_14

    .line 291
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 293
    .end local v2    # "i":I
    :cond_14
    return-object v1

    .line 295
    .end local v1    # "encodedArray":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-r extract(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 242
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "values":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 246
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    .line 247
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 251
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 252
    .local v2, "len":I
    if-lez v2, :cond_33

    .line 253
    new-array v3, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    return-object v3

    .line 255
    :cond_33
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public greylist appendTextString([B)V
    .registers 6
    .param p1, "textString"    # [B

    .line 174
    if-eqz p1, :cond_34

    .line 178
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    if-nez v0, :cond_13

    .line 179
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 180
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 182
    :cond_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v0, "newTextString":Ljava/io/ByteArrayOutputStream;
    :try_start_18
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_28

    .line 190
    nop

    .line 192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 194
    .end local v0    # "newTextString":Ljava/io/ByteArrayOutputStream;
    :goto_27
    return-void

    .line 186
    .restart local v0    # "newTextString":Ljava/io/ByteArrayOutputStream;
    :catch_28
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "appendTextString: failed when write a new Text-string"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .end local v0    # "newTextString":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v0, v0

    .line 203
    .local v0, "len":I
    new-array v1, v0, [B

    .line 204
    .local v1, "dstBytes":[B
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    :try_start_b
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    return-object v2

    .line 208
    :catch_13
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to clone an EncodedStringValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EncodedStringValue"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    new-instance v3, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist getCharacterSet()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    return v0
.end method

.method public greylist getString()Ljava/lang/String;
    .registers 5

    .line 146
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 150
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v1

    .line 152
    .end local v0    # "name":Ljava/lang/String;
    :catch_1a
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1b
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_25

    return-object v1

    .line 158
    :catch_25
    move-exception v1

    .line 159
    .local v1, "e2":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public greylist getTextString()[B
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 117
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-object v0
.end method

.method public greylist setCharacterSet(I)V
    .registers 2
    .param p1, "charset"    # I

    .line 105
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    .line 106
    return-void
.end method

.method public greylist setTextString([B)V
    .registers 5
    .param p1, "textString"    # [B

    .line 129
    if-eqz p1, :cond_f

    .line 133
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    .line 134
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-void

    .line 130
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist split(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "temp":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 225
    .local v1, "ret":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_25

    .line 227
    :try_start_f
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    aget-object v5, v0, v2

    .line 228
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    aput-object v3, v1, v2
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_1e} :catch_22

    .line 232
    nop

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 229
    :catch_22
    move-exception v3

    .line 231
    .local v3, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    return-object v4

    .line 234
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_25
    return-object v1
.end method
