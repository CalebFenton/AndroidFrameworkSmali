.class public Lorg/ksoap2/kobjects/mime/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field boundary:Ljava/lang/String;

.field buf:[C

.field characterEncoding:Ljava/lang/String;

.field consumed:Z

.field eof:Z

.field header:Ljava/util/Hashtable;

.field is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_bound"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/ksoap2/kobjects/mime/Decoder;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_bound"    # Ljava/lang/String;
    .param p3, "characterEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 36
    const/16 v1, 0x100

    #@6
    new-array v1, v1, [C

    #@8
    iput-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@a
    .line 124
    iput-object p3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    #@c
    .line 125
    iput-object p1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    #@e
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "--"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    #@24
    .line 130
    const/4 v0, 0x0

    #@25
    .line 132
    :cond_0
    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 133
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    #@2b
    .line 134
    new-instance v1, Ljava/io/IOException;

    #@2d
    const-string/jumbo v2, "Unexpected EOF"

    #@30
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 139
    :cond_1
    iget-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 145
    const-string/jumbo v1, "--"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_2

    #@45
    .line 146
    iput-boolean v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->eof:Z

    #@47
    .line 147
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@4a
    .line 150
    :cond_2
    iput-boolean v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    #@4c
    .line 122
    return-void
.end method

.method public static getHeaderElements(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 10
    .param p0, "header"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x3b

    #@2
    const/16 v8, 0x22

    #@4
    const/4 v7, -0x1

    #@5
    .line 68
    const-string/jumbo v1, ""

    #@8
    .line 69
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    #@9
    .line 70
    .local v3, "pos":I
    new-instance v4, Ljava/util/Hashtable;

    #@b
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@e
    .line 71
    .local v4, "result":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    .line 76
    .local v2, "len":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v5

    #@18
    const/16 v6, 0x20

    #@1a
    if-gt v5, v6, :cond_0

    #@1c
    .line 77
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 78
    :cond_0
    if-lt v3, v2, :cond_2

    #@21
    .line 115
    :cond_1
    :goto_1
    return-object v4

    #@22
    .line 81
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v5

    #@26
    if-ne v5, v8, :cond_4

    #@28
    .line 82
    add-int/lit8 v3, v3, 0x1

    #@2a
    .line 83
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    #@2d
    move-result v0

    #@2e
    .line 84
    .local v0, "cut":I
    if-ne v0, v7, :cond_3

    #@30
    .line 85
    new-instance v5, Ljava/lang/RuntimeException;

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "End quote expected in "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v5

    #@4a
    .line 87
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 88
    add-int/lit8 v3, v0, 0x2

    #@53
    .line 90
    if-ge v3, v2, :cond_1

    #@55
    .line 92
    add-int/lit8 v5, v3, -0x1

    #@57
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v5

    #@5b
    if-eq v5, v9, :cond_6

    #@5d
    .line 93
    new-instance v5, Ljava/lang/RuntimeException;

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v7, "; expected in "

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v5

    #@77
    .line 96
    .end local v0    # "cut":I
    :cond_4
    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(II)I

    #@7a
    move-result v0

    #@7b
    .line 97
    .restart local v0    # "cut":I
    if-ne v0, v7, :cond_5

    #@7d
    .line 98
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    goto :goto_1

    #@85
    .line 101
    :cond_5
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 102
    add-int/lit8 v3, v0, 0x1

    #@8e
    .line 105
    :cond_6
    const/16 v5, 0x3d

    #@90
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@93
    move-result v0

    #@94
    .line 107
    if-eq v0, v7, :cond_1

    #@96
    .line 110
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 111
    add-int/lit8 v3, v0, 0x1

    #@a4
    goto/16 :goto_0
.end method

.method private final readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 42
    const/4 v0, 0x0

    #@3
    .line 45
    .local v0, "cnt":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    #@5
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@8
    move-result v2

    #@9
    .line 46
    .local v2, "i":I
    if-ne v2, v7, :cond_1

    #@b
    if-nez v0, :cond_1

    #@d
    .line 47
    const/4 v4, 0x0

    #@e
    return-object v4

    #@f
    .line 48
    :cond_1
    if-eq v2, v7, :cond_2

    #@11
    const/16 v4, 0xa

    #@13
    if-ne v2, v4, :cond_3

    #@15
    .line 49
    :cond_2
    new-instance v4, Ljava/lang/String;

    #@17
    iget-object v5, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@19
    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    #@1c
    return-object v4

    #@1d
    .line 50
    :cond_3
    const/16 v4, 0xd

    #@1f
    if-eq v2, v4, :cond_0

    #@21
    .line 51
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@23
    array-length v4, v4

    #@24
    if-lt v0, v4, :cond_4

    #@26
    .line 52
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@28
    array-length v4, v4

    #@29
    mul-int/lit8 v4, v4, 0x3

    #@2b
    div-int/lit8 v4, v4, 0x2

    #@2d
    new-array v3, v4, [C

    #@2f
    .line 53
    .local v3, "tmp":[C
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@31
    iget-object v5, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@33
    array-length v5, v5

    #@34
    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@37
    .line 54
    iput-object v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@39
    .line 57
    .end local v3    # "tmp":[C
    :cond_4
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    #@3b
    add-int/lit8 v1, v0, 0x1

    #@3d
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    int-to-char v5, v2

    #@3e
    aput-char v5, v4, v0

    #@40
    move v0, v1

    #@41
    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lorg/ksoap2/kobjects/mime/Decoder;->header:Ljava/util/Hashtable;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lorg/ksoap2/kobjects/mime/Decoder;->header:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readContent()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 163
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/ksoap2/kobjects/mime/Decoder;->readContent(Ljava/io/OutputStream;)V

    #@8
    .line 164
    iget-object v2, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    #@a
    if-nez v2, :cond_0

    #@c
    .line 165
    new-instance v1, Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    #@15
    .line 168
    .local v1, "result":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Field content: \'"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "\'"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 169
    return-object v1

    #@36
    .line 166
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    #@38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3b
    move-result-object v2

    #@3c
    iget-object v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    #@3e
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@41
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public readContent(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 173
    iget-boolean v7, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 174
    new-instance v7, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v8, "Content already consumed!"

    #@b
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v7

    #@f
    .line 176
    :cond_0
    const-string/jumbo v5, ""

    #@12
    .line 178
    .local v5, "line":Ljava/lang/String;
    const-string/jumbo v7, "Content-Type"

    #@15
    invoke-virtual {p0, v7}, Lorg/ksoap2/kobjects/mime/Decoder;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 182
    .local v1, "contentType":Ljava/lang/String;
    const-string/jumbo v7, "base64"

    #@1c
    const-string/jumbo v8, "Content-Transfer-Encoding"

    #@1f
    invoke-virtual {p0, v8}, Lorg/ksoap2/kobjects/mime/Decoder;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_4

    #@29
    .line 183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2b
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@2e
    .line 185
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    .line 186
    if-nez v5, :cond_1

    #@34
    .line 187
    new-instance v7, Ljava/io/IOException;

    #@36
    const-string/jumbo v8, "Unexpected EOF"

    #@39
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v7

    #@3d
    .line 188
    :cond_1
    iget-object v7, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    #@3f
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_3

    #@45
    .line 228
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const-string/jumbo v7, "--"

    #@48
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 229
    iput-boolean v10, p0, Lorg/ksoap2/kobjects/mime/Decoder;->eof:Z

    #@50
    .line 231
    :cond_2
    iput-boolean v10, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    #@52
    .line 172
    return-void

    #@53
    .line 191
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-static {v5, p1}, Lorg/ksoap2/kobjects/base64/Base64;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@56
    goto :goto_0

    #@57
    .line 196
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v8, "\r\n"

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    iget-object v8, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 197
    .local v2, "deli":Ljava/lang/String;
    const/4 v6, 0x0

    #@6e
    .line 200
    .local v6, "match":I
    :cond_5
    :goto_2
    iget-object v7, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    #@70
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@73
    move-result v3

    #@74
    .line 205
    .local v3, "i":I
    const/4 v7, -0x1

    #@75
    if-ne v3, v7, :cond_6

    #@77
    .line 206
    new-instance v7, Ljava/lang/RuntimeException;

    #@79
    const-string/jumbo v8, "Unexpected EOF"

    #@7c
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v7

    #@80
    .line 208
    :cond_6
    int-to-char v7, v3

    #@81
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@84
    move-result v8

    #@85
    if-ne v7, v8, :cond_7

    #@87
    .line 209
    add-int/lit8 v6, v6, 0x1

    #@89
    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8c
    move-result v7

    #@8d
    if-ne v6, v7, :cond_5

    #@8f
    .line 225
    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    goto :goto_1

    #@94
    .line 214
    :cond_7
    if-lez v6, :cond_9

    #@96
    .line 215
    const/4 v4, 0x0

    #@97
    .local v4, "j":I
    :goto_3
    if-ge v4, v6, :cond_8

    #@99
    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v7

    #@9d
    int-to-byte v7, v7

    #@9e
    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    #@a1
    .line 215
    add-int/lit8 v4, v4, 0x1

    #@a3
    goto :goto_3

    #@a4
    .line 218
    :cond_8
    int-to-char v7, v3

    #@a5
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    #@a8
    move-result v8

    #@a9
    if-ne v7, v8, :cond_a

    #@ab
    const/4 v6, 0x1

    #@ac
    .line 220
    .end local v4    # "j":I
    :cond_9
    :goto_4
    if-nez v6, :cond_5

    #@ae
    .line 221
    int-to-byte v7, v3

    #@af
    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    #@b2
    goto :goto_2

    #@b3
    .line 218
    .restart local v4    # "j":I
    :cond_a
    const/4 v6, 0x0

    #@b4
    goto :goto_4
.end method
