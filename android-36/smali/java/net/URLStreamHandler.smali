.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 395
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 396
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 399
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 395
    :goto_25
    return v0
.end method

.method protected whitelist test-api getDefaultPort()I
    .registers 2

    .line 378
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized whitelist test-api getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "u"    # Ljava/net/URL;

    monitor-enter p0

    .line 469
    :try_start_1
    iget-object v0, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_9

    .line 470
    iget-object v0, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 472
    .end local p0    # "this":Ljava/net/URLStreamHandler;
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2e

    if-eqz v2, :cond_19

    goto :goto_2c

    .line 477
    :cond_19
    :try_start_19
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1d} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1d} :catch_26
    .catchall {:try_start_19 .. :try_end_1d} :catchall_2e

    :try_start_1d
    iput-object v2, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_1f} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1f} :catch_26
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2e

    .line 482
    nop

    .line 484
    :try_start_20
    iget-object v1, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 478
    :catch_24
    move-exception v2

    goto :goto_2a

    .line 480
    :catch_26
    move-exception v2

    .line 481
    .local v2, "se":Ljava/lang/SecurityException;
    monitor-exit p0

    return-object v1

    .line 478
    .end local v2    # "se":Ljava/lang/SecurityException;
    .restart local p0    # "this":Ljava/net/URLStreamHandler;
    :catch_29
    move-exception v2

    .line 479
    .local v2, "ex":Ljava/net/UnknownHostException;
    :goto_2a
    monitor-exit p0

    return-object v1

    .line 474
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    .end local p0    # "this":Ljava/net/URLStreamHandler;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v1

    .line 468
    .end local v0    # "host":Ljava/lang/String;
    .end local p1    # "u":Ljava/net/URL;
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method protected whitelist test-api hashCode(Ljava/net/URL;)I
    .registers 8
    .param p1, "u"    # Ljava/net/URL;

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 413
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 497
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 498
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 500
    :cond_19
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method protected abstract whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 29
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 124
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    .line 129
    .local v7, "port":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "query":Ljava/lang/String;
    move-object v10, v9

    .end local v9    # "query":Ljava/lang/String;
    .local v10, "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "ref":Ljava/lang/String;
    const/4 v11, 0x0

    .line 136
    .local v11, "isRelPath":Z
    const/4 v12, 0x0

    .line 138
    .local v12, "queryOnly":Z
    const/4 v13, 0x0

    .line 143
    .local v13, "querySet":Z
    const/4 v14, -0x1

    if-ge v1, v2, :cond_5b

    .line 144
    const/16 v15, 0x3f

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 145
    .local v15, "queryStart":I
    if-ne v15, v1, :cond_38

    const/16 v17, 0x1

    goto :goto_3a

    :cond_38
    const/16 v17, 0x0

    :goto_3a
    move/from16 v12, v17

    .line 146
    if-eq v15, v14, :cond_55

    if-ge v15, v2, :cond_55

    .line 147
    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 148
    if-le v2, v15, :cond_49

    .line 149
    move v2, v15

    .line 150
    .end local p4    # "limit":I
    .local v2, "limit":I
    :cond_49
    const/4 v14, 0x0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 152
    .end local p2    # "spec":Ljava/lang/String;
    .local v0, "spec":Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v23, v10

    move-object v10, v0

    move-object/from16 v0, v23

    goto :goto_60

    .line 157
    .end local v0    # "spec":Ljava/lang/String;
    .end local v2    # "limit":I
    .end local v15    # "queryStart":I
    .restart local p2    # "spec":Ljava/lang/String;
    .restart local p4    # "limit":I
    :cond_55
    move-object/from16 v23, v10

    move-object v10, v0

    move-object/from16 v0, v23

    goto :goto_60

    .line 143
    :cond_5b
    move-object/from16 v23, v10

    move-object v10, v0

    move-object/from16 v0, v23

    .line 157
    .end local p2    # "spec":Ljava/lang/String;
    .end local p4    # "limit":I
    .local v0, "query":Ljava/lang/String;
    .restart local v2    # "limit":I
    .local v10, "spec":Ljava/lang/String;
    :goto_60
    const/4 v14, 0x0

    .line 165
    .local v14, "i":I
    const/4 v15, 0x0

    .line 167
    .local v15, "isUNCName":Z
    move-object/from16 p2, v0

    .end local v0    # "query":Ljava/lang/String;
    .local p2, "query":Ljava/lang/String;
    if-nez v15, :cond_213

    add-int/lit8 v0, v2, -0x2

    if-gt v1, v0, :cond_213

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_213

    add-int/lit8 v0, p3, 0x1

    .line 168
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_20e

    .line 169
    add-int/lit8 v0, p3, 0x2

    .line 179
    .end local p3    # "start":I
    .local v0, "start":I
    move v1, v0

    move v14, v1

    :goto_7e
    if-ge v14, v2, :cond_8b

    .line 180
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_3ac

    .line 179
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    .line 185
    :sswitch_8a
    nop

    .line 190
    :cond_8b
    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 192
    .end local v6    # "host":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    const/16 v6, 0x40

    move/from16 p3, v0

    .end local v0    # "start":I
    .restart local p3    # "start":I
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 193
    .local v0, "ind":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_b2

    .line 194
    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-eq v0, v6, :cond_a6

    .line 196
    const/4 v5, 0x0

    .line 197
    const/4 v1, 0x0

    goto :goto_b3

    .line 199
    :cond_a6
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 200
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b3

    .line 203
    :cond_b2
    const/4 v5, 0x0

    .line 205
    :goto_b3
    if-eqz v1, :cond_1ca

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v18, v0

    .end local v0    # "ind":I
    .local v18, "ind":I
    if-lez v6, :cond_169

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x5b

    if-ne v0, v6, :cond_169

    .line 209
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v6, v0

    move-object/from16 v20, v3

    .end local v3    # "protocol":Ljava/lang/String;
    .end local v18    # "ind":I
    .local v6, "ind":I
    .local v20, "protocol":Ljava/lang/String;
    const-string v3, "Invalid authority field: "

    move-object/from16 v21, v5

    const/4 v5, 0x2

    .end local v5    # "userInfo":Ljava/lang/String;
    .local v21, "userInfo":Ljava/lang/String;
    if-le v0, v5, :cond_152

    .line 211
    move-object v0, v1

    .line 212
    .local v0, "nhost":Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    move/from16 v22, v7

    const/4 v7, 0x0

    .end local v7    # "port":I
    .local v22, "port":I
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    nop

    .line 214
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 219
    const/4 v5, -0x1

    .line 220
    .end local v22    # "port":I
    .local v5, "port":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v18, v5

    .end local v5    # "port":I
    .local v18, "port":I
    add-int/lit8 v5, v6, 0x1

    if-le v7, v5, :cond_132

    .line 221
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_11b

    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v5, v6, 0x1

    if-le v3, v5, :cond_117

    .line 225
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v6

    .end local v18    # "port":I
    .restart local v5    # "port":I
    goto :goto_135

    .line 224
    .end local v5    # "port":I
    .restart local v18    # "port":I
    :cond_117
    move v0, v6

    move/from16 v5, v18

    goto :goto_135

    .line 228
    :cond_11b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_132
    move v0, v6

    move/from16 v5, v18

    .line 232
    .end local v6    # "ind":I
    .end local v18    # "port":I
    .local v0, "ind":I
    .restart local v5    # "port":I
    :goto_135
    move-object v6, v1

    move v7, v5

    goto/16 :goto_1d7

    .line 215
    .end local v5    # "port":I
    .local v0, "nhost":Ljava/lang/String;
    .restart local v6    # "ind":I
    .restart local v22    # "port":I
    :cond_139
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid host: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    .end local v0    # "nhost":Ljava/lang/String;
    .end local v22    # "port":I
    .restart local v7    # "port":I
    :cond_152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .end local v6    # "ind":I
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v21    # "userInfo":Ljava/lang/String;
    .restart local v3    # "protocol":Ljava/lang/String;
    .local v5, "userInfo":Ljava/lang/String;
    .local v18, "ind":I
    :cond_169
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 237
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v5    # "userInfo":Ljava/lang/String;
    .end local v7    # "port":I
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v21    # "userInfo":Ljava/lang/String;
    .restart local v22    # "port":I
    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 238
    .end local v18    # "ind":I
    .local v0, "ind":I
    const/4 v3, -0x1

    .line 239
    .end local v22    # "port":I
    .local v3, "port":I
    if-ltz v0, :cond_1c4

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    if-le v5, v6, :cond_1ba

    .line 244
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 245
    .local v5, "firstPortChar":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_199

    const/16 v6, 0x39

    if-gt v5, v6, :cond_199

    .line 246
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1bc

    .line 248
    :cond_199
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "port":I
    .local v18, "port":I
    const-string v3, "invalid port: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v7, v0, 0x1

    .line 249
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 241
    .end local v5    # "firstPortChar":C
    .end local v18    # "port":I
    .restart local v3    # "port":I
    :cond_1ba
    move/from16 v18, v3

    .line 253
    :goto_1bc
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move v7, v3

    goto :goto_1d7

    .line 239
    :cond_1c4
    move/from16 v18, v3

    .end local v3    # "port":I
    .restart local v18    # "port":I
    move-object v6, v1

    move/from16 v7, v18

    goto :goto_1d7

    .line 257
    .end local v18    # "port":I
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v21    # "userInfo":Ljava/lang/String;
    .local v3, "protocol":Ljava/lang/String;
    .local v5, "userInfo":Ljava/lang/String;
    .restart local v7    # "port":I
    :cond_1ca
    move/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v22, v7

    .end local v0    # "ind":I
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v5    # "userInfo":Ljava/lang/String;
    .end local v7    # "port":I
    .local v18, "ind":I
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v21    # "userInfo":Ljava/lang/String;
    .restart local v22    # "port":I
    const-string v0, ""

    move-object v6, v0

    move/from16 v0, v18

    .line 259
    .end local v1    # "host":Ljava/lang/String;
    .end local v18    # "ind":I
    .end local v22    # "port":I
    .restart local v0    # "ind":I
    .local v6, "host":Ljava/lang/String;
    .restart local v7    # "port":I
    :goto_1d7
    const/4 v1, -0x1

    if-lt v7, v1, :cond_1f5

    .line 262
    move v1, v14

    .line 269
    .end local p3    # "start":I
    .local v1, "start":I
    const/4 v8, 0x0

    .line 270
    if-nez v13, :cond_1ea

    .line 271
    const/4 v3, 0x0

    move v0, v14

    move v14, v1

    move-object v1, v8

    move-object v8, v3

    move v3, v0

    move-object v5, v4

    move-object v0, v6

    move v4, v7

    move-object/from16 v6, v21

    .end local p2    # "query":Ljava/lang/String;
    .local v3, "query":Ljava/lang/String;
    goto :goto_222

    .line 270
    .end local v3    # "query":Ljava/lang/String;
    .restart local p2    # "query":Ljava/lang/String;
    :cond_1ea
    move-object v5, v4

    move-object v0, v6

    move v4, v7

    move v3, v14

    move-object/from16 v6, v21

    move v14, v1

    move-object v1, v8

    move-object/from16 v8, p2

    goto :goto_222

    .line 260
    .end local v1    # "start":I
    .restart local p3    # "start":I
    :cond_1f5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid port number :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "ind":I
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v21    # "userInfo":Ljava/lang/String;
    .local v3, "protocol":Ljava/lang/String;
    .restart local v5    # "userInfo":Ljava/lang/String;
    :cond_20e
    move-object/from16 v20, v3

    move/from16 v22, v7

    .end local v3    # "protocol":Ljava/lang/String;
    .end local v7    # "port":I
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v22    # "port":I
    goto :goto_217

    .line 167
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v22    # "port":I
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v7    # "port":I
    :cond_213
    move-object/from16 v20, v3

    move/from16 v22, v7

    .line 276
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v7    # "port":I
    .restart local v20    # "protocol":Ljava/lang/String;
    .restart local v22    # "port":I
    :goto_217
    move-object v0, v6

    move-object v1, v8

    move v3, v14

    move-object/from16 v8, p2

    move/from16 v14, p3

    move-object v6, v5

    move-object v5, v4

    move/from16 v4, v22

    .end local v22    # "port":I
    .end local p2    # "query":Ljava/lang/String;
    .end local p3    # "start":I
    .local v0, "host":Ljava/lang/String;
    .local v1, "path":Ljava/lang/String;
    .local v3, "i":I
    .local v4, "port":I
    .local v5, "authority":Ljava/lang/String;
    .local v6, "userInfo":Ljava/lang/String;
    .local v8, "query":Ljava/lang/String;
    .local v14, "start":I
    :goto_222
    if-nez v0, :cond_226

    .line 277
    const-string v0, ""

    .line 281
    :cond_226
    if-ge v14, v2, :cond_2b4

    .line 284
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 p2, v0

    const/16 v0, 0x2f

    .end local v0    # "host":Ljava/lang/String;
    .local p2, "host":Ljava/lang/String;
    if-eq v7, v0, :cond_2a9

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x5c

    if-ne v0, v7, :cond_242

    move/from16 p3, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_2af

    .line 286
    :cond_242
    if-eqz v1, :cond_286

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_286

    .line 287
    const/4 v11, 0x1

    .line 288
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 289
    .local v7, "ind":I
    const-string v0, ""

    .line 290
    .local v0, "seperator":Ljava/lang/String;
    move-object/from16 p3, v0

    const/4 v0, -0x1

    .end local v0    # "seperator":Ljava/lang/String;
    .local p3, "seperator":Ljava/lang/String;
    if-ne v7, v0, :cond_25d

    if-eqz v5, :cond_25d

    .line 291
    const-string v0, "/"

    .end local p3    # "seperator":Ljava/lang/String;
    .restart local v0    # "seperator":Ljava/lang/String;
    goto :goto_25f

    .line 292
    .end local v0    # "seperator":Ljava/lang/String;
    .restart local p3    # "seperator":Ljava/lang/String;
    :cond_25d
    move-object/from16 v0, p3

    .end local p3    # "seperator":Ljava/lang/String;
    .restart local v0    # "seperator":Ljava/lang/String;
    :goto_25f
    move/from16 p3, v3

    .end local v3    # "i":I
    .local p3, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "port":I
    .local v17, "port":I
    add-int/lit8 v4, v7, 0x1

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "authority":Ljava/lang/String;
    .local v18, "authority":Ljava/lang/String;
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    invoke-virtual {v10, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .end local v0    # "seperator":Ljava/lang/String;
    .end local v7    # "ind":I
    goto :goto_2bc

    .line 286
    .end local v17    # "port":I
    .end local v18    # "authority":Ljava/lang/String;
    .end local p3    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "port":I
    .restart local v5    # "authority":Ljava/lang/String;
    :cond_286
    move/from16 p3, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 296
    .end local v3    # "i":I
    .end local v4    # "port":I
    .end local v5    # "authority":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "authority":Ljava/lang/String;
    .restart local p3    # "i":I
    if-eqz v18, :cond_291

    const-string v0, "/"

    goto :goto_293

    :cond_291
    const-string v0, ""

    .line 297
    .restart local v0    # "seperator":Ljava/lang/String;
    :goto_293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2bc

    .line 284
    .end local v0    # "seperator":Ljava/lang/String;
    .end local v17    # "port":I
    .end local v18    # "authority":Ljava/lang/String;
    .end local p3    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "port":I
    .restart local v5    # "authority":Ljava/lang/String;
    :cond_2a9
    move/from16 p3, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 285
    .end local v3    # "i":I
    .end local v4    # "port":I
    .end local v5    # "authority":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "authority":Ljava/lang/String;
    .restart local p3    # "i":I
    :goto_2af
    invoke-virtual {v10, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2bc

    .line 281
    .end local v17    # "port":I
    .end local v18    # "authority":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "i":I
    .local v0, "host":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "port":I
    .restart local v5    # "authority":Ljava/lang/String;
    :cond_2b4
    move-object/from16 p2, v0

    move/from16 p3, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 308
    .end local v0    # "host":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "port":I
    .end local v5    # "authority":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "authority":Ljava/lang/String;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "i":I
    :goto_2bc
    if-nez v1, :cond_2c3

    .line 309
    const-string v1, ""

    move/from16 v3, p3

    goto :goto_2c5

    .line 308
    :cond_2c3
    move/from16 v3, p3

    .line 316
    .end local p3    # "i":I
    .restart local v3    # "i":I
    :goto_2c5
    const-string v0, "/./"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    if-ltz v0, :cond_2eb

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c5

    .line 320
    :cond_2eb
    const/4 v0, 0x0

    .line 321
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_2ec
    const-string v3, "/../"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    if-ltz v4, :cond_333

    .line 326
    if-nez v0, :cond_2ff

    .line 327
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    const/4 v0, 0x0

    goto :goto_2ec

    .line 338
    :cond_2ff
    if-lez v0, :cond_330

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    move v2, v4

    if-ltz v4, :cond_330

    .line 339
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_330

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    const/4 v0, 0x0

    goto :goto_2ec

    .line 343
    :cond_330
    add-int/lit8 v0, v0, 0x3

    goto :goto_2ec

    .line 347
    :cond_333
    :goto_333
    const-string v3, "/.."

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_357

    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 349
    add-int/lit8 v3, v0, -0x1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_352

    .line 350
    add-int/lit8 v3, v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_333

    .line 349
    :cond_352
    move/from16 v19, v0

    move/from16 v21, v2

    goto :goto_35b

    .line 347
    :cond_357
    move/from16 v19, v0

    move/from16 v21, v2

    .line 356
    .end local v0    # "i":I
    .end local v2    # "limit":I
    .local v19, "i":I
    .local v21, "limit":I
    :goto_35b
    const-string v0, "./"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_36e

    .line 357
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    :cond_36e
    const-string v0, "/."

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_384

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_387

    .line 360
    :cond_384
    const/4 v5, 0x0

    const/16 v16, 0x1

    .line 364
    :goto_387
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39b

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_39c

    .line 364
    :cond_39b
    move-object v7, v1

    .line 368
    .end local v1    # "path":Ljava/lang/String;
    .local v7, "path":Ljava/lang/String;
    :goto_39c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v2, v20

    .end local v17    # "port":I
    .end local v18    # "authority":Ljava/lang/String;
    .end local v20    # "protocol":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .local v2, "protocol":Ljava/lang/String;
    .local v3, "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v5    # "authority":Ljava/lang/String;
    invoke-virtual/range {v0 .. v9}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v4    # "port":I
    .end local v5    # "authority":Ljava/lang/String;
    .restart local v17    # "port":I
    .restart local v18    # "authority":Ljava/lang/String;
    return-void

    :sswitch_data_3ac
    .sparse-switch
        0x23 -> :sswitch_8a
        0x2f -> :sswitch_8a
        0x3f -> :sswitch_8a
        0x5c -> :sswitch_8a
    .end sparse-switch
.end method

.method protected whitelist test-api sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 7
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 435
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    .line 436
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 437
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 438
    :cond_1f
    return v2

    .line 441
    :cond_20
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_3f

    .line 442
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 443
    :cond_3e
    return v2

    .line 447
    :cond_3f
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4b

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_51

    :cond_4b
    iget-object v0, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    .line 448
    .local v0, "port1":I
    :goto_51
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v3

    if-eq v3, v1, :cond_5c

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v1

    goto :goto_62

    :cond_5c
    iget-object v1, p2, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v1}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v1

    .line 449
    .local v1, "port2":I
    :goto_62
    if-eq v0, v1, :cond_65

    .line 450
    return v2

    .line 453
    :cond_65
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 454
    return v2

    .line 456
    :cond_6c
    const/4 v2, 0x1

    return v2
.end method

.method protected whitelist test-api setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    move-object/from16 v10, p5

    const/4 v1, 0x0

    .line 601
    .local v1, "authority":Ljava/lang/String;
    const/4 v2, 0x0

    .line 602
    .local v2, "userInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, -0x1

    if-eqz p3, :cond_41

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_41

    .line 603
    if-ne p4, v5, :cond_12

    move-object v6, p3

    goto :goto_29

    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_29
    move-object v1, v6

    .line 604
    const/16 v6, 0x40

    invoke-virtual {p3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 605
    .local v6, "at":I
    if-eq v6, v5, :cond_3e

    .line 606
    invoke-virtual {p3, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 607
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    .end local p3    # "host":Ljava/lang/String;
    .local v0, "host":Ljava/lang/String;
    goto :goto_43

    .line 605
    .end local v0    # "host":Ljava/lang/String;
    .restart local p3    # "host":Ljava/lang/String;
    :cond_3e
    move-object v0, p3

    move-object v6, v2

    goto :goto_43

    .line 614
    .end local v6    # "at":I
    :cond_41
    move-object v0, p3

    move-object v6, v2

    .end local v2    # "userInfo":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .restart local v0    # "host":Ljava/lang/String;
    .local v6, "userInfo":Ljava/lang/String;
    :goto_43
    const/4 v2, 0x0

    .line 615
    .local v2, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 616
    .local v7, "query":Ljava/lang/String;
    if-eqz v10, :cond_61

    .line 617
    const/16 v8, 0x3f

    invoke-virtual {v10, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 618
    .local v8, "q":I
    if-eq v8, v5, :cond_5c

    .line 619
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 620
    invoke-virtual {v10, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v7

    move-object v7, v2

    goto :goto_63

    .line 622
    :cond_5c
    move-object/from16 v2, p5

    move-object v8, v7

    move-object v7, v2

    goto :goto_63

    .line 616
    .end local v8    # "q":I
    :cond_61
    move-object v8, v7

    move-object v7, v2

    .line 624
    .end local v2    # "path":Ljava/lang/String;
    .local v7, "path":Ljava/lang/String;
    .local v8, "query":Ljava/lang/String;
    :goto_63
    move-object v2, p2

    move v4, p4

    move-object/from16 v9, p6

    move-object v3, v0

    move-object v5, v1

    move-object v0, p0

    move-object v1, p1

    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "authority":Ljava/lang/String;
    .local v3, "host":Ljava/lang/String;
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual/range {v0 .. v9}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method protected whitelist test-api setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "userInfo"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    .line 569
    iget-object v1, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    if-ne p0, v1, :cond_17

    .line 574
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 570
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "handler for url different from this handler"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 6
    .param p1, "u"    # Ljava/net/URL;

    .line 513
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 514
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 515
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 516
    :cond_25
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 517
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_34
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 520
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 522
    :cond_45
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 523
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 527
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 531
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_79
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "fileAndQuery":Ljava/lang/String;
    if-eqz v2, :cond_82

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_82
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 540
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
