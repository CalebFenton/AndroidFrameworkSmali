.class public final Lorg/apache/xml/serializer/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    .line 225
    move-object v0, p0

    #@2
    .line 226
    .local v0, "absoluteURI":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_4

    #@8
    .line 229
    const-string/jumbo v5, "file:"

    #@b
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_3

    #@11
    .line 231
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 235
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@17
    const-string/jumbo v5, "/"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_2

    #@20
    .line 237
    const-string/jumbo v5, "///"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_1

    #@29
    const-string/jumbo v5, "//"

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_1

    #@32
    .line 261
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    return-object v5

    #@37
    .line 241
    :cond_1
    const/16 v5, 0x3a

    #@39
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@3c
    move-result v3

    #@3d
    .line 242
    .local v3, "secondColonIndex":I
    if-lez v3, :cond_0

    #@3f
    .line 244
    add-int/lit8 v5, v3, -0x1

    #@41
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 246
    .local v1, "localPath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@48
    move-result v5

    #@49
    if-nez v5, :cond_0

    #@4b
    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    add-int/lit8 v6, v3, -0x1

    #@52
    const/4 v7, 0x0

    #@53
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    .line 248
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    move-result-object v0

    #@67
    goto :goto_0

    #@68
    .line 250
    :catch_0
    move-exception v2

    #@69
    .line 251
    .local v2, "se":Ljava/lang/SecurityException;
    return-object p0

    #@6a
    .line 258
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "se":Ljava/lang/SecurityException;
    .end local v3    # "secondColonIndex":I
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    return-object v5

    #@73
    .line 264
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    return-object p0

    #@74
    .line 267
    :cond_4
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    return-object v5
.end method

.method public static getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    if-nez p1, :cond_0

    #@2
    .line 285
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    return-object v4

    #@7
    .line 287
    :cond_0
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 288
    .local v0, "absoluteBase":Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .line 291
    .local v3, "uri":Lorg/apache/xml/serializer/utils/URI;
    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/utils/URI;

    #@e
    invoke-direct {v1, v0}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;)V

    #@11
    .line 292
    .local v1, "baseURI":Lorg/apache/xml/serializer/utils/URI;
    new-instance v3, Lorg/apache/xml/serializer/utils/URI;

    #@13
    .end local v3    # "uri":Lorg/apache/xml/serializer/utils/URI;
    invoke-direct {v3, v1, p0}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xml/serializer/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 299
    .local v3, "uri":Lorg/apache/xml/serializer/utils/URI;
    invoke-virtual {v3}, Lorg/apache/xml/serializer/utils/URI;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 295
    .end local v1    # "baseURI":Lorg/apache/xml/serializer/utils/URI;
    .end local v3    # "uri":Lorg/apache/xml/serializer/utils/URI;
    :catch_0
    move-exception v2

    #@20
    .line 296
    .local v2, "mue":Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@22
    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v4
.end method

.method public static getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 65
    :cond_0
    const-string/jumbo v3, ""

    #@b
    return-object v3

    #@c
    .line 69
    :cond_1
    move-object v0, p0

    #@d
    .line 70
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_2

    #@13
    .line 74
    :try_start_0
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 84
    :cond_2
    if-eqz v0, :cond_4

    #@19
    .line 86
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "file://"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 94
    .local v2, "urlString":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 78
    .end local v2    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3b
    .line 79
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "file:"

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    return-object v3

    #@50
    .line 89
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "file:///"

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    .restart local v2    # "urlString":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 92
    .end local v2    # "urlString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "file:"

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    .restart local v2    # "urlString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isAbsolutePath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    if-nez p0, :cond_0

    #@2
    .line 158
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 159
    :cond_0
    new-instance v0, Ljava/io/File;

    #@6
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 160
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .locals 7
    .param p0, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 127
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 128
    return v5

    #@8
    .line 131
    :cond_0
    const/16 v6, 0x23

    #@a
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    .line 132
    .local v1, "fragmentIndex":I
    const/16 v6, 0x3f

    #@10
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v3

    #@14
    .line 133
    .local v3, "queryIndex":I
    const/16 v6, 0x2f

    #@16
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v4

    #@1a
    .line 134
    .local v4, "slashIndex":I
    const/16 v6, 0x3a

    #@1c
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v0

    #@20
    .line 137
    .local v0, "colonIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v6

    #@24
    add-int/lit8 v2, v6, -0x1

    #@26
    .line 138
    .local v2, "index":I
    if-lez v1, :cond_1

    #@28
    .line 139
    move v2, v1

    #@29
    .line 140
    :cond_1
    if-lez v3, :cond_2

    #@2b
    if-ge v3, v2, :cond_2

    #@2d
    .line 141
    move v2, v3

    #@2e
    .line 142
    :cond_2
    if-lez v4, :cond_3

    #@30
    if-ge v4, v2, :cond_3

    #@32
    .line 143
    move v2, v4

    #@33
    .line 145
    :cond_3
    if-lez v0, :cond_4

    #@35
    if-ge v0, v2, :cond_4

    #@37
    const/4 v5, 0x1

    #@38
    :cond_4
    return v5
.end method

.method private static isWindowsAbsolutePath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    .line 172
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 173
    return v2

    #@a
    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-le v0, v3, :cond_2

    #@10
    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    const/16 v1, 0x3a

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@1f
    move-result v0

    #@20
    .line 175
    if-eqz v0, :cond_2

    #@22
    .line 178
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v0

    #@26
    const/16 v1, 0x5c

    #@28
    if-eq v0, v1, :cond_1

    #@2a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v0

    #@2e
    const/16 v1, 0x2f

    #@30
    if-ne v0, v1, :cond_2

    #@32
    .line 179
    :cond_1
    return v4

    #@33
    .line 181
    :cond_2
    return v2
.end method

.method private static replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@5
    .line 194
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v3

    #@9
    .line 195
    .local v3, "length":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@c
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 199
    .local v1, "currentChar":C
    const/16 v4, 0x20

    #@12
    if-ne v1, v4, :cond_1

    #@14
    .line 201
    const/16 v4, 0x25

    #@16
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@19
    .line 202
    add-int/lit8 v4, v2, 0x1

    #@1b
    const-string/jumbo v5, "20"

    #@1e
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 203
    add-int/lit8 v3, v3, 0x2

    #@23
    .line 204
    add-int/lit8 v2, v2, 0x2

    #@25
    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 207
    :cond_1
    const/16 v4, 0x5c

    #@2a
    if-ne v1, v4, :cond_0

    #@2c
    .line 209
    const/16 v4, 0x2f

    #@2e
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@31
    goto :goto_1

    #@32
    .line 213
    .end local v1    # "currentChar":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    return-object v4
.end method
