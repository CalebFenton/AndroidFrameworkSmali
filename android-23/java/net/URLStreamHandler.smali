.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 201
    const-string/jumbo v1, "/"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 202
    invoke-static {p1, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 203
    :cond_0
    if-eqz p0, :cond_1

    #@11
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/16 v2, 0x2f

    #@18
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1b
    move-result v2

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 205
    .local v0, "combined":Ljava/lang/String;
    invoke-static {v0, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 207
    .end local v0    # "combined":Ljava/lang/String;
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    #@0
    .prologue
    .line 307
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 308
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 307
    if-eqz v0, :cond_0

    #@14
    .line 309
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    .line 307
    :goto_0
    return v0

    #@21
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 317
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 325
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 326
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 327
    :cond_0
    return-object v3

    #@e
    .line 329
    :cond_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 330
    .end local v1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@14
    .line 331
    .local v0, "e":Ljava/net/UnknownHostException;
    return-object v3
.end method

.method protected hashCode(Ljava/net/URL;)I
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 339
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 3
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    #@0
    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 348
    .local v0, "aHost":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 349
    .local v1, "bHost":Ljava/lang/String;
    if-eq v0, v1, :cond_0

    #@a
    if-eqz v0, :cond_1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    const/4 v2, 0x0

    #@14
    goto :goto_0
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 24
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 86
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@4
    move-object/from16 v0, p0

    #@6
    if-eq v0, v3, :cond_0

    #@8
    .line 87
    new-instance v3, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v4, "Only a URL\'s stream handler is permitted to mutate it"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 89
    :cond_0
    move/from16 v0, p4

    #@13
    move/from16 v1, p3

    #@15
    if-ge v0, v1, :cond_1

    #@17
    .line 90
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    #@19
    sub-int v4, p4, p3

    #@1b
    move-object/from16 v0, p2

    #@1d
    move/from16 v1, p3

    #@1f
    invoke-direct {v3, v0, v1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@22
    throw v3

    #@23
    .line 97
    :cond_1
    const/4 v7, -0x1

    #@24
    .line 101
    .local v7, "port":I
    const-string/jumbo v3, "//"

    #@27
    const/4 v4, 0x0

    #@28
    const/4 v5, 0x2

    #@29
    move-object/from16 v0, p2

    #@2b
    move/from16 v1, p3

    #@2d
    invoke-virtual {v0, v1, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_7

    #@33
    .line 103
    add-int/lit8 v13, p3, 0x2

    #@35
    .line 104
    .local v13, "authorityStart":I
    const-string/jumbo v3, "/?#"

    #@38
    move-object/from16 v0, p2

    #@3a
    move/from16 v1, p4

    #@3c
    invoke-static {v0, v3, v13, v1}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@3f
    move-result v15

    #@40
    .line 105
    .local v15, "fileStart":I
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    .line 106
    .local v8, "authority":Ljava/lang/String;
    const-string/jumbo v3, "@"

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-static {v0, v3, v13, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@4e
    move-result v23

    #@4f
    .line 108
    .local v23, "userInfoEnd":I
    move/from16 v0, v23

    #@51
    if-eq v0, v15, :cond_2

    #@53
    .line 109
    move-object/from16 v0, p2

    #@55
    move/from16 v1, v23

    #@57
    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    .line 110
    .local v9, "userInfo":Ljava/lang/String;
    add-int/lit8 v18, v23, 0x1

    #@5d
    .line 121
    .end local v9    # "userInfo":Ljava/lang/String;
    .local v18, "hostStart":I
    :goto_0
    move/from16 v14, v18

    #@5f
    .line 122
    .local v14, "colonSearchFrom":I
    const-string/jumbo v3, "]"

    #@62
    move-object/from16 v0, p2

    #@64
    move/from16 v1, v18

    #@66
    invoke-static {v0, v3, v1, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@69
    move-result v19

    #@6a
    .line 123
    .local v19, "ipv6End":I
    move/from16 v0, v19

    #@6c
    if-eq v0, v15, :cond_4

    #@6e
    .line 124
    const-string/jumbo v3, ":"

    #@71
    move-object/from16 v0, p2

    #@73
    move/from16 v1, v18

    #@75
    move/from16 v2, v19

    #@77
    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@7a
    move-result v3

    #@7b
    move/from16 v0, v19

    #@7d
    if-ne v3, v0, :cond_3

    #@7f
    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@81
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v5, "Expected an IPv6 address: "

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 126
    add-int/lit8 v5, v19, 0x1

    #@8f
    move-object/from16 v0, p2

    #@91
    move/from16 v1, v18

    #@93
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v3

    #@a3
    .line 112
    .end local v14    # "colonSearchFrom":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    :cond_2
    const/4 v9, 0x0

    #@a4
    .line 113
    .local v9, "userInfo":Ljava/lang/String;
    move/from16 v18, v13

    #@a6
    .restart local v18    # "hostStart":I
    goto :goto_0

    #@a7
    .line 128
    .end local v9    # "userInfo":Ljava/lang/String;
    .restart local v14    # "colonSearchFrom":I
    .restart local v19    # "ipv6End":I
    :cond_3
    move/from16 v14, v19

    #@a9
    .line 130
    :cond_4
    const-string/jumbo v3, ":"

    #@ac
    move-object/from16 v0, p2

    #@ae
    invoke-static {v0, v3, v14, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@b1
    move-result v17

    #@b2
    .line 131
    .local v17, "hostEnd":I
    move-object/from16 v0, p2

    #@b4
    move/from16 v1, v18

    #@b6
    move/from16 v2, v17

    #@b8
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    .line 132
    .local v6, "host":Ljava/lang/String;
    add-int/lit8 v21, v17, 0x1

    #@be
    .line 133
    .local v21, "portStart":I
    move/from16 v0, v21

    #@c0
    if-ge v0, v15, :cond_5

    #@c2
    .line 134
    move-object/from16 v0, p2

    #@c4
    move/from16 v1, v21

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@c9
    move-result v16

    #@ca
    .line 135
    .local v16, "firstPortChar":C
    const/16 v3, 0x30

    #@cc
    move/from16 v0, v16

    #@ce
    if-lt v0, v3, :cond_6

    #@d0
    const/16 v3, 0x39

    #@d2
    move/from16 v0, v16

    #@d4
    if-gt v0, v3, :cond_6

    #@d6
    .line 136
    move-object/from16 v0, p2

    #@d8
    move/from16 v1, v21

    #@da
    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e1
    move-result v7

    #@e2
    .line 141
    .end local v16    # "firstPortChar":C
    :cond_5
    const/4 v10, 0x0

    #@e3
    .line 142
    .local v10, "path":Ljava/lang/String;
    const/4 v11, 0x0

    #@e4
    .line 143
    .local v11, "query":Ljava/lang/String;
    const/4 v12, 0x0

    #@e5
    .line 165
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "query":Ljava/lang/String;
    .end local v13    # "authorityStart":I
    .end local v14    # "colonSearchFrom":I
    .end local v17    # "hostEnd":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    .end local v21    # "portStart":I
    .end local v23    # "userInfoEnd":I
    :goto_1
    move/from16 v22, v15

    #@e7
    .line 166
    .local v22, "pos":I
    :goto_2
    move/from16 v0, v22

    #@e9
    move/from16 v1, p4

    #@eb
    if-ge v0, v1, :cond_9

    #@ed
    .line 168
    move-object/from16 v0, p2

    #@ef
    move/from16 v1, v22

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@f4
    move-result v3

    #@f5
    sparse-switch v3, :sswitch_data_0

    #@f8
    .line 179
    const-string/jumbo v3, "?#"

    #@fb
    move-object/from16 v0, p2

    #@fd
    move/from16 v1, v22

    #@ff
    move/from16 v2, p4

    #@101
    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@104
    move-result v20

    #@105
    .line 180
    .local v20, "nextPos":I
    move-object/from16 v0, p2

    #@107
    move/from16 v1, v22

    #@109
    move/from16 v2, v20

    #@10b
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10e
    move-result-object v3

    #@10f
    invoke-static {v10, v3}, Ljava/net/URLStreamHandler;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@112
    move-result-object v10

    #@113
    .line 181
    .local v10, "path":Ljava/lang/String;
    const/4 v11, 0x0

    #@114
    .line 182
    .restart local v11    # "query":Ljava/lang/String;
    const/4 v12, 0x0

    #@115
    .line 185
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "query":Ljava/lang/String;
    :goto_3
    move/from16 v22, v20

    #@117
    goto :goto_2

    #@118
    .line 138
    .end local v20    # "nextPos":I
    .end local v22    # "pos":I
    .restart local v13    # "authorityStart":I
    .restart local v14    # "colonSearchFrom":I
    .restart local v16    # "firstPortChar":C
    .restart local v17    # "hostEnd":I
    .restart local v18    # "hostStart":I
    .restart local v19    # "ipv6End":I
    .restart local v21    # "portStart":I
    .restart local v23    # "userInfoEnd":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@11a
    new-instance v4, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v5, "invalid port: "

    #@122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v4

    #@126
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@129
    move-result-object v4

    #@12a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v4

    #@12e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@131
    throw v3

    #@132
    .line 146
    .end local v6    # "host":Ljava/lang/String;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v13    # "authorityStart":I
    .end local v14    # "colonSearchFrom":I
    .end local v15    # "fileStart":I
    .end local v16    # "firstPortChar":C
    .end local v17    # "hostEnd":I
    .end local v18    # "hostStart":I
    .end local v19    # "ipv6End":I
    .end local v21    # "portStart":I
    .end local v23    # "userInfoEnd":I
    :cond_7
    move/from16 v15, p3

    #@134
    .line 147
    .restart local v15    # "fileStart":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@137
    move-result-object v8

    #@138
    .line 148
    .restart local v8    # "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    #@13b
    move-result-object v9

    #@13c
    .line 149
    .local v9, "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@13f
    move-result-object v6

    #@140
    .line 150
    .restart local v6    # "host":Ljava/lang/String;
    if-nez v6, :cond_8

    #@142
    .line 151
    const-string/jumbo v6, ""

    #@145
    .line 153
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    #@148
    move-result v7

    #@149
    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@14c
    move-result-object v10

    #@14d
    .line 155
    .restart local v10    # "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@150
    move-result-object v11

    #@151
    .line 156
    .local v11, "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@154
    move-result-object v12

    #@155
    .local v12, "ref":Ljava/lang/String;
    goto :goto_1

    #@156
    .line 170
    .end local v9    # "userInfo":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "query":Ljava/lang/String;
    .end local v12    # "ref":Ljava/lang/String;
    .restart local v22    # "pos":I
    :sswitch_0
    move/from16 v20, p4

    #@158
    .line 171
    .restart local v20    # "nextPos":I
    add-int/lit8 v3, v22, 0x1

    #@15a
    move-object/from16 v0, p2

    #@15c
    move/from16 v1, v20

    #@15e
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@161
    move-result-object v12

    #@162
    .restart local v12    # "ref":Ljava/lang/String;
    goto :goto_3

    #@163
    .line 174
    .end local v12    # "ref":Ljava/lang/String;
    .end local v20    # "nextPos":I
    :sswitch_1
    const-string/jumbo v3, "#"

    #@166
    move-object/from16 v0, p2

    #@168
    move/from16 v1, v22

    #@16a
    move/from16 v2, p4

    #@16c
    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    #@16f
    move-result v20

    #@170
    .line 175
    .restart local v20    # "nextPos":I
    add-int/lit8 v3, v22, 0x1

    #@172
    move-object/from16 v0, p2

    #@174
    move/from16 v1, v20

    #@176
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@179
    move-result-object v11

    #@17a
    .line 176
    .restart local v11    # "query":Ljava/lang/String;
    const/4 v12, 0x0

    #@17b
    .line 177
    .local v12, "ref":Ljava/lang/String;
    goto :goto_3

    #@17c
    .line 188
    .end local v11    # "query":Ljava/lang/String;
    .end local v12    # "ref":Ljava/lang/String;
    .end local v20    # "nextPos":I
    :cond_9
    if-nez v10, :cond_a

    #@17e
    .line 189
    const-string/jumbo v10, ""

    #@181
    .line 192
    :cond_a
    invoke-static {v8, v10}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@184
    move-result-object v10

    #@185
    .line 194
    .restart local v10    # "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@188
    move-result-object v5

    #@189
    move-object/from16 v3, p0

    #@18b
    move-object/from16 v4, p1

    #@18d
    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@190
    .line 85
    return-void

    #@191
    .line 168
    nop

    #@192
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x3f -> :sswitch_1
    .end sparse-switch
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "a"    # Ljava/net/URL;
    .param p2, "b"    # Ljava/net/URL;

    #@0
    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 358
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    #@11
    move-result v0

    #@12
    .line 357
    if-eqz v0, :cond_0

    #@14
    .line 359
    invoke-virtual {p1}, Ljava/net/URL;->getEffectivePort()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p2}, Ljava/net/URL;->getEffectivePort()I

    #@1b
    move-result v1

    #@1c
    if-ne v0, v1, :cond_0

    #@1e
    .line 360
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    .line 357
    :goto_0
    return v0

    #@2b
    :cond_0
    const/4 v0, 0x0

    #@2c
    goto :goto_0
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 233
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 234
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    #@9
    throw v0

    #@a
    .line 236
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 232
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "userInfo"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 247
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    #@9
    throw v0

    #@a
    .line 249
    :cond_0
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 245
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "escapeIllegalCharacters"    # Z

    #@0
    .prologue
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 267
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 268
    const/16 v4, 0x3a

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 270
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 271
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .line 272
    const-string/jumbo v4, "//"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 273
    if-eqz p2, :cond_3

    #@1f
    .line 274
    sget-object v4, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    #@21
    invoke-virtual {v4, v3, v0}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@24
    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 281
    .local v1, "fileAndQuery":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2a
    .line 282
    if-eqz p2, :cond_4

    #@2c
    .line 283
    sget-object v4, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    #@2e
    invoke-virtual {v4, v3, v1}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@31
    .line 289
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 290
    .local v2, "ref":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@37
    .line 291
    const/16 v4, 0x23

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 292
    if-eqz p2, :cond_5

    #@3e
    .line 293
    sget-object v4, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    #@40
    invoke-virtual {v4, v3, v2}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@43
    .line 299
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    return-object v4

    #@48
    .line 276
    .end local v1    # "fileAndQuery":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_0

    #@4c
    .line 285
    .restart local v1    # "fileAndQuery":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_1

    #@50
    .line 295
    .restart local v2    # "ref":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_2
.end method
