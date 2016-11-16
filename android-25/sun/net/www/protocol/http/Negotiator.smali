.class public abstract Lsun/net/www/protocol/http/Negotiator;
.super Ljava/lang/Object;
.source "Negotiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static finest(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 78
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "NegotiateAuthentication: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@1b
    .line 77
    return-void
.end method

.method static getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;
    .locals 9
    .param p0, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 51
    :try_start_0
    const-string/jumbo v5, "sun.net.www.protocol.http.spnego.NegotiatorImpl"

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    .line 52
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v5, 0x1

    #@b
    new-array v5, v5, [Ljava/lang/Class;

    #@d
    const-class v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@f
    const/4 v7, 0x0

    #@10
    aput-object v6, v5, v7

    #@12
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v0

    #@16
    .line 63
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    #@17
    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    #@19
    const/4 v6, 0x0

    #@1a
    aput-object p0, v5, v6

    #@1c
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lsun/net/www/protocol/http/Negotiator;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2

    #@22
    return-object v5

    #@23
    .line 56
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    #@24
    .line 59
    .local v3, "roe":Ljava/lang/ReflectiveOperationException;
    new-instance v5, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v5

    #@2a
    .line 53
    .end local v3    # "roe":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    #@2b
    .line 54
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    #@2e
    .line 55
    return-object v8

    #@2f
    .line 64
    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "c":Ljava/lang/reflect/Constructor;
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_2
    move-exception v3

    #@30
    .line 65
    .restart local v3    # "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v3}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    #@33
    .line 66
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@36
    move-result-object v4

    #@37
    .line 67
    .local v4, "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    #@39
    instance-of v5, v4, Ljava/lang/Exception;

    #@3b
    if-eqz v5, :cond_0

    #@3d
    .line 68
    nop

    #@3e
    nop

    #@3f
    .end local v4    # "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    #@42
    .line 69
    :cond_0
    return-object v8
.end method


# virtual methods
.method public abstract firstToken()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextToken([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
