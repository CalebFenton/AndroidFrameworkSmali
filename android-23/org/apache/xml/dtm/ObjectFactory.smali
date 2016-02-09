.class Lorg/apache/xml/dtm/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static fLastModified:J

.field private static fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    sput-object v0, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@3
    .line 77
    const-wide/16 v0, -0x1

    #@5
    sput-wide v0, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@7
    .line 50
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 133
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 137
    .local v0, "factoryClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    #@7
    .line 138
    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@9
    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Provider for "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, " cannot be found"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 138
    invoke-direct {v3, v4, v6}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@27
    throw v3

    #@28
    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    .line 144
    .local v1, "instance":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "created new instance of factory "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 145
    return-object v1

    #@44
    .line 146
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@45
    .line 147
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@47
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Provider for factory "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 149
    const-string/jumbo v5, " could not be instantiated: "

    #@5a
    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    .line 147
    invoke-direct {v3, v4, v2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@69
    throw v3
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    #@3
    move-result-object v3

    #@4
    .line 400
    .local v3, "ss":Lorg/apache/xml/dtm/SecuritySupport;
    invoke-virtual {v3}, Lorg/apache/xml/dtm/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    .line 401
    .local v1, "context":Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v4

    #@c
    .line 403
    .local v4, "system":Ljava/lang/ClassLoader;
    move-object v0, v4

    #@d
    .line 405
    .local v0, "chain":Ljava/lang/ClassLoader;
    :goto_0
    if-ne v1, v0, :cond_2

    #@f
    .line 414
    const-class v5, Lorg/apache/xml/dtm/ObjectFactory;

    #@11
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object v2

    #@15
    .line 416
    .local v2, "current":Ljava/lang/ClassLoader;
    move-object v0, v4

    #@16
    .line 418
    :goto_1
    if-ne v2, v0, :cond_0

    #@18
    .line 421
    return-object v4

    #@19
    .line 423
    :cond_0
    if-nez v0, :cond_1

    #@1b
    .line 431
    return-object v2

    #@1c
    .line 426
    :cond_1
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    goto :goto_1

    #@21
    .line 434
    .end local v2    # "current":Ljava/lang/ClassLoader;
    :cond_2
    if-nez v0, :cond_3

    #@23
    .line 446
    return-object v1

    #@24
    .line 441
    :cond_3
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@27
    move-result-object v0

    #@28
    goto :goto_0
.end method

.method private static findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "factoryId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 537
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    #@4
    move-result-object v8

    #@5
    .line 538
    .local v8, "ss":Lorg/apache/xml/dtm/SecuritySupport;
    new-instance v10, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v11, "META-INF/services/"

    #@d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v10

    #@11
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v10

    #@15
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    .line 539
    .local v7, "serviceId":Ljava/lang/String;
    const/4 v5, 0x0

    #@1a
    .line 542
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object v0

    #@1e
    .line 544
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v0, v7}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@21
    move-result-object v5

    #@22
    .line 547
    .local v5, "is":Ljava/io/InputStream;
    if-nez v5, :cond_0

    #@24
    .line 548
    const-class v10, Lorg/apache/xml/dtm/ObjectFactory;

    #@26
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@29
    move-result-object v1

    #@2a
    .line 549
    .local v1, "current":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_0

    #@2c
    .line 550
    move-object v0, v1

    #@2d
    .line 551
    invoke-virtual {v8, v0, v7}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@30
    move-result-object v5

    #@31
    .line 555
    .end local v1    # "current":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v5, :cond_1

    #@33
    .line 557
    return-object v12

    #@34
    .line 560
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v11, "found jar resource="

    #@3c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    .line 561
    const-string/jumbo v11, " using ClassLoader: "

    #@47
    .line 560
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    invoke-static {v10}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    #@56
    .line 581
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    #@58
    new-instance v10, Ljava/io/InputStreamReader;

    #@5a
    const-string/jumbo v11, "UTF-8"

    #@5d
    invoke-direct {v10, v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@60
    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 586
    .local v6, "rd":Ljava/io/BufferedReader;
    :goto_0
    const/4 v4, 0x0

    #@64
    .line 590
    .local v4, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    move-result-object v4

    #@68
    .line 598
    .local v4, "factoryClassName":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@6b
    .line 604
    :goto_1
    if-eqz v4, :cond_2

    #@6d
    .line 605
    const-string/jumbo v10, ""

    #@70
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v10

    #@74
    if-eqz v10, :cond_3

    #@76
    .line 617
    :cond_2
    return-object v12

    #@77
    .line 582
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v6    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    #@78
    .line 583
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/io/BufferedReader;

    #@7a
    new-instance v10, Ljava/io/InputStreamReader;

    #@7c
    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@7f
    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@82
    .restart local v6    # "rd":Ljava/io/BufferedReader;
    goto :goto_0

    #@83
    .line 601
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@84
    .local v3, "exc":Ljava/io/IOException;
    goto :goto_1

    #@85
    .line 591
    .end local v3    # "exc":Ljava/io/IOException;
    .local v4, "factoryClassName":Ljava/lang/String;
    :catch_2
    move-exception v9

    #@86
    .line 598
    .local v9, "x":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    #@89
    .line 593
    :goto_2
    return-object v12

    #@8a
    .line 601
    :catch_3
    move-exception v3

    #@8b
    .restart local v3    # "exc":Ljava/io/IOException;
    goto :goto_2

    #@8c
    .line 595
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v9    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    #@8d
    .line 598
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@90
    .line 595
    :goto_3
    throw v10

    #@91
    .line 601
    :catch_4
    move-exception v3

    #@92
    .restart local v3    # "exc":Ljava/io/IOException;
    goto :goto_3

    #@93
    .line 606
    .end local v3    # "exc":Ljava/io/IOException;
    .local v4, "factoryClassName":Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v11, "found in resource, value="

    #@9b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v10

    #@9f
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v10

    #@a7
    invoke-static {v10}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    #@aa
    .line 613
    return-object v4
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v5

    #@4
    .line 484
    .local v5, "security":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_1

    #@6
    .line 485
    :try_start_0
    const-string/jumbo v7, "."

    #@9
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    .line 486
    .local v2, "lastDot":I
    move-object v3, p0

    #@e
    .line 487
    .local v3, "packageName":Ljava/lang/String;
    const/4 v7, -0x1

    #@f
    if-eq v2, v7, :cond_0

    #@11
    const/4 v7, 0x0

    #@12
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 488
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 495
    .end local v2    # "lastDot":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    #@1b
    .line 505
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1e
    move-result-object v4

    #@1f
    .line 527
    .local v4, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v4

    #@20
    .line 490
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@21
    .line 491
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1

    #@22
    .line 508
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    move-result-object v4

    #@26
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@27
    .line 509
    .end local v4    # "providerClass":Ljava/lang/Class;
    :catch_1
    move-exception v6

    #@28
    .line 510
    .local v6, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    #@2a
    .line 512
    const-class v7, Lorg/apache/xml/dtm/ObjectFactory;

    #@2c
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2f
    move-result-object v0

    #@30
    .line 513
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@32
    .line 514
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@35
    move-result-object v4

    #@36
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@37
    .line 515
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    #@39
    .line 516
    move-object p1, v0

    #@3a
    .line 517
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3d
    move-result-object v4

    #@3e
    .restart local v4    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    #@3f
    .line 519
    .end local v4    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v6

    #@40
    .line 522
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v6
.end method

.method static lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    invoke-static {p0, v0, v0}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 211
    .local v1, "factoryClassName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 213
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    #@a
    .line 214
    move-object v1, p2

    #@b
    .line 221
    :cond_0
    const/4 v5, 0x1

    #@c
    .line 219
    :try_start_0
    invoke-static {v1, v0, v5}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    .line 222
    .local v2, "providerClass":Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "created new instance of "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    .line 223
    const-string/jumbo v6, " using ClassLoader: "

    #@23
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 224
    return-object v2

    #@33
    .line 228
    .end local v2    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@34
    .line 229
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@36
    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "Provider "

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    const-string/jumbo v7, " could not be instantiated: "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 229
    invoke-direct {v5, v6, v4}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@58
    throw v5

    #@59
    .line 225
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    #@5a
    .line 226
    .local v3, "x":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@5c
    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v7, "Provider "

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    const-string/jumbo v7, " not found"

    #@6f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    .line 226
    invoke-direct {v5, v6, v3}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@7a
    throw v5
.end method

.method static lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    #@3
    move-result-object v13

    #@4
    .line 265
    .local v13, "ss":Lorg/apache/xml/dtm/SecuritySupport;
    :try_start_0
    move-object/from16 v0, p0

    #@6
    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v14

    #@a
    .line 266
    .local v14, "systemProp":Ljava/lang/String;
    if-eqz v14, :cond_0

    #@c
    .line 267
    new-instance v16, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v17, "found system property, value="

    #@14
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v16

    #@18
    move-object/from16 v0, v16

    #@1a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v16

    #@1e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v16

    #@22
    invoke-static/range {v16 .. v16}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 268
    return-object v14

    #@26
    .line 270
    .end local v14    # "systemProp":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@27
    .line 276
    :cond_0
    const/4 v4, 0x0

    #@28
    .line 279
    .local v4, "factoryClassName":Ljava/lang/String;
    if-nez p1, :cond_8

    #@2a
    .line 280
    const/4 v8, 0x0

    #@2b
    .line 281
    .local v8, "propertiesFile":Ljava/io/File;
    const/4 v10, 0x0

    #@2c
    .line 283
    .local v10, "propertiesFileExists":Z
    :try_start_1
    const-string/jumbo v16, "java.home"

    #@2f
    move-object/from16 v0, v16

    #@31
    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 284
    .local v6, "javah":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    #@37
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    move-object/from16 v0, v16

    #@3c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v16

    #@40
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    #@42
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v16

    #@46
    .line 285
    const-string/jumbo v17, "lib"

    #@49
    .line 284
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v16

    #@4d
    .line 285
    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    #@4f
    .line 284
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v16

    #@53
    .line 285
    const-string/jumbo v17, "xalan.properties"

    #@56
    .line 284
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v16

    #@5a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p1

    #@5e
    .line 286
    new-instance v9, Ljava/io/File;

    #@60
    move-object/from16 v0, p1

    #@62
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@65
    .line 287
    .local v9, "propertiesFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v13, v9}, Lorg/apache/xml/dtm/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a

    #@68
    .end local v8    # "propertiesFile":Ljava/io/File;
    move-result v10

    #@69
    .local v10, "propertiesFileExists":Z
    move-object v8, v9

    #@6a
    .line 294
    .end local v6    # "javah":Ljava/lang/String;
    .end local v9    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :goto_0
    const-class v17, Lorg/apache/xml/dtm/ObjectFactory;

    #@6c
    monitor-enter v17

    #@6d
    .line 295
    const/4 v7, 0x0

    #@6e
    .line 296
    .local v7, "loadProperties":Z
    const/4 v5, 0x0

    #@6f
    .line 299
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3
    sget-wide v18, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@71
    const-wide/16 v20, 0x0

    #@73
    cmp-long v16, v18, v20

    #@75
    if-ltz v16, :cond_6

    #@77
    .line 300
    if-eqz v10, :cond_5

    #@79
    .line 301
    sget-wide v18, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@7b
    invoke-virtual {v13, v8}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    #@7e
    move-result-wide v20

    #@7f
    sput-wide v20, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@81
    cmp-long v16, v18, v20

    #@83
    if-gez v16, :cond_5

    #@85
    .line 302
    const/4 v7, 0x1

    #@86
    .line 317
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    #@88
    .line 320
    new-instance v16, Ljava/util/Properties;

    #@8a
    invoke-direct/range {v16 .. v16}, Ljava/util/Properties;-><init>()V

    #@8d
    sput-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@8f
    .line 321
    invoke-virtual {v13, v8}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    #@92
    move-result-object v5

    #@93
    .line 322
    .local v5, "fis":Ljava/io/FileInputStream;
    sget-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@95
    move-object/from16 v0, v16

    #@97
    invoke-virtual {v0, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9a
    .line 333
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v5, :cond_3

    #@9c
    .line 335
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9f
    :cond_3
    :goto_2
    monitor-exit v17

    #@a0
    .line 342
    sget-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@a2
    if-eqz v16, :cond_4

    #@a4
    .line 343
    sget-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@a6
    move-object/from16 v0, v16

    #@a8
    move-object/from16 v1, p0

    #@aa
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    .line 368
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v7    # "loadProperties":Z
    :cond_4
    :goto_3
    if-eqz v4, :cond_a

    #@b0
    .line 369
    new-instance v16, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v17, "found in "

    #@b8
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v16

    #@bc
    move-object/from16 v0, v16

    #@be
    move-object/from16 v1, p1

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v16

    #@c4
    const-string/jumbo v17, ", value="

    #@c7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v16

    #@cb
    move-object/from16 v0, v16

    #@cd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v16

    #@d1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v16

    #@d5
    invoke-static/range {v16 .. v16}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    #@d8
    .line 371
    return-object v4

    #@d9
    .line 288
    .restart local v4    # "factoryClassName":Ljava/lang/String;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    .local v10, "propertiesFileExists":Z
    :catch_1
    move-exception v2

    #@da
    .line 290
    .end local v8    # "propertiesFile":Ljava/io/File;
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_4
    const-wide/16 v16, -0x1

    #@dc
    sput-wide v16, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@de
    .line 291
    const/16 v16, 0x0

    #@e0
    sput-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@e2
    goto :goto_0

    #@e3
    .line 305
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v10    # "propertiesFileExists":Z
    .local v5, "fis":Ljava/io/FileInputStream;
    .restart local v7    # "loadProperties":Z
    :cond_5
    if-nez v10, :cond_1

    #@e5
    .line 306
    const-wide/16 v18, -0x1

    #@e7
    :try_start_5
    sput-wide v18, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    #@e9
    .line 307
    const/16 v16, 0x0

    #@eb
    sput-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ed
    goto :goto_1

    #@ee
    .line 324
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v15

    #@ef
    .line 325
    .local v15, "x":Ljava/lang/Exception;
    const/16 v16, 0x0

    #@f1
    :try_start_6
    sput-object v16, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    #@f3
    .line 326
    const-wide/16 v18, -0x1

    #@f5
    sput-wide v18, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f7
    .line 333
    if-eqz v5, :cond_3

    #@f9
    .line 335
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@fc
    goto :goto_2

    #@fd
    .line 338
    :catch_3
    move-exception v3

    #@fe
    .local v3, "exc":Ljava/io/IOException;
    goto :goto_2

    #@ff
    .line 312
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v15    # "x":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_6
    if-eqz v10, :cond_1

    #@101
    .line 313
    const/4 v7, 0x1

    #@102
    .line 314
    :try_start_8
    invoke-virtual {v13, v8}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    #@105
    move-result-wide v18

    #@106
    sput-wide v18, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@108
    goto/16 :goto_1

    #@10a
    .line 331
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v16

    #@10b
    .line 333
    if-eqz v5, :cond_7

    #@10d
    .line 335
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@110
    .line 331
    :cond_7
    :goto_5
    :try_start_a
    throw v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@111
    .line 294
    :catchall_1
    move-exception v16

    #@112
    monitor-exit v17

    #@113
    throw v16

    #@114
    .line 338
    :catch_4
    move-exception v3

    #@115
    .restart local v3    # "exc":Ljava/io/IOException;
    goto :goto_2

    #@116
    .end local v3    # "exc":Ljava/io/IOException;
    :catch_5
    move-exception v3

    #@117
    .restart local v3    # "exc":Ljava/io/IOException;
    goto :goto_5

    #@118
    .line 346
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v7    # "loadProperties":Z
    :cond_8
    const/4 v5, 0x0

    #@119
    .line 348
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v16, Ljava/io/File;

    #@11b
    move-object/from16 v0, v16

    #@11d
    move-object/from16 v1, p1

    #@11f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@122
    move-object/from16 v0, v16

    #@124
    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    #@127
    move-result-object v5

    #@128
    .line 349
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v11, Ljava/util/Properties;

    #@12a
    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    #@12d
    .line 350
    .local v11, "props":Ljava/util/Properties;
    invoke-virtual {v11, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@130
    .line 351
    move-object/from16 v0, p0

    #@132
    invoke-virtual {v11, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@135
    move-result-object v4

    #@136
    .line 359
    .local v4, "factoryClassName":Ljava/lang/String;
    if-eqz v5, :cond_4

    #@138
    .line 361
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    #@13b
    goto/16 :goto_3

    #@13d
    .line 364
    :catch_6
    move-exception v3

    #@13e
    .restart local v3    # "exc":Ljava/io/IOException;
    goto/16 :goto_3

    #@140
    .line 352
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "props":Ljava/util/Properties;
    .local v4, "factoryClassName":Ljava/lang/String;
    :catch_7
    move-exception v15

    #@141
    .line 359
    .restart local v15    # "x":Ljava/lang/Exception;
    if-eqz v5, :cond_4

    #@143
    .line 361
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    #@146
    goto/16 :goto_3

    #@148
    .line 364
    :catch_8
    move-exception v3

    #@149
    .restart local v3    # "exc":Ljava/io/IOException;
    goto/16 :goto_3

    #@14b
    .line 357
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v15    # "x":Ljava/lang/Exception;
    :catchall_2
    move-exception v16

    #@14c
    .line 359
    if-eqz v5, :cond_9

    #@14e
    .line 361
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    #@151
    .line 357
    :cond_9
    :goto_6
    throw v16

    #@152
    .line 364
    :catch_9
    move-exception v3

    #@153
    .restart local v3    # "exc":Ljava/io/IOException;
    goto :goto_6

    #@154
    .line 375
    .end local v3    # "exc":Ljava/io/IOException;
    .end local v4    # "factoryClassName":Ljava/lang/String;
    :cond_a
    invoke-static/range {p0 .. p0}, Lorg/apache/xml/dtm/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    #@157
    move-result-object v16

    #@158
    return-object v16

    #@159
    .line 288
    .restart local v4    # "factoryClassName":Ljava/lang/String;
    .restart local v6    # "javah":Ljava/lang/String;
    .restart local v9    # "propertiesFile":Ljava/io/File;
    .restart local v10    # "propertiesFileExists":Z
    :catch_a
    move-exception v2

    #@15a
    .restart local v2    # "e":Ljava/lang/SecurityException;
    move-object v8, v9

    #@15b
    .end local v9    # "propertiesFile":Ljava/io/File;
    .local v8, "propertiesFile":Ljava/io/File;
    goto/16 :goto_4
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 459
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 460
    .local v0, "instance":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "created new instance of "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 461
    const-string/jumbo v5, " using ClassLoader: "

    #@1b
    .line 460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 462
    return-object v0

    #@2b
    .line 466
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    #@2c
    .line 467
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@2e
    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "Provider "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, " could not be instantiated: "

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 467
    invoke-direct {v4, v5, v3}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@50
    throw v4

    #@51
    .line 463
    .end local v3    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@52
    .line 464
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    #@54
    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "Provider "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    const-string/jumbo v6, " not found"

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    .line 464
    invoke-direct {v4, v5, v2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@72
    throw v4
.end method
