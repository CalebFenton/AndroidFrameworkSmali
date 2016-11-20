.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final caseDiff:I = 0x20

.field static dfltEncName:Ljava/lang/String;

.field static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 86
    const/4 v1, 0x0

    #@1
    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    #@3
    .line 126
    new-instance v1, Ljava/util/BitSet;

    #@5
    const/16 v2, 0x100

    #@7
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@a
    sput-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@c
    .line 128
    const/16 v0, 0x61

    #@e
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    #@10
    if-gt v0, v1, :cond_0

    #@12
    .line 129
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@17
    .line 128
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 131
    :cond_0
    const/16 v0, 0x41

    #@1c
    :goto_1
    const/16 v1, 0x5a

    #@1e
    if-gt v0, v1, :cond_1

    #@20
    .line 132
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@22
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@25
    .line 131
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 134
    :cond_1
    const/16 v0, 0x30

    #@2a
    :goto_2
    const/16 v1, 0x39

    #@2c
    if-gt v0, v1, :cond_2

    #@2e
    .line 135
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@30
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@33
    .line 134
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_2

    #@36
    .line 137
    :cond_2
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@38
    const/16 v2, 0x20

    #@3a
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3d
    .line 139
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@3f
    const/16 v2, 0x2d

    #@41
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@44
    .line 140
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@46
    const/16 v2, 0x5f

    #@48
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@4b
    .line 141
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@4d
    const/16 v2, 0x2e

    #@4f
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@52
    .line 142
    sget-object v1, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@54
    const/16 v2, 0x2a

    #@56
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@59
    .line 145
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@5b
    const-string/jumbo v2, "file.encoding"

    #@5e
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@61
    .line 144
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@64
    move-result-object v1

    #@65
    check-cast v1, Ljava/lang/String;

    #@67
    sput-object v1, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    #@69
    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 168
    const/4 v1, 0x0

    #@1
    .line 171
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    sget-object v2, Ljava/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    #@3
    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 176
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    #@8
    .line 172
    .restart local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    const/4 v11, 0x0

    #@1
    .line 205
    .local v11, "needToChange":Z
    new-instance v12, Ljava/lang/StringBuffer;

    #@3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@6
    move-result v14

    #@7
    invoke-direct {v12, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    .line 207
    .local v12, "out":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/CharArrayWriter;

    #@c
    invoke-direct {v4}, Ljava/io/CharArrayWriter;-><init>()V

    #@f
    .line 209
    .local v4, "charArrayWriter":Ljava/io/CharArrayWriter;
    if-nez p1, :cond_0

    #@11
    .line 210
    new-instance v14, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v15, "charsetName"

    #@16
    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v14

    #@1a
    .line 213
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v5

    #@1e
    .line 220
    .local v5, "charset":Ljava/nio/charset/Charset;
    const/4 v9, 0x0

    #@1f
    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@22
    move-result v14

    #@23
    if-ge v9, v14, :cond_8

    #@25
    .line 221
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v2

    #@2b
    .line 223
    .local v2, "c":I
    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@2d
    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    #@30
    move-result v14

    #@31
    if-eqz v14, :cond_2

    #@33
    .line 224
    const/16 v14, 0x20

    #@35
    if-ne v2, v14, :cond_1

    #@37
    .line 225
    const/16 v2, 0x2b

    #@39
    .line 226
    const/4 v11, 0x1

    #@3a
    .line 229
    :cond_1
    int-to-char v14, v2

    #@3b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3e
    .line 230
    add-int/lit8 v9, v9, 0x1

    #@40
    goto :goto_0

    #@41
    .line 216
    .end local v2    # "c":I
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    #@42
    .line 217
    .local v8, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@49
    throw v14

    #@4a
    .line 214
    .end local v8    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v7

    #@4b
    .line 215
    .local v7, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-direct {v14, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@52
    throw v14

    #@53
    .line 234
    .end local v7    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .restart local v2    # "c":I
    .restart local v5    # "charset":Ljava/nio/charset/Charset;
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {v4, v2}, Ljava/io/CharArrayWriter;->write(I)V

    #@56
    .line 243
    const v14, 0xd800

    #@59
    if-lt v2, v14, :cond_3

    #@5b
    const v14, 0xdbff

    #@5e
    if-gt v2, v14, :cond_3

    #@60
    .line 248
    add-int/lit8 v14, v9, 0x1

    #@62
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@65
    move-result v15

    #@66
    if-ge v14, v15, :cond_3

    #@68
    .line 249
    add-int/lit8 v14, v9, 0x1

    #@6a
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@6f
    move-result v6

    #@70
    .line 254
    .local v6, "d":I
    const v14, 0xdc00

    #@73
    if-lt v6, v14, :cond_3

    #@75
    const v14, 0xdfff

    #@78
    if-gt v6, v14, :cond_3

    #@7a
    .line 260
    invoke-virtual {v4, v6}, Ljava/io/CharArrayWriter;->write(I)V

    #@7d
    .line 261
    add-int/lit8 v9, v9, 0x1

    #@7f
    .line 265
    .end local v6    # "d":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@81
    .line 266
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@84
    move-result v14

    #@85
    if-ge v9, v14, :cond_4

    #@87
    sget-object v14, Ljava/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@8e
    move-result v2

    #@8f
    invoke-virtual {v14, v2}, Ljava/util/BitSet;->get(I)Z

    #@92
    move-result v14

    #@93
    if-eqz v14, :cond_2

    #@95
    .line 268
    :cond_4
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->flush()V

    #@98
    .line 269
    new-instance v13, Ljava/lang/String;

    #@9a
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toCharArray()[C

    #@9d
    move-result-object v14

    #@9e
    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    #@a1
    .line 270
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@a4
    move-result-object v1

    #@a5
    .line 271
    .local v1, "ba":[B
    const/4 v10, 0x0

    #@a6
    .local v10, "j":I
    :goto_1
    array-length v14, v1

    #@a7
    if-ge v10, v14, :cond_7

    #@a9
    .line 272
    const/16 v14, 0x25

    #@ab
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@ae
    .line 273
    aget-byte v14, v1, v10

    #@b0
    shr-int/lit8 v14, v14, 0x4

    #@b2
    and-int/lit8 v14, v14, 0xf

    #@b4
    const/16 v15, 0x10

    #@b6
    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    #@b9
    move-result v3

    #@ba
    .line 276
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    #@bd
    move-result v14

    #@be
    if-eqz v14, :cond_5

    #@c0
    .line 277
    add-int/lit8 v14, v3, -0x20

    #@c2
    int-to-char v3, v14

    #@c3
    .line 279
    :cond_5
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c6
    .line 280
    aget-byte v14, v1, v10

    #@c8
    and-int/lit8 v14, v14, 0xf

    #@ca
    const/16 v15, 0x10

    #@cc
    invoke-static {v14, v15}, Ljava/lang/Character;->forDigit(II)C

    #@cf
    move-result v3

    #@d0
    .line 281
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    #@d3
    move-result v14

    #@d4
    if-eqz v14, :cond_6

    #@d6
    .line 282
    add-int/lit8 v14, v3, -0x20

    #@d8
    int-to-char v3, v14

    #@d9
    .line 284
    :cond_6
    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@dc
    .line 271
    add-int/lit8 v10, v10, 0x1

    #@de
    goto :goto_1

    #@df
    .line 286
    .end local v3    # "ch":C
    :cond_7
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->reset()V

    #@e2
    .line 287
    const/4 v11, 0x1

    #@e3
    goto/16 :goto_0

    #@e5
    .line 291
    .end local v1    # "ba":[B
    .end local v2    # "c":I
    .end local v10    # "j":I
    .end local v13    # "str":Ljava/lang/String;
    :cond_8
    if-eqz v11, :cond_9

    #@e7
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ea
    move-result-object p0

    #@eb
    .end local p0    # "s":Ljava/lang/String;
    :cond_9
    return-object p0
.end method
