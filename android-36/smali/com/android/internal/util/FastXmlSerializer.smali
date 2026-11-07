.class public Lcom/android/internal/util/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final blacklist DEFAULT_BUFFER_LEN:I = 0x8000

.field private static final blacklist ESCAPE_TABLE:[Ljava/lang/String;

.field private static blacklist sSpace:Ljava/lang/String;


# instance fields
.field private final blacklist mBufferLen:I

.field private blacklist mBytes:Ljava/nio/ByteBuffer;

.field private blacklist mCharset:Ljava/nio/charset/CharsetEncoder;

.field private blacklist mInTag:Z

.field private blacklist mIndent:Z

.field private blacklist mLineStart:Z

.field private blacklist mNesting:I

.field private blacklist mOutputStream:Ljava/io/OutputStream;

.field private blacklist mPos:I

.field private final blacklist mText:[C

.field private blacklist mWriter:Ljava/io/Writer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 65

    .line 43
    const-string v63, "&gt;"

    const/16 v64, 0x0

    const-string v1, "&#0;"

    const-string v2, "&#1;"

    const-string v3, "&#2;"

    const-string v4, "&#3;"

    const-string v5, "&#4;"

    const-string v6, "&#5;"

    const-string v7, "&#6;"

    const-string v8, "&#7;"

    const-string v9, "&#8;"

    const-string v10, "&#9;"

    const-string v11, "&#10;"

    const-string v12, "&#11;"

    const-string v13, "&#12;"

    const-string v14, "&#13;"

    const-string v15, "&#14;"

    const-string v16, "&#15;"

    const-string v17, "&#16;"

    const-string v18, "&#17;"

    const-string v19, "&#18;"

    const-string v20, "&#19;"

    const-string v21, "&#20;"

    const-string v22, "&#21;"

    const-string v23, "&#22;"

    const-string v24, "&#23;"

    const-string v25, "&#24;"

    const-string v26, "&#25;"

    const-string v27, "&#26;"

    const-string v28, "&#27;"

    const-string v29, "&#28;"

    const-string v30, "&#29;"

    const-string v31, "&#30;"

    const-string v32, "&#31;"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v35, "&quot;"

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-string v39, "&amp;"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-string v61, "&lt;"

    const/16 v62, 0x0

    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 56
    const-string v0, "                                                              "

    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 76
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>(I)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "bufferSize"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    .line 71
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 86
    if-lez p1, :cond_f

    move v0, p1

    goto :goto_12

    :cond_f
    const v0, 0x8000

    :goto_12
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    .line 87
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    .line 88
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 89
    return-void
.end method

.method private blacklist append(C)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 93
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 95
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 97
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 98
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 99
    return-void
.end method

.method private blacklist append(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 141
    return-void
.end method

.method private blacklist append(Ljava/lang/String;II)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_18

    .line 103
    add-int v0, p2, p3

    .line 104
    .local v0, "end":I
    :goto_6
    if-ge p2, v0, :cond_17

    .line 105
    iget v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    add-int/2addr v1, p2

    .line 106
    .local v1, "next":I
    if-ge v1, v0, :cond_10

    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    goto :goto_12

    :cond_10
    sub-int v2, v0, p2

    :goto_12
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 107
    move p2, v1

    .line 108
    .end local v1    # "next":I
    goto :goto_6

    .line 109
    :cond_17
    return-void

    .line 111
    .end local v0    # "end":I
    :cond_18
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 112
    .local v0, "pos":I
    add-int v1, v0, p3

    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    if-le v1, v2, :cond_25

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 114
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 116
    :cond_25
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 117
    add-int v1, v0, p3

    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 118
    return-void
.end method

.method private blacklist append([CII)V
    .registers 7
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_18

    .line 122
    add-int v0, p2, p3

    .line 123
    .local v0, "end":I
    :goto_6
    if-ge p2, v0, :cond_17

    .line 124
    iget v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    add-int/2addr v1, p2

    .line 125
    .local v1, "next":I
    if-ge v1, v0, :cond_10

    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    goto :goto_12

    :cond_10
    sub-int v2, v0, p2

    :goto_12
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 126
    move p2, v1

    .line 127
    .end local v1    # "next":I
    goto :goto_6

    .line 128
    :cond_17
    return-void

    .line 130
    .end local v0    # "end":I
    :cond_18
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 131
    .local v0, "pos":I
    add-int v1, v0, p3

    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBufferLen:I

    if-le v1, v2, :cond_25

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 133
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 135
    :cond_25
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int v1, v0, p3

    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 137
    return-void
.end method

.method private blacklist appendIndent(I)V
    .registers 4
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    mul-int/lit8 p1, p1, 0x4

    .line 145
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_10

    .line 146
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 148
    :cond_10
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 149
    return-void
.end method

.method private blacklist escapeAndAppendString(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 153
    .local v0, "N":I
    sget-object v1, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 154
    .local v1, "NE":C
    sget-object v2, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 155
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 157
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_c
    if-ge v4, v0, :cond_29

    .line 158
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 159
    .local v5, "c":C
    if-lt v5, v1, :cond_15

    goto :goto_26

    .line 160
    :cond_15
    aget-object v6, v2, v5

    .line 161
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_1a

    goto :goto_26

    .line 162
    :cond_1a
    if-ge v3, v4, :cond_21

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 163
    :cond_21
    add-int/lit8 v3, v4, 0x1

    .line 164
    invoke-direct {p0, v6}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 157
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 166
    :cond_29
    if-ge v3, v4, :cond_30

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 167
    :cond_30
    return-void
.end method

.method private blacklist escapeAndAppendString([CII)V
    .registers 12
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 171
    .local v0, "NE":C
    sget-object v1, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 172
    .local v1, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 173
    .local v2, "end":I
    move v3, p2

    .line 175
    .local v3, "lastPos":I
    move v4, p2

    .local v4, "pos":I
    :goto_a
    if-ge v4, v2, :cond_25

    .line 176
    aget-char v5, p1, v4

    .line 177
    .local v5, "c":C
    if-lt v5, v0, :cond_11

    goto :goto_22

    .line 178
    :cond_11
    aget-object v6, v1, v5

    .line 179
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_16

    goto :goto_22

    .line 180
    :cond_16
    if-ge v3, v4, :cond_1d

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 181
    :cond_1d
    add-int/lit8 v3, v4, 0x1

    .line 182
    invoke-direct {p0, v6}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 175
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 184
    :cond_25
    if-ge v3, v4, :cond_2c

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 185
    :cond_2c
    return-void
.end method

.method private blacklist flushBytes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_1f

    .line 252
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 253
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 256
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 189
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 190
    if-eqz p1, :cond_f

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 192
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 194
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 195
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 198
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 200
    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 220
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 225
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_10

    .line 226
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_34

    .line 228
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1d

    .line 229
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    .line 231
    :cond_1d
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_2c

    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 234
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 236
    :cond_2c
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 237
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 239
    :goto_34
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 241
    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_55

    .line 261
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 262
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 263
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 265
    .local v2, "result":Ljava/nio/charset/CoderResult;
    :goto_1a
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 267
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 268
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 269
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 270
    goto :goto_1a

    .line 274
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 275
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 276
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_53

    .line 266
    .restart local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .restart local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_3b
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_45
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 280
    :goto_53
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 282
    :cond_55
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 321
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    .line 323
    return-void

    .line 325
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 330
    if-eqz p1, :cond_36

    .line 334
    :try_start_2
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 335
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 336
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_18
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_18} :catch_29
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_18} :catch_1c

    .line 343
    nop

    .line 344
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 351
    return-void

    .line 340
    :catch_1c
    move-exception v0

    .line 341
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 337
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_29
    move-exception v0

    .line 338
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 331
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 356
    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 370
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\'"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 371
    if-eqz p2, :cond_2f

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "yes"

    goto :goto_1e

    :cond_1c
    const-string v1, "no"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 374
    :cond_2f
    const-string v0, " ?>\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 376
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 380
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_9

    .line 381
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 383
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_12

    .line 384
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    .line 386
    :cond_12
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 387
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 388
    if-eqz p1, :cond_27

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 390
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 392
    :cond_27
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 395
    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 413
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 414
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 417
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2a

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_28

    move v1, v2

    :cond_28
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 421
    :cond_2a
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 401
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 402
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 404
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_20

    .line 406
    add-int v0, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char v0, p1, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1e

    move v1, v2

    :cond_1e
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 408
    :cond_20
    return-object p0
.end method
