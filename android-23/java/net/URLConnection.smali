.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLConnection$DefaultContentHandler;
    }
.end annotation


# static fields
.field private static contentHandlerFactory:Ljava/net/ContentHandlerFactory;

.field static contentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field private static fileNameMap:Ljava/net/FileNameMap;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field private contentType:Ljava/lang/String;

.field defaultHandler:Ljava/net/ContentHandler;

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private lastModified:J

.field private readTimeout:I

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@3
    .line 140
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    sput-object v0, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    #@a
    .line 79
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 92
    new-instance v0, Ljava/net/URLConnection$DefaultContentHandler;

    #@6
    invoke-direct {v0}, Ljava/net/URLConnection$DefaultContentHandler;-><init>()V

    #@9
    iput-object v0, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    #@b
    .line 94
    const-wide/16 v0, -0x1

    #@d
    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    #@f
    .line 106
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@11
    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    #@13
    .line 123
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    #@16
    .line 129
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@18
    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@1a
    .line 133
    iput v2, p0, Ljava/net/URLConnection;->readTimeout:I

    #@1c
    .line 135
    iput v2, p0, Ljava/net/URLConnection;->connectTimeout:I

    #@1e
    .line 157
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@20
    .line 156
    return-void
.end method

.method private checkNotConnected()V
    .locals 2

    #@0
    .prologue
    .line 462
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 461
    :cond_0
    return-void
.end method

