.class Lorg/apache/xml/dtm/ref/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final greylist securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 50
    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    new-instance v0, Lorg/apache/xml/dtm/ref/SecuritySupport12;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/SecuritySupport12;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_16
    .catchall {:try_start_0 .. :try_end_a} :catchall_d

    .line 74
    sput-object v0, Lorg/apache/xml/dtm/ref/SecuritySupport;->securitySupport:Ljava/lang/Object;

    return-void

    :catchall_d
    move-exception v0

    .line 73
    new-instance v1, Lorg/apache/xml/dtm/ref/SecuritySupport;

    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/SecuritySupport;-><init>()V

    .line 74
    sput-object v1, Lorg/apache/xml/dtm/ref/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 75
    throw v0

    .line 73
    :catch_16
    new-instance v0, Lorg/apache/xml/dtm/ref/SecuritySupport;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/SecuritySupport;-><init>()V

    .line 74
    sput-object v0, Lorg/apache/xml/dtm/ref/SecuritySupport;->securitySupport:Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist getInstance()Lorg/apache/xml/dtm/ref/SecuritySupport;
    .registers 1

    .line 83
    sget-object v0, Lorg/apache/xml/dtm/ref/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xml/dtm/ref/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method greylist getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getFileExists(Ljava/io/File;)Z
    .registers 2

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method greylist getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 105
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method greylist getLastModified(Ljava/io/File;)J
    .registers 2

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    return-wide p0
.end method

.method greylist getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    if-nez p1, :cond_7

    .line 111
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 113
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method greylist getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
