.class Lorg/apache/xml/serializer/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 46
    const/4 v2, 0x0

    #@1
    .line 48
    .local v2, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :try_start_0
    const-string/jumbo v3, "java.security.AccessController"

    #@4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 66
    .local v0, "c":Ljava/lang/Class;
    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport12;

    #@a
    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport12;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 70
    .local v2, "ss":Lorg/apache/xml/serializer/SecuritySupport;
    if-nez v2, :cond_0

    #@f
    .line 71
    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport;

    #@11
    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    #@14
    .line 72
    .end local v0    # "c":Ljava/lang/Class;
    .restart local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :cond_0
    :goto_0
    sput-object v2, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    #@16
    .line 36
    return-void

    #@17
    .line 67
    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :catch_0
    move-exception v1

    #@18
    .line 71
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport;

    #@1a
    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    #@1d
    .restart local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    goto :goto_0

    #@1e
    .line 69
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    :catchall_0
    move-exception v3

    #@1f
    .line 71
    new-instance v2, Lorg/apache/xml/serializer/SecuritySupport;

    #@21
    invoke-direct {v2}, Lorg/apache/xml/serializer/SecuritySupport;-><init>()V

    #@24
    .line 72
    .restart local v2    # "ss":Lorg/apache/xml/serializer/SecuritySupport;
    sput-object v2, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    #@26
    .line 69
    throw v3
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getInstance()Lorg/apache/xml/serializer/SecuritySupport;
    .locals 1

    #@0
    .prologue
    .line 81
    sget-object v0, Lorg/apache/xml/serializer/SecuritySupport;->securitySupport:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/xml/serializer/SecuritySupport;

    #@4
    return-object v0
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    return-object v0
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    if-nez p1, :cond_0

    #@2
    .line 109
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    .line 113
    .local v0, "ris":Ljava/io/InputStream;
    :goto_0
    return-object v0

    #@7
    .line 111
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@a
    move-result-object v0

    #@b
    .restart local v0    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method

.method getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
