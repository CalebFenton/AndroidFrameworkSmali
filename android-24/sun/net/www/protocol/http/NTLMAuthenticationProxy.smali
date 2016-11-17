.class Lsun/net/www/protocol/http/NTLMAuthenticationProxy;
.super Ljava/lang/Object;
.source "NTLMAuthenticationProxy.java"


# static fields
.field private static final clazzStr:Ljava/lang/String; = "sun.net.www.protocol.http.ntlm.NTLMAuthentication"

.field private static isTrustedSite:Ljava/lang/reflect/Method; = null

.field private static final isTrustedSiteStr:Ljava/lang/String; = "isTrustedSite"

.field static final proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

.field static final supported:Z

.field private static supportsTA:Ljava/lang/reflect/Method; = null

.field private static final supportsTAStr:Ljava/lang/String; = "supportsTransparentAuth"

.field static final supportsTransparentAuth:Z


# instance fields
.field private final fiveArgCtr:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final threeArgCtr:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    invoke-static {}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->tryLoadNTLMAuthentication()Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@7
    .line 45
    sget-object v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    #@e
    .line 46
    sget-boolean v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    invoke-static {}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth()Z

    #@15
    move-result v1

    #@16
    :cond_0
    sput-boolean v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    #@18
    .line 37
    return-void

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 45
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p1, "threeArgCtr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    .local p2, "fiveArgCtr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->threeArgCtr:Ljava/lang/reflect/Constructor;

    #@5
    .line 54
    iput-object p2, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->fiveArgCtr:Ljava/lang/reflect/Constructor;

    #@7
    .line 52
    return-void
.end method

.method static finest(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 144
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "NTLMAuthenticationProxy: "

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
    .line 143
    return-void
.end method

.method public static isTrustedSite(Ljava/net/URL;)Z
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite:Ljava/lang/reflect/Method;

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p0, v2, v3

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/Boolean;

    #@10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 103
    :catch_0
    move-exception v0

    #@16
    .line 104
    .local v0, "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    #@19
    .line 107
    return v4
.end method

.method private static supportsTransparentAuth()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 89
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTA:Ljava/lang/reflect/Method;

    #@3
    const/4 v2, 0x0

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/Boolean;

    #@d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 90
    :catch_0
    move-exception v0

    #@13
    .line 91
    .local v0, "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    #@16
    .line 94
    return v4
.end method

.method private static tryLoadNTLMAuthentication()Lsun/net/www/protocol/http/NTLMAuthenticationProxy;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 120
    :try_start_0
    const-string/jumbo v5, "sun.net.www.protocol.http.ntlm.NTLMAuthentication"

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 121
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    if-eqz v0, :cond_0

    #@c
    .line 122
    const/4 v5, 0x3

    #@d
    new-array v5, v5, [Ljava/lang/Class;

    #@f
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@11
    const/4 v7, 0x0

    #@12
    aput-object v6, v5, v7

    #@14
    .line 123
    const-class v6, Ljava/net/URL;

    #@16
    const/4 v7, 0x1

    #@17
    aput-object v6, v5, v7

    #@19
    .line 124
    const-class v6, Ljava/net/PasswordAuthentication;

    #@1b
    const/4 v7, 0x2

    #@1c
    aput-object v6, v5, v7

    #@1e
    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@21
    move-result-object v4

    #@22
    .line 125
    .local v4, "threeArg":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    const/4 v5, 0x4

    #@23
    new-array v5, v5, [Ljava/lang/Class;

    #@25
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@27
    const/4 v7, 0x0

    #@28
    aput-object v6, v5, v7

    #@2a
    .line 126
    const-class v6, Ljava/lang/String;

    #@2c
    const/4 v7, 0x1

    #@2d
    aput-object v6, v5, v7

    #@2f
    .line 127
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    const/4 v7, 0x2

    #@32
    aput-object v6, v5, v7

    #@34
    .line 128
    const-class v6, Ljava/net/PasswordAuthentication;

    #@36
    const/4 v7, 0x3

    #@37
    aput-object v6, v5, v7

    #@39
    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3c
    move-result-object v2

    #@3d
    .line 129
    .local v2, "fiveArg":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    const-string/jumbo v5, "supportsTransparentAuth"

    #@40
    const/4 v6, 0x0

    #@41
    new-array v6, v6, [Ljava/lang/Class;

    #@43
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@46
    move-result-object v5

    #@47
    sput-object v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTA:Ljava/lang/reflect/Method;

    #@49
    .line 130
    const-string/jumbo v5, "isTrustedSite"

    #@4c
    const/4 v6, 0x1

    #@4d
    new-array v6, v6, [Ljava/lang/Class;

    #@4f
    const-class v7, Ljava/net/URL;

    #@51
    const/4 v8, 0x0

    #@52
    aput-object v7, v6, v8

    #@54
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@57
    move-result-object v5

    #@58
    sput-object v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite:Ljava/lang/reflect/Method;

    #@5a
    .line 131
    new-instance v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@5c
    invoke-direct {v5, v4, v2}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    return-object v5

    #@60
    .line 136
    .end local v2    # "fiveArg":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    .end local v4    # "threeArg":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lsun/net/www/protocol/http/AuthenticationInfo;>;"
    :catch_0
    move-exception v3

    #@61
    .line 137
    .local v3, "roe":Ljava/lang/ReflectiveOperationException;
    new-instance v5, Ljava/lang/AssertionError;

    #@63
    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@66
    throw v5

    #@67
    .line 134
    .end local v3    # "roe":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    #@68
    .line 135
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    #@6b
    .line 140
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-object v9
.end method


# virtual methods
.method create(ZLjava/lang/String;ILjava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5
    .param p1, "isProxy"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "pw"    # Ljava/net/PasswordAuthentication;

    #@0
    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->fiveArgCtr:Ljava/lang/reflect/Constructor;

    #@2
    const/4 v2, 0x4

    #@3
    new-array v2, v2, [Ljava/lang/Object;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v3

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    const/4 v3, 0x1

    #@d
    aput-object p2, v2, v3

    #@f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    const/4 v4, 0x2

    #@14
    aput-object v3, v2, v4

    #@16
    const/4 v3, 0x3

    #@17
    aput-object p4, v2, v3

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    return-object v1

    #@20
    .line 76
    :catch_0
    move-exception v0

    #@21
    .line 77
    .local v0, "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    #@24
    .line 80
    const/4 v1, 0x0

    #@25
    return-object v1
.end method

.method create(ZLjava/net/URL;Ljava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5
    .param p1, "isProxy"    # Z
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "pw"    # Ljava/net/PasswordAuthentication;

    #@0
    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->threeArgCtr:Ljava/lang/reflect/Constructor;

    #@2
    const/4 v2, 0x3

    #@3
    new-array v2, v2, [Ljava/lang/Object;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v3

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    const/4 v3, 0x1

    #@d
    aput-object p2, v2, v3

    #@f
    const/4 v3, 0x2

    #@10
    aput-object p3, v2, v3

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return-object v1

    #@19
    .line 63
    :catch_0
    move-exception v0

    #@1a
    .line 64
    .local v0, "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    #@1d
    .line 67
    const/4 v1, 0x0

    #@1e
    return-object v1
.end method
