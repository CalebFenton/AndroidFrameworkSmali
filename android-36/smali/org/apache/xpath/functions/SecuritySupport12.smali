.class Lorg/apache/xpath/functions/SecuritySupport12;
.super Lorg/apache/xpath/functions/SecuritySupport;
.source "SecuritySupport12.java"


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/apache/xpath/functions/SecuritySupport;-><init>()V

    return-void
.end method


# virtual methods
.method greylist getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 46
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$1;

    invoke-direct {v0, p0}, Lorg/apache/xpath/functions/SecuritySupport12$1;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;)V

    .line 47
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method greylist getFileExists(Ljava/io/File;)Z
    .registers 3

    .line 129
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$7;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$7;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    .line 130
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method greylist getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 100
    :try_start_0
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$5;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    .line 101
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0
.end method

.method greylist getLastModified(Ljava/io/File;)J
    .registers 3

    .line 138
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$8;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$8;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V

    .line 139
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method greylist getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 3

    .line 72
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$3;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/ClassLoader;)V

    .line 73
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method greylist getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 114
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xpath/functions/SecuritySupport12$6;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method greylist getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 59
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$2;

    invoke-direct {v0, p0}, Lorg/apache/xpath/functions/SecuritySupport12$2;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;)V

    .line 60
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method greylist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Lorg/apache/xpath/functions/SecuritySupport12$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/functions/SecuritySupport12$4;-><init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
