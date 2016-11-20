.class public Lorg/apache/xml/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
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
    .line 218
    move-object v0, p0

    #@2
    .line 219
    .local v0, "absoluteURI":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_4

    #@8
    .line 222
    const-string/jumbo v5, "file:"

    #@b
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_3

    #@11
    .line 224
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 228
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
    .line 230
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
    .line 254
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    return-object v5

    #@37
    .line 234
    :cond_1
    const/16 v5, 0x3a

    #@39
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@3c
    move-result v3

    #@3d
    .line 235
    .local v3, "secondColonIndex":I
    if-lez v3, :cond_0

    #@3f
    .line 237
    add-int/lit8 v5, v3, -0x1

    #@41
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 239
    .local v1, "localPath":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@48
    move-result v5

    #@49
    if-nez v5, :cond_0

    #@4b
    .line 240
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
    .line 241
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 240
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
    .line 243
    :catch_0
    move-exception v2

    #@69
    .line 244
    .local v2, "se":Ljava/lang/SecurityException;
    return-object p0

    #@6a
    .line 251
    .end local v1    # "localPath":Ljava/lang/String;
    .end local v2    # "se":Ljava/lang/SecurityException;
    .end local v3    # "secondColonIndex":I
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-static {v5}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    return-object v5

    #@73
    .line 257
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    return-object p0

    #@74
    .line 260
    :cond_4
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

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
    .line 277
    if-nez p1, :cond_0

    #@2
    .line 278
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    return-object v4

    #@7
    .line 280
    :cond_0
    invoke-static {p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 281
    .local v0, "absoluteBase":Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .line 284
    .local v3, "uri":Lorg/apache/xml/utils/URI;
    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/URI;

    #@e
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;)V

    #@11
    .line 285
    .local v1, "baseURI":Lorg/apache/xml/utils/URI;
    new-instance v3, Lorg/apache/xml/utils/URI;

    #@13
    .end local v3    # "uri":Lorg/apache/xml/utils/URI;
    invoke-direct {v3, v1, p0}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 292
    .local v3, "uri":Lorg/apache/xml/utils/URI;
    invoke-virtual {v3}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v4}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 288
    .end local v1    # "baseURI":Lorg/apache/xml/utils/URI;
    .end local v3    # "uri":Lorg/apache/xml/utils/URI;
    :catch_0
    move-exception v2

    #@20
    .line 289
    .local v2, "mue":Lorg/apache/xml/utils/URI$MalformedURIException;
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
    .line 57
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 58
    :cond_0
    const-string/jumbo v3, ""

    #@b
    return-object v3

    #@c
    .line 62
    :cond_1
    move-object v0, p0

    #@d
    .line 63
    .local v0, "absolutePath":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_2

    #@13
    .line 67
    :try_start_0
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v0

    #@17
    .line 77
    :cond_2
    if-eqz v0, :cond_4

    #@19
    .line 79
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 80
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
    .line 87
    .local v2, "urlString":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 71
    .end local v2    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3b
    .line 72
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
    .line 82
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
    .line 85
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
    .line 150
    if-nez p0, :cond_0

    #@2
    .line 151
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 152
    :cond_0
    new-instance v0, Ljava/io/File;

    #@6
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 153
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
    .line 120
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 121
    return v5

    #@8
    .line 124
    :cond_0
    const/16 v6, 0x23

    #@a
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    .line 125
    .local v1, "fragmentIndex":I
    const/16 v6, 0x3f

    #@10
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v3

    #@14
    .line 126
    .local v3, "queryIndex":I
    const/16 v6, 0x2f

    #@16
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v4

    #@1a
    .line 127
    .local v4, "slashIndex":I
    const/16 v6, 0x3a

    #@1c
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v0

    #@20
    .line 130
    .local v0, "colonIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v6

    #@24
    add-int/lit8 v2, v6, -0x1

    #@26
    .line 131
    .local v2, "index":I
    if-lez v1, :cond_1

    #@28
    .line 132
    move v2, v1

    #@29
    .line 133
    :cond_1
    if-lez v3, :cond_2

    #@2b
    if-ge v3, v2, :cond_2

    #@2d
    .line 134
    move v2, v3

    #@2e
    .line 135
    :cond_2
    if-lez v4, :cond_3

    #@30
    if-ge v4, v2, :cond_3

    #@32
    .line 136
    move v2, v4

    #@33
    .line 138
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
    .line 165
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 166
    return v2

    #@a
    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-le v0, v3, :cond_2

    #@10
    .line 169
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    const/16 v1, 0x3a

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 170
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@1f
    move-result v0

    #@20
    .line 168
    if-eqz v0, :cond_2

    #@22
    .line 171
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
    .line 172
    :cond_1
    return v4

    #@33
    .line 174
    :cond_2
    return v2
.end method

.method private static replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@5
    .line 187
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v3

    #@9
    .line 188
    .local v3, "length":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@c
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 192
    .local v1, "currentChar":C
    const/16 v4, 0x20

    #@12
    if-ne v1, v4, :cond_1

    #@14
    .line 194
    const/16 v4, 0x25

    #@16
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@19
    .line 195
    add-int/lit8 v4, v2, 0x1

    #@1b
    const-string/jumbo v5, "20"

    #@1e
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 196
    add-int/lit8 v3, v3, 0x2

    #@23
    .line 197
    add-int/lit8 v2, v2, 0x2

    #@25
    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 200
    :cond_1
    const/16 v4, 0x5c

    #@2a
    if-ne v1, v4, :cond_0

    #@2c
    .line 202
    const/16 v4, 0x2f

    #@2e
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@31
    goto :goto_1

    #@32
    .line 206
    .end local v1    # "currentChar":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    return-object v4
.end method