.method private getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    .locals 14
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    const/16 v9, 0x2f

    #@2
    const/16 v10, 0x2e

    #@4
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    invoke-direct {p0, v9}, Ljava/net/URLConnection;->parseTypeString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v8

    #@c
    .line 261
    .local v8, "typeString":Ljava/lang/String;
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 262
    .local v0, "cHandler":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@14
    .line 263
    check-cast v0, Ljava/net/ContentHandler;

    #@16
    .end local v0    # "cHandler":Ljava/lang/Object;
    return-object v0

    #@17
    .line 266
    .restart local v0    # "cHandler":Ljava/lang/Object;
    :cond_0
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    #@19
    if-eqz v9, :cond_1

    #@1b
    .line 267
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    #@1d
    invoke-interface {v9, p1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    #@20
    move-result-object v0

    #@21
    .line 268
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    #@23
    invoke-virtual {v9, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 269
    check-cast v0, Ljava/net/ContentHandler;

    #@28
    .end local v0    # "cHandler":Ljava/lang/Object;
    return-object v0

    #@29
    .line 273
    .restart local v0    # "cHandler":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v9, "java.content.handler.pkgs"

    #@2c
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 274
    .local v6, "packageList":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@32
    .line 275
    const-string/jumbo v9, "\\|"

    #@35
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    const/4 v9, 0x0

    #@3a
    array-length v11, v10

    #@3b
    :goto_0
    if-ge v9, v11, :cond_2

    #@3d
    aget-object v7, v10, v9

    #@3f
    .line 276
    .local v7, "packageName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v12

    #@48
    const-string/jumbo v13, "."

    #@4b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v12

    #@4f
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v12

    #@53
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 278
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5a
    move-result-object v12

    #@5b
    const/4 v13, 0x1

    #@5c
    invoke-static {v1, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@5f
    move-result-object v5

    #@60
    .line 279
    .local v5, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    #@63
    move-result-object v0

    #@64
    .line 275
    .end local v5    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@66
    goto :goto_0

    #@67
    .line 287
    .end local v1    # "className":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    #@69
    .line 290
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v10, "org.apache.harmony.awt.www.content."

    #@71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 291
    .restart local v1    # "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    #@84
    move-result-object v0

    #@85
    .line 297
    .end local v1    # "className":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    #@87
    .line 298
    instance-of v9, v0, Ljava/net/ContentHandler;

    #@89
    if-nez v9, :cond_4

    #@8b
    .line 299
    new-instance v9, Ljava/net/UnknownServiceException;

    #@8d
    invoke-direct {v9}, Ljava/net/UnknownServiceException;-><init>()V

    #@90
    throw v9

    #@91
    .line 301
    :cond_4
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    #@93
    invoke-virtual {v9, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    .line 303
    check-cast v0, Ljava/net/ContentHandler;

    #@98
    .end local v0    # "cHandler":Ljava/lang/Object;
    return-object v0

    #@99
    .line 306
    .restart local v0    # "cHandler":Ljava/lang/Object;
    :cond_5
    iget-object v9, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    #@9b
    return-object v9

    #@9c
    .line 292
    :catch_0
    move-exception v2

    #@9d
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    #@9e
    .line 293
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    #@9f
    .local v3, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    #@a0
    .line 294
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    #@a1
    .local v4, "e":Ljava/lang/InstantiationException;
    goto :goto_2

    #@a2
    .line 280
    .end local v4    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    :catch_3
    move-exception v2

    #@a3
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    #@a4
    .line 281
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v3

    #@a5
    .restart local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@a6
    .line 282
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    #@a7
    .restart local v4    # "e":Ljava/lang/InstantiationException;
    goto :goto_1
.end method

.method public static getDefaultAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 343
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@2
    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 353
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getFileNameMap()Ljava/net/FileNameMap;
    .locals 2

    #@0
    .prologue
    .line 407
    const-class v1, Ljava/net/URLConnection;

    #@2
    monitor-enter v1

    #@3
    .line 408
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 409
    new-instance v0, Ljava/net/DefaultFileNameMap;

    #@9
    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    #@c
    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    #@e
    .line 411
    :cond_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 407
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 680
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, -0x2

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 696
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    #@8
    move-result v6

    #@9
    if-nez v6, :cond_0

    #@b
    .line 697
    const/4 v6, 0x0

    #@c
    return-object v6

    #@d
    .line 700
    :cond_0
    const/16 v6, 0x40

    #@f
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    #@12
    .line 701
    const/16 v6, 0x40

    #@14
    new-array v0, v6, [B

    #@16
    .line 702
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@19
    move-result v3

    #@1a
    .line 703
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@1d
    .line 706
    if-ne v3, v10, :cond_1

    #@1f
    .line 707
    const/4 v6, 0x0

    #@20
    return-object v6

    #@21
    .line 711
    :cond_1
    const-string/jumbo v1, "US-ASCII"

    #@24
    .line 712
    .local v1, "encoding":Ljava/lang/String;
    const/4 v4, 0x0

    #@25
    .line 713
    .local v4, "start":I
    if-le v3, v9, :cond_6

    #@27
    .line 714
    aget-byte v6, v0, v8

    #@29
    if-ne v6, v10, :cond_2

    #@2b
    aget-byte v6, v0, v9

    #@2d
    if-ne v6, v11, :cond_2

    #@2f
    .line 715
    const-string/jumbo v1, "UTF-16LE"

    #@32
    .line 716
    const/4 v4, 0x2

    #@33
    .line 717
    and-int/lit8 v6, v3, 0x1

    #@35
    sub-int/2addr v3, v6

    #@36
    .line 719
    :cond_2
    aget-byte v6, v0, v8

    #@38
    if-ne v6, v11, :cond_3

    #@3a
    aget-byte v6, v0, v9

    #@3c
    if-ne v6, v10, :cond_3

    #@3e
    .line 720
    const-string/jumbo v1, "UTF-16BE"

    #@41
    .line 721
    const/4 v4, 0x2

    #@42
    .line 722
    and-int/lit8 v6, v3, 0x1

    #@44
    sub-int/2addr v3, v6

    #@45
    .line 724
    :cond_3
    if-le v3, v12, :cond_6

    #@47
    .line 725
    aget-byte v6, v0, v8

    #@49
    const/16 v7, -0x11

    #@4b
    if-ne v6, v7, :cond_4

    #@4d
    aget-byte v6, v0, v9

    #@4f
    const/16 v7, -0x45

    #@51
    if-ne v6, v7, :cond_4

    #@53
    .line 726
    aget-byte v6, v0, v12

    #@55
    const/16 v7, -0x41

    #@57
    if-ne v6, v7, :cond_4

    #@59
    .line 727
    const-string/jumbo v1, "UTF-8"

    #@5c
    .line 728
    const/4 v4, 0x3

    #@5d
    .line 730
    :cond_4
    const/4 v6, 0x3

    #@5e
    if-le v3, v6, :cond_6

    #@60
    .line 731
    aget-byte v6, v0, v8

    #@62
    if-nez v6, :cond_5

    #@64
    aget-byte v6, v0, v9

    #@66
    if-nez v6, :cond_5

    #@68
    .line 732
    aget-byte v6, v0, v12

    #@6a
    if-ne v6, v11, :cond_5

    #@6c
    .line 733
    const/4 v6, 0x3

    #@6d
    aget-byte v6, v0, v6

    #@6f
    if-ne v6, v10, :cond_5

    #@71
    .line 734
    const-string/jumbo v1, "UTF-32BE"

    #@74
    .line 735
    const/4 v4, 0x4

    #@75
    .line 736
    and-int/lit8 v6, v3, 0x3

    #@77
    sub-int/2addr v3, v6

    #@78
    .line 738
    :cond_5
    aget-byte v6, v0, v8

    #@7a
    if-ne v6, v10, :cond_6

    #@7c
    aget-byte v6, v0, v9

    #@7e
    if-ne v6, v11, :cond_6

    #@80
    .line 739
    aget-byte v6, v0, v12

    #@82
    if-nez v6, :cond_6

    #@84
    .line 740
    const/4 v6, 0x3

    #@85
    aget-byte v6, v0, v6

    #@87
    if-nez v6, :cond_6

    #@89
    .line 741
    const-string/jumbo v1, "UTF-32LE"

    #@8c
    .line 742
    const/4 v4, 0x4

    #@8d
    .line 743
    and-int/lit8 v6, v3, 0x3

    #@8f
    sub-int/2addr v3, v6

    #@90
    .line 749
    :cond_6
    new-instance v2, Ljava/lang/String;

    #@92
    sub-int v6, v3, v4

    #@94
    invoke-direct {v2, v0, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@97
    .line 752
    .local v2, "header":Ljava/lang/String;
    const-string/jumbo v6, "PK"

    #@9a
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_7

    #@a0
    .line 753
    const-string/jumbo v6, "application/zip"

    #@a3
    return-object v6

    #@a4
    .line 755
    :cond_7
    const-string/jumbo v6, "GI"

    #@a7
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@aa
    move-result v6

    #@ab
    if-eqz v6, :cond_8

    #@ad
    .line 756
    const-string/jumbo v6, "image/gif"

    #@b0
    return-object v6

    #@b1
    .line 760
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    .line 761
    .local v5, "textHeader":Ljava/lang/String;
    const-string/jumbo v6, "<!DOCTYPE HTML"

    #@be
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_9

    #@c4
    .line 762
    const-string/jumbo v6, "<HTML"

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ca
    move-result v6

    #@cb
    .line 761
    if-nez v6, :cond_9

    #@cd
    .line 763
    const-string/jumbo v6, "<HEAD"

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d3
    move-result v6

    #@d4
    .line 761
    if-nez v6, :cond_9

    #@d6
    .line 764
    const-string/jumbo v6, "<BODY"

    #@d9
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@dc
    move-result v6

    #@dd
    .line 761
    if-nez v6, :cond_9

    #@df
    .line 765
    const-string/jumbo v6, "<HEAD"

    #@e2
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e5
    move-result v6

    #@e6
    .line 761
    if-eqz v6, :cond_a

    #@e8
    .line 766
    :cond_9
    const-string/jumbo v6, "text/html"

    #@eb
    return-object v6

    #@ec
    .line 769
    :cond_a
    const-string/jumbo v6, "<?XML"

    #@ef
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f2
    move-result v6

    #@f3
    if-eqz v6, :cond_b

    #@f5
    .line 770
    const-string/jumbo v6, "application/xml"

    #@f8
    return-object v6

    #@f9
    .line 774
    :cond_b
    const/4 v6, 0x0

    #@fa
    return-object v6
.end method

.method private parseTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "typeString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 787
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@a
    move-result v3

    #@b
    if-ge v1, v3, :cond_3

    #@d
    .line 789
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 790
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_0

    #@17
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_0

    #@1d
    const/16 v3, 0x2e

    #@1f
    if-ne v0, v3, :cond_2

    #@21
    :cond_0
    move v3, v4

    #@22
    :goto_1
    if-nez v3, :cond_1

    #@24
    .line 791
    const/16 v3, 0x5f

    #@26
    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@29
    .line 787
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 790
    :cond_2
    const/4 v3, 0x0

    #@2d
    goto :goto_1

    #@2e
    .line 794
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .locals 3
    .param p0, "contentFactory"    # Ljava/net/ContentHandlerFactory;

    #@0
    .prologue
    const-class v1, Ljava/net/URLConnection;

    #@2
    monitor-enter v1

    #@3
    .line 815
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 816
    new-instance v0, Ljava/lang/Error;

    #@9
    const-string/jumbo v2, "Factory already set"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 818
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 814
    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .locals 0
    .param p0, "allows"    # Z

    #@0
    .prologue
    .line 825
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@2
    .line 824
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 834
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .locals 2
    .param p0, "map"    # Ljava/net/FileNameMap;

    #@0
    .prologue
    .line 889
    const-class v0, Ljava/net/URLConnection;

    #@2
    monitor-enter v0

    #@3
    .line 890
    :try_start_0
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 888
    return-void

    #@7
    .line 889
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 482
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 483
    if-nez p1, :cond_0

    #@5
    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "field == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 481
    :cond_0
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 173
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@2
    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 977
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    #@2
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 189
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 190
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    #@8
    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 194
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@12
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 195
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@28
    .line 198
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 199
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@2e
    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 201
    :cond_2
    return-object v1
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 223
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 224
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    #@8
    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 228
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@12
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 229
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@28
    .line 232
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 233
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    #@2e
    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 235
    :cond_2
    return-object v1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    const-string/jumbo v0, "Content-Encoding"

    #@3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    #@0
    .prologue
    .line 315
    const-string/jumbo v0, "Content-Length"

    #@3
    const/4 v1, -0x1

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 325
    const-string/jumbo v0, "Content-Type"

    #@3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getDate()J
    .locals 4

    #@0
    .prologue
    .line 336
    const-string/jumbo v0, "Date"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 363
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@2
    return v0
.end method

.method public getDoInput()Z
    .locals 1

    #@0
    .prologue
    .line 375
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    #@2
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    #@0
    .prologue
    .line 387
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    #@2
    return v0
.end method

.method public getExpiration()J
    .locals 4

    #@0
    .prologue
    .line 397
    const-string/jumbo v0, "Expires"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 502
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 519
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 520
    .local v0, "date":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 521
    return-wide p2

    #@7
    .line 524
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-wide v2

    #@b
    return-wide v2

    #@c
    .line 525
    :catch_0
    move-exception v1

    #@d
    .line 526
    .local v1, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 543
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 544
    :catch_0
    move-exception v0

    #@a
    .line 545
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    #@0
    .prologue
    .line 563
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    .line 575
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    #@2
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    new-instance v0, Ljava/net/UnknownServiceException;

    #@2
    const-string/jumbo v1, "Does not support writing to the input stream"

    #@5
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getLastModified()J
    .locals 4

    #@0
    .prologue
    .line 598
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 599
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    #@a
    return-wide v0

    #@b
    .line 601
    :cond_0
    const-string/jumbo v0, "Last-Modified"

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    #@16
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    new-instance v0, Ljava/net/UnknownServiceException;

    #@2
    const-string/jumbo v1, "Does not support writing to the output stream"

    #@5
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    new-instance v0, Ljava/security/AllPermission;

    #@2
    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    #@5
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1000
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    #@2
    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 647
    const/4 v0, 0x0

    #@4
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 666
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    #@2
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 801
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 802
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@5
    .line 800
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 967
    if-gez p1, :cond_0

    #@2
    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeoutMillis < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 970
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    #@d
    .line 966
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 846
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@2
    .line 845
    return-void
.end method

.method public setDoInput(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 861
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 862
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    #@5
    .line 860
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 877
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 878
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    #@5
    .line 876
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 907
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 908
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    #@5
    .line 906
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 989
    if-gez p1, :cond_0

    #@2
    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeoutMillis < 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 992
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    #@d
    .line 988
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 926
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 927
    if-nez p1, :cond_0

    #@5
    .line 928
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "field == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 925
    :cond_0
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 945
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    #@3
    .line 946
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    #@5
    .line 944
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/net/URLConnection;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, ":"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1a
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method
