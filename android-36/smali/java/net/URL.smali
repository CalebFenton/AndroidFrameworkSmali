.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o BUILTIN_HANDLER_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static greylist factory:Ljava/net/URLStreamHandlerFactory; = null

.field static greylist handlers:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o protocolPathProp:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static greylist-max-o streamHandlerLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o authority:Ljava/lang/String;

.field private greylist-max-o file:Ljava/lang/String;

.field transient greylist handler:Ljava/net/URLStreamHandler;

.field private greylist-max-o hashCode:I

.field private greylist-max-o host:Ljava/lang/String;

.field transient greylist-max-o hostAddress:Ljava/net/InetAddress;

.field private transient greylist-max-o path:Ljava/lang/String;

.field private greylist-max-o port:I

.field private greylist-max-r protocol:Ljava/lang/String;

.field private transient greylist-max-o query:Ljava/lang/String;

.field private greylist-max-o ref:Ljava/lang/String;

.field private transient greylist-max-o tempState:Ljava/net/UrlDeserializedState;

.field private transient greylist-max-o userInfo:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 148
    invoke-static {}, Ljava/net/URL;->createBuiltinHandlerClassNames()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/net/URL;->BUILTIN_HANDLER_CLASS_NAMES:Ljava/util/Set;

    .line 1153
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    .line 1154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    .line 1325
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "protocol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "host"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "port"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "authority"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "file"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ref"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/URL;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 316
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "file":Ljava/lang/String;
    .local v1, "protocol":Ljava/lang/String;
    .local v2, "host":Ljava/lang/String;
    .local v3, "port":I
    .local v4, "file":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 317
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 10
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

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->port:I

    .line 231
    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 383
    if-eqz p5, :cond_13

    .line 384
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 385
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_13

    .line 387
    invoke-direct {p0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    .line 391
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 392
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 393
    if-eqz p2, :cond_7f

    .line 399
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_42

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 402
    :cond_42
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 404
    if-lt p3, v0, :cond_66

    .line 408
    iput p3, p0, Ljava/net/URL;->port:I

    .line 409
    if-ne p3, v0, :cond_4c

    move-object v0, p2

    goto :goto_63

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_63
    iput-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    goto :goto_7f

    .line 405
    :cond_66
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port number :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_7f
    :goto_7f
    new-instance v0, Ljava/net/Parts;

    invoke-direct {v0, p4, p2}, Ljava/net/Parts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v0, "parts":Ljava/net/Parts;
    invoke-virtual {v0}, Ljava/net/Parts;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 416
    invoke-virtual {v0}, Ljava/net/Parts;->getQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 418
    iget-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    if-eqz v1, :cond_b2

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_b6

    .line 421
    :cond_b2
    iget-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 423
    :goto_b6
    invoke-virtual {v0}, Ljava/net/Parts;->getRef()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 427
    if-nez p5, :cond_df

    .line 428
    invoke-static {p1}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    move-object p5, v1

    if-eqz v1, :cond_c6

    goto :goto_df

    .line 429
    :cond_c6
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_df
    :goto_df
    iput-object p5, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 432
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 339
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 499
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 16
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->port:I

    .line 231
    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 524
    move-object v1, p2

    .line 526
    .local v1, "original":Ljava/lang/String;
    const/4 v2, 0x0

    .line 527
    .local v2, "start":I
    const/4 v3, 0x0

    .line 528
    .local v3, "newProtocol":Ljava/lang/String;
    const/4 v4, 0x0

    .line 529
    .local v4, "aRef":Z
    const/4 v5, 0x0

    .line 532
    .local v5, "isRelative":Z
    if-eqz p3, :cond_18

    .line 533
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 534
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_18

    .line 535
    invoke-direct {p0, v0}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    .line 540
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_18
    :try_start_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_1c} :catch_15c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_14d

    .line 541
    .local v0, "limit":I
    :goto_1c
    const/16 v6, 0x20

    if-lez v0, :cond_33

    add-int/lit8 v7, v0, -0x1

    :try_start_22
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_26} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_2b

    if-gt v7, v6, :cond_33

    .line 542
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 634
    .end local v0    # "limit":I
    :catch_2b
    move-exception v0

    move-object v6, p2

    goto/16 :goto_14f

    .line 632
    :catch_2f
    move-exception v0

    move-object v6, p2

    goto/16 :goto_15e

    .line 544
    .restart local v0    # "limit":I
    :cond_33
    move v8, v2

    .end local v2    # "start":I
    .local v8, "start":I
    :goto_34
    if-ge v8, v0, :cond_49

    :try_start_36
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_3a
    .catch Ljava/net/MalformedURLException; {:try_start_36 .. :try_end_3a} :catch_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3f

    if-gt v2, v6, :cond_49

    .line 545
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 634
    .end local v0    # "limit":I
    :catch_3f
    move-exception v0

    move-object v6, p2

    move v2, v8

    goto/16 :goto_14f

    .line 632
    :catch_44
    move-exception v0

    move-object v6, p2

    move v2, v8

    goto/16 :goto_15e

    .line 548
    .restart local v0    # "limit":I
    :cond_49
    :try_start_49
    const-string v9, "url:"
    :try_end_4b
    .catch Ljava/net/MalformedURLException; {:try_start_49 .. :try_end_4b} :catch_149
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4b} :catch_145

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x1

    move-object v6, p2

    .end local p2    # "spec":Ljava/lang/String;
    .local v6, "spec":Ljava/lang/String;
    :try_start_4f
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2
    :try_end_53
    .catch Ljava/net/MalformedURLException; {:try_start_4f .. :try_end_53} :catch_142
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_13f

    if-eqz p2, :cond_59

    .line 549
    add-int/lit8 v8, v8, 0x4

    move v2, v8

    goto :goto_5a

    .line 548
    :cond_59
    move v2, v8

    .line 551
    .end local v8    # "start":I
    .restart local v2    # "start":I
    :goto_5a
    :try_start_5a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v7, 0x23

    if-ge v2, p2, :cond_69

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v7, :cond_69

    .line 556
    const/4 v4, 0x1

    .line 558
    :cond_69
    move p2, v2

    .local p2, "i":I
    :goto_6a
    if-nez v4, :cond_90

    if-ge p2, v0, :cond_90

    .line 559
    invoke-virtual {v6, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "c":I
    const/16 v10, 0x2f

    if-eq v8, v10, :cond_90

    .line 560
    const/16 v8, 0x3a

    if-ne v9, v8, :cond_8d

    .line 562
    invoke-virtual {v6, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 563
    .local v8, "s":Ljava/lang/String;
    invoke-direct {p0, v8}, Ljava/net/URL;->isValidProtocol(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_90

    .line 564
    move-object v3, v8

    .line 565
    add-int/lit8 v2, p2, 0x1

    goto :goto_90

    .line 559
    .end local v8    # "s":Ljava/lang/String;
    :cond_8d
    add-int/lit8 p2, p2, 0x1

    goto :goto_6a

    .line 572
    .end local v9    # "c":I
    :cond_90
    :goto_90
    iput-object v3, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 573
    if-eqz p1, :cond_d1

    if-eqz v3, :cond_9e

    iget-object v8, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 574
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 577
    :cond_9e
    if-nez p3, :cond_a3

    .line 578
    iget-object v8, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    move-object p3, v8

    .line 585
    :cond_a3
    iget-object v8, p1, Ljava/net/URL;->path:Ljava/lang/String;

    if-eqz v8, :cond_b2

    iget-object v8, p1, Ljava/net/URL;->path:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 586
    const/4 v3, 0x0

    .line 588
    :cond_b2
    if-nez v3, :cond_d1

    .line 589
    iget-object v8, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 590
    iget-object v8, p1, Ljava/net/URL;->authority:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 591
    iget-object v8, p1, Ljava/net/URL;->userInfo:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 592
    iget-object v8, p1, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 593
    iget v8, p1, Ljava/net/URL;->port:I

    iput v8, p0, Ljava/net/URL;->port:I

    .line 594
    iget-object v8, p1, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 595
    iget-object v8, p1, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object v8, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 596
    const/4 v5, 0x1

    .line 600
    :cond_d1
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v8, :cond_122

    .line 606
    if-nez p3, :cond_fc

    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 607
    invoke-static {v8}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v8

    move-object p3, v8

    if-eqz v8, :cond_e1

    goto :goto_fc

    .line 608
    :cond_e1
    new-instance v7, Ljava/net/MalformedURLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown protocol: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .end local v1    # "original":Ljava/lang/String;
    .end local v2    # "start":I
    .end local v3    # "newProtocol":Ljava/lang/String;
    .end local v4    # "aRef":Z
    .end local v5    # "isRelative":Z
    .end local v6    # "spec":Ljava/lang/String;
    .end local p0    # "this":Ljava/net/URL;
    .end local p1    # "context":Ljava/net/URL;
    .end local p3    # "handler":Ljava/net/URLStreamHandler;
    throw v7

    .line 611
    .restart local v1    # "original":Ljava/lang/String;
    .restart local v2    # "start":I
    .restart local v3    # "newProtocol":Ljava/lang/String;
    .restart local v4    # "aRef":Z
    .restart local v5    # "isRelative":Z
    .restart local v6    # "spec":Ljava/lang/String;
    .restart local p0    # "this":Ljava/net/URL;
    .restart local p1    # "context":Ljava/net/URL;
    .restart local p3    # "handler":Ljava/net/URLStreamHandler;
    :cond_fc
    :goto_fc
    iput-object p3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 613
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 614
    .end local p2    # "i":I
    .local v7, "i":I
    if-ltz v7, :cond_10d

    .line 615
    add-int/lit8 p2, v7, 0x1

    invoke-virtual {v6, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 616
    move v0, v7

    .line 623
    :cond_10d
    if-eqz v5, :cond_11d

    if-ne v2, v0, :cond_11d

    .line 624
    iget-object p2, p1, Ljava/net/URL;->query:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 625
    iget-object p2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    if-nez p2, :cond_11d

    .line 626
    iget-object p2, p1, Ljava/net/URL;->ref:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 630
    :cond_11d
    invoke-virtual {p3, p0, v6, v2, v0}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 638
    nop

    .line 639
    return-void

    .line 601
    .end local v7    # "i":I
    .restart local p2    # "i":I
    :cond_122
    new-instance v7, Ljava/net/MalformedURLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no protocol: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .end local v1    # "original":Ljava/lang/String;
    .end local v2    # "start":I
    .end local v3    # "newProtocol":Ljava/lang/String;
    .end local v4    # "aRef":Z
    .end local v5    # "isRelative":Z
    .end local v6    # "spec":Ljava/lang/String;
    .end local p0    # "this":Ljava/net/URL;
    .end local p1    # "context":Ljava/net/URL;
    .end local p3    # "handler":Ljava/net/URLStreamHandler;
    throw v7
    :try_end_13b
    .catch Ljava/net/MalformedURLException; {:try_start_5a .. :try_end_13b} :catch_13d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_13b} :catch_13b

    .line 634
    .end local v0    # "limit":I
    .end local p2    # "i":I
    .restart local v1    # "original":Ljava/lang/String;
    .restart local v2    # "start":I
    .restart local v3    # "newProtocol":Ljava/lang/String;
    .restart local v4    # "aRef":Z
    .restart local v5    # "isRelative":Z
    .restart local v6    # "spec":Ljava/lang/String;
    .restart local p0    # "this":Ljava/net/URL;
    .restart local p1    # "context":Ljava/net/URL;
    .restart local p3    # "handler":Ljava/net/URLStreamHandler;
    :catch_13b
    move-exception v0

    goto :goto_14f

    .line 632
    :catch_13d
    move-exception v0

    goto :goto_15e

    .line 634
    .end local v2    # "start":I
    .local v8, "start":I
    :catch_13f
    move-exception v0

    move v2, v8

    goto :goto_14f

    .line 632
    :catch_142
    move-exception v0

    move v2, v8

    goto :goto_15e

    .line 634
    .end local v6    # "spec":Ljava/lang/String;
    .local p2, "spec":Ljava/lang/String;
    :catch_145
    move-exception v0

    move-object v6, p2

    move v2, v8

    .end local p2    # "spec":Ljava/lang/String;
    .restart local v6    # "spec":Ljava/lang/String;
    goto :goto_14f

    .line 632
    .end local v6    # "spec":Ljava/lang/String;
    .restart local p2    # "spec":Ljava/lang/String;
    :catch_149
    move-exception v0

    move-object v6, p2

    move v2, v8

    .end local p2    # "spec":Ljava/lang/String;
    .restart local v6    # "spec":Ljava/lang/String;
    goto :goto_15e

    .line 634
    .end local v6    # "spec":Ljava/lang/String;
    .end local v8    # "start":I
    .restart local v2    # "start":I
    .restart local p2    # "spec":Ljava/lang/String;
    :catch_14d
    move-exception v0

    move-object v6, p2

    .line 635
    .end local p2    # "spec":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "spec":Ljava/lang/String;
    :goto_14f
    new-instance p2, Ljava/net/MalformedURLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 636
    .local p2, "exception":Ljava/net/MalformedURLException;
    invoke-virtual {p2, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 637
    throw p2

    .line 632
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "spec":Ljava/lang/String;
    .local p2, "spec":Ljava/lang/String;
    :catch_15c
    move-exception v0

    move-object v6, p2

    .line 633
    .end local p2    # "spec":Ljava/lang/String;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "spec":Ljava/lang/String;
    :goto_15e
    throw v0
.end method

.method private greylist-max-o checkSpecifyHandler(Ljava/lang/SecurityManager;)V
    .registers 3
    .param p1, "sm"    # Ljava/lang/SecurityManager;

    .line 665
    sget-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {p1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 666
    return-void
.end method

.method private static greylist-max-o createBuiltinHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, "handler":Ljava/net/URLStreamHandler;
    const-string v1, "file"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1281
    new-instance v1, Lsun/net/www/protocol/file/Handler;

    invoke-direct {v1}, Lsun/net/www/protocol/file/Handler;-><init>()V

    move-object v0, v1

    goto :goto_5b

    .line 1282
    :cond_10
    const-string v1, "ftp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1283
    new-instance v1, Lsun/net/www/protocol/ftp/Handler;

    invoke-direct {v1}, Lsun/net/www/protocol/ftp/Handler;-><init>()V

    move-object v0, v1

    goto :goto_5b

    .line 1284
    :cond_1f
    const-string v1, "jar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1285
    new-instance v1, Lsun/net/www/protocol/jar/Handler;

    invoke-direct {v1}, Lsun/net/www/protocol/jar/Handler;-><init>()V

    move-object v0, v1

    goto :goto_5b

    .line 1286
    :cond_2e
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1287
    nop

    .line 1288
    const-string v1, "com.android.okhttp.HttpHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/URLStreamHandler;

    goto :goto_5b

    .line 1289
    :cond_45
    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1290
    nop

    .line 1291
    const-string v1, "com.android.okhttp.HttpsHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/URLStreamHandler;

    .line 1293
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method private static greylist-max-o createBuiltinHandlerClassNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1300
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "sun.net.www.protocol.file.Handler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1301
    const-string v1, "sun.net.www.protocol.ftp.Handler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1302
    const-string v1, "sun.net.www.protocol.jar.Handler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1303
    const-string v1, "com.android.okhttp.HttpHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1304
    const-string v1, "com.android.okhttp.HttpsHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o fabricateNewURL()Ljava/net/URL;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "replacementURL":Ljava/net/URL;
    iget-object v1, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v1}, Ljava/net/UrlDeserializedState;->reconstituteUrlString()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "urlString":Ljava/lang/String;
    :try_start_7
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_c} :catch_1a

    .line 1481
    .end local v0    # "replacementURL":Ljava/net/URL;
    .local v2, "replacementURL":Ljava/net/URL;
    nop

    .line 1482
    iget-object v0, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v0}, Ljava/net/UrlDeserializedState;->getHashCode()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/net/URL;->setSerializedHashCode(I)V

    .line 1483
    invoke-direct {p0}, Ljava/net/URL;->resetState()V

    .line 1484
    return-object v2

    .line 1475
    .end local v2    # "replacementURL":Ljava/net/URL;
    .restart local v0    # "replacementURL":Ljava/net/URL;
    :catch_1a
    move-exception v2

    .line 1476
    .local v2, "mEx":Ljava/net/MalformedURLException;
    invoke-direct {p0}, Ljava/net/URL;->resetState()V

    .line 1477
    new-instance v3, Ljava/io/InvalidObjectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v3, "invoEx":Ljava/io/InvalidObjectException;
    invoke-virtual {v3, v2}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1480
    throw v3
.end method

.method static greylist-max-o getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 11
    .param p0, "protocol"    # Ljava/lang/String;

    .line 1162
    sget-object v0, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;

    .line 1163
    .local v0, "handler":Ljava/net/URLStreamHandler;
    if-nez v0, :cond_b9

    .line 1165
    const/4 v1, 0x0

    .line 1168
    .local v1, "checkedWithFactory":Z
    sget-object v2, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v2, :cond_16

    .line 1169
    sget-object v2, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-interface {v2, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    .line 1170
    const/4 v1, 0x1

    .line 1174
    :cond_16
    if-nez v0, :cond_7e

    .line 1190
    const-string v2, "java.protocol.handler.pkgs"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, "packagePrefixList":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .local v3, "packagePrefixIter":Ljava/util/StringTokenizer;
    :goto_27
    if-nez v0, :cond_7e

    .line 1196
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1198
    nop

    .line 1199
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, "packagePrefix":Ljava/lang/String;
    :try_start_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Handler"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_55
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_55} :catch_7c

    .line 1203
    .local v5, "clsName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1205
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    :try_start_57
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1208
    .local v8, "cl":Ljava/lang/ClassLoader;
    invoke-static {v5, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_5f} :catch_61
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_57 .. :try_end_5f} :catch_7c

    move-object v6, v7

    .line 1215
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    goto :goto_71

    .line 1209
    :catch_61
    move-exception v8

    .line 1210
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 1211
    .local v9, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v9, :cond_71

    .line 1212
    invoke-static {v5, v7, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 1216
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v9    # "contextLoader":Ljava/lang/ClassLoader;
    :cond_71
    :goto_71
    if-eqz v6, :cond_7b

    .line 1217
    nop

    .line 1218
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URLStreamHandler;
    :try_end_7a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_62 .. :try_end_7a} :catch_7c

    move-object v0, v7

    .line 1221
    .end local v5    # "clsName":Ljava/lang/String;
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7b
    goto :goto_7d

    .line 1220
    :catch_7c
    move-exception v5

    .line 1222
    .end local v4    # "packagePrefix":Ljava/lang/String;
    :goto_7d
    goto :goto_27

    .line 1227
    .end local v2    # "packagePrefixList":Ljava/lang/String;
    .end local v3    # "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_7e
    if-nez v0, :cond_8d

    .line 1229
    :try_start_80
    invoke-static {p0}, Ljava/net/URL;->createBuiltinHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v2
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_86

    move-object v0, v2

    .line 1232
    goto :goto_8d

    .line 1230
    :catch_86
    move-exception v2

    .line 1231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8d
    :goto_8d
    sget-object v2, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1238
    const/4 v3, 0x0

    .line 1242
    .local v3, "handler2":Ljava/net/URLStreamHandler;
    :try_start_91
    sget-object v4, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLStreamHandler;

    .line 1244
    .end local v3    # "handler2":Ljava/net/URLStreamHandler;
    .local v4, "handler2":Ljava/net/URLStreamHandler;
    if-eqz v4, :cond_9d

    .line 1245
    monitor-exit v2

    return-object v4

    .line 1250
    :cond_9d
    if-nez v1, :cond_aa

    sget-object v3, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v3, :cond_aa

    .line 1251
    sget-object v3, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-interface {v3, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    move-object v4, v3

    .line 1254
    :cond_aa
    if-eqz v4, :cond_ad

    .line 1258
    move-object v0, v4

    .line 1262
    :cond_ad
    if-eqz v0, :cond_b4

    .line 1263
    sget-object v3, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    .end local v4    # "handler2":Ljava/net/URLStreamHandler;
    :cond_b4
    monitor-exit v2

    goto :goto_b9

    :catchall_b6
    move-exception v3

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_91 .. :try_end_b8} :catchall_b6

    throw v3

    .line 1269
    .end local v1    # "checkedWithFactory":Z
    :cond_b9
    :goto_b9
    return-object v0
.end method

.method private greylist-max-o isBuiltinStreamHandler(Ljava/lang/String;)Z
    .registers 3
    .param p1, "handlerClassName"    # Ljava/lang/String;

    .line 1490
    sget-object v0, Ljava/net/URL;->BUILTIN_HANDLER_CLASS_NAMES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isValidProtocol(Ljava/lang/String;)Z
    .registers 8
    .param p1, "protocol"    # Ljava/lang/String;

    .line 645
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 646
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_9

    .line 647
    return v1

    .line 648
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 649
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 650
    return v1

    .line 651
    :cond_14
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_15
    if-ge v4, v0, :cond_31

    .line 652
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 653
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2e

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_2e

    .line 655
    return v1

    .line 651
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 658
    .end local v4    # "i":I
    :cond_31
    return v2
.end method

.method private declared-synchronized whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 1359
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1360
    .local v0, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 1361
    .local v4, "protocol":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 1364
    const-string v1, "host"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1365
    .local v1, "host":Ljava/lang/String;
    const-string v3, "port"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    .line 1366
    .local v6, "port":I
    const-string v3, "authority"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1367
    .local v3, "authority":Ljava/lang/String;
    const-string v7, "file"

    invoke-virtual {v0, v7, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 1368
    .local v8, "file":Ljava/lang/String;
    const-string v7, "ref"

    invoke-virtual {v0, v7, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 1371
    .local v9, "ref":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1372
    .local v2, "hashCode":I
    if-nez v3, :cond_6f

    if-eqz v1, :cond_49

    .line 1373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4b

    .end local p0    # "this":Ljava/net/URL;
    :cond_49
    if-eq v6, v5, :cond_6f

    .line 1374
    :cond_4b
    if-nez v1, :cond_50

    .line 1375
    const-string v7, ""

    move-object v1, v7

    .line 1376
    :cond_50
    if-ne v6, v5, :cond_54

    move-object v5, v1

    goto :goto_6b

    :cond_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6b
    move-object v3, v5

    move-object v5, v1

    move-object v7, v3

    goto :goto_71

    .line 1378
    :cond_6f
    move-object v5, v1

    move-object v7, v3

    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "authority":Ljava/lang/String;
    .local v5, "host":Ljava/lang/String;
    .local v7, "authority":Ljava/lang/String;
    :goto_71
    new-instance v3, Ljava/net/UrlDeserializedState;

    const/4 v10, -0x1

    invoke-direct/range {v3 .. v10}, Ljava/net/UrlDeserializedState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v3, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_94

    .line 1380
    monitor-exit p0

    return-void

    .line 1362
    .end local v2    # "hashCode":I
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "authority":Ljava/lang/String;
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "ref":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1358
    .end local v0    # "gf":Ljava/io/ObjectInputStream$GetField;
    .end local v4    # "protocol":Ljava/lang/String;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_94
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_94

    throw p1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1393
    const/4 v0, 0x0

    .line 1395
    .local v0, "handler":Ljava/net/URLStreamHandler;
    iget-object v1, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v1}, Ljava/net/UrlDeserializedState;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    .line 1397
    const/4 v1, 0x0

    .line 1398
    .local v1, "replacementURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/net/URL;->isBuiltinStreamHandler(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1399
    invoke-direct {p0}, Ljava/net/URL;->fabricateNewURL()Ljava/net/URL;

    move-result-object v1

    goto :goto_23

    .line 1401
    :cond_1f
    invoke-direct {p0, v0}, Ljava/net/URL;->setDeserializedFields(Ljava/net/URLStreamHandler;)Ljava/net/URL;

    move-result-object v1

    .line 1403
    :goto_23
    return-object v1
.end method

.method private greylist-max-o resetState()V
    .registers 3

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 1495
    iput-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 1496
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URL;->port:I

    .line 1497
    iput-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 1498
    iput-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 1499
    iput-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 1500
    iput v1, p0, Ljava/net/URL;->hashCode:I

    .line 1501
    iput-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 1502
    iput-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 1503
    iput-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 1504
    iput-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 1505
    iput-object v0, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    .line 1506
    return-void
.end method

.method private greylist-max-o setDeserializedFields(Ljava/net/URLStreamHandler;)Ljava/net/URL;
    .registers 15
    .param p1, "handler"    # Ljava/net/URLStreamHandler;

    .line 1408
    const/4 v0, 0x0

    .line 1409
    .local v0, "userInfo":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v1}, Ljava/net/UrlDeserializedState;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v2}, Ljava/net/UrlDeserializedState;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v3}, Ljava/net/UrlDeserializedState;->getPort()I

    move-result v3

    .line 1412
    .local v3, "port":I
    iget-object v4, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v4}, Ljava/net/UrlDeserializedState;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 1413
    .local v4, "authority":Ljava/lang/String;
    iget-object v5, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v5}, Ljava/net/UrlDeserializedState;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 1414
    .local v5, "file":Ljava/lang/String;
    iget-object v6, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v6}, Ljava/net/UrlDeserializedState;->getRef()Ljava/lang/String;

    move-result-object v6

    .line 1415
    .local v6, "ref":Ljava/lang/String;
    iget-object v7, p0, Ljava/net/URL;->tempState:Ljava/net/UrlDeserializedState;

    invoke-virtual {v7}, Ljava/net/UrlDeserializedState;->getHashCode()I

    move-result v7

    .line 1419
    .local v7, "hashCode":I
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-nez v4, :cond_6c

    if-eqz v2, :cond_39

    .line 1420
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_3b

    :cond_39
    if-eq v3, v10, :cond_6c

    .line 1421
    :cond_3b
    if-nez v2, :cond_3f

    .line 1422
    const-string v2, ""

    .line 1423
    :cond_3f
    if-ne v3, v10, :cond_43

    move-object v11, v2

    goto :goto_5a

    :cond_43
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_5a
    move-object v4, v11

    .line 1426
    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1427
    .local v8, "at":I
    if-eq v8, v10, :cond_6b

    .line 1428
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1429
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1431
    .end local v8    # "at":I
    :cond_6b
    goto :goto_78

    :cond_6c
    if-eqz v4, :cond_6b

    .line 1433
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 1434
    .local v8, "ind":I
    if-eq v8, v10, :cond_78

    .line 1435
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .end local v8    # "ind":I
    :cond_78
    :goto_78
    const/4 v8, 0x0

    .line 1440
    .local v8, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1441
    .local v11, "query":Ljava/lang/String;
    if-eqz v5, :cond_90

    .line 1443
    const/16 v12, 0x3f

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 1444
    .local v12, "q":I
    if-eq v12, v10, :cond_8f

    .line 1445
    add-int/lit8 v10, v12, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1446
    invoke-virtual {v5, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_90

    .line 1448
    :cond_8f
    move-object v8, v5

    .line 1452
    .end local v12    # "q":I
    :cond_90
    :goto_90
    iput-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 1453
    iput-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 1454
    iput v3, p0, Ljava/net/URL;->port:I

    .line 1455
    iput-object v5, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 1456
    iput-object v4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 1457
    iput-object v6, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 1458
    iput v7, p0, Ljava/net/URL;->hashCode:I

    .line 1459
    iput-object p1, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    .line 1460
    iput-object v11, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 1461
    iput-object v8, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 1462
    iput-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 1463
    move-object v9, p0

    .line 1464
    .local v9, "replacementURL":Ljava/net/URL;
    return-object v9
.end method

.method private greylist-max-o setSerializedHashCode(I)V
    .registers 2
    .param p1, "hc"    # I

    .line 1509
    iput p1, p0, Ljava/net/URL;->hashCode:I

    .line 1510
    return-void
.end method

.method public static whitelist test-api setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/URLStreamHandlerFactory;

    .line 1137
    sget-object v0, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    sget-object v1, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v1, :cond_19

    .line 1141
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1142
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1143
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1145
    :cond_10
    sget-object v2, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1146
    sput-object p0, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 1147
    .end local v1    # "security":Ljava/lang/SecurityManager;
    monitor-exit v0

    .line 1148
    return-void

    .line 1139
    :cond_19
    new-instance v1, Ljava/lang/Error;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p0    # "fac":Ljava/net/URLStreamHandlerFactory;
    throw v1

    .line 1147
    .restart local p0    # "fac":Ljava/net/URLStreamHandlerFactory;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1349
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1350
    monitor-exit p0

    return-void

    .line 1348
    .end local p0    # "this":Ljava/net/URL;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 893
    instance-of v0, p1, Ljava/net/URL;

    if-nez v0, :cond_6

    .line 894
    const/4 v0, 0x0

    return v0

    .line 895
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/net/URL;

    .line 897
    .local v0, "u2":Ljava/net/URL;
    iget-object v1, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v1, p0, v0}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getAuthority()Ljava/lang/String;
    .registers 2

    .line 778
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDefaultPort()I
    .registers 2

    .line 800
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getFile()Ljava/lang/String;
    .registers 2

    .line 836
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getHost()Ljava/lang/String;
    .registers 2

    .line 821
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPath()Ljava/lang/String;
    .registers 2

    .line 757
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 787
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 809
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getQuery()Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRef()Ljava/lang/String;
    .registers 2

    .line 847
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getUserInfo()Ljava/lang/String;
    .registers 2

    .line 768
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 3

    monitor-enter p0

    .line 909
    :try_start_1
    iget v0, p0, Ljava/net/URL;->hashCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 910
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    monitor-exit p0

    return v0

    .line 912
    .end local p0    # "this":Ljava/net/URL;
    :cond_a
    :try_start_a
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 913
    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit p0

    return v0

    .line 908
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public whitelist test-api openConnection()Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 7
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    if-eqz p1, :cond_49

    .line 1045
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v0, :cond_9

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v0

    .line 1046
    .local v0, "p":Ljava/net/Proxy;
    :goto_d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1047
    .local v1, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_42

    if-eqz v1, :cond_42

    .line 1048
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 1049
    .local v2, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1050
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_42

    .line 1052
    :cond_33
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 1052
    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 1055
    .end local v2    # "epoint":Ljava/net/InetSocketAddress;
    :cond_42
    :goto_42
    iget-object v2, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v2, p0, v0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    return-object v2

    .line 1041
    .end local v0    # "p":Ljava/net/Proxy;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxy can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api sameFile(Ljava/net/URL;)Z
    .registers 3
    .param p1, "other"    # Ljava/net/URL;

    .line 928
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "ref"    # Ljava/lang/String;

    .line 681
    monitor-enter p0

    .line 682
    :try_start_1
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 683
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 684
    const/4 v0, -0x1

    if-ne p3, v0, :cond_a

    move-object v1, p2

    goto :goto_21

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 685
    iput p3, p0, Ljava/net/URL;->port:I

    .line 686
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 687
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 690
    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    .line 692
    const/16 v1, 0x3f

    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 693
    .local v1, "q":I
    if-eq v1, v0, :cond_46

    .line 694
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_48

    .line 697
    :cond_46
    iput-object p4, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 698
    .end local v1    # "q":I
    :goto_48
    monitor-exit p0

    .line 699
    return-void

    .line 698
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method greylist-max-o set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "userInfo"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "ref"    # Ljava/lang/String;

    .line 719
    monitor-enter p0

    .line 720
    :try_start_1
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 721
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 722
    iput p3, p0, Ljava/net/URL;->port:I

    .line 725
    if-eqz p7, :cond_28

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_28

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_28
    :goto_28
    move-object v0, p6

    :goto_29
    iput-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 726
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 727
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 728
    iput-object p8, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    .line 733
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 734
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 735
    monitor-exit p0

    .line 736
    return-void

    .line 735
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public whitelist test-api toExternalForm()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 942
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toURI()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
