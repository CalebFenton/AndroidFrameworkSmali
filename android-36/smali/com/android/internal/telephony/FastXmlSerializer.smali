.class public Lcom/android/internal/telephony/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
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

    sput-object v0, Lcom/android/internal/telephony/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 56
    const-string v0, "                                                              "

    sput-object v0, Lcom/android/internal/telephony/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const v0, 0x8000

    .line 76
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

    .line 71
    iput v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    if-lez p1, :cond_e

    goto :goto_11

    :cond_e
    const p1, 0x8000

    .line 86
    :goto_11
    iput p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    .line 87
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    .line 88
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private blacklist append(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    .line 93
    iget v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flush()V

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    .line 97
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private blacklist append(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private blacklist append(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_16

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_15

    .line 105
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_e

    goto :goto_10

    :cond_e
    sub-int v0, p3, p2

    .line 106
    :goto_10
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_5

    :cond_15
    return-void

    .line 111
    :cond_16
    iget v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_21

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flush()V

    .line 114
    iget v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    :cond_21
    add-int v0, p2, p3

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private blacklist append([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_16

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_15

    .line 124
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_e

    goto :goto_10

    :cond_e
    sub-int v0, p3, p2

    .line 125
    :goto_10
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append([CII)V

    move p2, v1

    goto :goto_5

    :cond_15
    return-void

    .line 130
    :cond_16
    iget v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_21

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flush()V

    .line 133
    iget v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    .line 135
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private blacklist appendIndent(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    .line 145
    sget-object v0, Lcom/android/internal/telephony/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_10

    .line 146
    sget-object p1, Lcom/android/internal/telephony/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 148
    :cond_10
    sget-object v0, Lcom/android/internal/telephony/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private blacklist escapeAndAppendString(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 153
    sget-object v1, Lcom/android/internal/telephony/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v2, v1

    int-to-char v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v3, v0, :cond_27

    .line 158
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_13

    goto :goto_24

    .line 160
    :cond_13
    aget-object v5, v1, v5

    if-nez v5, :cond_18

    goto :goto_24

    :cond_18
    if-ge v4, v3, :cond_1f

    sub-int v6, v3, v4

    .line 162
    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_1f
    add-int/lit8 v4, v3, 0x1

    .line 164
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_27
    if-ge v4, v3, :cond_2d

    sub-int/2addr v3, v4

    .line 166
    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_2d
    return-void
.end method

.method private blacklist escapeAndAppendString([CII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/android/internal/telephony/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v0

    int-to-char v1, v1

    add-int/2addr p3, p2

    move v2, p2

    :goto_6
    if-ge p2, p3, :cond_21

    .line 176
    aget-char v3, p1, p2

    if-lt v3, v1, :cond_d

    goto :goto_1e

    .line 178
    :cond_d
    aget-object v3, v0, v3

    if-nez v3, :cond_12

    goto :goto_1e

    :cond_12
    if-ge v2, p2, :cond_19

    sub-int v4, p2, v2

    .line 180
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/telephony/FastXmlSerializer;->append([CII)V

    :cond_19
    add-int/lit8 v2, p2, 0x1

    .line 182
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_21
    if-ge v2, p2, :cond_27

    sub-int/2addr p2, v2

    .line 184
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/FastXmlSerializer;->append([CII)V

    :cond_27
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
    iget-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1e

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1e
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 189
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_f

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    .line 194
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 195
    const-string p1, "=\""

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 198
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 205
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 210
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 215
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
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
    invoke-virtual {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flush()V

    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    .line 225
    iget-boolean v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    if-eqz v2, :cond_10

    .line 226
    const-string p1, " />\n"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_32

    .line 228
    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    if-eqz v2, :cond_1b

    .line 229
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->appendIndent(I)V

    .line 231
    :cond_1b
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    .line 236
    :cond_2a
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 237
    const-string p1, ">\n"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 239
    :goto_32
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 246
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_51

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 265
    :goto_18
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_39

    .line 267
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 268
    invoke-direct {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flushBytes()V

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_18

    .line 274
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/telephony/FastXmlSerializer;->flushBytes()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_4f

    .line 266
    :cond_39
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_43
    iget-object v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mText:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 280
    :goto_4f
    iput v2, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mPos:I

    :cond_51
    return-void
.end method

.method public whitelist test-api getDepth()I
    .registers 1

    .line 285
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 2

    .line 289
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 1

    .line 293
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 1

    .line 297
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 302
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 306
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 311
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 316
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 321
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 322
    iput-boolean p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

    return-void

    .line 325
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_35

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

    .line 336
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_16
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_16} :catch_1b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_16} :catch_19

    .line 344
    iput-object p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    return-void

    :catch_19
    move-exception p0

    goto :goto_1d

    :catch_1b
    move-exception p0

    goto :goto_29

    .line 341
    :goto_1d
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1, p0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 338
    :goto_29
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 331
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 360
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 365
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 370
    const-string p1, "<?xml version=\'1.0\' encoding=\'utf-8\'"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " standalone=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1a

    const-string p2, "yes"

    goto :goto_1c

    :cond_1a
    const-string p2, "no"

    :goto_1c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 374
    :cond_2b
    const-string p1, " ?>\n"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 380
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_9

    .line 381
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 383
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_12

    .line 384
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->appendIndent(I)V

    .line 386
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mNesting:I

    const/16 v0, 0x3c

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_27

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->append(C)V

    .line 392
    :cond_27
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    const/4 p1, 0x0

    .line 394
    iput-boolean p1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 413
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 414
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    .line 417
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

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

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_28

    move v1, v2

    :cond_28
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    :cond_2a
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 401
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 402
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mInTag:Z

    .line 404
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1f

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 406
    aget-char p1, p1, p2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1d

    move v1, p3

    :cond_1d
    iput-boolean v1, p0, Lcom/android/internal/telephony/FastXmlSerializer;->mLineStart:Z

    :cond_1f
    return-object p0
.end method
