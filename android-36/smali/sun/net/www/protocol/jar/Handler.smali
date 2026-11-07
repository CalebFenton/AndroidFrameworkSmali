.class public Lsun/net/www/protocol/jar/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field private static final blacklist separator:Ljava/lang/String; = "!/"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private static blacklist indexOfBangSlash(Ljava/lang/String;)I
    .registers 4
    .param p0, "spec"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    .local v0, "indexOfBang":I
    :goto_4
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_23

    add-int/lit8 v1, v0, 0x1

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_23

    .line 49
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 51
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 54
    :cond_26
    return v2
.end method

.method private blacklist parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "spec"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "url":Ljava/net/URL;
    const/4 v1, -0x1

    .line 170
    .local v1, "index":I
    invoke-static {p1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 175
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "innerSpec":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_16} :catch_18

    .line 180
    .end local v0    # "url":Ljava/net/URL;
    .end local v2    # "innerSpec":Ljava/lang/String;
    .local v3, "url":Ljava/net/URL;
    nop

    .line 181
    return-object p1

    .line 177
    .end local v3    # "url":Ljava/net/URL;
    .restart local v0    # "url":Ljava/net/URL;
    :catch_18
    move-exception v2

    .line 178
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_42
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "no !/ in spec"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "ctxFile":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "malformed context url:"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_38

    .line 188
    invoke-static {v0}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "bangSlash":I
    if-eq v2, v5, :cond_1b

    .line 195
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 190
    :cond_1b
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no !/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v2    # "bangSlash":I
    :cond_38
    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 199
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 200
    .local v1, "lastSlash":I
    if-eq v1, v5, :cond_53

    .line 205
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    .line 201
    :cond_53
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    .end local v1    # "lastSlash":I
    :cond_6a
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected whitelist test-api hashCode(Ljava/net/URL;)I
    .registers 10
    .param p1, "u"    # Ljava/net/URL;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    :cond_c
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "file":Ljava/lang/String;
    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "sep":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v4, v0

    return v4

    .line 109
    :cond_1f
    const/4 v4, 0x0

    .line 110
    .local v4, "enclosedURL":Ljava/net/URL;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "fileWithoutEntry":Ljava/lang/String;
    :try_start_25
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 113
    invoke-virtual {v4}, Ljava/net/URL;->hashCode()I

    move-result v6
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_2f} :catch_31

    add-int/2addr v0, v6

    .line 116
    goto :goto_37

    .line 114
    :catch_31
    move-exception v6

    .line 115
    .local v6, "unused":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 118
    .end local v6    # "unused":Ljava/net/MalformedURLException;
    :goto_37
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "entry":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 121
    return v0
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-direct {v0, p1, p0}, Lsun/net/www/protocol/jar/JarURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V

    return-object v0
.end method

.method protected whitelist test-api parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 20
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 129
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 130
    .local v1, "file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, "ref":Ljava/lang/String;
    const/16 v3, 0x23

    move/from16 v4, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 133
    .local v3, "refPos":I
    const/4 v5, 0x0

    move/from16 v6, p3

    if-ne v3, v6, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    move v7, v5

    .line 134
    .local v7, "refOnly":Z
    :goto_14
    const/4 v8, -0x1

    if-le v3, v8, :cond_2b

    .line 135
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-eqz v7, :cond_29

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    move-object v14, v2

    goto :goto_2c

    .line 136
    :cond_29
    move-object v14, v2

    goto :goto_2c

    .line 134
    :cond_2b
    move-object v14, v2

    .line 144
    .end local v2    # "ref":Ljava/lang/String;
    .local v14, "ref":Ljava/lang/String;
    :goto_2c
    const/4 v2, 0x0

    .line 145
    .local v2, "absoluteSpec":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_3e

    .line 146
    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "jar:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 148
    :cond_3e
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local p2    # "spec":Ljava/lang/String;
    .local v0, "spec":Ljava/lang/String;
    if-eqz v2, :cond_4c

    .line 151
    invoke-direct {p0, v0}, Lsun/net/www/protocol/jar/Handler;->parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p1

    move-object v13, v1

    goto :goto_7f

    .line 152
    :cond_4c
    if-nez v7, :cond_7c

    .line 153
    move-object/from16 v9, p1

    invoke-direct {p0, v9, v0}, Lsun/net/www/protocol/jar/Handler;->parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v8

    .line 157
    .local v8, "bangSlash":I
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "toBangSlash":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, "afterBangSlash":Ljava/lang/String;
    new-instance v11, Lsun/net/www/ParseUtil;

    invoke-direct {v11}, Lsun/net/www/ParseUtil;-><init>()V

    .line 160
    .local v11, "canonizer":Lsun/net/www/ParseUtil;
    invoke-virtual {v11, v10}, Lsun/net/www/ParseUtil;->canonizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_7f

    .line 152
    .end local v5    # "toBangSlash":Ljava/lang/String;
    .end local v8    # "bangSlash":I
    .end local v10    # "afterBangSlash":Ljava/lang/String;
    .end local v11    # "canonizer":Lsun/net/www/ParseUtil;
    :cond_7c
    move-object/from16 v9, p1

    move-object v13, v1

    .line 163
    .end local v1    # "file":Ljava/lang/String;
    .local v13, "file":Ljava/lang/String;
    :goto_7f
    const-string v11, ""

    const/4 v12, -0x1

    const-string v10, "jar"

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lsun/net/www/protocol/jar/Handler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected whitelist test-api sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 14
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6d

    .line 65
    :cond_18
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "file1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "file2":Ljava/lang/String;
    const-string v3, "!/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "sep1":I
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, "sep2":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_68

    if-ne v3, v5, :cond_30

    goto :goto_68

    .line 74
    :cond_30
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "entry1":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "entry2":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 78
    return v2

    .line 80
    :cond_43
    const/4 v7, 0x0

    .local v7, "enclosedURL1":Ljava/net/URL;
    const/4 v8, 0x0

    .line 82
    .local v8, "enclosedURL2":Ljava/net/URL;
    :try_start_45
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 83
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/net/MalformedURLException; {:try_start_45 .. :try_end_58} :catch_62

    .line 86
    .end local v8    # "enclosedURL2":Ljava/net/URL;
    .local v9, "enclosedURL2":Ljava/net/URL;
    nop

    .line 88
    invoke-super {p0, v7, v9}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v8

    if-nez v8, :cond_60

    .line 89
    return v2

    .line 92
    :cond_60
    const/4 v2, 0x1

    return v2

    .line 84
    .end local v9    # "enclosedURL2":Ljava/net/URL;
    .restart local v8    # "enclosedURL2":Ljava/net/URL;
    :catch_62
    move-exception v2

    .line 85
    .local v2, "unused":Ljava/net/MalformedURLException;
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v9

    return v9

    .line 71
    .end local v2    # "unused":Ljava/net/MalformedURLException;
    .end local v5    # "entry1":Ljava/lang/String;
    .end local v6    # "entry2":Ljava/lang/String;
    .end local v7    # "enclosedURL1":Ljava/net/URL;
    .end local v8    # "enclosedURL2":Ljava/net/URL;
    :cond_68
    :goto_68
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2

    return v2

    .line 63
    .end local v0    # "file1":Ljava/lang/String;
    .end local v1    # "file2":Ljava/lang/String;
    .end local v3    # "sep2":I
    .end local v4    # "sep1":I
    :cond_6d
    :goto_6d
    return v2
.end method
