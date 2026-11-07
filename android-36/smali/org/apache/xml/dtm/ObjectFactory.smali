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
.field private static final greylist DEBUG:Z = false

.field private static final greylist DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xalan.properties"

.field private static final greylist SERVICES_PATH:Ljava/lang/String; = "META-INF/services/"

.field private static greylist fLastModified:J = -0x1L

.field private static greylist fXalanProperties:Ljava/util/Properties;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor greylist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0, p1}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static greylist createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 143
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created new instance of factory "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 147
    new-instance p2, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider for factory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be instantiated: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 138
    :cond_3f
    new-instance p1, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provider for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be found"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static greylist debugPrintln(Ljava/lang/String;)V
    .registers 1

    .line 0
    return-void
.end method

.method static greylist findClassLoader()Ljava/lang/ClassLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 396
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lorg/apache/xml/dtm/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 401
    invoke-virtual {v0}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v3, v2

    :goto_d
    if-ne v1, v3, :cond_21

    .line 414
    const-class v1, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v1, v2

    :goto_16
    if-ne v4, v1, :cond_19

    return-object v2

    :cond_19
    if-nez v1, :cond_1c

    return-object v4

    .line 426
    :cond_1c
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_16

    :cond_21
    if-nez v3, :cond_24

    return-object v1

    .line 441
    :cond_24
    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_d
.end method

.method private static greylist findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 537
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object v0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 542
    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1, p0}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 548
    const-class v3, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v1, v3, :cond_2c

    .line 551
    invoke-virtual {v0, v3, p0}, Lorg/apache/xml/dtm/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v3

    :cond_2c
    const/4 v0, 0x0

    if-nez v2, :cond_30

    return-object v0

    .line 560
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found jar resource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using ClassLoader: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 581
    :try_start_4c
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_58} :catch_59

    goto :goto_63

    .line 583
    :catch_59
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 590
    :goto_63
    :try_start_63
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_8f
    .catchall {:try_start_63 .. :try_end_67} :catchall_8a

    .line 598
    :try_start_67
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6a

    :catch_6a
    if-eqz v1, :cond_89

    .line 604
    const-string p0, ""

    .line 605
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    .line 606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found in resource, value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    return-object v1

    :cond_89
    return-object v0

    :catchall_8a
    move-exception v0

    .line 598
    :try_start_8b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8e

    .line 602
    :catch_8e
    throw v0

    .line 598
    :catch_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_92

    :catch_92
    return-object v0
.end method

.method static greylist findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 482
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 485
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, p0

    .line 488
    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    :cond_19
    if-nez p1, :cond_20

    .line 505
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 508
    :cond_20
    :try_start_20
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v0

    if-eqz p2, :cond_3d

    .line 512
    const-class p2, Lorg/apache/xml/dtm/ObjectFactory;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-nez p2, :cond_35

    .line 514
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_3b

    :cond_35
    if-eq p1, p2, :cond_3c

    .line 517
    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_3b
    return-object p0

    .line 519
    :cond_3c
    throw v0

    .line 522
    :cond_3d
    throw v0
.end method

