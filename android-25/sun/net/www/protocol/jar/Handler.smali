.class public Lsun/net/www/protocol/jar/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field private static final separator:Ljava/lang/String; = "!/"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method

.method private static indexOfBangSlash(Ljava/lang/String;)I
    .locals 4
    .param p0, "spec"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 46
    .local v0, "indexOfBang":I
    :goto_0
    const/16 v1, 0x21

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    #@a
    move-result v0

    #@b
    if-eq v0, v3, :cond_1

    #@d
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    if-eq v0, v1, :cond_0

    #@15
    .line 48
    add-int/lit8 v1, v0, 0x1

    #@17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    const/16 v2, 0x2f

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 49
    add-int/lit8 v1, v0, 0x1

    #@21
    return v1

    #@22
    .line 51
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@24
    goto :goto_0

    #@25
    .line 54
    :cond_1
    return v3
.end method

.method private parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "spec"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    const/4 v3, 0x0

    #@1
    .line 167
    .local v3, "url":Ljava/net/URL;
    const/4 v1, -0x1

    #@2
    .line 169
    .local v1, "index":I
    invoke-static {p1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    #@5
    move-result v1

    #@6
    const/4 v4, -0x1

    #@7
    if-ne v1, v4, :cond_0

    #@9
    .line 170
    new-instance v4, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v5, "no !/ in spec"

    #@e
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 174
    :cond_0
    add-int/lit8 v4, v1, -0x1

    #@14
    const/4 v5, 0x0

    #@15
    :try_start_0
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 175
    .local v2, "innerSpec":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    #@1b
    .end local v3    # "url":Ljava/net/URL;
    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 180
    .local v3, "url":Ljava/net/URL;
    return-object p1

    #@1f
    .line 176
    .end local v2    # "innerSpec":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    #@20
    .line 177
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/NullPointerException;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "invalid url: "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 178
    const-string/jumbo v6, " ("

    #@35
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 178
    const-string/jumbo v6, ")"

    #@40
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v4
.end method

.method private parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 184
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 186
    .local v1, "ctxFile":Ljava/lang/String;
    const-string/jumbo v3, "/"

    #@9
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 187
    invoke-static {v1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 188
    .local v0, "bangSlash":I
    if-ne v0, v4, :cond_0

    #@15
    .line 189
    new-instance v3, Ljava/lang/NullPointerException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "malformed context url:"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 192
    const-string/jumbo v5, ": no !/"

    #@2a
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3

    #@36
    .line 194
    :cond_0
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 196
    .end local v0    # "bangSlash":I
    :cond_1
    const-string/jumbo v3, "/"

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@40
    move-result v3

    #@41
    if-nez v3, :cond_2

    #@43
    const-string/jumbo v3, "/"

    #@46
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_3

    #@4c
    .line 206
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    return-object v3

    #@5e
    .line 198
    :cond_3
    const/16 v3, 0x2f

    #@60
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@63
    move-result v2

    #@64
    .line 199
    .local v2, "lastSlash":I
    if-ne v2, v4, :cond_4

    #@66
    .line 200
    new-instance v3, Ljava/lang/NullPointerException;

    #@68
    new-instance v4, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v5, "malformed context url:"

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v3

    #@80
    .line 204
    :cond_4
    add-int/lit8 v3, v2, 0x1

    #@82
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    goto :goto_0
.end method


# virtual methods
.method protected hashCode(Ljava/net/URL;)I
    .locals 11
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 97
    const/4 v5, 0x0

    #@2
    .line 99
    .local v5, "h":I
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    .line 100
    .local v6, "protocol":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@8
    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v9

    #@c
    add-int/lit8 v5, v9, 0x0

    #@e
    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 104
    .local v3, "file":Ljava/lang/String;
    const-string/jumbo v9, "!/"

    #@15
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v7

    #@19
    .line 106
    .local v7, "sep":I
    const/4 v9, -0x1

    #@1a
    if-ne v7, v9, :cond_1

    #@1c
    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@1f
    move-result v9

    #@20
    add-int/2addr v9, v5

    #@21
    return v9

    #@22
    .line 109
    :cond_1
    const/4 v0, 0x0

    #@23
    .line 110
    .local v0, "enclosedURL":Ljava/net/URL;
    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 112
    .local v4, "fileWithoutEntry":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    #@29
    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 113
    .end local v0    # "enclosedURL":Ljava/net/URL;
    .local v1, "enclosedURL":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    move-result v9

    #@30
    add-int/2addr v5, v9

    #@31
    move-object v0, v1

    #@32
    .line 118
    .end local v1    # "enclosedURL":Ljava/net/URL;
    :goto_0
    add-int/lit8 v9, v7, 0x2

    #@34
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 119
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@3b
    move-result v9

    #@3c
    add-int/2addr v5, v9

    #@3d
    .line 121
    return v5

    #@3e
    .line 114
    .end local v2    # "entry":Ljava/lang/String;
    .restart local v0    # "enclosedURL":Ljava/net/URL;
    :catch_0
    move-exception v8

    #@3f
    .line 115
    .end local v0    # "enclosedURL":Ljava/net/URL;
    .local v8, "unused":Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v9

    #@43
    add-int/2addr v5, v9

    #@44
    goto :goto_0

    #@45
    .line 114
    .end local v8    # "unused":Ljava/net/MalformedURLException;
    .restart local v1    # "enclosedURL":Ljava/net/URL;
    :catch_1
    move-exception v8

    #@46
    .restart local v8    # "unused":Ljava/net/MalformedURLException;
    move-object v0, v1

    #@47
    .end local v1    # "enclosedURL":Ljava/net/URL;
    .local v0, "enclosedURL":Ljava/net/URL;
    goto :goto_1
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection;

    #@2
    invoke-direct {v0, p1, p0}, Lsun/net/www/protocol/jar/JarURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V

    #@5
    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 128
    const/4 v7, 0x0

    #@1
    .line 129
    .local v7, "file":Ljava/lang/String;
    const/4 v8, 0x0

    #@2
    .line 131
    .local v8, "ref":Ljava/lang/String;
    const/16 v2, 0x23

    #@4
    move-object/from16 v0, p2

    #@6
    move/from16 v1, p4

    #@8
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@b
    move-result v14

    #@c
    .line 132
    .local v14, "refPos":I
    move/from16 v0, p3

    #@e
    if-ne v14, v0, :cond_3

    #@10
    const/4 v13, 0x1

    #@11
    .line 133
    .local v13, "refOnly":Z
    :goto_0
    const/4 v2, -0x1

    #@12
    if-le v14, v2, :cond_0

    #@14
    .line 134
    add-int/lit8 v2, v14, 0x1

    #@16
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    move-object/from16 v0, p2

    #@1c
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 135
    .local v8, "ref":Ljava/lang/String;
    if-eqz v13, :cond_0

    #@22
    .line 136
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 143
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "ref":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    #@27
    .line 144
    .local v9, "absoluteSpec":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@2a
    move-result v2

    #@2b
    const/4 v3, 0x4

    #@2c
    if-lt v2, v3, :cond_1

    #@2e
    .line 145
    const/4 v2, 0x0

    #@2f
    const/4 v3, 0x4

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, "jar:"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3c
    move-result v9

    #@3d
    .line 147
    .end local v9    # "absoluteSpec":Z
    :cond_1
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object p2

    #@41
    .line 149
    if-eqz v9, :cond_4

    #@43
    .line 150
    move-object/from16 v0, p0

    #@45
    move-object/from16 v1, p2

    #@47
    invoke-direct {v0, v1}, Lsun/net/www/protocol/jar/Handler;->parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    .line 162
    :cond_2
    :goto_1
    const-string/jumbo v4, "jar"

    #@4e
    const-string/jumbo v5, ""

    #@51
    const/4 v6, -0x1

    #@52
    move-object/from16 v2, p0

    #@54
    move-object/from16 v3, p1

    #@56
    invoke-virtual/range {v2 .. v8}, Lsun/net/www/protocol/jar/Handler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@59
    .line 127
    return-void

    #@5a
    .line 132
    .end local v13    # "refOnly":Z
    .restart local v7    # "file":Ljava/lang/String;
    .local v8, "ref":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    #@5b
    .restart local v13    # "refOnly":Z
    goto :goto_0

    #@5c
    .line 151
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "ref":Ljava/lang/String;
    :cond_4
    if-nez v13, :cond_2

    #@5e
    .line 152
    invoke-direct/range {p0 .. p2}, Lsun/net/www/protocol/jar/Handler;->parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 155
    .local v7, "file":Ljava/lang/String;
    invoke-static {v7}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    #@65
    move-result v11

    #@66
    .line 156
    .local v11, "bangSlash":I
    const/4 v2, 0x0

    #@67
    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v15

    #@6b
    .line 157
    .local v15, "toBangSlash":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    .line 158
    .local v10, "afterBangSlash":Ljava/lang/String;
    new-instance v12, Lsun/net/www/ParseUtil;

    #@71
    invoke-direct {v12}, Lsun/net/www/ParseUtil;-><init>()V

    #@74
    .line 159
    .local v12, "canonizer":Lsun/net/www/ParseUtil;
    invoke-virtual {v12, v10}, Lsun/net/www/ParseUtil;->canonizeString(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v10

    #@78
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    goto :goto_1
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 12
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    const-string/jumbo v11, "jar"

    #@7
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v10

    #@b
    if-eqz v10, :cond_1

    #@d
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@10
    move-result-object v10

    #@11
    const-string/jumbo v11, "jar"

    #@14
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v10

    #@18
    if-eqz v10, :cond_1

    #@1a
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 66
    .local v5, "file1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    .line 67
    .local v6, "file2":Ljava/lang/String;
    const-string/jumbo v10, "!/"

    #@25
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@28
    move-result v7

    #@29
    .line 68
    .local v7, "sep1":I
    const-string/jumbo v10, "!/"

    #@2c
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2f
    move-result v8

    #@30
    .line 70
    .local v8, "sep2":I
    const/4 v10, -0x1

    #@31
    if-eq v7, v10, :cond_0

    #@33
    const/4 v10, -0x1

    #@34
    if-ne v8, v10, :cond_2

    #@36
    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@39
    move-result v10

    #@3a
    return v10

    #@3b
    .line 63
    .end local v5    # "file1":Ljava/lang/String;
    .end local v6    # "file2":Ljava/lang/String;
    .end local v7    # "sep1":I
    .end local v8    # "sep2":I
    :cond_1
    const/4 v10, 0x0

    #@3c
    return v10

    #@3d
    .line 74
    .restart local v5    # "file1":Ljava/lang/String;
    .restart local v6    # "file2":Ljava/lang/String;
    .restart local v7    # "sep1":I
    .restart local v8    # "sep2":I
    :cond_2
    add-int/lit8 v10, v7, 0x2

    #@3f
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 75
    .local v3, "entry1":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x2

    #@45
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 77
    .local v4, "entry2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v10

    #@4d
    if-nez v10, :cond_3

    #@4f
    .line 78
    const/4 v10, 0x0

    #@50
    return v10

    #@51
    .line 80
    :cond_3
    const/4 v0, 0x0

    #@52
    .local v0, "enclosedURL1":Ljava/net/URL;
    const/4 v2, 0x0

    #@53
    .line 82
    .local v2, "enclosedURL2":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    #@55
    const/4 v10, 0x0

    #@56
    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    invoke-direct {v1, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 83
    .local v1, "enclosedURL1":Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    #@5f
    .end local v0    # "enclosedURL1":Ljava/net/URL;
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    const/4 v10, 0x0

    #@60
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-direct {v2, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    #@67
    .line 88
    .local v2, "enclosedURL2":Ljava/net/URL;
    invoke-super {p0, v1, v2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@6a
    move-result v10

    #@6b
    if-nez v10, :cond_4

    #@6d
    .line 89
    const/4 v10, 0x0

    #@6e
    return v10

    #@6f
    .line 84
    .end local v1    # "enclosedURL1":Ljava/net/URL;
    .restart local v0    # "enclosedURL1":Ljava/net/URL;
    .local v2, "enclosedURL2":Ljava/net/URL;
    :catch_0
    move-exception v9

    #@70
    .line 85
    .end local v0    # "enclosedURL1":Ljava/net/URL;
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    .local v9, "unused":Ljava/net/MalformedURLException;
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@73
    move-result v10

    #@74
    return v10

    #@75
    .line 92
    .end local v9    # "unused":Ljava/net/MalformedURLException;
    .restart local v1    # "enclosedURL1":Ljava/net/URL;
    .local v2, "enclosedURL2":Ljava/net/URL;
    :cond_4
    const/4 v10, 0x1

    #@76
    return v10

    #@77
    .line 84
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    :catch_1
    move-exception v9

    #@78
    .restart local v9    # "unused":Ljava/net/MalformedURLException;
    move-object v0, v1

    #@79
    .end local v1    # "enclosedURL1":Ljava/net/URL;
    .local v0, "enclosedURL1":Ljava/net/URL;
    goto :goto_0
.end method
