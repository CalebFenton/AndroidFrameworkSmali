.class Lorg/apache/xpath/functions/SecuritySupport12;
.super Lorg/apache/xpath/functions/SecuritySupport;
.source "SecuritySupport12.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/xpath/functions/SecuritySupport;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$1;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xpath/functions/SecuritySupport12$1;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/ClassLoader;

    #@b
    .line 46
    return-object v0
.end method

.method getFileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 130
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$7;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$7;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    :try_start_0
    new-instance v1, Lorg/apache/xpath/functions/SecuritySupport12$5;

    #@2
    invoke-direct {v1, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$5;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    #@5
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 100
    return-object v1

    #@c
    .line 106
    :catch_0
    move-exception v0

    #@d
    .line 107
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/io/FileNotFoundException;

    #@13
    throw v1
.end method

.method getLastModified(Ljava/io/File;)J
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 139
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$8;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$8;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Long;

    #@b
    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$3;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$3;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/ClassLoader;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/ClassLoader;

    #@b
    .line 72
    return-object v0
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$6;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xpath/functions/SecuritySupport12$6;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/io/InputStream;

    #@b
    .line 114
    return-object v0
.end method

.method getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$2;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xpath/functions/SecuritySupport12$2;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/ClassLoader;

    #@b
    .line 59
    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$4;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$4;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 88
    return-object v0
.end method
