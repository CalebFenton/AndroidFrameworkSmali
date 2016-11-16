.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static factory:Ljava/net/URLStreamHandlerFactory; = null

.field static handlers:Ljava/util/Hashtable; = null

.field private static final protocolPathProp:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerLock:Ljava/lang/Object;


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field transient handler:Ljava/net/URLStreamHandler;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field transient hostAddress:Ljava/net/InetAddress;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1138
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    #@7
    .line 1139
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    #@e
    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@4
    .line 434
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@9
    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 170
    iput v4, p0, Ljava/net/URL;->port:I

    #@6
    .line 222
    iput v4, p0, Ljava/net/URL;->hashCode:I

    #@8
    .line 373
    if-eqz p5, :cond_0

    #@a
    .line 374
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@d
    move-result-object v1

    #@e
    .line 375
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@10
    .line 377
    invoke-direct {p0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    #@13
    .line 381
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    .line 382
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@19
    .line 383
    if-eqz p2, :cond_4

    #@1b
    .line 389
    const/16 v2, 0x3a

    #@1d
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@20
    move-result v2

    #@21
    if-ltz v2, :cond_1

    #@23
    const-string/jumbo v2, "["

    #@26
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 392
    :cond_1
    :goto_0
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@2e
    .line 394
    if-ge p3, v4, :cond_3

    #@30
    .line 395
    new-instance v2, Ljava/net/MalformedURLException;

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Invalid port number :"

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 390
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "["

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "]"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object p2

    #@65
    goto :goto_0

    #@66
    .line 398
    :cond_3
    iput p3, p0, Ljava/net/URL;->port:I

    #@68
    .line 399
    if-ne p3, v4, :cond_5

    #@6a
    move-object v2, p2

    #@6b
    :goto_1
    iput-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@6d
    .line 402
    :cond_4
    new-instance v0, Ljava/net/Parts;

    #@6f
    invoke-direct {v0, p4, p2}, Ljava/net/Parts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    .line 403
    .local v0, "parts":Ljava/net/Parts;
    invoke-virtual {v0}, Ljava/net/Parts;->getPath()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@78
    .line 404
    invoke-virtual {v0}, Ljava/net/Parts;->getQuery()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@7e
    .line 406
    iget-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@80
    if-eqz v2, :cond_6

    #@82
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    iget-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    const-string/jumbo v3, "?"

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    iget-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@a0
    .line 411
    :goto_2
    invoke-virtual {v0}, Ljava/net/Parts;->getRef()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@a6
    .line 415
    if-nez p5, :cond_7

    #@a8
    .line 416
    invoke-static {p1}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@ab
    move-result-object p5

    #@ac
    if-nez p5, :cond_7

    #@ae
    .line 417
    new-instance v2, Ljava/net/MalformedURLException;

    #@b0
    new-instance v3, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v4, "unknown protocol: "

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v2

    #@c8
    .line 399
    .end local v0    # "parts":Ljava/net/Parts;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v2

    #@d1
    const-string/jumbo v3, ":"

    #@d4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v2

    #@e0
    goto :goto_1

    #@e1
    .line 409
    .restart local v0    # "parts":Ljava/net/Parts;
    :cond_6
    iget-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@e3
    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@e5
    goto :goto_2

    #@e6
    .line 419
    :cond_7
    iput-object p5, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@e8
    .line 372
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@4
    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    #@4
    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 22
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 509
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 170
    const/4 v4, -0x1

    #@4
    move-object/from16 v0, p0

    #@6
    iput v4, v0, Ljava/net/URL;->port:I

    #@8
    .line 222
    const/4 v4, -0x1

    #@9
    move-object/from16 v0, p0

    #@b
    iput v4, v0, Ljava/net/URL;->hashCode:I

    #@d
    .line 512
    move-object/from16 v19, p2

    #@f
    .line 514
    .local v19, "original":Ljava/lang/String;
    const/4 v6, 0x0

    #@10
    .line 515
    .local v6, "start":I
    const/16 v18, 0x0

    #@12
    .line 516
    .local v18, "newProtocol":Ljava/lang/String;
    const/4 v10, 0x0

    #@13
    .line 517
    .local v10, "aRef":Z
    const/16 v16, 0x0

    #@15
    .line 520
    .local v16, "isRelative":Z
    if-eqz p3, :cond_0

    #@17
    .line 521
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1a
    move-result-object v21

    #@1b
    .line 522
    .local v21, "sm":Ljava/lang/SecurityManager;
    if-eqz v21, :cond_0

    #@1d
    .line 523
    move-object/from16 v0, p0

    #@1f
    move-object/from16 v1, v21

    #@21
    invoke-direct {v0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    #@24
    .line 528
    .end local v21    # "sm":Ljava/lang/SecurityManager;
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@27
    move-result v17

    #@28
    .line 529
    .local v17, "limit":I
    :goto_0
    if-lez v17, :cond_1

    #@2a
    add-int/lit8 v4, v17, -0x1

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v4

    #@32
    const/16 v5, 0x20

    #@34
    if-gt v4, v5, :cond_1

    #@36
    .line 530
    add-int/lit8 v17, v17, -0x1

    #@38
    goto :goto_0

    #@39
    .line 532
    :cond_1
    :goto_1
    move/from16 v0, v17

    #@3b
    if-ge v6, v0, :cond_2

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v4

    #@43
    const/16 v5, 0x20

    #@45
    if-gt v4, v5, :cond_2

    #@47
    .line 533
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 536
    :cond_2
    const-string/jumbo v7, "url:"

    #@4d
    const/4 v5, 0x1

    #@4e
    const/4 v8, 0x0

    #@4f
    const/4 v9, 0x4

    #@50
    move-object/from16 v4, p2

    #@52
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_3

    #@58
    .line 537
    add-int/lit8 v6, v6, 0x4

    #@5a
    .line 539
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@5d
    move-result v4

    #@5e
    if-ge v6, v4, :cond_4

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@65
    move-result v4

    #@66
    const/16 v5, 0x23

    #@68
    if-ne v4, v5, :cond_4

    #@6a
    .line 544
    const/4 v10, 0x1

    #@6b
    .line 546
    :cond_4
    move v15, v6

    #@6c
    .local v15, "i":I
    :goto_2
    if-nez v10, :cond_5

    #@6e
    move/from16 v0, v17

    #@70
    if-ge v15, v0, :cond_5

    #@72
    .line 547
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@77
    move-result v11

    #@78
    .local v11, "c":I
    const/16 v4, 0x2f

    #@7a
    if-eq v11, v4, :cond_5

    #@7c
    .line 548
    const/16 v4, 0x3a

    #@7e
    if-ne v11, v4, :cond_a

    #@80
    .line 550
    move-object/from16 v0, p2

    #@82
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@89
    move-result-object v20

    #@8a
    .line 551
    .local v20, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8c
    move-object/from16 v1, v20

    #@8e
    invoke-direct {v0, v1}, Ljava/net/URL;->isValidProtocol(Ljava/lang/String;)Z

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_5

    #@94
    .line 552
    move-object/from16 v18, v20

    #@96
    .line 553
    .local v18, "newProtocol":Ljava/lang/String;
    add-int/lit8 v6, v15, 0x1

    #@98
    .line 560
    .end local v11    # "c":I
    .end local v18    # "newProtocol":Ljava/lang/String;
    .end local v20    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    #@9a
    move-object/from16 v1, p0

    #@9c
    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@9e
    .line 561
    if-eqz p1, :cond_9

    #@a0
    if-eqz v18, :cond_6

    #@a2
    .line 562
    move-object/from16 v0, p1

    #@a4
    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@a6
    move-object/from16 v0, v18

    #@a8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ab
    move-result v4

    #@ac
    .line 561
    if-eqz v4, :cond_9

    #@ae
    .line 565
    :cond_6
    if-nez p3, :cond_7

    #@b0
    .line 566
    move-object/from16 v0, p1

    #@b2
    iget-object v0, v0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@b4
    move-object/from16 p3, v0

    #@b6
    .line 573
    :cond_7
    move-object/from16 v0, p1

    #@b8
    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    #@ba
    if-eqz v4, :cond_8

    #@bc
    move-object/from16 v0, p1

    #@be
    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    #@c0
    const-string/jumbo v5, "/"

    #@c3
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c6
    move-result v4

    #@c7
    if-eqz v4, :cond_8

    #@c9
    .line 574
    const/16 v18, 0x0

    #@cb
    .line 576
    :cond_8
    if-nez v18, :cond_9

    #@cd
    .line 577
    move-object/from16 v0, p1

    #@cf
    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@d1
    move-object/from16 v0, p0

    #@d3
    iput-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@d5
    .line 578
    move-object/from16 v0, p1

    #@d7
    iget-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@d9
    move-object/from16 v0, p0

    #@db
    iput-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@dd
    .line 579
    move-object/from16 v0, p1

    #@df
    iget-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@e5
    .line 580
    move-object/from16 v0, p1

    #@e7
    iget-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iput-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    #@ed
    .line 581
    move-object/from16 v0, p1

    #@ef
    iget v4, v0, Ljava/net/URL;->port:I

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v4, v0, Ljava/net/URL;->port:I

    #@f5
    .line 582
    move-object/from16 v0, p1

    #@f7
    iget-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    #@f9
    move-object/from16 v0, p0

    #@fb
    iput-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    #@fd
    .line 583
    move-object/from16 v0, p1

    #@ff
    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    #@101
    move-object/from16 v0, p0

    #@103
    iput-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    #@105
    .line 584
    const/16 v16, 0x1

    #@107
    .line 588
    :cond_9
    move-object/from16 v0, p0

    #@109
    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@10b
    if-nez v4, :cond_b

    #@10d
    .line 589
    new-instance v4, Ljava/net/MalformedURLException;

    #@10f
    new-instance v5, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v7, "no protocol: "

    #@117
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v5

    #@11b
    move-object/from16 v0, p2

    #@11d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v5

    #@121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v5

    #@125
    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@128
    throw v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@129
    .line 620
    .end local v15    # "i":I
    .end local v17    # "limit":I
    :catch_0
    move-exception v13

    #@12a
    .line 621
    .local v13, "e":Ljava/net/MalformedURLException;
    throw v13

    #@12b
    .line 547
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .restart local v11    # "c":I
    .restart local v15    # "i":I
    .restart local v17    # "limit":I
    .local v18, "newProtocol":Ljava/lang/String;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    #@12d
    goto/16 :goto_2

    #@12f
    .line 594
    .end local v11    # "c":I
    .end local v18    # "newProtocol":Ljava/lang/String;
    :cond_b
    if-nez p3, :cond_c

    #@131
    .line 595
    :try_start_1
    move-object/from16 v0, p0

    #@133
    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@135
    invoke-static {v4}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@138
    move-result-object p3

    #@139
    if-nez p3, :cond_c

    #@13b
    .line 596
    new-instance v4, Ljava/net/MalformedURLException;

    #@13d
    new-instance v5, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v7, "unknown protocol: "

    #@145
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v5

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v7, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@14d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v5

    #@151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v5

    #@155
    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@158
    throw v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@159
    .line 622
    .end local v15    # "i":I
    .end local v17    # "limit":I
    :catch_1
    move-exception v12

    #@15a
    .line 623
    .local v12, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/net/MalformedURLException;

    #@15c
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@15f
    move-result-object v4

    #@160
    invoke-direct {v14, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@163
    .line 624
    .local v14, "exception":Ljava/net/MalformedURLException;
    invoke-virtual {v14, v12}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@166
    .line 625
    throw v14

    #@167
    .line 599
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "exception":Ljava/net/MalformedURLException;
    .restart local v15    # "i":I
    .restart local v17    # "limit":I
    :cond_c
    :try_start_2
    move-object/from16 v0, p3

    #@169
    move-object/from16 v1, p0

    #@16b
    iput-object v0, v1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@16d
    .line 601
    const/16 v4, 0x23

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    #@174
    move-result v15

    #@175
    .line 602
    if-ltz v15, :cond_d

    #@177
    .line 603
    add-int/lit8 v4, v15, 0x1

    #@179
    move-object/from16 v0, p2

    #@17b
    move/from16 v1, v17

    #@17d
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    move-object/from16 v0, p0

    #@183
    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@185
    .line 604
    move/from16 v17, v15

    #@187
    .line 611
    :cond_d
    if-eqz v16, :cond_e

    #@189
    move/from16 v0, v17

    #@18b
    if-ne v6, v0, :cond_e

    #@18d
    .line 612
    move-object/from16 v0, p1

    #@18f
    iget-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    #@191
    move-object/from16 v0, p0

    #@193
    iput-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    #@195
    .line 613
    move-object/from16 v0, p0

    #@197
    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@199
    if-nez v4, :cond_e

    #@19b
    .line 614
    move-object/from16 v0, p1

    #@19d
    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@1a3
    .line 618
    :cond_e
    move-object/from16 v0, p3

    #@1a5
    move-object/from16 v1, p0

    #@1a7
    move-object/from16 v2, p2

    #@1a9
    move/from16 v3, v17

    #@1ab
    invoke-virtual {v0, v1, v2, v6, v3}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@1ae
    .line 510
    return-void
.end method

.method private checkSpecifyHandler(Ljava/lang/SecurityManager;)V
    .locals 1
    .param p1, "sm"    # Ljava/lang/SecurityManager;

    #@0
    .prologue
    .line 653
    sget-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@5
    .line 652
    return-void
.end method

.method static getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 16
    .param p0, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1147
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v8

    #@8
    check-cast v8, Ljava/net/URLStreamHandler;

    #@a
    .line 1148
    .local v8, "handler":Ljava/net/URLStreamHandler;
    if-nez v8, :cond_d

    #@c
    .line 1150
    const/4 v1, 0x0

    #@d
    .line 1153
    .local v1, "checkedWithFactory":Z
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    #@f
    if-eqz v14, :cond_0

    #@11
    .line 1154
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@18
    move-result-object v8

    #@19
    .line 1155
    const/4 v1, 0x1

    #@1a
    .line 1159
    :cond_0
    if-nez v8, :cond_3

    #@1c
    .line 1160
    const-string/jumbo v14, "java.protocol.handler.pkgs"

    #@1f
    const-string/jumbo v15, ""

    #@22
    invoke-static {v14, v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v13

    #@26
    .line 1161
    .local v13, "packagePrefixList":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    #@28
    const-string/jumbo v14, "|"

    #@2b
    invoke-direct {v12, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 1163
    .local v12, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    if-nez v8, :cond_3

    #@30
    .line 1164
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@33
    move-result v14

    #@34
    .line 1163
    if-eqz v14, :cond_3

    #@36
    .line 1166
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@39
    move-result-object v14

    #@3a
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    .line 1168
    .local v11, "packagePrefix":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v14

    #@47
    const-string/jumbo v15, "."

    #@4a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v14

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v14

    #@54
    const-string/jumbo v15, ".Handler"

    #@57
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_2

    #@5e
    move-result-object v4

    #@5f
    .line 1169
    .local v4, "clsName":Ljava/lang/String;
    const/4 v3, 0x0

    #@60
    .line 1171
    .local v3, "cls":Ljava/lang/Class;
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@63
    move-result-object v2

    #@64
    .line 1172
    .local v2, "cl":Ljava/lang/ClassLoader;
    const/4 v14, 0x1

    #@65
    invoke-static {v4, v14, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2

    #@68
    move-result-object v3

    #@69
    .line 1179
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "cls":Ljava/lang/Class;
    :cond_2
    :goto_1
    if-eqz v3, :cond_1

    #@6b
    .line 1181
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@6e
    move-result-object v14

    #@6f
    move-object v0, v14

    #@70
    check-cast v0, Ljava/net/URLStreamHandler;

    #@72
    move-object v8, v0

    #@73
    .line 1180
    goto :goto_0

    #@74
    .line 1173
    .restart local v3    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v6

    #@75
    .line 1174
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@78
    move-result-object v14

    #@79
    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7c
    move-result-object v5

    #@7d
    .line 1175
    .local v5, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v5, :cond_2

    #@7f
    .line 1176
    const/4 v14, 0x1

    #@80
    invoke-static {v4, v14, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    #@83
    move-result-object v3

    #@84
    .local v3, "cls":Ljava/lang/Class;
    goto :goto_1

    #@85
    .line 1190
    .end local v3    # "cls":Ljava/lang/Class;
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "contextLoader":Ljava/lang/ClassLoader;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v11    # "packagePrefix":Ljava/lang/String;
    .end local v12    # "packagePrefixIter":Ljava/util/StringTokenizer;
    .end local v13    # "packagePrefixList":Ljava/lang/String;
    :cond_3
    if-nez v8, :cond_4

    #@87
    .line 1192
    :try_start_3
    const-string/jumbo v14, "file"

    #@8a
    move-object/from16 v0, p0

    #@8c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v14

    #@90
    if-eqz v14, :cond_5

    #@92
    .line 1194
    const-string/jumbo v14, "sun.net.www.protocol.file.Handler"

    #@95
    .line 1193
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@98
    move-result-object v14

    #@99
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@9c
    move-result-object v8

    #@9d
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@9f
    .line 1213
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    :cond_4
    :goto_2
    sget-object v15, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    #@a1
    monitor-enter v15

    #@a2
    .line 1215
    const/4 v9, 0x0

    #@a3
    .line 1219
    .local v9, "handler2":Ljava/net/URLStreamHandler;
    :try_start_4
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v14

    #@ab
    move-object v0, v14

    #@ac
    check-cast v0, Ljava/net/URLStreamHandler;

    #@ae
    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@af
    .line 1221
    .local v9, "handler2":Ljava/net/URLStreamHandler;
    if-eqz v9, :cond_9

    #@b1
    monitor-exit v15

    #@b2
    .line 1222
    return-object v9

    #@b3
    .line 1195
    .end local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_5
    :try_start_5
    const-string/jumbo v14, "ftp"

    #@b6
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v14

    #@bc
    if-eqz v14, :cond_6

    #@be
    .line 1197
    const-string/jumbo v14, "sun.net.www.protocol.ftp.Handler"

    #@c1
    .line 1196
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@c4
    move-result-object v14

    #@c5
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@c8
    move-result-object v8

    #@c9
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;

    #@cb
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_2

    #@cc
    .line 1198
    :cond_6
    const-string/jumbo v14, "jar"

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v14

    #@d5
    if-eqz v14, :cond_7

    #@d7
    .line 1200
    const-string/jumbo v14, "sun.net.www.protocol.jar.Handler"

    #@da
    .line 1199
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@dd
    move-result-object v14

    #@de
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@e1
    move-result-object v8

    #@e2
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;

    #@e4
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_2

    #@e5
    .line 1201
    :cond_7
    const-string/jumbo v14, "http"

    #@e8
    move-object/from16 v0, p0

    #@ea
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v14

    #@ee
    if-eqz v14, :cond_8

    #@f0
    .line 1203
    const-string/jumbo v14, "com.android.okhttp.HttpHandler"

    #@f3
    .line 1202
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@f6
    move-result-object v14

    #@f7
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@fa
    move-result-object v8

    #@fb
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;

    #@fd
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_2

    #@fe
    .line 1204
    :cond_8
    const-string/jumbo v14, "https"

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v14

    #@107
    if-eqz v14, :cond_4

    #@109
    .line 1206
    const-string/jumbo v14, "com.android.okhttp.HttpsHandler"

    #@10c
    .line 1205
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10f
    move-result-object v14

    #@110
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@113
    move-result-object v8

    #@114
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    check-cast v8, Ljava/net/URLStreamHandler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@116
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    goto :goto_2

    #@117
    .line 1208
    .end local v8    # "handler":Ljava/net/URLStreamHandler;
    :catch_1
    move-exception v7

    #@118
    .line 1209
    .local v7, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/AssertionError;

    #@11a
    invoke-direct {v14, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11d
    throw v14

    #@11e
    .line 1227
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "handler":Ljava/net/URLStreamHandler;
    .restart local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_9
    if-nez v1, :cond_a

    #@120
    :try_start_6
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    #@122
    if-eqz v14, :cond_a

    #@124
    .line 1228
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    #@126
    move-object/from16 v0, p0

    #@128
    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@12b
    move-result-object v9

    #@12c
    .line 1231
    :cond_a
    if-eqz v9, :cond_b

    #@12e
    .line 1235
    move-object v8, v9

    #@12f
    .line 1239
    :cond_b
    if-eqz v8, :cond_c

    #@131
    .line 1240
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    #@133
    move-object/from16 v0, p0

    #@135
    invoke-virtual {v14, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@138
    :cond_c
    monitor-exit v15

    #@139
    .line 1246
    .end local v1    # "checkedWithFactory":Z
    .end local v9    # "handler2":Ljava/net/URLStreamHandler;
    :cond_d
    return-object v8

    #@13a
    .line 1213
    .restart local v1    # "checkedWithFactory":Z
    :catchall_0
    move-exception v14

    #@13b
    monitor-exit v15

    #@13c
    throw v14

    #@13d
    .line 1183
    .restart local v11    # "packagePrefix":Ljava/lang/String;
    .restart local v12    # "packagePrefixIter":Ljava/util/StringTokenizer;
    .restart local v13    # "packagePrefixList":Ljava/lang/String;
    :catch_2
    move-exception v10

    #@13e
    .local v10, "ignored":Ljava/lang/ReflectiveOperationException;
    goto/16 :goto_0
.end method

.method private isValidProtocol(Ljava/lang/String;)Z
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 633
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 634
    .local v2, "len":I
    if-ge v2, v5, :cond_0

    #@8
    .line 635
    return v4

    #@9
    .line 636
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 637
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_1

    #@13
    .line 638
    return v4

    #@14
    .line 639
    :cond_1
    const/4 v1, 0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@17
    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 641
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    const/16 v3, 0x2e

    #@23
    if-eq v0, v3, :cond_2

    #@25
    const/16 v3, 0x2b

    #@27
    if-eq v0, v3, :cond_2

    #@29
    .line 642
    const/16 v3, 0x2d

    #@2b
    if-eq v0, v3, :cond_2

    #@2d
    .line 643
    return v4

    #@2e
    .line 639
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 646
    :cond_3
    return v5
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 1274
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@5
    .line 1275
    iget-object v3, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@7
    invoke-static {v3}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1276
    new-instance v3, Ljava/io/IOException;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "unknown protocol: "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit p0

    #@2d
    throw v3

    #@2e
    .line 1280
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@30
    if-nez v3, :cond_6

    #@32
    .line 1281
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@34
    if-eqz v3, :cond_5

    #@36
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3b
    move-result v3

    #@3c
    if-lez v3, :cond_5

    #@3e
    .line 1282
    :cond_1
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@40
    if-nez v3, :cond_2

    #@42
    .line 1283
    const-string/jumbo v3, ""

    #@45
    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@47
    .line 1284
    :cond_2
    iget v3, p0, Ljava/net/URL;->port:I

    #@49
    if-ne v3, v5, :cond_7

    #@4b
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@4d
    :goto_0
    iput-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@4f
    .line 1287
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@51
    const/16 v4, 0x40

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@56
    move-result v0

    #@57
    .line 1288
    .local v0, "at":I
    if-eq v0, v5, :cond_3

    #@59
    .line 1289
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@5b
    const/4 v4, 0x0

    #@5c
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@62
    .line 1290
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@64
    add-int/lit8 v4, v0, 0x1

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@6c
    .line 1300
    .end local v0    # "at":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    #@6d
    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@6f
    .line 1301
    const/4 v3, 0x0

    #@70
    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@72
    .line 1302
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@74
    if-eqz v3, :cond_4

    #@76
    .line 1304
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@78
    const/16 v4, 0x3f

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@7d
    move-result v2

    #@7e
    .line 1305
    .local v2, "q":I
    if-eq v2, v5, :cond_8

    #@80
    .line 1306
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@82
    add-int/lit8 v4, v2, 0x1

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@8a
    .line 1307
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@8c
    const/4 v4, 0x0

    #@8d
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@93
    .line 1311
    .end local v2    # "q":I
    :cond_4
    :goto_2
    const/4 v3, -0x1

    #@94
    iput v3, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@96
    monitor-exit p0

    #@97
    .line 1272
    return-void

    #@98
    .line 1281
    :cond_5
    :try_start_2
    iget v3, p0, Ljava/net/URL;->port:I

    #@9a
    if-ne v3, v5, :cond_1

    #@9c
    .line 1292
    :cond_6
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@9e
    if-eqz v3, :cond_3

    #@a0
    .line 1294
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@a2
    const/16 v4, 0x40

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@a7
    move-result v1

    #@a8
    .line 1295
    .local v1, "ind":I
    if-eq v1, v5, :cond_3

    #@aa
    .line 1296
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@ac
    const/4 v4, 0x0

    #@ad
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@b3
    goto :goto_1

    #@b4
    .line 1284
    .end local v1    # "ind":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    iget-object v4, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    const-string/jumbo v4, ":"

    #@c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    iget v4, p0, Ljava/net/URL;->port:I

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v3

    #@d0
    goto/16 :goto_0

    #@d2
    .line 1309
    .restart local v2    # "q":I
    :cond_8
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@d4
    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d6
    goto :goto_2
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/URLStreamHandlerFactory;

    #@0
    .prologue
    .line 1122
    sget-object v2, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1123
    :try_start_0
    sget-object v1, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1124
    new-instance v1, Ljava/lang/Error;

    #@9
    const-string/jumbo v3, "factory already defined"

    #@c
    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1122
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 1126
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@16
    move-result-object v0

    #@17
    .line 1127
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@19
    .line 1128
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@1c
    .line 1130
    :cond_1
    sget-object v1, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    #@1e
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    #@21
    .line 1131
    sput-object p0, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 1121
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1263
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 1261
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 878
    instance-of v1, p1, Ljava/net/URL;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 879
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 880
    check-cast v0, Ljava/net/URL;

    #@9
    .line 882
    .local v0, "u2":Ljava/net/URL;
    iget-object v1, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@b
    invoke-virtual {v1, p0, v0}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1071
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 786
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 807
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 773
    iget v0, p0, Ljava/net/URL;->port:I

    #@2
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 894
    :try_start_0
    iget v0, p0, Ljava/net/URL;->hashCode:I

    #@3
    const/4 v1, -0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 895
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 897
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@c
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Ljava/net/URL;->hashCode:I

    #@12
    .line 898
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 5
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1025
    if-nez p1, :cond_0

    #@2
    .line 1026
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "proxy can not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1030
    :cond_0
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@d
    if-ne p1, v3, :cond_2

    #@f
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@11
    .line 1031
    .local v1, "p":Ljava/net/Proxy;
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@14
    move-result-object v2

    #@15
    .line 1032
    .local v2, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@18
    move-result-object v3

    #@19
    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@1b
    if-eq v3, v4, :cond_1

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 1033
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/net/InetSocketAddress;

    #@25
    .line 1034
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 1035
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@32
    move-result v4

    #@33
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@36
    .line 1040
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_1
    :goto_1
    iget-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@38
    invoke-virtual {v3, p0, v1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@3b
    move-result-object v3

    #@3c
    return-object v3

    #@3d
    .line 1030
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    #@40
    move-result-object v1

    #@41
    .restart local v1    # "p":Ljava/net/Proxy;
    goto :goto_0

    #@42
    .line 1037
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 1038
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@4d
    move-result v4

    #@4e
    .line 1037
    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@51
    goto :goto_1
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1057
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1
    .param p1, "other"    # Ljava/net/URL;

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 669
    monitor-enter p0

    #@2
    .line 670
    :try_start_0
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@4
    .line 671
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@6
    .line 672
    if-ne p3, v3, :cond_0

    #@8
    .end local p2    # "host":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@a
    .line 673
    iput p3, p0, Ljava/net/URL;->port:I

    #@c
    .line 674
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@e
    .line 675
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@10
    .line 678
    const/4 v1, -0x1

    #@11
    iput v1, p0, Ljava/net/URL;->hashCode:I

    #@13
    .line 679
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    #@16
    .line 680
    const/16 v1, 0x3f

    #@18
    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@1b
    move-result v0

    #@1c
    .line 681
    .local v0, "q":I
    if-eq v0, v3, :cond_1

    #@1e
    .line 682
    add-int/lit8 v1, v0, 0x1

    #@20
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@26
    .line 683
    const/4 v1, 0x0

    #@27
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :goto_1
    monitor-exit p0

    #@2e
    .line 668
    return-void

    #@2f
    .line 672
    .end local v0    # "q":I
    .restart local p2    # "host":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, ":"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p2

    #@47
    goto :goto_0

    #@48
    .line 685
    .end local p2    # "host":Ljava/lang/String;
    .restart local v0    # "q":I
    :cond_1
    iput-object p4, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 669
    .end local v0    # "q":I
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit p0

    #@4d
    throw v1
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "userInfo"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 707
    monitor-enter p0

    #@1
    .line 708
    :try_start_0
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@3
    .line 709
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@5
    .line 710
    iput p3, p0, Ljava/net/URL;->port:I

    #@7
    .line 711
    if-eqz p7, :cond_0

    #@9
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    :cond_0
    move-object v0, p6

    #@10
    :goto_0
    iput-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@12
    .line 712
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@14
    .line 713
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@16
    .line 714
    iput-object p8, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@18
    .line 717
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljava/net/URL;->hashCode:I

    #@1b
    .line 718
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    #@1e
    .line 719
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@20
    .line 720
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 706
    return-void

    #@24
    .line 711
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "?"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result-object v0

    #@3c
    goto :goto_0

    #@3d
    .line 707
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit p0

    #@3f
    throw v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 941
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 927
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 958
    new-instance v0, Ljava/net/URI;

    #@2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method