.method static greylist lookUpFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0, v0}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static greylist lookUpFactoryClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 208
    const-string v0, "Provider "

    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {}, Lorg/apache/xml/dtm/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    move-object p2, p0

    :goto_e
    const/4 p0, 0x1

    .line 219
    :try_start_f
    invoke-static {p2, p1, p0}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created new instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using ClassLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_2f} :catch_32
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    goto :goto_34

    :catch_32
    move-exception p0

    goto :goto_51

    .line 229
    :goto_34
    new-instance p1, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be instantiated: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 226
    :goto_51
    new-instance p1, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method static greylist lookUpFactoryClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 261
    invoke-static {}, Lorg/apache/xml/dtm/SecuritySupport;->getInstance()Lorg/apache/xml/dtm/SecuritySupport;

    move-result-object p2

    .line 265
    :try_start_4
    invoke-virtual {p2, p0}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found system property, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    :cond_1f
    const/4 v0, 0x0

    if-nez p1, :cond_b9

    const-wide/16 v1, -0x1

    .line 283
    :try_start_24
    const-string v3, "java.home"

    invoke-virtual {p2, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "xalan.properties"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_4d} :catch_52

    .line 287
    :try_start_4d
    invoke-virtual {p2, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getFileExists(Ljava/io/File;)Z

    move-result v4
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_51} :catch_53

    goto :goto_58

    :catch_52
    move-object v3, v0

    .line 290
    :catch_53
    sput-wide v1, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    .line 291
    sput-object v0, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    const/4 v4, 0x0

    .line 294
    :goto_58
    const-class v5, Lorg/apache/xml/dtm/ObjectFactory;

    monitor-enter v5

    .line 299
    :try_start_5b
    sget-wide v6, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7b

    if-eqz v4, :cond_74

    .line 301
    invoke-virtual {p2, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v8

    sput-wide v8, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_74

    goto :goto_83

    :catchall_70
    move-exception p0

    goto :goto_b1

    :catch_72
    move-object p2, v0

    goto :goto_a0

    :cond_74
    if-nez v4, :cond_97

    .line 306
    sput-wide v1, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    .line 307
    sput-object v0, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    goto :goto_97

    :cond_7b
    if-eqz v4, :cond_97

    .line 314
    invoke-virtual {p2, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v6

    sput-wide v6, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J

    .line 320
    :goto_83
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 321
    invoke-virtual {p2, v3}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8e} :catch_72
    .catchall {:try_start_5b .. :try_end_8e} :catchall_70

    .line 322
    :try_start_8e
    sget-object v3, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    invoke-virtual {v3, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_93} :catch_a0
    .catchall {:try_start_8e .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception p0

    move-object v0, p2

    goto :goto_b1

    :cond_97
    :goto_97
    move-object p2, v0

    :goto_98
    if-eqz p2, :cond_a7

    .line 335
    :goto_9a
    :try_start_9a
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a7
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a7

    :catchall_9e
    move-exception p0

    goto :goto_b7

    .line 325
    :catch_a0
    :goto_a0
    :try_start_a0
    sput-object v0, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    .line 326
    sput-wide v1, Lorg/apache/xml/dtm/ObjectFactory;->fLastModified:J
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_94

    if-eqz p2, :cond_a7

    goto :goto_9a

    .line 341
    :catch_a7
    :cond_a7
    :goto_a7
    :try_start_a7
    monitor-exit v5
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_9e

    .line 342
    sget-object p2, Lorg/apache/xml/dtm/ObjectFactory;->fXalanProperties:Ljava/util/Properties;

    if-eqz p2, :cond_e4

    .line 343
    invoke-virtual {p2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e4

    :goto_b1
    if-eqz v0, :cond_b6

    .line 335
    :try_start_b3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_9e

    .line 340
    :catch_b6
    :cond_b6
    :try_start_b6
    throw p0

    .line 341
    :goto_b7
    monitor-exit v5
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_9e

    throw p0

    .line 348
    :cond_b9
    :try_start_b9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/apache/xml/dtm/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c2} :catch_d9
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_d7

    .line 349
    :try_start_c2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 350
    invoke-virtual {v1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 351
    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ce} :catch_e1
    .catchall {:try_start_c2 .. :try_end_ce} :catchall_d4

    if-eqz p2, :cond_e4

    .line 361
    :goto_d0
    :try_start_d0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_e4

    goto :goto_e4

    :catchall_d4
    move-exception p0

    move-object v0, p2

    goto :goto_db

    :catchall_d7
    move-exception p0

    goto :goto_db

    :catch_d9
    move-object p2, v0

    goto :goto_e1

    :goto_db
    if-eqz v0, :cond_e0

    :try_start_dd
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e0

    .line 366
    :catch_e0
    :cond_e0
    throw p0

    :catch_e1
    :goto_e1
    if-eqz p2, :cond_e4

    goto :goto_d0

    :catch_e4
    :cond_e4
    :goto_e4
    if-eqz v0, :cond_103

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "found in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    return-object v0

    .line 375
    :cond_103
    invoke-static {p0}, Lorg/apache/xml/dtm/ObjectFactory;->findJarServiceProviderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static greylist newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .line 458
    const-string v0, "Provider "

    :try_start_2
    invoke-static {p0, p1, p2}, Lorg/apache/xml/dtm/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p2

    .line 459
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created new instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " using ClassLoader: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/dtm/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception p1

    goto :goto_2b

    :catch_29
    move-exception p1

    goto :goto_48

    .line 467
    :goto_2b
    new-instance p2, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be instantiated: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 464
    :goto_48
    new-instance p2, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
