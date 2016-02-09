.class public Lcom/google/android/mms/pdu/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private mCharacterSet:I

.field private mData:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "charset"    # I
    .param p2, "data"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    if-nez p2, :cond_0

    #@6
    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "EncodedStringValue: Text-string is null."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 58
    :cond_0
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@11
    .line 59
    array-length v0, p2

    #@12
    new-array v0, v0, [B

    #@14
    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@16
    .line 60
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@18
    array-length v1, p2

    #@19
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    :try_start_0
    const-string/jumbo v1, "utf-8"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@c
    .line 76
    const/16 v1, 0x6a

    #@e
    iput v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 73
    :goto_0
    return-void

    #@11
    .line 77
    :catch_0
    move-exception v0

    #@12
    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "EncodedStringValue"

    #@15
    const-string/jumbo v2, "Default encoding must be supported."

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 70
    const/16 v0, 0x6a

    #@2
    invoke-direct {p0, v0, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@5
    .line 69
    return-void
.end method

.method public static concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 253
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    #@6
    add-int/lit8 v1, v3, -0x1

    #@8
    .line 254
    .local v1, "maxIndex":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    #@b
    .line 255
    aget-object v3, p0, v0

    #@d
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 256
    if-ge v0, v1, :cond_0

    #@16
    .line 257
    const-string/jumbo v3, ";"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 261
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public static copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 3
    .param p0, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    if-nez p0, :cond_0

    #@3
    .line 266
    return-object v0

    #@4
    .line 269
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@6
    iget v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@8
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@a
    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@d
    return-object v0
.end method

.method public static encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 273
    array-length v0, p0

    #@1
    .line 274
    .local v0, "count":I
    if-lez v0, :cond_1

    #@3
    .line 275
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@5
    .line 276
    .local v1, "encodedArray":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@8
    .line 277
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@a
    aget-object v4, p0, v2

    #@c
    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    #@f
    aput-object v3, v1, v2

    #@11
    .line 276
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 279
    :cond_0
    return-object v1

    #@15
    .line 281
    .end local v1    # "encodedArray":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method public static extract(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    const-string/jumbo v4, ";"

    #@3
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 233
    .local v3, "values":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 234
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@e
    if-ge v0, v4, :cond_1

    #@10
    .line 235
    aget-object v4, v3, v0

    #@12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    if-lez v4, :cond_0

    #@18
    .line 236
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@1a
    aget-object v5, v3, v0

    #@1c
    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 240
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v1

    #@29
    .line 241
    .local v1, "len":I
    if-lez v1, :cond_2

    #@2b
    .line 242
    new-array v4, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@2d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@33
    return-object v4

    #@34
    .line 244
    :cond_2
    const/4 v4, 0x0

    #@35
    return-object v4
.end method


# virtual methods
.method public appendTextString([B)V
    .locals 5
    .param p1, "textString"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 163
    if-nez p1, :cond_0

    #@3
    .line 164
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "Text-string is null."

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 167
    :cond_0
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@e
    if-nez v2, :cond_1

    #@10
    .line 168
    array-length v2, p1

    #@11
    new-array v2, v2, [B

    #@13
    iput-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@15
    .line 169
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@17
    array-length v3, p1

    #@18
    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 162
    :goto_0
    return-void

    #@1c
    .line 171
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@1e
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@21
    .line 173
    .local v1, "newTextString":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@23
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@26
    .line 174
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 181
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@2f
    goto :goto_0

    #@30
    .line 175
    :catch_0
    move-exception v0

    #@31
    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@34
    .line 177
    new-instance v2, Ljava/lang/NullPointerException;

    #@36
    .line 178
    const-string/jumbo v3, "appendTextString: failed when write a new Text-string"

    #@39
    .line 177
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 191
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    .line 192
    iget-object v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@6
    array-length v2, v3

    #@7
    .line 193
    .local v2, "len":I
    new-array v0, v2, [B

    #@9
    .line 194
    .local v0, "dstBytes":[B
    iget-object v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@b
    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 197
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@10
    iget v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@12
    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v3

    #@16
    .line 198
    :catch_0
    move-exception v1

    #@17
    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EncodedStringValue"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "failed to clone an EncodedStringValue: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 200
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@34
    .line 201
    new-instance v3, Ljava/lang/CloneNotSupportedException;

    #@36
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3
.end method

.method public getCharacterSet()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@2
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 136
    iget v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@2
    if-nez v3, :cond_0

    #@4
    .line 137
    new-instance v3, Ljava/lang/String;

    #@6
    iget-object v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@8
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    #@b
    return-object v3

    #@c
    .line 140
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@e
    invoke-static {v3}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 141
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    #@14
    iget-object v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@16
    invoke-direct {v3, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v3

    #@1a
    .line 142
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1b
    .line 147
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v3, Ljava/lang/String;

    #@1d
    iget-object v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@1f
    const-string/jumbo v5, "iso-8859-1"

    #@22
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    return-object v3

    #@26
    .line 148
    :catch_1
    move-exception v0

    #@27
    .line 149
    .local v0, "_":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    #@29
    iget-object v4, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    #@2e
    return-object v3
.end method

.method public getTextString()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 107
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 109
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@8
    iget-object v2, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 110
    return-object v0
.end method

.method public setCharacterSet(I)V
    .locals 0
    .param p1, "charset"    # I

    #@0
    .prologue
    .line 98
    iput p1, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@2
    .line 96
    return-void
.end method

.method public setTextString([B)V
    .locals 3
    .param p1, "textString"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 120
    if-nez p1, :cond_0

    #@3
    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "EncodedStringValue: Text-string is null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 124
    :cond_0
    array-length v0, p1

    #@d
    new-array v0, v0, [B

    #@f
    iput-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@11
    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mData:[B

    #@13
    array-length v1, p1

    #@14
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 119
    return-void
.end method

.method public split(Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 214
    .local v3, "temp":[Ljava/lang/String;
    array-length v4, v3

    #@9
    new-array v2, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@b
    .line 215
    .local v2, "ret":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@d
    if-ge v1, v4, :cond_0

    #@f
    .line 217
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@11
    iget v5, p0, Lcom/google/android/mms/pdu/EncodedStringValue;->mCharacterSet:I

    #@13
    .line 218
    aget-object v6, v3, v1

    #@15
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    #@18
    move-result-object v6

    #@19
    .line 217
    invoke-direct {v4, v5, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@1c
    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 215
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 219
    :catch_0
    move-exception v0

    #@22
    .line 221
    .local v0, "_":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    #@23
    return-object v4

    #@24
    .line 224
    .end local v0    # "_":Ljava/lang/NullPointerException;
    :cond_0
    return-object v2
.end method
