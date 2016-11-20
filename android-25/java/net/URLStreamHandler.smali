.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 373
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 372
    if-eqz v0, :cond_0

    #@1c
    .line 376
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@1f
    move-result v0

    #@20
    .line 372
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
    .line 356
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected declared-synchronized getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 5
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 445
    :try_start_0
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 446
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v3

    #@a
    .line 448
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 449
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    const-string/jumbo v3, ""

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_2

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 450
    return-object v4

    #@1b
    .line 453
    :cond_2
    :try_start_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    .line 460
    :try_start_3
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v3

    #@25
    .line 456
    :catch_0
    move-exception v2

    #@26
    .local v2, "se":Ljava/lang/SecurityException;
    monitor-exit p0

    #@27
    .line 457
    return-object v4

    #@28
    .line 454
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@29
    .local v0, "ex":Ljava/net/UnknownHostException;
    monitor-exit p0

    #@2a
    .line 455
    return-object v4

    #@2b
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    .end local v1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit p0

    #@2d
    throw v3
.end method

.method protected hashCode(Ljava/net/URL;)I
    .locals 3
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    .line 389
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    .line 390
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 391
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 392
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    .line 393
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 394
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    .line 395
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@29
    move-result v1

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 389
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 473
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 474
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 476
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    if-nez v1, :cond_1

    #@20
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    if-nez v1, :cond_1

    #@26
    const/4 v0, 0x1

    #@27
    :cond_1
    return v0
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Method not implemented."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 23
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 126
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 127
    .local v7, "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 128
    .local v8, "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    .line 129
    .local v5, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    #@13
    move-result v6

    #@14
    .line 130
    .local v6, "port":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    .line 131
    .local v9, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@1b
    move-result-object v10

    #@1c
    .line 134
    .local v10, "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@1f
    move-result-object v11

    #@20
    .line 136
    .local v11, "ref":Ljava/lang/String;
    const/4 v15, 0x0

    #@21
    .line 137
    .local v15, "isRelPath":Z
    const/16 v18, 0x0

    #@23
    .line 139
    .local v18, "queryOnly":Z
    const/16 v19, 0x0

    #@25
    .line 144
    .local v19, "querySet":Z
    move/from16 v0, p3

    #@27
    move/from16 v1, p4

    #@29
    if-ge v0, v1, :cond_1

    #@2b
    .line 145
    const/16 v2, 0x3f

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@32
    move-result v20

    #@33
    .line 146
    .local v20, "queryStart":I
    move/from16 v0, v20

    #@35
    move/from16 v1, p3

    #@37
    if-ne v0, v1, :cond_3

    #@39
    const/16 v18, 0x1

    #@3b
    .line 147
    :goto_0
    const/4 v2, -0x1

    #@3c
    move/from16 v0, v20

    #@3e
    if-eq v0, v2, :cond_1

    #@40
    move/from16 v0, v20

    #@42
    move/from16 v1, p4

    #@44
    if-ge v0, v1, :cond_1

    #@46
    .line 148
    add-int/lit8 v2, v20, 0x1

    #@48
    move-object/from16 v0, p2

    #@4a
    move/from16 v1, p4

    #@4c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    .line 149
    move/from16 v0, p4

    #@52
    move/from16 v1, v20

    #@54
    if-le v0, v1, :cond_0

    #@56
    .line 150
    move/from16 p4, v20

    #@58
    .line 151
    :cond_0
    const/4 v2, 0x0

    #@59
    move-object/from16 v0, p2

    #@5b
    move/from16 v1, v20

    #@5d
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@60
    move-result-object p2

    #@61
    .line 153
    const/16 v19, 0x1

    #@63
    .line 158
    .end local v20    # "queryStart":I
    :cond_1
    const/4 v13, 0x0

    #@64
    .line 166
    .local v13, "i":I
    const/16 v16, 0x0

    #@66
    .line 168
    .local v16, "isUNCName":Z
    if-nez v16, :cond_e

    #@68
    add-int/lit8 v2, p4, -0x2

    #@6a
    move/from16 v0, p3

    #@6c
    if-gt v0, v2, :cond_e

    #@6e
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v2

    #@72
    const/16 v3, 0x2f

    #@74
    if-ne v2, v3, :cond_e

    #@76
    .line 169
    add-int/lit8 v2, p3, 0x1

    #@78
    move-object/from16 v0, p2

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@7d
    move-result v2

    #@7e
    const/16 v3, 0x2f

    #@80
    if-ne v2, v3, :cond_e

    #@82
    .line 170
    add-int/lit8 p3, p3, 0x2

    #@84
    .line 171
    const/16 v2, 0x2f

    #@86
    move-object/from16 v0, p2

    #@88
    move/from16 v1, p3

    #@8a
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@8d
    move-result v13

    #@8e
    .line 172
    if-gez v13, :cond_2

    #@90
    .line 173
    const/16 v2, 0x3f

    #@92
    move-object/from16 v0, p2

    #@94
    move/from16 v1, p3

    #@96
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    #@99
    move-result v13

    #@9a
    .line 174
    if-gez v13, :cond_2

    #@9c
    .line 175
    move/from16 v13, p4

    #@9e
    .line 178
    :cond_2
    move-object/from16 v0, p2

    #@a0
    move/from16 v1, p3

    #@a2
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    move-object v5, v7

    #@a7
    .line 180
    const/16 v2, 0x40

    #@a9
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    #@ac
    move-result v14

    #@ad
    .line 181
    .local v14, "ind":I
    const/4 v2, -0x1

    #@ae
    if-eq v14, v2, :cond_4

    #@b0
    .line 182
    const/4 v2, 0x0

    #@b1
    invoke-virtual {v7, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    .line 183
    add-int/lit8 v2, v14, 0x1

    #@b7
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    .line 187
    .end local v8    # "userInfo":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_c

    #@bd
    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@c0
    move-result v2

    #@c1
    if-lez v2, :cond_9

    #@c3
    const/4 v2, 0x0

    #@c4
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@c7
    move-result v2

    #@c8
    const/16 v3, 0x5b

    #@ca
    if-ne v2, v3, :cond_9

    #@cc
    .line 191
    const/16 v2, 0x5d

    #@ce
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    #@d1
    move-result v14

    #@d2
    const/4 v2, 0x2

    #@d3
    if-le v14, v2, :cond_8

    #@d5
    .line 193
    move-object/from16 v17, v5

    #@d7
    .line 194
    .local v17, "nhost":Ljava/lang/String;
    add-int/lit8 v2, v14, 0x1

    #@d9
    const/4 v3, 0x0

    #@da
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@dd
    move-result-object v5

    #@de
    .line 196
    const/4 v2, 0x1

    #@df
    invoke-virtual {v5, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    .line 195
    invoke-static {v2}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    #@e6
    move-result v2

    #@e7
    if-nez v2, :cond_5

    #@e9
    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@eb
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v22, "Invalid host: "

    #@f3
    move-object/from16 v0, v22

    #@f5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v3

    #@fd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@104
    throw v2

    #@105
    .line 146
    .end local v13    # "i":I
    .end local v14    # "ind":I
    .end local v16    # "isUNCName":Z
    .end local v17    # "nhost":Ljava/lang/String;
    .restart local v8    # "userInfo":Ljava/lang/String;
    .restart local v20    # "queryStart":I
    :cond_3
    const/16 v18, 0x0

    #@107
    goto/16 :goto_0

    #@109
    .line 185
    .end local v20    # "queryStart":I
    .restart local v13    # "i":I
    .restart local v14    # "ind":I
    .restart local v16    # "isUNCName":Z
    :cond_4
    const/4 v8, 0x0

    #@10a
    .local v8, "userInfo":Ljava/lang/String;
    goto :goto_1

    #@10b
    .line 201
    .end local v8    # "userInfo":Ljava/lang/String;
    .restart local v17    # "nhost":Ljava/lang/String;
    :cond_5
    const/4 v6, -0x1

    #@10c
    .line 202
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@10f
    move-result v2

    #@110
    add-int/lit8 v3, v14, 0x1

    #@112
    if-le v2, v3, :cond_6

    #@114
    .line 203
    add-int/lit8 v2, v14, 0x1

    #@116
    move-object/from16 v0, v17

    #@118
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@11b
    move-result v2

    #@11c
    const/16 v3, 0x3a

    #@11e
    if-ne v2, v3, :cond_7

    #@120
    .line 204
    add-int/lit8 v14, v14, 0x1

    #@122
    .line 206
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@125
    move-result v2

    #@126
    add-int/lit8 v3, v14, 0x1

    #@128
    if-le v2, v3, :cond_6

    #@12a
    .line 207
    add-int/lit8 v2, v14, 0x1

    #@12c
    move-object/from16 v0, v17

    #@12e
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@135
    move-result v6

    #@136
    .line 241
    .end local v17    # "nhost":Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v2, -0x1

    #@137
    if-ge v6, v2, :cond_d

    #@139
    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13b
    new-instance v3, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v22, "Invalid port number :"

    #@143
    move-object/from16 v0, v22

    #@145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v3

    #@149
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v3

    #@14d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v3

    #@151
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@154
    throw v2

    #@155
    .line 210
    .restart local v17    # "nhost":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@157
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v22, "Invalid authority field: "

    #@15f
    move-object/from16 v0, v22

    #@161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v3

    #@165
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v3

    #@169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v3

    #@16d
    .line 210
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@170
    throw v2

    #@171
    .line 215
    .end local v17    # "nhost":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@173
    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v22, "Invalid authority field: "

    #@17b
    move-object/from16 v0, v22

    #@17d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v3

    #@181
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v3

    #@185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v3

    #@189
    .line 215
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18c
    throw v2

    #@18d
    .line 219
    :cond_9
    const/16 v2, 0x3a

    #@18f
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    #@192
    move-result v14

    #@193
    .line 220
    const/4 v6, -0x1

    #@194
    .line 221
    if-ltz v14, :cond_6

    #@196
    .line 223
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@199
    move-result v2

    #@19a
    add-int/lit8 v3, v14, 0x1

    #@19c
    if-le v2, v3, :cond_a

    #@19e
    .line 226
    add-int/lit8 v2, v14, 0x1

    #@1a0
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@1a3
    move-result v12

    #@1a4
    .line 227
    .local v12, "firstPortChar":C
    const/16 v2, 0x30

    #@1a6
    if-lt v12, v2, :cond_b

    #@1a8
    const/16 v2, 0x39

    #@1aa
    if-gt v12, v2, :cond_b

    #@1ac
    .line 228
    add-int/lit8 v2, v14, 0x1

    #@1ae
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b1
    move-result-object v2

    #@1b2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b5
    move-result v6

    #@1b6
    .line 235
    .end local v12    # "firstPortChar":C
    :cond_a
    const/4 v2, 0x0

    #@1b7
    invoke-virtual {v5, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ba
    move-result-object v5

    #@1bb
    goto/16 :goto_2

    #@1bd
    .line 230
    .restart local v12    # "firstPortChar":C
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1bf
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c4
    const-string/jumbo v22, "invalid port: "

    #@1c7
    move-object/from16 v0, v22

    #@1c9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v3

    #@1cd
    .line 231
    add-int/lit8 v22, v14, 0x1

    #@1cf
    move/from16 v0, v22

    #@1d1
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d4
    move-result-object v22

    #@1d5
    .line 230
    move-object/from16 v0, v22

    #@1d7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v3

    #@1db
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1de
    move-result-object v3

    #@1df
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e2
    throw v2

    #@1e3
    .line 239
    .end local v12    # "firstPortChar":C
    :cond_c
    const-string/jumbo v5, ""

    #@1e6
    goto/16 :goto_2

    #@1e8
    .line 244
    :cond_d
    move/from16 p3, v13

    #@1ea
    .line 251
    const/4 v9, 0x0

    #@1eb
    .line 252
    .local v9, "path":Ljava/lang/String;
    if-nez v19, :cond_e

    #@1ed
    .line 253
    const/4 v10, 0x0

    #@1ee
    .line 258
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "query":Ljava/lang/String;
    .end local v14    # "ind":I
    :cond_e
    if-nez v5, :cond_f

    #@1f0
    .line 259
    const-string/jumbo v5, ""

    #@1f3
    .line 263
    :cond_f
    move/from16 v0, p3

    #@1f5
    move/from16 v1, p4

    #@1f7
    if-ge v0, v1, :cond_10

    #@1f9
    .line 264
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    #@1fc
    move-result v2

    #@1fd
    const/16 v3, 0x2f

    #@1ff
    if-ne v2, v3, :cond_12

    #@201
    .line 265
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@204
    move-result-object v9

    #@205
    .line 288
    :cond_10
    :goto_3
    if-nez v9, :cond_11

    #@207
    .line 289
    const-string/jumbo v9, ""

    #@20a
    .line 296
    :cond_11
    :goto_4
    const-string/jumbo v2, "/./"

    #@20d
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@210
    move-result v13

    #@211
    if-ltz v13, :cond_16

    #@213
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    #@215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@218
    const/4 v3, 0x0

    #@219
    invoke-virtual {v9, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21c
    move-result-object v3

    #@21d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v2

    #@221
    add-int/lit8 v3, v13, 0x2

    #@223
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@226
    move-result-object v3

    #@227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v2

    #@22b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v9

    #@22f
    .local v9, "path":Ljava/lang/String;
    goto :goto_4

    #@230
    .line 266
    .end local v9    # "path":Ljava/lang/String;
    :cond_12
    if-eqz v9, :cond_14

    #@232
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@235
    move-result v2

    #@236
    if-lez v2, :cond_14

    #@238
    .line 267
    const/4 v15, 0x1

    #@239
    .line 268
    const/16 v2, 0x2f

    #@23b
    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@23e
    move-result v14

    #@23f
    .line 269
    .restart local v14    # "ind":I
    const-string/jumbo v21, ""

    #@242
    .line 270
    .local v21, "seperator":Ljava/lang/String;
    const/4 v2, -0x1

    #@243
    if-ne v14, v2, :cond_13

    #@245
    if-eqz v7, :cond_13

    #@247
    .line 271
    const-string/jumbo v21, "/"

    #@24a
    .line 272
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    #@24c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24f
    add-int/lit8 v3, v14, 0x1

    #@251
    const/16 v22, 0x0

    #@253
    move/from16 v0, v22

    #@255
    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@258
    move-result-object v3

    #@259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v2

    #@25d
    move-object/from16 v0, v21

    #@25f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v2

    #@263
    .line 273
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@266
    move-result-object v3

    #@267
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v2

    #@26b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v9

    #@26f
    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_3

    #@270
    .line 276
    .end local v9    # "path":Ljava/lang/String;
    .end local v14    # "ind":I
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_14
    if-eqz v7, :cond_15

    #@272
    const-string/jumbo v21, "/"

    #@275
    .line 277
    .restart local v21    # "seperator":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@277
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27a
    move-object/from16 v0, v21

    #@27c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v2

    #@280
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@283
    move-result-object v3

    #@284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v2

    #@288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v9

    #@28c
    .restart local v9    # "path":Ljava/lang/String;
    goto/16 :goto_3

    #@28e
    .line 276
    .end local v9    # "path":Ljava/lang/String;
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_15
    const-string/jumbo v21, ""

    #@291
    .restart local v21    # "seperator":Ljava/lang/String;
    goto :goto_5

    #@292
    .line 300
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_16
    const/4 v13, 0x0

    #@293
    .line 301
    :goto_6
    const-string/jumbo v2, "/../"

    #@296
    invoke-virtual {v9, v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@299
    move-result v13

    #@29a
    if-ltz v13, :cond_19

    #@29c
    .line 306
    if-nez v13, :cond_17

    #@29e
    .line 307
    add-int/lit8 v2, v13, 0x3

    #@2a0
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a3
    move-result-object v9

    #@2a4
    .line 308
    .restart local v9    # "path":Ljava/lang/String;
    const/4 v13, 0x0

    #@2a5
    goto :goto_6

    #@2a6
    .line 316
    .end local v9    # "path":Ljava/lang/String;
    :cond_17
    if-lez v13, :cond_18

    #@2a8
    const/16 v2, 0x2f

    #@2aa
    add-int/lit8 v3, v13, -0x1

    #@2ac
    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    #@2af
    move-result p4

    #@2b0
    if-ltz p4, :cond_18

    #@2b2
    .line 317
    const-string/jumbo v2, "/../"

    #@2b5
    move/from16 v0, p4

    #@2b7
    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@2ba
    move-result v2

    #@2bb
    if-eqz v2, :cond_18

    #@2bd
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    #@2bf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c2
    const/4 v3, 0x0

    #@2c3
    move/from16 v0, p4

    #@2c5
    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c8
    move-result-object v3

    #@2c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cc
    move-result-object v2

    #@2cd
    add-int/lit8 v3, v13, 0x3

    #@2cf
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d2
    move-result-object v3

    #@2d3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v2

    #@2d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v9

    #@2db
    .line 319
    .restart local v9    # "path":Ljava/lang/String;
    const/4 v13, 0x0

    #@2dc
    .line 317
    goto :goto_6

    #@2dd
    .line 321
    .end local v9    # "path":Ljava/lang/String;
    :cond_18
    add-int/lit8 v13, v13, 0x3

    #@2df
    goto :goto_6

    #@2e0
    .line 325
    :cond_19
    :goto_7
    const-string/jumbo v2, "/.."

    #@2e3
    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2e6
    move-result v2

    #@2e7
    if-eqz v2, :cond_1a

    #@2e9
    .line 326
    const-string/jumbo v2, "/.."

    #@2ec
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2ef
    move-result v13

    #@2f0
    .line 327
    const/16 v2, 0x2f

    #@2f2
    add-int/lit8 v3, v13, -0x1

    #@2f4
    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    #@2f7
    move-result p4

    #@2f8
    if-ltz p4, :cond_1a

    #@2fa
    .line 328
    add-int/lit8 v2, p4, 0x1

    #@2fc
    const/4 v3, 0x0

    #@2fd
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@300
    move-result-object v9

    #@301
    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_7

    #@302
    .line 334
    .end local v9    # "path":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v2, "./"

    #@305
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@308
    move-result v2

    #@309
    if-eqz v2, :cond_1b

    #@30b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@30e
    move-result v2

    #@30f
    const/4 v3, 0x2

    #@310
    if-le v2, v3, :cond_1b

    #@312
    .line 335
    const/4 v2, 0x2

    #@313
    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@316
    move-result-object v9

    #@317
    .line 338
    :cond_1b
    const-string/jumbo v2, "/."

    #@31a
    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@31d
    move-result v2

    #@31e
    if-eqz v2, :cond_1c

    #@320
    .line 339
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@323
    move-result v2

    #@324
    add-int/lit8 v2, v2, -0x1

    #@326
    const/4 v3, 0x0

    #@327
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32a
    move-result-object v9

    #@32b
    .line 342
    :cond_1c
    const-string/jumbo v2, "?"

    #@32e
    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@331
    move-result v2

    #@332
    if-eqz v2, :cond_1d

    #@334
    .line 343
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@337
    move-result v2

    #@338
    add-int/lit8 v2, v2, -0x1

    #@33a
    const/4 v3, 0x0

    #@33b
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33e
    move-result-object v9

    #@33f
    :cond_1d
    move-object/from16 v2, p0

    #@341
    move-object/from16 v3, p1

    #@343
    .line 346
    invoke-virtual/range {v2 .. v11}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@346
    .line 123
    return-void
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 7
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 411
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    if-eq v2, v5, :cond_0

    #@d
    .line 412
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 413
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    .line 411
    :goto_0
    if-nez v2, :cond_2

    #@21
    .line 414
    return v4

    #@22
    :cond_0
    move v2, v3

    #@23
    .line 411
    goto :goto_0

    #@24
    :cond_1
    move v2, v4

    #@25
    .line 412
    goto :goto_0

    #@26
    .line 417
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    if-eq v2, v5, :cond_3

    #@30
    .line 418
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    if-eqz v2, :cond_4

    #@36
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    .line 417
    :goto_1
    if-nez v2, :cond_5

    #@44
    .line 419
    return v4

    #@45
    :cond_3
    move v2, v3

    #@46
    .line 417
    goto :goto_1

    #@47
    :cond_4
    move v2, v4

    #@48
    .line 418
    goto :goto_1

    #@49
    .line 423
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@4c
    move-result v2

    #@4d
    if-eq v2, v6, :cond_6

    #@4f
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@52
    move-result v0

    #@53
    .line 424
    .local v0, "port1":I
    :goto_2
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    #@56
    move-result v2

    #@57
    if-eq v2, v6, :cond_7

    #@59
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    #@5c
    move-result v1

    #@5d
    .line 425
    .local v1, "port2":I
    :goto_3
    if-eq v0, v1, :cond_8

    #@5f
    .line 426
    return v4

    #@60
    .line 423
    .end local v0    # "port1":I
    .end local v1    # "port2":I
    :cond_6
    iget-object v2, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@62
    invoke-virtual {v2}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    #@65
    move-result v0

    #@66
    .restart local v0    # "port1":I
    goto :goto_2

    #@67
    .line 424
    :cond_7
    iget-object v2, p2, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@69
    invoke-virtual {v2}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    #@6c
    move-result v1

    #@6d
    goto :goto_3

    #@6e
    .line 429
    .restart local v1    # "port2":I
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    #@71
    move-result v2

    #@72
    if-nez v2, :cond_9

    #@74
    .line 430
    return v4

    #@75
    .line 432
    :cond_9
    return v3
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
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
    .line 571
    const/4 v6, 0x0

    #@1
    .line 572
    .local v6, "authority":Ljava/lang/String;
    const/4 v7, 0x0

    #@2
    .line 573
    .local v7, "userInfo":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 574
    const/4 v1, -0x1

    #@b
    move/from16 v0, p4

    #@d
    if-ne v0, v1, :cond_2

    #@f
    move-object/from16 v6, p3

    #@11
    .line 575
    .local v6, "authority":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x40

    #@13
    move-object/from16 v0, p3

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@18
    move-result v11

    #@19
    .line 576
    .local v11, "at":I
    const/4 v1, -0x1

    #@1a
    if-eq v11, v1, :cond_0

    #@1c
    .line 577
    const/4 v1, 0x0

    #@1d
    move-object/from16 v0, p3

    #@1f
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 578
    .local v7, "userInfo":Ljava/lang/String;
    add-int/lit8 v1, v11, 0x1

    #@25
    move-object/from16 v0, p3

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object p3

    #@2b
    .line 585
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "userInfo":Ljava/lang/String;
    .end local v11    # "at":I
    :cond_0
    const/4 v8, 0x0

    #@2c
    .line 586
    .local v8, "path":Ljava/lang/String;
    const/4 v9, 0x0

    #@2d
    .line 587
    .local v9, "query":Ljava/lang/String;
    if-eqz p5, :cond_1

    #@2f
    .line 588
    const/16 v1, 0x3f

    #@31
    move-object/from16 v0, p5

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@36
    move-result v12

    #@37
    .line 589
    .local v12, "q":I
    const/4 v1, -0x1

    #@38
    if-eq v12, v1, :cond_3

    #@3a
    .line 590
    add-int/lit8 v1, v12, 0x1

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 591
    .local v9, "query":Ljava/lang/String;
    const/4 v1, 0x0

    #@43
    move-object/from16 v0, p5

    #@45
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "query":Ljava/lang/String;
    .end local v12    # "q":I
    :cond_1
    :goto_1
    move-object v1, p0

    #@4a
    move-object v2, p1

    #@4b
    move-object v3, p2

    #@4c
    move-object/from16 v4, p3

    #@4e
    move/from16 v5, p4

    #@50
    move-object/from16 v10, p6

    #@52
    .line 595
    invoke-virtual/range {v1 .. v10}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 566
    return-void

    #@56
    .line 574
    .local v6, "authority":Ljava/lang/String;
    .local v7, "userInfo":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    move-object/from16 v0, p3

    #@5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    const-string/jumbo v2, ":"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    move/from16 v0, p4

    #@6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    .local v6, "authority":Ljava/lang/String;
    goto :goto_0

    #@73
    .line 593
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "userInfo":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .local v9, "query":Ljava/lang/String;
    .restart local v12    # "q":I
    :cond_3
    move-object/from16 v8, p5

    #@75
    .local v8, "path":Ljava/lang/String;
    goto :goto_1
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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
    .line 540
    iget-object v0, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 541
    new-instance v0, Ljava/lang/SecurityException;

    #@6
    const-string/jumbo v1, "handler for url different from this handler"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 545
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    move-object v0, p1

    #@12
    move-object v2, p3

    #@13
    move v3, p4

    #@14
    move-object v4, p5

    #@15
    move-object v5, p6

    #@16
    move-object/from16 v6, p7

    #@18
    move-object/from16 v7, p8

    #@1a
    move-object/from16 v8, p9

    #@1c
    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 539
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    .line 488
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v1, v3, 0x1

    #@a
    .line 489
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-lez v3, :cond_0

    #@1a
    .line 490
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    add-int/lit8 v3, v3, 0x2

    #@24
    add-int/2addr v1, v3

    #@25
    .line 491
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 492
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@32
    move-result v3

    #@33
    add-int/2addr v1, v3

    #@34
    .line 494
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 495
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v3

    #@42
    add-int/lit8 v3, v3, 0x1

    #@44
    add-int/2addr v1, v3

    #@45
    .line 497
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    if-eqz v3, :cond_3

    #@4b
    .line 498
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@52
    move-result v3

    #@53
    add-int/lit8 v3, v3, 0x1

    #@55
    add-int/2addr v1, v3

    #@56
    .line 500
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5b
    .line 501
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 502
    const-string/jumbo v3, ":"

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 503
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 504
    const-string/jumbo v3, "//"

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 505
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 507
    :cond_4
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    .line 508
    .local v0, "fileAndQuery":Ljava/lang/String;
    if-eqz v0, :cond_5

    #@81
    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 511
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    if-eqz v3, :cond_6

    #@8a
    .line 512
    const-string/jumbo v3, "#"

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 513
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 515
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    return-object v3
.end method
