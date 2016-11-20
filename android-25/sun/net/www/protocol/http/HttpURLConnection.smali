.class public Lsun/net/www/protocol/http/HttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    }
.end annotation


# static fields
.field private static final synthetic -sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I = null

.field private static final EXCLUDE_HEADERS:[Ljava/lang/String;

.field private static final EXCLUDE_HEADERS2:[Ljava/lang/String;

.field static HTTP_CONNECT:Ljava/lang/String; = null

.field private static final RETRY_MSG1:Ljava/lang/String; = "cannot retry due to proxy authentication, in streaming mode"

.field private static final RETRY_MSG2:Ljava/lang/String; = "cannot retry due to server authentication, in streaming mode"

.field private static final RETRY_MSG3:Ljava/lang/String; = "cannot retry due to redirection, in streaming mode"

.field private static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field private static final SET_COOKIE2:Ljava/lang/String; = "set-cookie2"

.field static final acceptString:Ljava/lang/String; = "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

.field private static final allowRestrictedHeaders:Z

.field private static bufSize4ES:I = 0x0

.field private static defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator; = null

.field static final defaultmaxRedirects:I = 0x14

.field private static enableESBuffer:Z = false

.field static final httpVersion:Ljava/lang/String; = "HTTP/1.1"

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field static final maxRedirects:I

.field private static final restrictedHeaderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final restrictedHeaders:[Ljava/lang/String;

.field private static timeout4ESBuffer:I

.field public static final userAgent:Ljava/lang/String;

.field static final validateProxy:Z

.field static final validateServer:Z

.field static final version:Ljava/lang/String;


# instance fields
.field private authObj:Ljava/lang/Object;

.field private cacheHandler:Ljava/net/ResponseCache;

.field private cachedHeaders:Lsun/net/www/MessageHeader;

.field private cachedInputStream:Ljava/io/InputStream;

.field protected cachedResponse:Ljava/net/CacheResponse;

.field cdata:[B

.field private connectTimeout:I

.field private cookieHandler:Ljava/net/CookieHandler;

.field currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

.field currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

.field digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

.field private doingNTLM2ndStage:Z

.field private doingNTLMp2ndStage:Z

.field domain:Ljava/lang/String;

.field private errorStream:Ljava/io/InputStream;

.field private failedOnce:Z

.field private filteredHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected handler:Lsun/net/www/protocol/http/Handler;

.field protected http:Lsun/net/www/http/HttpClient;

.field private inputStream:Ljava/io/InputStream;

.field protected instProxy:Ljava/net/Proxy;

.field isUserProxyAuth:Z

.field isUserServerAuth:Z

.field needToCheck:Z

.field protected pi:Lsun/net/ProgressSource;

.field private poster:Lsun/net/www/http/PosterOutputStream;

.field proxyAuthKey:Ljava/lang/String;

.field protected ps:Ljava/io/PrintStream;

.field private readTimeout:I

.field private rememberedException:Ljava/lang/Exception;

.field requestURI:Ljava/lang/String;

.field private requests:Lsun/net/www/MessageHeader;

.field private responses:Lsun/net/www/MessageHeader;

.field private reuseClient:Lsun/net/www/http/HttpClient;

.field serverAuthKey:Ljava/lang/String;

.field private setRequests:Z

.field private setUserCookies:Z

.field private strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

.field private tryTransparentNTLMProxy:Z

.field private tryTransparentNTLMServer:Z

.field private tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field private userCookies:Ljava/lang/String;

.field private userCookies2:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    #@2
    return v0
.end method

.method static synthetic -get1()Lsun/util/logging/PlatformLogger;
    .locals 1

    #@0
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@2
    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    #@0
    sget v0, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    #@2
    return v0
.end method

.method private static synthetic -getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/net/www/protocol/http/AuthScheme;->values()[Lsun/net/www/protocol/http/AuthScheme;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method static synthetic -wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V
    .locals 0
    .param p1, "inClose"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 86
    const-string/jumbo v2, "CONNECT"

    #@8
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    #@a
    .line 140
    sput-boolean v5, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    #@c
    .line 144
    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    #@e
    .line 148
    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    #@10
    .line 173
    const/16 v2, 0xc

    #@12
    new-array v2, v2, [Ljava/lang/String;

    #@14
    .line 177
    const-string/jumbo v3, "Access-Control-Request-Headers"

    #@17
    aput-object v3, v2, v5

    #@19
    .line 178
    const-string/jumbo v3, "Access-Control-Request-Method"

    #@1c
    aput-object v3, v2, v6

    #@1e
    .line 179
    const-string/jumbo v3, "Connection"

    #@21
    aput-object v3, v2, v7

    #@23
    .line 180
    const-string/jumbo v3, "Content-Length"

    #@26
    aput-object v3, v2, v8

    #@28
    .line 183
    const-string/jumbo v3, "Content-Transfer-Encoding"

    #@2b
    aput-object v3, v2, v9

    #@2d
    .line 186
    const-string/jumbo v3, "Host"

    #@30
    const/4 v4, 0x5

    #@31
    aput-object v3, v2, v4

    #@33
    .line 187
    const-string/jumbo v3, "Keep-Alive"

    #@36
    const/4 v4, 0x6

    #@37
    aput-object v3, v2, v4

    #@39
    .line 188
    const-string/jumbo v3, "Origin"

    #@3c
    const/4 v4, 0x7

    #@3d
    aput-object v3, v2, v4

    #@3f
    .line 191
    const-string/jumbo v3, "Trailer"

    #@42
    const/16 v4, 0x8

    #@44
    aput-object v3, v2, v4

    #@46
    .line 192
    const-string/jumbo v3, "Transfer-Encoding"

    #@49
    const/16 v4, 0x9

    #@4b
    aput-object v3, v2, v4

    #@4d
    .line 193
    const-string/jumbo v3, "Upgrade"

    #@50
    const/16 v4, 0xa

    #@52
    aput-object v3, v2, v4

    #@54
    .line 195
    const-string/jumbo v3, "Via"

    #@57
    const/16 v4, 0xb

    #@59
    aput-object v3, v2, v4

    #@5b
    .line 173
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    #@5d
    .line 200
    new-instance v2, Lsun/security/action/GetIntegerAction;

    #@5f
    .line 201
    const-string/jumbo v3, "http.maxRedirects"

    #@62
    const/16 v4, 0x14

    #@64
    .line 200
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@67
    .line 199
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Ljava/lang/Integer;

    #@6d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v2

    #@71
    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    #@73
    .line 203
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@75
    const-string/jumbo v3, "java.version"

    #@78
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@7b
    .line 202
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@7e
    move-result-object v2

    #@7f
    check-cast v2, Ljava/lang/String;

    #@81
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    #@83
    .line 205
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@85
    const-string/jumbo v3, "http.agent"

    #@88
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8b
    .line 204
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Ljava/lang/String;

    #@91
    .line 206
    .local v0, "agent":Ljava/lang/String;
    if-nez v0, :cond_2

    #@93
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v3, "Java/"

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    #@a1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    .line 211
    :goto_0
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    #@ab
    .line 213
    new-instance v2, Lsun/security/action/GetBooleanAction;

    #@ad
    .line 214
    const-string/jumbo v3, "http.auth.digest.validateProxy"

    #@b0
    .line 213
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@b3
    .line 212
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b6
    move-result-object v2

    #@b7
    check-cast v2, Ljava/lang/Boolean;

    #@b9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@bc
    move-result v2

    #@bd
    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    #@bf
    .line 216
    new-instance v2, Lsun/security/action/GetBooleanAction;

    #@c1
    .line 217
    const-string/jumbo v3, "http.auth.digest.validateServer"

    #@c4
    .line 216
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@c7
    .line 215
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@ca
    move-result-object v2

    #@cb
    check-cast v2, Ljava/lang/Boolean;

    #@cd
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@d0
    move-result v2

    #@d1
    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    #@d3
    .line 220
    new-instance v2, Lsun/security/action/GetBooleanAction;

    #@d5
    .line 221
    const-string/jumbo v3, "sun.net.http.errorstream.enableBuffering"

    #@d8
    .line 220
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@db
    .line 219
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@de
    move-result-object v2

    #@df
    check-cast v2, Ljava/lang/Boolean;

    #@e1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@e4
    move-result v2

    #@e5
    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    #@e7
    .line 223
    new-instance v2, Lsun/security/action/GetIntegerAction;

    #@e9
    .line 224
    const-string/jumbo v3, "sun.net.http.errorstream.timeout"

    #@ec
    const/16 v4, 0x12c

    #@ee
    .line 223
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@f1
    .line 222
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@f4
    move-result-object v2

    #@f5
    check-cast v2, Ljava/lang/Integer;

    #@f7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@fa
    move-result v2

    #@fb
    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    #@fd
    .line 225
    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    #@ff
    if-gtz v2, :cond_0

    #@101
    .line 226
    const/16 v2, 0x12c

    #@103
    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    #@105
    .line 230
    :cond_0
    new-instance v2, Lsun/security/action/GetIntegerAction;

    #@107
    .line 231
    const-string/jumbo v3, "sun.net.http.errorstream.bufferSize"

    #@10a
    const/16 v4, 0x1000

    #@10c
    .line 230
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@10f
    .line 229
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@112
    move-result-object v2

    #@113
    check-cast v2, Ljava/lang/Integer;

    #@115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@118
    move-result v2

    #@119
    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    #@11b
    .line 232
    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    #@11d
    if-gtz v2, :cond_1

    #@11f
    .line 233
    const/16 v2, 0x1000

    #@121
    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    #@123
    .line 237
    :cond_1
    new-instance v2, Lsun/security/action/GetBooleanAction;

    #@125
    .line 238
    const-string/jumbo v3, "sun.net.http.allowRestrictedHeaders"

    #@128
    .line 237
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@12b
    .line 236
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@12e
    move-result-object v2

    #@12f
    check-cast v2, Ljava/lang/Boolean;

    #@131
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@134
    move-result v2

    #@135
    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    #@137
    .line 239
    sget-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    #@139
    if-nez v2, :cond_3

    #@13b
    .line 240
    new-instance v2, Ljava/util/HashSet;

    #@13d
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    #@13f
    array-length v3, v3

    #@140
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@143
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    #@145
    .line 241
    const/4 v1, 0x0

    #@146
    .local v1, "i":I
    :goto_1
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    #@148
    array-length v2, v2

    #@149
    if-ge v1, v2, :cond_4

    #@14b
    .line 242
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    #@14d
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    #@14f
    aget-object v3, v3, v1

    #@151
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@154
    move-result-object v3

    #@155
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@158
    .line 241
    add-int/lit8 v1, v1, 0x1

    #@15a
    goto :goto_1

    #@15b
    .line 209
    .end local v1    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v2

    #@164
    const-string/jumbo v3, " Java/"

    #@167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v2

    #@16b
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    #@16d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v2

    #@171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v0

    #@175
    goto/16 :goto_0

    #@177
    .line 245
    :cond_3
    const/4 v2, 0x0

    #@178
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    #@17a
    .line 255
    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    #@17c
    .line 256
    const-string/jumbo v3, "Proxy-Authorization"

    #@17f
    aput-object v3, v2, v5

    #@181
    .line 257
    const-string/jumbo v3, "Authorization"

    #@184
    aput-object v3, v2, v6

    #@186
    .line 255
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@188
    .line 261
    new-array v2, v9, [Ljava/lang/String;

    #@18a
    .line 262
    const-string/jumbo v3, "Proxy-Authorization"

    #@18d
    aput-object v3, v2, v5

    #@18f
    .line 263
    const-string/jumbo v3, "Authorization"

    #@192
    aput-object v3, v2, v6

    #@194
    .line 264
    const-string/jumbo v3, "Cookie"

    #@197
    aput-object v3, v2, v7

    #@199
    .line 265
    const-string/jumbo v3, "Cookie2"

    #@19c
    aput-object v3, v2, v8

    #@19e
    .line 261
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS2:[Ljava/lang/String;

    #@1a0
    .line 374
    const-string/jumbo v2, "sun.net.www.protocol.http.HttpURLConnection"

    #@1a3
    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@1a6
    move-result-object v2

    #@1a7
    .line 373
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@1a9
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 718
    new-instance v0, Ljava/net/Proxy;

    #@2
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@4
    invoke-static {p2, p3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@b
    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@e
    .line 717
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 724
    new-instance v0, Lsun/net/www/protocol/http/Handler;

    #@2
    invoke-direct {v0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    #@8
    .line 723
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 5
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 728
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@7
    .line 281
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@9
    .line 285
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    #@b
    .line 288
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    #@d
    .line 289
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@f
    .line 290
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@11
    .line 310
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@13
    .line 311
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@15
    .line 312
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    #@17
    .line 313
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@19
    .line 314
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@1b
    .line 317
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1d
    .line 318
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@1f
    .line 335
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@21
    .line 337
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@23
    .line 340
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    #@25
    .line 343
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@27
    .line 347
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@29
    .line 350
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@2b
    .line 364
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2d
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2f
    .line 369
    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@31
    .line 370
    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@33
    .line 2295
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    #@35
    .line 2425
    const/16 v1, 0x80

    #@37
    new-array v1, v1, [B

    #@39
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    #@3b
    .line 729
    new-instance v1, Lsun/net/www/MessageHeader;

    #@3d
    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    #@40
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@42
    .line 730
    new-instance v1, Lsun/net/www/MessageHeader;

    #@44
    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    #@47
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@49
    .line 731
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->handler:Lsun/net/www/protocol/http/Handler;

    #@4b
    .line 732
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    #@4d
    .line 733
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    #@4f
    instance-of v1, v1, Lsun/net/ApplicationProxy;

    #@51
    if-eqz v1, :cond_0

    #@53
    .line 737
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    #@56
    move-result-object v1

    #@57
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 748
    :goto_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$3;

    #@5b
    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$3;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    #@5e
    .line 747
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@61
    move-result-object v1

    #@62
    check-cast v1, Ljava/net/ResponseCache;

    #@64
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    #@66
    .line 727
    return-void

    #@67
    .line 741
    :cond_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$2;

    #@69
    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$2;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    #@6c
    .line 740
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    check-cast v1, Ljava/net/CookieHandler;

    #@72
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    #@74
    goto :goto_0

    #@75
    .line 738
    :catch_0
    move-exception v0

    #@76
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    #@4
    .line 711
    return-void
.end method

.method private checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/16 v3, 0xa

    #@3
    .line 462
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v1

    #@7
    .line 463
    .local v1, "index":I
    if-eq v1, v4, :cond_0

    #@9
    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Illegal character(s) in message header field: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 464
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 468
    :cond_0
    if-nez p2, :cond_1

    #@25
    .line 469
    return-void

    #@26
    .line 472
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v1

    #@2a
    .line 473
    :goto_0
    if-eq v1, v4, :cond_4

    #@2c
    .line 474
    add-int/lit8 v1, v1, 0x1

    #@2e
    .line 475
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@31
    move-result v2

    #@32
    if-ge v1, v2, :cond_3

    #@34
    .line 476
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v0

    #@38
    .line 477
    .local v0, "c":C
    const/16 v2, 0x20

    #@3a
    if-eq v0, v2, :cond_2

    #@3c
    const/16 v2, 0x9

    #@3e
    if-ne v0, v2, :cond_3

    #@40
    .line 479
    :cond_2
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    #@43
    move-result v1

    #@44
    goto :goto_0

    #@45
    .line 483
    .end local v0    # "c":C
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@47
    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "Illegal character(s) in message header value: "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 483
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2

    #@5f
    .line 460
    :cond_4
    return-void
.end method

.method private checkResponseCredentials(Z)V
    .locals 6
    .param p1, "inClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2259
    :try_start_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2260
    return-void

    #@6
    .line 2261
    :cond_0
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    #@8
    if-eqz v3, :cond_2

    #@a
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@c
    if-eqz v3, :cond_2

    #@e
    .line 2262
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@10
    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    #@12
    .line 2261
    if-eqz v3, :cond_2

    #@14
    .line 2263
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@16
    const-string/jumbo v4, "Proxy-Authentication-Info"

    #@19
    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2264
    .local v2, "raw":Ljava/lang/String;
    if-nez p1, :cond_1

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 2266
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@23
    .line 2265
    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    #@25
    .line 2267
    .local v0, "da":Lsun/net/www/protocol/http/DigestAuthentication;
    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@27
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 2268
    const/4 v3, 0x0

    #@2f
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@31
    .line 2271
    .end local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "raw":Ljava/lang/String;
    :cond_2
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    #@33
    if-eqz v3, :cond_4

    #@35
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@37
    if-eqz v3, :cond_4

    #@39
    .line 2272
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@3b
    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    #@3d
    .line 2271
    if-eqz v3, :cond_4

    #@3f
    .line 2273
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@41
    const-string/jumbo v4, "Authentication-Info"

    #@44
    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 2274
    .restart local v2    # "raw":Ljava/lang/String;
    if-nez p1, :cond_3

    #@4a
    if-eqz v2, :cond_4

    #@4c
    .line 2276
    :cond_3
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@4e
    .line 2275
    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    #@50
    .line 2277
    .restart local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@52
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@54
    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    #@57
    .line 2278
    const/4 v3, 0x0

    #@58
    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@5a
    .line 2281
    .end local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "raw":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@5c
    if-nez v3, :cond_5

    #@5e
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@60
    if-nez v3, :cond_5

    #@62
    .line 2282
    const/4 v3, 0x0

    #@63
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    .line 2257
    :cond_5
    return-void

    #@66
    .line 2284
    :catch_0
    move-exception v1

    #@67
    .line 2285
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@6a
    .line 2286
    iput-boolean v5, p0, Ljava/net/URLConnection;->connected:Z

    #@6c
    .line 2287
    throw v1
.end method

.method private checkReuseConnection()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 855
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 856
    return v2

    #@8
    .line 858
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 859
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@e
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@10
    .line 860
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@12
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@19
    .line 861
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1b
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->reuse:Z

    #@1d
    .line 862
    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@1f
    .line 863
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    #@21
    .line 864
    return v2

    #@22
    .line 866
    :cond_1
    return v3
.end method

.method static connectRequestURI(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 1892
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1893
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@7
    move-result v1

    #@8
    .line 1894
    .local v1, "port":I
    const/4 v2, -0x1

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 1896
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ":"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 1894
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    #@27
    move-result v1

    #@28
    goto :goto_0
.end method

.method private disconnectInternal()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2504
    const/4 v0, -0x1

    #@2
    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@4
    .line 2505
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@6
    .line 2506
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2507
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@c
    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    #@f
    .line 2508
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@11
    .line 2510
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2511
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@17
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@1a
    .line 2512
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c
    .line 2513
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@1f
    .line 2503
    :cond_1
    return-void
.end method

.method private disconnectWeb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2490
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@8
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2491
    const/4 v0, -0x1

    #@f
    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@11
    .line 2494
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    #@14
    .line 2489
    :goto_0
    return-void

    #@15
    .line 2496
    :cond_0
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@18
    goto :goto_0
.end method

.method private expect100Continue()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, -0x1

    #@2
    const/4 v10, 0x1

    #@3
    .line 1010
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5
    invoke-virtual {v7}, Lsun/net/NetworkClient;->getReadTimeout()I

    #@8
    move-result v2

    #@9
    .line 1011
    .local v2, "oldTimeout":I
    const/4 v0, 0x0

    #@a
    .line 1012
    .local v0, "enforceTimeOut":Z
    const/4 v6, 0x0

    #@b
    .line 1013
    .local v6, "timedOut":Z
    if-gtz v2, :cond_0

    #@d
    .line 1016
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    const/16 v8, 0x1388

    #@11
    invoke-virtual {v7, v8}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@14
    .line 1017
    const/4 v0, 0x1

    #@15
    .line 1021
    :cond_0
    :try_start_0
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@17
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@19
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@1b
    invoke-virtual {v7, v8, v9, p0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 1029
    :goto_0
    if-nez v6, :cond_3

    #@20
    .line 1031
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@22
    invoke-virtual {v7, v12}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 1035
    .local v3, "resp":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@28
    const-string/jumbo v7, "HTTP/"

    #@2b
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_1

    #@31
    .line 1036
    const-string/jumbo v7, "\\s+"

    #@34
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 1037
    .local v4, "sa":[Ljava/lang/String;
    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@3a
    .line 1040
    :try_start_1
    array-length v7, v4

    #@3b
    if-le v7, v10, :cond_1

    #@3d
    .line 1041
    const/4 v7, 0x1

    #@3e
    aget-object v7, v4, v7

    #@40
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v7

    #@44
    iput v7, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    .line 1045
    .end local v4    # "sa":[Ljava/lang/String;
    :cond_1
    :goto_1
    iget v7, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@48
    const/16 v8, 0x64

    #@4a
    if-eq v7, v8, :cond_3

    #@4c
    .line 1046
    new-instance v7, Ljava/net/ProtocolException;

    #@4e
    const-string/jumbo v8, "Server rejected operation"

    #@51
    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@54
    throw v7

    #@55
    .line 1022
    .end local v3    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@56
    .line 1023
    .local v5, "se":Ljava/net/SocketTimeoutException;
    if-nez v0, :cond_2

    #@58
    .line 1024
    throw v5

    #@59
    .line 1026
    :cond_2
    const/4 v6, 0x1

    #@5a
    .line 1027
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5c
    invoke-virtual {v7, v10}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    #@5f
    goto :goto_0

    #@60
    .line 1050
    .end local v5    # "se":Ljava/net/SocketTimeoutException;
    :cond_3
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@62
    invoke-virtual {v7, v2}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@65
    .line 1052
    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@67
    .line 1053
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@69
    invoke-virtual {v7}, Lsun/net/www/MessageHeader;->reset()V

    #@6c
    .line 1007
    return-void

    #@6d
    .line 1042
    .restart local v3    # "resp":Ljava/lang/String;
    .restart local v4    # "sa":[Ljava/lang/String;
    :catch_1
    move-exception v1

    #@6e
    .local v1, "numberFormatException":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2611
    if-nez p2, :cond_0

    #@3
    .line 2612
    return-object v5

    #@4
    .line 2614
    :cond_0
    const-string/jumbo v5, "set-cookie"

    #@7
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 2615
    const-string/jumbo v5, "set-cookie2"

    #@10
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v5

    #@14
    .line 2614
    if-eqz v5, :cond_7

    #@16
    .line 2618
    :cond_1
    iget-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    #@18
    if-nez v5, :cond_2

    #@1a
    .line 2619
    return-object p2

    #@1b
    .line 2621
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    .line 2622
    .local v4, "retValue":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    #@21
    invoke-static {p2, v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    #@24
    move-result-object v2

    #@25
    .line 2623
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v3, 0x0

    #@26
    .line 2624
    .local v3, "multipleCookies":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_5

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/net/HttpCookie;

    #@36
    .line 2626
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->isHttpOnly()Z

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_3

    #@3c
    .line 2628
    if-eqz v3, :cond_4

    #@3e
    .line 2629
    const/16 v5, 0x2c

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    .line 2630
    :cond_4
    iget-object v5, v0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 2631
    const/4 v3, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 2634
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_6

    #@50
    const-string/jumbo v5, ""

    #@53
    :goto_1
    return-object v5

    #@54
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    goto :goto_1

    #@59
    .line 2637
    .end local v1    # "cookie$iterator":Ljava/util/Iterator;
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "multipleCookies":Z
    .end local v4    # "retValue":Ljava/lang/StringBuilder;
    :cond_7
    return-object p2
.end method

.method private followRedirect()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2310
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    #@3
    move-result v9

    #@4
    if-nez v9, :cond_0

    #@6
    .line 2311
    const/4 v9, 0x0

    #@7
    return v9

    #@8
    .line 2314
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@b
    move-result v8

    #@c
    .line 2315
    .local v8, "stat":I
    const/16 v9, 0x12c

    #@e
    if-lt v8, v9, :cond_1

    #@10
    const/16 v9, 0x133

    #@12
    if-le v8, v9, :cond_2

    #@14
    .line 2317
    :cond_1
    const/4 v9, 0x0

    #@15
    return v9

    #@16
    .line 2315
    :cond_2
    const/16 v9, 0x132

    #@18
    if-eq v8, v9, :cond_1

    #@1a
    .line 2316
    const/16 v9, 0x130

    #@1c
    if-eq v8, v9, :cond_1

    #@1e
    .line 2319
    const-string/jumbo v9, "Location"

    #@21
    invoke-virtual {p0, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 2320
    .local v1, "loc":Ljava/lang/String;
    if-nez v1, :cond_3

    #@27
    .line 2324
    const/4 v9, 0x0

    #@28
    return v9

    #@29
    .line 2328
    :cond_3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@2b
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@2e
    .line 2329
    .local v2, "locUrl":Ljava/net/URL;
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@30
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result v9

    #@3c
    if-nez v9, :cond_4

    #@3e
    .line 2330
    const/4 v9, 0x0

    #@3f
    return v9

    #@40
    .line 2333
    .end local v2    # "locUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    #@41
    .line 2335
    .local v3, "mue":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/net/URL;

    #@43
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@45
    invoke-direct {v2, v9, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@48
    .line 2337
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v2    # "locUrl":Ljava/net/URL;
    :cond_4
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@4b
    .line 2338
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_5

    #@51
    .line 2339
    new-instance v9, Ljava/net/HttpRetryException;

    #@53
    const-string/jumbo v10, "cannot retry due to redirection, in streaming mode"

    #@56
    invoke-direct {v9, v10, v8, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@59
    throw v9

    #@5a
    .line 2341
    :cond_5
    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@5c
    const/16 v10, 0x1f4

    #@5e
    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_6

    #@64
    .line 2342
    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@66
    new-instance v10, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v11, "Redirected from "

    #@6e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@74
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    const-string/jumbo v11, " to "

    #@7b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@8a
    .line 2346
    :cond_6
    new-instance v9, Lsun/net/www/MessageHeader;

    #@8c
    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    #@8f
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@91
    .line 2347
    const/16 v9, 0x131

    #@93
    if-ne v8, v9, :cond_9

    #@95
    .line 2356
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 2357
    .local v5, "proxyHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    #@9c
    move-result v6

    #@9d
    .line 2359
    .local v6, "proxyPort":I
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@a0
    move-result-object v7

    #@a1
    .line 2360
    .local v7, "security":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_7

    #@a3
    .line 2361
    invoke-virtual {v7, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@a6
    .line 2364
    :cond_7
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@a8
    invoke-virtual {p0, v9, v5, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    #@ab
    .line 2365
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@ad
    new-instance v10, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    iget-object v11, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@b4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v10

    #@b8
    const-string/jumbo v11, " "

    #@bb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    const-string/jumbo v11, " "

    #@ca
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v10

    #@ce
    .line 2366
    const-string/jumbo v11, "HTTP/1.1"

    #@d1
    .line 2365
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v10

    #@d5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    const/4 v11, 0x0

    #@da
    .line 2366
    const/4 v12, 0x0

    #@db
    .line 2365
    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    #@de
    .line 2367
    const/4 v9, 0x1

    #@df
    iput-boolean v9, p0, Ljava/net/URLConnection;->connected:Z

    #@e1
    .line 2421
    .end local v5    # "proxyHost":Ljava/lang/String;
    .end local v6    # "proxyPort":I
    .end local v7    # "security":Ljava/lang/SecurityManager;
    :cond_8
    :goto_0
    const/4 v9, 0x1

    #@e2
    return v9

    #@e3
    .line 2371
    :cond_9
    iput-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@e5
    .line 2372
    const/4 v9, 0x0

    #@e6
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    #@e8
    .line 2373
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@ea
    const-string/jumbo v10, "POST"

    #@ed
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f0
    move-result v9

    #@f1
    if-eqz v9, :cond_a

    #@f3
    const-string/jumbo v9, "http.strictPostRedirect"

    #@f6
    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@f9
    move-result v9

    #@fa
    if-eqz v9, :cond_d

    #@fc
    .line 2398
    :cond_a
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    #@ff
    move-result v9

    #@100
    if-nez v9, :cond_b

    #@102
    .line 2399
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@105
    .line 2409
    :cond_b
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@107
    if-eqz v9, :cond_8

    #@109
    .line 2410
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@10b
    new-instance v10, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    iget-object v11, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@112
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v10

    #@116
    const-string/jumbo v11, " "

    #@119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v10

    #@11d
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@120
    move-result-object v11

    #@121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v10

    #@125
    const-string/jumbo v11, " "

    #@128
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v10

    #@12c
    .line 2411
    const-string/jumbo v11, "HTTP/1.1"

    #@12f
    .line 2410
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v10

    #@133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v10

    #@137
    const/4 v11, 0x0

    #@138
    .line 2411
    const/4 v12, 0x0

    #@139
    .line 2410
    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    #@13c
    .line 2412
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@13e
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    #@141
    move-result v4

    #@142
    .line 2413
    .local v4, "port":I
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@144
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@147
    move-result-object v0

    #@148
    .line 2414
    .local v0, "host":Ljava/lang/String;
    const/4 v9, -0x1

    #@149
    if-eq v4, v9, :cond_c

    #@14b
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@14d
    invoke-virtual {v9}, Ljava/net/URL;->getDefaultPort()I

    #@150
    move-result v9

    #@151
    if-eq v4, v9, :cond_c

    #@153
    .line 2415
    new-instance v9, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v9

    #@15c
    const-string/jumbo v10, ":"

    #@15f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v9

    #@163
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@166
    move-result-object v10

    #@167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v9

    #@16b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v0

    #@16f
    .line 2417
    :cond_c
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@171
    const-string/jumbo v10, "Host"

    #@174
    invoke-virtual {v9, v10, v0}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@177
    goto/16 :goto_0

    #@179
    .line 2373
    .end local v0    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    :cond_d
    const/16 v9, 0x133

    #@17b
    if-eq v8, v9, :cond_a

    #@17d
    .line 2391
    new-instance v9, Lsun/net/www/MessageHeader;

    #@17f
    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    #@182
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@184
    .line 2392
    const/4 v9, 0x0

    #@185
    iput-boolean v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    #@187
    .line 2393
    const-string/jumbo v9, "GET"

    #@18a
    invoke-virtual {p0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@18d
    .line 2394
    const/4 v9, 0x0

    #@18e
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@190
    .line 2395
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    #@193
    move-result v9

    #@194
    if-nez v9, :cond_8

    #@196
    .line 2396
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@199
    goto/16 :goto_0
.end method

.method private getChainedException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 5
    .param p1, "rememberedException"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 1671
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    #@3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    const/4 v4, 0x0

    #@8
    aput-object v3, v0, v4

    #@a
    .line 1674
    .local v0, "args":[Ljava/lang/Object;
    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$6;

    #@c
    invoke-direct {v3, p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$6;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/IOException;[Ljava/lang/Object;)V

    #@f
    .line 1673
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/io/IOException;

    #@15
    .line 1682
    .local v1, "chainedException":Ljava/io/IOException;
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 1683
    return-object v1

    #@19
    .line 1684
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "chainedException":Ljava/io/IOException;
    :catch_0
    move-exception v2

    #@1a
    .line 1685
    .local v2, "ignored":Ljava/lang/Exception;
    return-object p1
.end method

.method private getFilteredHeaderFields()Ljava/util/Map;
    .locals 11
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
    .line 2645
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 2646
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    #@6
    return-object v10

    #@7
    .line 2648
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    #@9
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 2650
    .local v6, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@e
    if-eqz v10, :cond_3

    #@10
    .line 2651
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@12
    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    #@15
    move-result-object v4

    #@16
    .line 2655
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v10

    #@1a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_5

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 2656
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Ljava/lang/String;

    #@30
    .line 2657
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v9

    #@34
    check-cast v9, Ljava/util/List;

    #@36
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 2658
    .local v3, "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v8

    #@3f
    .local v8, "value$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_4

    #@45
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v7

    #@49
    check-cast v7, Ljava/lang/String;

    #@4b
    .line 2659
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v5, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 2660
    .local v2, "fVal":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@51
    .line 2661
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_2

    #@55
    .line 2653
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "fVal":Ljava/lang/String;
    .end local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "value$iterator":Ljava/util/Iterator;
    .end local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@57
    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    #@5a
    move-result-object v4

    #@5b
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    #@5c
    .line 2663
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "value$iterator":Ljava/util/Iterator;
    .restart local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_1

    #@62
    .line 2664
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@65
    move-result-object v10

    #@66
    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    goto :goto_1

    #@6a
    .line 2667
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value$iterator":Ljava/util/Iterator;
    .end local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@6d
    move-result-object v10

    #@6e
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    #@70
    return-object v10
.end method

.method public static getHttpLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    #@0
    .prologue
    .line 444
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@2
    return-object v0
.end method

.method private getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 39
    .param p1, "authhdr"    # Lsun/net/www/protocol/http/AuthenticationHeader;

    #@0
    .prologue
    .line 1965
    const/4 v9, 0x0

    #@1
    .line 1966
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    #@4
    move-result-object v36

    #@5
    .line 1967
    .local v36, "raw":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7
    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@9
    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 1968
    .local v3, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f
    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@11
    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@14
    move-result v5

    #@15
    .line 1969
    .local v5, "port":I
    if-eqz v3, :cond_7

    #@17
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_7

    #@1d
    .line 1970
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    #@20
    move-result-object v35

    #@21
    .line 1971
    .local v35, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v6, "realm"

    #@24
    move-object/from16 v0, v35

    #@26
    invoke-virtual {v0, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    .line 1972
    .local v7, "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .line 1973
    .local v8, "scheme":Ljava/lang/String;
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    #@30
    .line 1974
    .local v31, "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    const-string/jumbo v6, "basic"

    #@33
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_2

    #@39
    .line 1975
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@3b
    .line 1989
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    #@3d
    .line 1990
    const-string/jumbo v7, ""

    #@40
    .line 1991
    :cond_1
    move-object/from16 v0, v31

    #@42
    invoke-static {v3, v5, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuthKey(Ljava/lang/String;ILjava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@4a
    .line 1992
    move-object/from16 v0, p0

    #@4c
    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@4e
    invoke-static {v6}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@51
    move-result-object v37

    #@52
    .line 1993
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v37, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-nez v37, :cond_6

    #@54
    .line 1994
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    #@57
    move-result-object v6

    #@58
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    #@5b
    move-result v10

    #@5c
    aget v6, v6, v10

    #@5e
    packed-switch v6, :pswitch_data_0

    #@61
    .line 2069
    :goto_1
    new-instance v6, Ljava/lang/AssertionError;

    #@63
    const-string/jumbo v10, "should not reach here"

    #@66
    invoke-direct {v6, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@69
    throw v6

    #@6a
    .line 1976
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_2
    const-string/jumbo v6, "digest"

    #@6d
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_3

    #@73
    .line 1977
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@75
    goto :goto_0

    #@76
    .line 1978
    :cond_3
    const-string/jumbo v6, "ntlm"

    #@79
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_4

    #@7f
    .line 1979
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@81
    .line 1980
    const/4 v6, 0x1

    #@82
    move-object/from16 v0, p0

    #@84
    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@86
    goto :goto_0

    #@87
    .line 1981
    :cond_4
    const-string/jumbo v6, "Kerberos"

    #@8a
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8d
    move-result v6

    #@8e
    if-eqz v6, :cond_5

    #@90
    .line 1982
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@92
    .line 1983
    const/4 v6, 0x1

    #@93
    move-object/from16 v0, p0

    #@95
    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@97
    goto :goto_0

    #@98
    .line 1984
    :cond_5
    const-string/jumbo v6, "Negotiate"

    #@9b
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9e
    move-result v6

    #@9f
    if-eqz v6, :cond_0

    #@a1
    .line 1985
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@a3
    .line 1986
    const/4 v6, 0x1

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@a8
    goto :goto_0

    #@a9
    .line 1996
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_0
    const/4 v4, 0x0

    #@aa
    .line 1998
    .local v4, "addr":Ljava/net/InetAddress;
    move-object/from16 v32, v3

    #@ac
    .line 2000
    .local v32, "finalHost":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$7;

    #@ae
    move-object/from16 v0, p0

    #@b0
    invoke-direct {v6, v0, v3}, Lsun/net/www/protocol/http/HttpURLConnection$7;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/lang/String;)V

    #@b3
    .line 1999
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@b6
    move-result-object v6

    #@b7
    move-object v0, v6

    #@b8
    check-cast v0, Ljava/net/InetAddress;

    #@ba
    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    #@bb
    .line 2011
    .end local v4    # "addr":Ljava/net/InetAddress;
    :goto_2
    const-string/jumbo v6, "http"

    #@be
    .line 2012
    move-object/from16 v0, p0

    #@c0
    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@c2
    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@c4
    .line 2010
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@c7
    move-result-object v14

    #@c8
    .line 2013
    .local v14, "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_12

    #@ca
    .line 2014
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    #@cc
    const/4 v10, 0x1

    #@cd
    move-object v11, v3

    #@ce
    move v12, v5

    #@cf
    move-object v13, v7

    #@d0
    invoke-direct/range {v9 .. v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V

    #@d3
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_3
    move-object/from16 v37, v9

    #@d5
    .line 2075
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .end local v32    # "finalHost":Ljava/lang/String;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_6
    :goto_4
    if-nez v37, :cond_d

    #@d7
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@d9
    if-eqz v6, :cond_d

    #@db
    .line 2076
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@dd
    invoke-interface {v6, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    #@e0
    move-result v6

    #@e1
    .line 2075
    if-eqz v6, :cond_f

    #@e3
    .line 2078
    :try_start_1
    new-instance v38, Ljava/net/URL;

    #@e5
    const-string/jumbo v6, "http"

    #@e8
    const-string/jumbo v10, "/"

    #@eb
    move-object/from16 v0, v38

    #@ed
    invoke-direct {v0, v6, v3, v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@f0
    .line 2079
    .local v38, "u":Ljava/net/URL;
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@f2
    move-object/from16 v0, v38

    #@f4
    invoke-interface {v6, v0, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f7
    move-result-object v20

    #@f8
    .line 2080
    .local v20, "a":Ljava/lang/String;
    if-eqz v20, :cond_f

    #@fa
    .line 2081
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    #@fc
    const/16 v16, 0x1

    #@fe
    move-object v15, v9

    #@ff
    move-object/from16 v17, v3

    #@101
    move/from16 v18, v5

    #@103
    move-object/from16 v19, v7

    #@105
    invoke-direct/range {v15 .. v20}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    #@108
    .line 2087
    .end local v20    # "a":Ljava/lang/String;
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "u":Ljava/net/URL;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_5
    if-eqz v9, :cond_7

    #@10a
    .line 2088
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, v35

    #@10e
    move-object/from16 v2, v36

    #@110
    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@113
    move-result v6

    #@114
    if-nez v6, :cond_7

    #@116
    .line 2089
    const/4 v9, 0x0

    #@117
    .line 2093
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v35    # "p":Lsun/net/www/HeaderParser;
    :cond_7
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@119
    const/16 v10, 0x190

    #@11b
    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@11e
    move-result v6

    #@11f
    if-eqz v6, :cond_8

    #@121
    .line 2094
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@123
    new-instance v6, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v11, "Proxy Authentication for "

    #@12b
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v6

    #@12f
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->toString()Ljava/lang/String;

    #@132
    move-result-object v11

    #@133
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v6

    #@137
    const-string/jumbo v11, " returned "

    #@13a
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v11

    #@13e
    if-eqz v9, :cond_e

    #@140
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@143
    move-result-object v6

    #@144
    :goto_6
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    invoke-virtual {v10, v6}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    #@14f
    .line 2096
    :cond_8
    return-object v9

    #@150
    .line 2019
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v35    # "p":Lsun/net/www/HeaderParser;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_1
    move-object/from16 v0, p0

    #@152
    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@154
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@157
    move-result-object v18

    #@158
    .line 2020
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@15c
    move-object/from16 v21, v0

    #@15e
    sget-object v22, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@160
    .line 2019
    const/16 v16, 0x0

    #@162
    move-object v15, v3

    #@163
    move/from16 v17, v5

    #@165
    move-object/from16 v19, v7

    #@167
    move-object/from16 v20, v8

    #@169
    .line 2018
    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@16c
    move-result-object v14

    #@16d
    .line 2021
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_11

    #@16f
    .line 2023
    new-instance v22, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@171
    invoke-direct/range {v22 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    #@174
    .line 2024
    .local v22, "params":Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    #@176
    const/16 v16, 0x1

    #@178
    move-object v15, v9

    #@179
    move-object/from16 v17, v3

    #@17b
    move/from16 v18, v5

    #@17d
    move-object/from16 v19, v7

    #@17f
    move-object/from16 v20, v8

    #@181
    move-object/from16 v21, v14

    #@183
    invoke-direct/range {v15 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    #@186
    .end local v22    # "params":Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_7
    move-object/from16 v37, v9

    #@188
    .line 2027
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    #@18a
    .line 2029
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :pswitch_2
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@18c
    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    #@18e
    if-eqz v6, :cond_10

    #@190
    .line 2033
    move-object/from16 v0, p0

    #@192
    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@194
    if-eqz v6, :cond_9

    #@196
    .line 2035
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@198
    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    #@19a
    .line 2034
    move-object/from16 v0, p0

    #@19c
    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@19e
    .line 2037
    :cond_9
    const/4 v14, 0x0

    #@19f
    .line 2038
    .local v14, "a":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, p0

    #@1a1
    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@1a3
    if-eqz v6, :cond_b

    #@1a5
    .line 2039
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@1a7
    const-string/jumbo v10, "Trying Transparent NTLM authentication"

    #@1aa
    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@1ad
    .line 2051
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :goto_8
    move-object/from16 v0, p0

    #@1af
    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@1b1
    if-nez v6, :cond_a

    #@1b3
    .line 2052
    move-object/from16 v0, p0

    #@1b5
    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@1b7
    if-nez v6, :cond_c

    #@1b9
    if-eqz v14, :cond_c

    #@1bb
    .line 2053
    :cond_a
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@1bd
    const/4 v10, 0x1

    #@1be
    invoke-virtual {v6, v10, v3, v5, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/lang/String;ILjava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@1c1
    move-result-object v9

    #@1c2
    .line 2057
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_9
    const/4 v6, 0x0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    #@1c7
    :goto_a
    move-object/from16 v37, v9

    #@1c9
    .line 2059
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    #@1cb
    .line 2042
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_b
    move-object/from16 v0, p0

    #@1cd
    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1cf
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1d2
    move-result-object v26

    #@1d3
    .line 2043
    const-string/jumbo v27, ""

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1da
    move-object/from16 v29, v0

    #@1dc
    sget-object v30, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@1de
    .line 2042
    const/16 v24, 0x0

    #@1e0
    move-object/from16 v23, v3

    #@1e2
    move/from16 v25, v5

    #@1e4
    move-object/from16 v28, v8

    #@1e6
    .line 2041
    invoke-static/range {v23 .. v30}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@1e9
    move-result-object v14

    #@1ea
    .local v14, "a":Ljava/net/PasswordAuthentication;
    goto :goto_8

    #@1eb
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_c
    move-object/from16 v9, v37

    #@1ed
    .line 2052
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_9

    #@1ee
    .line 2061
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_3
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@1f0
    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@1f2
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    #@1f5
    move-result-object v10

    #@1f6
    const-string/jumbo v11, "Negotiate"

    #@1f9
    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@1fc
    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    #@1ff
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v37, v9

    #@201
    .line 2062
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    #@203
    .line 2064
    :pswitch_4
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@205
    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@207
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    #@20a
    move-result-object v10

    #@20b
    const-string/jumbo v11, "Kerberos"

    #@20e
    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@211
    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    #@214
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v37, v9

    #@216
    .line 2065
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    #@218
    .line 2067
    :pswitch_5
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@21a
    new-instance v10, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v11, "Unknown/Unsupported authentication scheme: "

    #@222
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v10

    #@226
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v10

    #@22a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22d
    move-result-object v10

    #@22e
    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@231
    goto/16 :goto_1

    #@233
    :cond_d
    move-object/from16 v9, v37

    #@235
    .line 2076
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    #@237
    .line 2084
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_0
    move-exception v33

    #@238
    .local v33, "ignored":Ljava/net/MalformedURLException;
    move-object/from16 v9, v37

    #@23a
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    #@23c
    .line 2094
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v33    # "ignored":Ljava/net/MalformedURLException;
    .end local v35    # "p":Lsun/net/www/HeaderParser;
    :cond_e
    const-string/jumbo v6, "null"

    #@23f
    goto/16 :goto_6

    #@241
    .line 2006
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v32    # "finalHost":Ljava/lang/String;
    .restart local v35    # "p":Lsun/net/www/HeaderParser;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_1
    move-exception v34

    #@242
    .local v34, "ignored":Ljava/security/PrivilegedActionException;
    goto/16 :goto_2

    #@244
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v32    # "finalHost":Ljava/lang/String;
    .end local v34    # "ignored":Ljava/security/PrivilegedActionException;
    :cond_f
    move-object/from16 v9, v37

    #@246
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    #@248
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_10
    move-object/from16 v9, v37

    #@24a
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_a

    #@24c
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_11
    move-object/from16 v9, v37

    #@24e
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_7

    #@250
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v32    # "finalHost":Ljava/lang/String;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_12
    move-object/from16 v9, v37

    #@252
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    #@254
    .line 1994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private getServerAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 31
    .param p1, "authhdr"    # Lsun/net/www/protocol/http/AuthenticationHeader;

    #@0
    .prologue
    .line 2107
    const/4 v9, 0x0

    #@1
    .line 2108
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    #@4
    move-result-object v28

    #@5
    .line 2110
    .local v28, "raw":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_9

    #@b
    .line 2111
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    #@e
    move-result-object v27

    #@f
    .line 2112
    .local v27, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v3, "realm"

    #@12
    move-object/from16 v0, v27

    #@14
    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    .line 2113
    .local v7, "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    .line 2114
    .local v8, "scheme":Ljava/lang/String;
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    #@1e
    .line 2115
    .local v24, "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    const-string/jumbo v3, "basic"

    #@21
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_4

    #@27
    .line 2116
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    #@29
    .line 2130
    :cond_0
    :goto_0
    const-string/jumbo v3, "domain"

    #@2c
    move-object/from16 v0, v27

    #@2e
    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    move-object/from16 v0, p0

    #@34
    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    #@36
    .line 2131
    if-nez v7, :cond_1

    #@38
    .line 2132
    const-string/jumbo v7, ""

    #@3b
    .line 2133
    :cond_1
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3f
    move-object/from16 v0, v24

    #@41
    invoke-static {v3, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuthKey(Ljava/net/URL;Ljava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    move-object/from16 v0, p0

    #@47
    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@49
    .line 2134
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@4d
    invoke-static {v3}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@50
    move-result-object v29

    #@51
    .line 2135
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v29, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/4 v4, 0x0

    #@52
    .line 2136
    .local v4, "addr":Ljava/net/InetAddress;
    if-nez v29, :cond_2

    #@54
    .line 2138
    :try_start_0
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@58
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    #@5f
    move-result-object v4

    #@60
    .line 2144
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@64
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    #@67
    move-result v5

    #@68
    .line 2145
    .local v5, "port":I
    const/4 v3, -0x1

    #@69
    if-ne v5, v3, :cond_3

    #@6b
    .line 2146
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@6f
    invoke-virtual {v3}, Ljava/net/URL;->getDefaultPort()I

    #@72
    move-result v5

    #@73
    .line 2148
    :cond_3
    if-nez v29, :cond_10

    #@75
    .line 2149
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    #@78
    move-result-object v3

    #@79
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    #@7c
    move-result v6

    #@7d
    aget v3, v3, v6

    #@7f
    packed-switch v3, :pswitch_data_0

    #@82
    .line 2224
    :goto_2
    new-instance v3, Ljava/lang/AssertionError;

    #@84
    const-string/jumbo v6, "should not reach here"

    #@87
    invoke-direct {v3, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8a
    throw v3

    #@8b
    .line 2117
    .end local v5    # "port":I
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_4
    const-string/jumbo v3, "digest"

    #@8e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_5

    #@94
    .line 2118
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    #@96
    goto :goto_0

    #@97
    .line 2119
    :cond_5
    const-string/jumbo v3, "ntlm"

    #@9a
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9d
    move-result v3

    #@9e
    if-eqz v3, :cond_6

    #@a0
    .line 2120
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@a2
    .line 2121
    const/4 v3, 0x1

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@a7
    goto :goto_0

    #@a8
    .line 2122
    :cond_6
    const-string/jumbo v3, "Kerberos"

    #@ab
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ae
    move-result v3

    #@af
    if-eqz v3, :cond_7

    #@b1
    .line 2123
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@b3
    .line 2124
    const/4 v3, 0x1

    #@b4
    move-object/from16 v0, p0

    #@b6
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@b8
    goto/16 :goto_0

    #@ba
    .line 2125
    :cond_7
    const-string/jumbo v3, "Negotiate"

    #@bd
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c0
    move-result v3

    #@c1
    if-eqz v3, :cond_0

    #@c3
    .line 2126
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@c5
    .line 2127
    const/4 v3, 0x1

    #@c6
    move-object/from16 v0, p0

    #@c8
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@ca
    goto/16 :goto_0

    #@cc
    .line 2151
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v5    # "port":I
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_0
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@ce
    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@d0
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    #@d3
    move-result-object v6

    #@d4
    const-string/jumbo v10, "Kerberos"

    #@d7
    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@da
    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    #@dd
    .line 2231
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_3
    if-nez v9, :cond_8

    #@df
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@e1
    if-eqz v3, :cond_8

    #@e3
    .line 2232
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@e5
    invoke-interface {v3, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    #@e8
    move-result v3

    #@e9
    .line 2231
    if-eqz v3, :cond_8

    #@eb
    .line 2233
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@f1
    invoke-interface {v3, v6, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f4
    move-result-object v23

    #@f5
    .line 2234
    .local v23, "a":Ljava/lang/String;
    if-eqz v23, :cond_8

    #@f7
    .line 2235
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    #@f9
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@fd
    const/4 v6, 0x0

    #@fe
    move-object/from16 v0, v23

    #@100
    invoke-direct {v9, v6, v3, v7, v0}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    #@103
    .line 2240
    .end local v23    # "a":Ljava/lang/String;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_8
    if-eqz v9, :cond_9

    #@105
    .line 2241
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, v27

    #@109
    move-object/from16 v2, v28

    #@10b
    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@10e
    move-result v3

    #@10f
    if-nez v3, :cond_9

    #@111
    .line 2242
    const/4 v9, 0x0

    #@112
    .line 2246
    .end local v5    # "port":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v27    # "p":Lsun/net/www/HeaderParser;
    :cond_9
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@114
    const/16 v6, 0x190

    #@116
    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@119
    move-result v3

    #@11a
    if-eqz v3, :cond_a

    #@11c
    .line 2247
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@11e
    new-instance v3, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v10, "Server Authentication for "

    #@126
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v3

    #@12a
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->toString()Ljava/lang/String;

    #@12d
    move-result-object v10

    #@12e
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v3

    #@132
    const-string/jumbo v10, " returned "

    #@135
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v10

    #@139
    if-eqz v9, :cond_f

    #@13b
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13e
    move-result-object v3

    #@13f
    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v3

    #@147
    invoke-virtual {v6, v3}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    #@14a
    .line 2249
    :cond_a
    return-object v9

    #@14b
    .line 2154
    .restart local v5    # "port":I
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v27    # "p":Lsun/net/www/HeaderParser;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_1
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@14d
    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@14f
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    #@152
    move-result-object v6

    #@153
    const-string/jumbo v10, "Negotiate"

    #@156
    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@159
    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    #@15c
    .line 2155
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_3

    #@15d
    .line 2159
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_2
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@161
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@164
    move-result-object v3

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@169
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@16c
    move-result-object v6

    #@16d
    .line 2160
    move-object/from16 v0, p0

    #@16f
    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@171
    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@173
    .line 2158
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@176
    move-result-object v14

    #@177
    .line 2161
    .local v14, "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_10

    #@179
    .line 2162
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@17f
    const/4 v6, 0x0

    #@180
    invoke-direct {v9, v6, v3, v7, v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V

    #@183
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    #@185
    .line 2167
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_3
    move-object/from16 v0, p0

    #@187
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@189
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@18c
    move-result-object v3

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@191
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@194
    move-result-object v6

    #@195
    .line 2168
    move-object/from16 v0, p0

    #@197
    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@199
    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@19b
    .line 2166
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@19e
    move-result-object v14

    #@19f
    .line 2169
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_10

    #@1a1
    .line 2170
    new-instance v3, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1a3
    invoke-direct {v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1aa
    .line 2171
    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    iget-object v11, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v15, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@1b4
    const/4 v10, 0x0

    #@1b5
    move-object v12, v7

    #@1b6
    move-object v13, v8

    #@1b7
    invoke-direct/range {v9 .. v15}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    #@1ba
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    #@1bc
    .line 2175
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_4
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@1be
    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    #@1c0
    if-eqz v3, :cond_10

    #@1c2
    .line 2178
    :try_start_1
    new-instance v30, Ljava/net/URL;

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1c8
    const-string/jumbo v6, "/"

    #@1cb
    move-object/from16 v0, v30

    #@1cd
    invoke-direct {v0, v3, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@1d0
    .line 2186
    .local v30, "url1":Ljava/net/URL;
    :goto_5
    move-object/from16 v0, p0

    #@1d2
    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1d4
    if-eqz v3, :cond_b

    #@1d6
    .line 2188
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@1d8
    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    #@1da
    .line 2187
    move-object/from16 v0, p0

    #@1dc
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1de
    .line 2192
    move-object/from16 v0, p0

    #@1e0
    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1e2
    if-eqz v3, :cond_b

    #@1e4
    .line 2194
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1ea
    invoke-static {v3}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite(Ljava/net/URL;)Z

    #@1ed
    move-result v3

    #@1ee
    .line 2193
    move-object/from16 v0, p0

    #@1f0
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1f2
    .line 2197
    :cond_b
    const/4 v14, 0x0

    #@1f3
    .line 2198
    .local v14, "a":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, p0

    #@1f5
    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@1f7
    if-eqz v3, :cond_d

    #@1f9
    .line 2199
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@1fb
    const-string/jumbo v6, "Trying Transparent NTLM authentication"

    #@1fe
    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@201
    .line 2212
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :goto_6
    move-object/from16 v0, p0

    #@203
    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@205
    if-nez v3, :cond_c

    #@207
    .line 2213
    move-object/from16 v0, p0

    #@209
    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@20b
    if-nez v3, :cond_e

    #@20d
    if-eqz v14, :cond_e

    #@20f
    .line 2214
    :cond_c
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    #@211
    const/4 v6, 0x0

    #@212
    move-object/from16 v0, v30

    #@214
    invoke-virtual {v3, v6, v0, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/net/URL;Ljava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@217
    move-result-object v9

    #@218
    .line 2218
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_7
    const/4 v3, 0x0

    #@219
    move-object/from16 v0, p0

    #@21b
    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    #@21d
    goto/16 :goto_3

    #@21f
    .line 2179
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v30    # "url1":Ljava/net/URL;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_0
    move-exception v25

    #@220
    .line 2180
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@224
    move-object/from16 v30, v0

    #@226
    .restart local v30    # "url1":Ljava/net/URL;
    goto :goto_5

    #@227
    .line 2202
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_d
    move-object/from16 v0, p0

    #@229
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@22b
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@22e
    move-result-object v15

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@233
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@236
    move-result-object v18

    #@237
    .line 2203
    const-string/jumbo v19, ""

    #@23a
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@23e
    move-object/from16 v21, v0

    #@240
    sget-object v22, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    #@242
    move-object/from16 v16, v4

    #@244
    move/from16 v17, v5

    #@246
    move-object/from16 v20, v8

    #@248
    .line 2201
    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@24b
    move-result-object v14

    #@24c
    .local v14, "a":Ljava/net/PasswordAuthentication;
    goto :goto_6

    #@24d
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_e
    move-object/from16 v9, v29

    #@24f
    .line 2213
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_7

    #@250
    .line 2222
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v30    # "url1":Ljava/net/URL;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_5
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@252
    new-instance v6, Ljava/lang/StringBuilder;

    #@254
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@257
    const-string/jumbo v10, "Unknown/Unsupported authentication scheme: "

    #@25a
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v6

    #@25e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v6

    #@262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@265
    move-result-object v6

    #@266
    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@269
    goto/16 :goto_2

    #@26b
    .line 2247
    .end local v5    # "port":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v27    # "p":Lsun/net/www/HeaderParser;
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_f
    const-string/jumbo v3, "null"

    #@26e
    goto/16 :goto_4

    #@270
    .line 2139
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v27    # "p":Lsun/net/www/HeaderParser;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_1
    move-exception v26

    #@271
    .local v26, "ignored":Ljava/net/UnknownHostException;
    goto/16 :goto_1

    #@273
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v26    # "ignored":Ljava/net/UnknownHostException;
    .restart local v5    # "port":I
    :cond_10
    move-object/from16 v9, v29

    #@275
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    #@277
    .line 2149
    nop

    #@278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 6
    .param p0, "u1"    # Ljava/net/URL;
    .param p1, "u2"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 817
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 818
    .local v0, "h1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 820
    .local v1, "h2":Ljava/lang/String;
    if-nez v0, :cond_1

    #@c
    .line 821
    if-nez v1, :cond_0

    #@e
    :goto_0
    return v3

    #@f
    :cond_0
    move v3, v4

    #@10
    goto :goto_0

    #@11
    .line 822
    :cond_1
    if-nez v1, :cond_2

    #@13
    .line 823
    return v4

    #@14
    .line 824
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_3

    #@1a
    .line 825
    return v3

    #@1b
    .line 829
    :cond_3
    new-array v2, v3, [Z

    #@1d
    aput-boolean v4, v2, v4

    #@1f
    .line 832
    .local v2, "result":[Z
    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$4;

    #@21
    invoke-direct {v3, v0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Z)V

    #@24
    .line 831
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@27
    .line 845
    aget-boolean v3, v2, v4

    #@29
    return v3
.end method

.method private isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 436
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 437
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 439
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method private isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 408
    sget-boolean v0, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 409
    return v1

    #@7
    .line 412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    .line 413
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 419
    const-string/jumbo v0, "connection"

    #@16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    const-string/jumbo v0, "close"

    #@1f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 420
    return v1

    #@26
    .line 422
    :cond_1
    return v2

    #@27
    .line 423
    :cond_2
    const-string/jumbo v0, "sec-"

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 424
    return v2

    #@31
    .line 426
    :cond_3
    return v1
.end method

.method private mapToMessageHeader(Ljava/util/Map;)Lsun/net/www/MessageHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lsun/net/www/MessageHeader;"
        }
    .end annotation

    #@0
    .prologue
    .line 2927
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lsun/net/www/MessageHeader;

    #@2
    invoke-direct {v2}, Lsun/net/www/MessageHeader;-><init>()V

    #@5
    .line 2928
    .local v2, "headers":Lsun/net/www/MessageHeader;
    if-eqz p1, :cond_0

    #@7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 2929
    :cond_0
    return-object v2

    #@e
    .line 2931
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v7

    #@12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_4

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 2932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    .line 2933
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/util/List;

    #@2e
    .line 2934
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v5

    #@32
    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_2

    #@38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/lang/String;

    #@3e
    .line 2935
    .local v4, "value":Ljava/lang/String;
    if-nez v3, :cond_3

    #@40
    .line 2936
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    goto :goto_0

    #@44
    .line 2938
    :cond_3
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 2942
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method public static openConnectionCheckRedirects(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 10
    .param p0, "c"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 769
    const/4 v5, 0x0

    #@1
    .line 773
    .local v5, "redirects":I
    :cond_0
    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    #@3
    if-eqz v8, :cond_1

    #@5
    move-object v8, p0

    #@6
    .line 774
    nop

    #@7
    nop

    #@8
    const/4 v9, 0x0

    #@9
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@c
    .line 780
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@f
    move-result-object v2

    #@10
    .line 781
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    #@11
    .line 783
    .local v4, "redir":Z
    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    #@13
    if-eqz v8, :cond_5

    #@15
    move-object v1, p0

    #@16
    .line 784
    nop

    #@17
    nop

    #@18
    .line 785
    .local v1, "http":Lsun/net/www/protocol/http/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@1b
    move-result v6

    #@1c
    .line 786
    .local v6, "stat":I
    const/16 v8, 0x12c

    #@1e
    if-lt v6, v8, :cond_5

    #@20
    const/16 v8, 0x133

    #@22
    if-gt v6, v8, :cond_5

    #@24
    const/16 v8, 0x132

    #@26
    if-eq v6, v8, :cond_5

    #@28
    .line 787
    const/16 v8, 0x130

    #@2a
    if-eq v6, v8, :cond_5

    #@2c
    .line 788
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    #@2f
    move-result-object v0

    #@30
    .line 789
    .local v0, "base":Ljava/net/URL;
    const-string/jumbo v8, "Location"

    #@33
    invoke-virtual {v1, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 790
    .local v3, "loc":Ljava/lang/String;
    const/4 v7, 0x0

    #@38
    .line 791
    .local v7, "target":Ljava/net/URL;
    if-eqz v3, :cond_2

    #@3a
    .line 792
    new-instance v7, Ljava/net/URL;

    #@3c
    .end local v7    # "target":Ljava/net/URL;
    invoke-direct {v7, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@3f
    .line 794
    :cond_2
    invoke-virtual {v1}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnect()V

    #@42
    .line 795
    if-eqz v7, :cond_3

    #@44
    .line 796
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_3

    #@52
    .line 797
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    #@55
    move-result v8

    #@56
    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    #@59
    move-result v9

    #@5a
    if-eq v8, v9, :cond_4

    #@5c
    .line 801
    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    #@5e
    const-string/jumbo v9, "illegal URL redirect"

    #@61
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@64
    throw v8

    #@65
    .line 798
    :cond_4
    invoke-static {v0, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_3

    #@6b
    .line 799
    const/4 v8, 0x5

    #@6c
    if-ge v5, v8, :cond_3

    #@6e
    .line 803
    const/4 v4, 0x1

    #@6f
    .line 804
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@72
    move-result-object p0

    #@73
    .line 805
    add-int/lit8 v5, v5, 0x1

    #@75
    .line 808
    .end local v0    # "base":Ljava/net/URL;
    .end local v1    # "http":Lsun/net/www/protocol/http/HttpURLConnection;
    .end local v3    # "loc":Ljava/lang/String;
    .end local v6    # "stat":I
    :cond_5
    if-nez v4, :cond_0

    #@77
    .line 809
    return-object v2
.end method

.method private static privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/net/URL;
    .param p7, "authType"    # Ljava/net/Authenticator$RequestorType;

    #@0
    .prologue
    .line 391
    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$1;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p6

    #@4
    move-object v3, p1

    #@5
    move v4, p2

    #@6
    move-object v5, p3

    #@7
    move-object v6, p4

    #@8
    move-object v7, p5

    #@9
    move-object/from16 v8, p7

    #@b
    invoke-direct/range {v0 .. v8}, Lsun/net/www/protocol/http/HttpURLConnection$1;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Authenticator$RequestorType;)V

    #@e
    .line 390
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/net/PasswordAuthentication;

    #@14
    return-object v0
.end method

.method private reset()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    const/4 v13, -0x1

    #@2
    const/4 v12, 0x0

    #@3
    .line 2431
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5
    const/4 v10, 0x1

    #@6
    iput-boolean v10, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    #@8
    .line 2433
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@a
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@c
    .line 2434
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@e
    invoke-virtual {v9}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    #@11
    move-result-object v5

    #@12
    .line 2435
    .local v5, "is":Ljava/io/InputStream;
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@14
    const-string/jumbo v10, "HEAD"

    #@17
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v9

    #@1b
    if-nez v9, :cond_2

    #@1d
    .line 2441
    :try_start_0
    instance-of v9, v5, Lsun/net/www/http/ChunkedInputStream;

    #@1f
    if-nez v9, :cond_0

    #@21
    .line 2442
    instance-of v9, v5, Lsun/net/www/MeteredStream;

    #@23
    .line 2441
    if-eqz v9, :cond_3

    #@25
    .line 2444
    :cond_0
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    #@27
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@2a
    move-result v9

    #@2b
    if-gtz v9, :cond_0

    #@2d
    .line 2474
    :cond_1
    :try_start_1
    instance-of v9, v5, Lsun/net/www/MeteredStream;

    #@2f
    if-eqz v9, :cond_2

    #@31
    .line 2475
    invoke-virtual {v5}, Lsun/net/www/MeteredStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@34
    .line 2479
    :cond_2
    :goto_0
    iput v13, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@36
    .line 2480
    new-instance v9, Lsun/net/www/MessageHeader;

    #@38
    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    #@3b
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@3d
    .line 2481
    iput-boolean v12, p0, Ljava/net/URLConnection;->connected:Z

    #@3f
    .line 2430
    return-void

    #@40
    .line 2449
    :cond_3
    const-wide/16 v0, 0x0

    #@42
    .line 2450
    .local v0, "cl":J
    const/4 v8, 0x0

    #@43
    .line 2451
    .local v8, "n":I
    :try_start_2
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@45
    const-string/jumbo v10, "Content-Length"

    #@48
    invoke-virtual {v9, v10}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@4b
    move-result-object v2

    #@4c
    .line 2452
    .local v2, "cls":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@4e
    .line 2454
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@51
    move-result-wide v0

    #@52
    .line 2459
    :cond_4
    :goto_1
    const-wide/16 v6, 0x0

    #@54
    .local v6, "i":J
    :goto_2
    cmp-long v9, v6, v0

    #@56
    if-gez v9, :cond_1

    #@58
    .line 2460
    :try_start_4
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    #@5a
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@5d
    move-result v8

    #@5e
    if-eq v8, v13, :cond_1

    #@60
    .line 2463
    int-to-long v10, v8

    #@61
    add-long/2addr v6, v10

    #@62
    goto :goto_2

    #@63
    .line 2455
    .end local v6    # "i":J
    :catch_0
    move-exception v4

    #@64
    .line 2456
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, 0x0

    #@66
    goto :goto_1

    #@67
    .line 2467
    .end local v0    # "cl":J
    .end local v2    # "cls":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "n":I
    :catch_1
    move-exception v3

    #@68
    .line 2468
    .local v3, "e":Ljava/io/IOException;
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@6a
    iput-boolean v12, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    #@6c
    .line 2469
    iput-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    #@6e
    .line 2470
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@71
    .line 2471
    return-void

    #@72
    .line 2477
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@73
    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5
    .param p1, "proxyAuthentication"    # Lsun/net/www/protocol/http/AuthenticationInfo;
    .param p2, "auth"    # Lsun/net/www/protocol/http/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1710
    if-eqz p1, :cond_3

    #@2
    .line 1711
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    #@5
    move-result-object v3

    #@6
    sget-object v4, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@8
    if-eq v3, v4, :cond_3

    #@a
    .line 1712
    invoke-virtual {p2}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1713
    .local v1, "raw":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 1716
    instance-of v3, p1, Lsun/net/www/protocol/http/DigestAuthentication;

    #@16
    if-eqz v3, :cond_1

    #@18
    move-object v0, p1

    #@19
    .line 1717
    nop

    #@1a
    nop

    #@1b
    .line 1719
    .local v0, "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@1e
    move-result-object v3

    #@1f
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@21
    if-ne v3, v4, :cond_0

    #@23
    .line 1720
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@25
    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 1727
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@31
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 1728
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@3a
    .line 1729
    return-object p1

    #@3b
    .line 1722
    .end local v2    # "value":Ljava/lang/String;
    .restart local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@41
    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@46
    .line 1725
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@48
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@4a
    invoke-virtual {p1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 1731
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    #@52
    .line 1734
    .end local v1    # "raw":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@55
    move-result-object p1

    #@56
    .line 1735
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@58
    .line 1736
    return-object p1
.end method

.method private sendCONNECTRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1903
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    #@6
    move-result v1

    #@7
    .line 1905
    .local v1, "port":I
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, " "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1d
    invoke-static {v4}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 1906
    const-string/jumbo v4, " "

    #@28
    .line 1905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 1906
    const-string/jumbo v4, "HTTP/1.1"

    #@2f
    .line 1905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    const/4 v4, 0x0

    #@38
    invoke-virtual {v2, v4, v3, v5}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 1907
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@3d
    const-string/jumbo v3, "User-Agent"

    #@40
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 1909
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@47
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 1910
    .local v0, "host":Ljava/lang/String;
    const/4 v2, -0x1

    #@4c
    if-eq v1, v2, :cond_0

    #@4e
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@50
    invoke-virtual {v2}, Ljava/net/URL;->getDefaultPort()I

    #@53
    move-result v2

    #@54
    if-eq v1, v2, :cond_0

    #@56
    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v3, ":"

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    .line 1913
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@74
    const-string/jumbo v3, "Host"

    #@77
    invoke-virtual {v2, v3, v0}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 1916
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@7c
    const-string/jumbo v3, "Accept"

    #@7f
    const-string/jumbo v4, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    #@82
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1918
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@87
    invoke-virtual {v2}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_1

    #@8d
    .line 1919
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@8f
    const-string/jumbo v3, "Proxy-Connection"

    #@92
    const-string/jumbo v4, "keep-alive"

    #@95
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@98
    .line 1922
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@9a
    invoke-direct {p0, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    #@9d
    .line 1925
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@9f
    const/16 v3, 0x1f4

    #@a1
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@a4
    move-result v2

    #@a5
    if-eqz v2, :cond_2

    #@a7
    .line 1926
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@a9
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@ab
    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@b2
    .line 1929
    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@b4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@b6
    invoke-virtual {v2, v3, v5}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    #@b9
    .line 1902
    return-void
.end method

.method private setCookieHeader()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    #@2
    if-eqz v11, :cond_a

    #@4
    .line 1161
    monitor-enter p0

    #@5
    .line 1162
    :try_start_0
    iget-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    #@7
    if-eqz v11, :cond_2

    #@9
    .line 1163
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@b
    const-string/jumbo v12, "Cookie"

    #@e
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@11
    move-result v5

    #@12
    .line 1164
    .local v5, "k":I
    const/4 v11, -0x1

    #@13
    if-eq v5, v11, :cond_0

    #@15
    .line 1165
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@17
    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@1a
    move-result-object v11

    #@1b
    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@1d
    .line 1166
    :cond_0
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1f
    const-string/jumbo v12, "Cookie2"

    #@22
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@25
    move-result v5

    #@26
    .line 1167
    const/4 v11, -0x1

    #@27
    if-eq v5, v11, :cond_1

    #@29
    .line 1168
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@2b
    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@2e
    move-result-object v11

    #@2f
    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@31
    .line 1169
    :cond_1
    const/4 v11, 0x0

    #@32
    iput-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .end local v5    # "k":I
    :cond_2
    monitor-exit p0

    #@35
    .line 1174
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@37
    const-string/jumbo v12, "Cookie"

    #@3a
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@3d
    .line 1175
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@3f
    const-string/jumbo v12, "Cookie2"

    #@42
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@45
    .line 1177
    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@47
    invoke-static {v11}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@4a
    move-result-object v8

    #@4b
    .line 1178
    .local v8, "uri":Ljava/net/URI;
    if-eqz v8, :cond_8

    #@4d
    .line 1179
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@4f
    const/16 v12, 0x12c

    #@51
    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@54
    move-result v11

    #@55
    if-eqz v11, :cond_3

    #@57
    .line 1180
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@59
    new-instance v12, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v13, "CookieHandler request for "

    #@61
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v12

    #@65
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v12

    #@69
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v12

    #@6d
    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@70
    .line 1183
    :cond_3
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    #@72
    .line 1184
    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@74
    sget-object v13, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@76
    invoke-virtual {v12, v13}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    #@79
    move-result-object v12

    #@7a
    .line 1183
    invoke-virtual {v11, v8, v12}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    #@7d
    move-result-object v1

    #@7e
    .line 1185
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@81
    move-result v11

    #@82
    if-nez v11, :cond_8

    #@84
    .line 1186
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@86
    const/16 v12, 0x12c

    #@88
    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@8b
    move-result v11

    #@8c
    if-eqz v11, :cond_4

    #@8e
    .line 1187
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@90
    new-instance v12, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v13, "Cookies retrieved: "

    #@98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v12

    #@9c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9f
    move-result-object v13

    #@a0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@ab
    .line 1190
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@ae
    move-result-object v11

    #@af
    .line 1189
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b2
    move-result-object v3

    #@b3
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b6
    move-result v11

    #@b7
    if-eqz v11, :cond_8

    #@b9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bc
    move-result-object v2

    #@bd
    check-cast v2, Ljava/util/Map$Entry;

    #@bf
    .line 1191
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c2
    move-result-object v6

    #@c3
    check-cast v6, Ljava/lang/String;

    #@c5
    .line 1194
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v11, "Cookie"

    #@c8
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@cb
    move-result v11

    #@cc
    if-nez v11, :cond_6

    #@ce
    .line 1195
    const-string/jumbo v11, "Cookie2"

    #@d1
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d4
    move-result v11

    #@d5
    if-eqz v11, :cond_5

    #@d7
    .line 1198
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@da
    move-result-object v7

    #@db
    check-cast v7, Ljava/util/List;

    #@dd
    .line 1199
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    #@df
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@e2
    move-result v11

    #@e3
    if-nez v11, :cond_5

    #@e5
    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    .line 1201
    .local v0, "cookieValue":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ed
    move-result-object v10

    #@ee
    .local v10, "value$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@f1
    move-result v11

    #@f2
    if-eqz v11, :cond_7

    #@f4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f7
    move-result-object v9

    #@f8
    check-cast v9, Ljava/lang/String;

    #@fa
    .line 1202
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v11

    #@fe
    const-string/jumbo v12, "; "

    #@101
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    goto :goto_1

    #@105
    .line 1161
    .end local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uri":Ljava/net/URI;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "value$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    #@106
    monitor-exit p0

    #@107
    throw v11

    #@108
    .line 1206
    .restart local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .restart local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "uri":Ljava/net/URI;
    .restart local v10    # "value$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_1
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@10a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@10d
    move-result v12

    #@10e
    add-int/lit8 v12, v12, -0x2

    #@110
    const/4 v13, 0x0

    #@111
    invoke-virtual {v0, v13, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@114
    move-result-object v12

    #@115
    invoke-virtual {v11, v6, v12}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@118
    goto :goto_0

    #@119
    .line 1207
    :catch_0
    move-exception v4

    #@11a
    .local v4, "ignored":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0

    #@11b
    .line 1214
    .end local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ignored":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "value$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@11d
    if-eqz v11, :cond_9

    #@11f
    .line 1216
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@121
    const-string/jumbo v12, "Cookie"

    #@124
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@127
    move-result v5

    #@128
    .restart local v5    # "k":I
    const/4 v11, -0x1

    #@129
    if-eq v5, v11, :cond_b

    #@12b
    .line 1217
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@12d
    const-string/jumbo v12, "Cookie"

    #@130
    new-instance v13, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@137
    invoke-virtual {v14, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@13a
    move-result-object v14

    #@13b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v13

    #@13f
    const-string/jumbo v14, ";"

    #@142
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v13

    #@146
    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@148
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v13

    #@14c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v13

    #@150
    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@153
    .line 1221
    .end local v5    # "k":I
    :cond_9
    :goto_2
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@155
    if-eqz v11, :cond_a

    #@157
    .line 1223
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@159
    const-string/jumbo v12, "Cookie2"

    #@15c
    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@15f
    move-result v5

    #@160
    .restart local v5    # "k":I
    const/4 v11, -0x1

    #@161
    if-eq v5, v11, :cond_c

    #@163
    .line 1224
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@165
    const-string/jumbo v12, "Cookie2"

    #@168
    new-instance v13, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@16f
    invoke-virtual {v14, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@172
    move-result-object v14

    #@173
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v13

    #@177
    const-string/jumbo v14, ";"

    #@17a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v13

    #@17e
    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@180
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v13

    #@184
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v13

    #@188
    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@18b
    .line 1156
    .end local v5    # "k":I
    .end local v8    # "uri":Ljava/net/URI;
    :cond_a
    :goto_3
    return-void

    #@18c
    .line 1219
    .restart local v5    # "k":I
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_b
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@18e
    const-string/jumbo v12, "Cookie"

    #@191
    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@193
    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@196
    goto :goto_2

    #@197
    .line 1226
    :cond_c
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@199
    const-string/jumbo v12, "Cookie2"

    #@19c
    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@19e
    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1a1
    goto :goto_3
.end method

.method public static setDefaultAuthenticator(Lsun/net/www/protocol/http/HttpAuthenticator;)V
    .locals 0
    .param p0, "a"    # Lsun/net/www/protocol/http/HttpAuthenticator;

    #@0
    .prologue
    .line 759
    sput-object p0, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    #@2
    .line 758
    return-void
.end method

.method private setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V
    .locals 5
    .param p1, "requests"    # Lsun/net/www/MessageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1937
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@2
    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 1938
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@8
    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@b
    move-result v4

    #@c
    .line 1937
    invoke-static {v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;I)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@f
    move-result-object v1

    #@10
    .line 1939
    .local v1, "pauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v1, :cond_0

    #@12
    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 1941
    instance-of v3, v1, Lsun/net/www/protocol/http/DigestAuthentication;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    move-object v0, v1

    #@1d
    .line 1942
    nop

    #@1e
    nop

    #@1f
    .line 1943
    .local v0, "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@22
    move-result-object v3

    #@23
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@25
    if-ne v3, v4, :cond_1

    #@27
    .line 1945
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@29
    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    #@2f
    .line 1944
    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 1954
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p1, v3, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 1955
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@3c
    .line 1935
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void

    #@3d
    .line 1947
    .restart local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    :cond_1
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 1950
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@4a
    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@4c
    invoke-virtual {v1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeRequests()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 498
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@2
    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@9
    move-result-object v10

    #@a
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@c
    if-eq v10, v11, :cond_0

    #@e
    .line 499
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@10
    invoke-direct {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    #@13
    .line 501
    :cond_0
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    #@15
    if-nez v10, :cond_a

    #@17
    .line 513
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@19
    if-nez v10, :cond_1

    #@1b
    .line 514
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1d
    new-instance v11, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    iget-object v12, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@24
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v11

    #@28
    const-string/jumbo v12, " "

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    #@32
    move-result-object v12

    #@33
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v11

    #@37
    const-string/jumbo v12, " "

    #@3a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v11

    #@3e
    .line 515
    const-string/jumbo v12, "HTTP/1.1"

    #@41
    .line 514
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v11

    #@45
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v11

    #@49
    .line 515
    const/4 v12, 0x0

    #@4a
    .line 514
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 516
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    #@50
    move-result v10

    #@51
    if-nez v10, :cond_2

    #@53
    .line 517
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@55
    const-string/jumbo v11, "Cache-Control"

    #@58
    const-string/jumbo v12, "no-cache"

    #@5b
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    .line 518
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@60
    const-string/jumbo v11, "Pragma"

    #@63
    const-string/jumbo v12, "no-cache"

    #@66
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@69
    .line 520
    :cond_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@6b
    const-string/jumbo v11, "User-Agent"

    #@6e
    sget-object v12, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    #@70
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 521
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@75
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    #@78
    move-result v6

    #@79
    .line 522
    .local v6, "port":I
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@7b
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    .line 523
    .local v3, "host":Ljava/lang/String;
    const/4 v10, -0x1

    #@80
    if-eq v6, v10, :cond_3

    #@82
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@84
    invoke-virtual {v10}, Ljava/net/URL;->getDefaultPort()I

    #@87
    move-result v10

    #@88
    if-eq v6, v10, :cond_3

    #@8a
    .line 524
    new-instance v10, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    const-string/jumbo v11, ":"

    #@96
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v10

    #@9a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9d
    move-result-object v11

    #@9e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    .line 526
    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@a8
    const-string/jumbo v11, "Host"

    #@ab
    invoke-virtual {v10, v11, v3}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    .line 527
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@b0
    const-string/jumbo v11, "Accept"

    #@b3
    const-string/jumbo v12, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    #@b6
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@b9
    .line 537
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@bb
    if-nez v10, :cond_d

    #@bd
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@bf
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    #@c2
    move-result v10

    #@c3
    if-eqz v10, :cond_d

    #@c5
    .line 538
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@c7
    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@c9
    if-eqz v10, :cond_c

    #@cb
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@ce
    move-result-object v10

    #@cf
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@d1
    if-eq v10, v11, :cond_c

    #@d3
    .line 539
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@d5
    const-string/jumbo v11, "Proxy-Connection"

    #@d8
    const-string/jumbo v12, "keep-alive"

    #@db
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@de
    .line 553
    :goto_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    #@e1
    move-result-wide v4

    #@e2
    .line 554
    .local v4, "modTime":J
    const-wide/16 v10, 0x0

    #@e4
    cmp-long v10, v4, v10

    #@e6
    if-eqz v10, :cond_4

    #@e8
    .line 555
    new-instance v1, Ljava/util/Date;

    #@ea
    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@ed
    .line 559
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@ef
    const-string/jumbo v10, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    #@f2
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f4
    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@f7
    .line 560
    .local v2, "fo":Ljava/text/SimpleDateFormat;
    const-string/jumbo v10, "GMT"

    #@fa
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@fd
    move-result-object v10

    #@fe
    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@101
    .line 561
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@103
    const-string/jumbo v11, "If-Modified-Since"

    #@106
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@109
    move-result-object v12

    #@10a
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@10d
    .line 564
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "fo":Ljava/text/SimpleDateFormat;
    :cond_4
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@10f
    invoke-static {v10}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@112
    move-result-object v9

    #@113
    .line 565
    .local v9, "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v9, :cond_5

    #@115
    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    #@118
    move-result v10

    #@119
    if-eqz v10, :cond_5

    #@11b
    .line 567
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@11d
    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@120
    move-result-object v11

    #@121
    iget-object v12, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@123
    iget-object v13, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@125
    invoke-virtual {v9, v12, v13}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@128
    move-result-object v12

    #@129
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@12c
    .line 568
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@12e
    .line 571
    :cond_5
    iget-object v10, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@130
    const-string/jumbo v11, "PUT"

    #@133
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v10

    #@137
    if-nez v10, :cond_7

    #@139
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@13b
    if-nez v10, :cond_6

    #@13d
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@140
    move-result v10

    #@141
    if-eqz v10, :cond_7

    #@143
    .line 572
    :cond_6
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@145
    const-string/jumbo v11, "Content-type"

    #@148
    .line 573
    const-string/jumbo v12, "application/x-www-form-urlencoded"

    #@14b
    .line 572
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@14e
    .line 576
    :cond_7
    const/4 v0, 0x0

    #@14f
    .line 578
    .local v0, "chunked":Z
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@152
    move-result v10

    #@153
    if-eqz v10, :cond_10

    #@155
    .line 579
    iget v10, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@157
    const/4 v11, -0x1

    #@158
    if-eq v10, v11, :cond_e

    #@15a
    .line 580
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@15c
    const-string/jumbo v11, "Transfer-Encoding"

    #@15f
    const-string/jumbo v12, "chunked"

    #@162
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@165
    .line 581
    const/4 v0, 0x1

    #@166
    .line 601
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    #@168
    .line 602
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@16a
    const-string/jumbo v11, "Transfer-Encoding"

    #@16d
    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@170
    move-result-object v10

    #@171
    if-eqz v10, :cond_9

    #@173
    .line 603
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@175
    const-string/jumbo v11, "Transfer-Encoding"

    #@178
    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@17b
    .line 604
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@17d
    const/16 v11, 0x384

    #@17f
    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@182
    move-result v10

    #@183
    if-eqz v10, :cond_9

    #@185
    .line 605
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@187
    .line 606
    const-string/jumbo v11, "use streaming mode for chunked encoding"

    #@18a
    .line 605
    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@18d
    .line 613
    :cond_9
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    #@190
    .line 615
    const/4 v10, 0x1

    #@191
    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    #@193
    .line 617
    .end local v0    # "chunked":Z
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "modTime":J
    .end local v6    # "port":I
    .end local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_a
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@195
    const/16 v11, 0x1f4

    #@197
    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@19a
    move-result v10

    #@19b
    if-eqz v10, :cond_b

    #@19d
    .line 618
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@19f
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1a1
    invoke-virtual {v11}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v11

    #@1a5
    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@1a8
    .line 620
    :cond_b
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1aa
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1ac
    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@1ae
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@1b1
    move-result v13

    #@1b2
    invoke-virtual {v10, v11, v12, v13}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V

    #@1b5
    .line 621
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@1b7
    invoke-virtual {v10}, Ljava/io/PrintStream;->checkError()Z

    #@1ba
    move-result v10

    #@1bb
    if-eqz v10, :cond_12

    #@1bd
    .line 622
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1bf
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@1c2
    move-result-object v7

    #@1c3
    .line 623
    .local v7, "proxyHost":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c5
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@1c8
    move-result v8

    #@1c9
    .line 624
    .local v8, "proxyPort":I
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@1cc
    .line 625
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@1ce
    if-eqz v10, :cond_11

    #@1d0
    .line 626
    new-instance v10, Ljava/io/IOException;

    #@1d2
    const-string/jumbo v11, "Error writing to server"

    #@1d5
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d8
    throw v10

    #@1d9
    .line 541
    .end local v7    # "proxyHost":Ljava/lang/String;
    .end local v8    # "proxyPort":I
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v6    # "port":I
    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1db
    const-string/jumbo v11, "Connection"

    #@1de
    const-string/jumbo v12, "keep-alive"

    #@1e1
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@1e4
    goto/16 :goto_0

    #@1e6
    .line 550
    :cond_d
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1e8
    const-string/jumbo v11, "Connection"

    #@1eb
    const-string/jumbo v12, "close"

    #@1ee
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    #@1f1
    goto/16 :goto_0

    #@1f3
    .line 583
    .restart local v0    # "chunked":Z
    .restart local v4    # "modTime":J
    .restart local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_e
    iget-wide v10, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@1f5
    const-wide/16 v12, -0x1

    #@1f7
    cmp-long v10, v10, v12

    #@1f9
    if-eqz v10, :cond_f

    #@1fb
    .line 584
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1fd
    const-string/jumbo v11, "Content-Length"

    #@200
    .line 585
    iget-wide v12, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@202
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@205
    move-result-object v12

    #@206
    .line 584
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@209
    goto/16 :goto_1

    #@20b
    .line 586
    :cond_f
    iget v10, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@20d
    const/4 v11, -0x1

    #@20e
    if-eq v10, v11, :cond_8

    #@210
    .line 587
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@212
    const-string/jumbo v11, "Content-Length"

    #@215
    .line 588
    iget v12, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@217
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21a
    move-result-object v12

    #@21b
    .line 587
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@21e
    goto/16 :goto_1

    #@220
    .line 591
    :cond_10
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@222
    if-eqz v10, :cond_8

    #@224
    .line 593
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@226
    monitor-enter v11

    #@227
    .line 595
    :try_start_0
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@229
    invoke-virtual {v10}, Lsun/net/www/http/PosterOutputStream;->close()V

    #@22c
    .line 596
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@22e
    const-string/jumbo v12, "Content-Length"

    #@231
    .line 597
    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@233
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    #@236
    move-result v13

    #@237
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@23a
    move-result-object v13

    #@23b
    .line 596
    invoke-virtual {v10, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23e
    monitor-exit v11

    #@23f
    goto/16 :goto_1

    #@241
    .line 593
    :catchall_0
    move-exception v10

    #@242
    monitor-exit v11

    #@243
    throw v10

    #@244
    .line 628
    .end local v0    # "chunked":Z
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "modTime":J
    .end local v6    # "port":I
    .end local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v7    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "proxyPort":I
    :cond_11
    const/4 v10, 0x1

    #@245
    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@247
    .line 629
    if-eqz v7, :cond_13

    #@249
    .line 630
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@24b
    invoke-virtual {p0, v10, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    #@24e
    .line 634
    :goto_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@250
    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    #@253
    move-result-object v10

    #@254
    check-cast v10, Ljava/io/PrintStream;

    #@256
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@258
    .line 635
    const/4 v10, 0x1

    #@259
    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z

    #@25b
    .line 636
    new-instance v10, Lsun/net/www/MessageHeader;

    #@25d
    invoke-direct {v10}, Lsun/net/www/MessageHeader;-><init>()V

    #@260
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@262
    .line 637
    const/4 v10, 0x0

    #@263
    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    #@265
    .line 638
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    #@268
    .line 492
    .end local v7    # "proxyHost":Ljava/lang/String;
    .end local v8    # "proxyPort":I
    :cond_12
    return-void

    #@269
    .line 632
    .restart local v7    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "proxyPort":I
    :cond_13
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@26b
    invoke-virtual {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;)V

    #@26e
    goto :goto_2
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2770
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2771
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2772
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 2773
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key is null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 2775
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2776
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@20
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 2769
    :cond_2
    return-void
.end method

.method public authObj()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public authObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "authObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 453
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    #@2
    .line 452
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->plainConnect()V

    #@3
    .line 850
    return-void
.end method

.method public disconnect()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2522
    const/4 v3, -0x1

    #@2
    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@4
    .line 2523
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 2524
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@a
    invoke-virtual {v3}, Lsun/net/ProgressSource;->finishTracking()V

    #@d
    .line 2525
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@f
    .line 2528
    :cond_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 2554
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@15
    if-eqz v3, :cond_4

    #@17
    .line 2555
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@19
    .line 2558
    .local v0, "hc":Lsun/net/www/http/HttpClient;
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    #@1c
    move-result v2

    #@1d
    .line 2561
    .local v2, "ka":Z
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@1f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 2569
    :goto_0
    if-eqz v2, :cond_1

    #@24
    .line 2570
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeIdleConnection()V

    #@27
    .line 2584
    .end local v0    # "hc":Lsun/net/www/http/HttpClient;
    .end local v2    # "ka":Z
    :cond_1
    :goto_1
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@29
    .line 2585
    const/4 v3, 0x0

    #@2a
    iput-boolean v3, p0, Ljava/net/URLConnection;->connected:Z

    #@2c
    .line 2587
    :cond_2
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    #@2e
    .line 2588
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 2589
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@34
    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->reset()V

    #@37
    .line 2520
    :cond_3
    return-void

    #@38
    .line 2578
    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@3a
    const/4 v4, 0x1

    #@3b
    invoke-virtual {v3, v4}, Lsun/net/www/http/HttpClient;->setDoNotRetry(Z)V

    #@3e
    .line 2580
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@40
    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@43
    goto :goto_1

    #@44
    .line 2562
    .restart local v0    # "hc":Lsun/net/www/http/HttpClient;
    .restart local v2    # "ka":Z
    :catch_0
    move-exception v1

    #@45
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized doTunneling()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1761
    const/4 v13, 0x0

    #@2
    .line 1762
    .local v13, "retryTunnel":I
    :try_start_0
    const-string/jumbo v16, ""

    #@5
    .line 1763
    .local v16, "statusLine":Ljava/lang/String;
    const/4 v12, 0x0

    #@6
    .line 1764
    .local v12, "respCode":I
    const/4 v8, 0x0

    #@7
    .line 1765
    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/4 v9, 0x0

    #@8
    .line 1766
    .local v9, "proxyHost":Ljava/lang/String;
    const/4 v10, -0x1

    #@9
    .line 1769
    .local v10, "proxyPort":I
    move-object/from16 v0, p0

    #@b
    iget-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@d
    .line 1770
    .local v14, "savedRequests":Lsun/net/www/MessageHeader;
    new-instance v18, Lsun/net/www/MessageHeader;

    #@f
    invoke-direct/range {v18 .. v18}, Lsun/net/www/MessageHeader;-><init>()V

    #@12
    move-object/from16 v0, v18

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    .line 1773
    const/4 v6, 0x0

    #@19
    .line 1777
    .local v6, "inNegotiateProxy":Z
    :try_start_1
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@1b
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v18

    #@1f
    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    #@22
    .line 1780
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v9    # "proxyHost":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    #@25
    move-result v18

    #@26
    if-nez v18, :cond_1

    #@28
    .line 1781
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@2c
    move-object/from16 v18, v0

    #@2e
    const/16 v19, 0x0

    #@30
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, v18

    #@34
    move/from16 v2, v19

    #@36
    invoke-virtual {v0, v1, v9, v10, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@39
    .line 1785
    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->sendCONNECTRequest()V

    #@3c
    .line 1786
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@40
    move-object/from16 v18, v0

    #@42
    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V

    #@45
    .line 1790
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@49
    move-object/from16 v18, v0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@4f
    move-object/from16 v19, v0

    #@51
    const/16 v20, 0x0

    #@53
    move-object/from16 v0, v18

    #@55
    move-object/from16 v1, v19

    #@57
    move-object/from16 v2, v20

    #@59
    move-object/from16 v3, p0

    #@5b
    invoke-virtual {v0, v1, v2, v3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    #@5e
    .line 1793
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@60
    const/16 v19, 0x1f4

    #@62
    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@65
    move-result v18

    #@66
    if-eqz v18, :cond_2

    #@68
    .line 1794
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@6e
    move-object/from16 v19, v0

    #@70
    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@73
    move-result-object v19

    #@74
    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@77
    .line 1797
    :cond_2
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@7b
    move-object/from16 v18, v0

    #@7d
    const-string/jumbo v19, "Proxy-Authenticate"

    #@80
    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    #@83
    move-result v18

    #@84
    if-eqz v18, :cond_3

    #@86
    .line 1798
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@88
    const/16 v19, 0x1f4

    #@8a
    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@8d
    move-result v18

    #@8e
    if-eqz v18, :cond_3

    #@90
    .line 1799
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@92
    const-string/jumbo v19, ">>>> Headers are filtered"

    #@95
    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@98
    .line 1800
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@9e
    move-object/from16 v19, v0

    #@a0
    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@a3
    move-result-object v19

    #@a4
    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@a7
    .line 1804
    :cond_3
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@ab
    move-object/from16 v18, v0

    #@ad
    const/16 v19, 0x0

    #@af
    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@b2
    move-result-object v16

    #@b3
    .line 1805
    new-instance v15, Ljava/util/StringTokenizer;

    #@b5
    invoke-direct/range {v15 .. v16}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@b8
    .line 1806
    .local v15, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@bb
    .line 1807
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@be
    move-result-object v18

    #@bf
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@c2
    move-result-object v18

    #@c3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c6
    move-result v12

    #@c7
    .line 1808
    const/16 v18, 0x197

    #@c9
    move/from16 v0, v18

    #@cb
    if-ne v12, v0, :cond_c

    #@cd
    .line 1810
    const/4 v5, 0x0

    #@ce
    .line 1811
    .local v5, "dontUseNegotiate":Z
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@d2
    move-object/from16 v18, v0

    #@d4
    const-string/jumbo v19, "Proxy-Authenticate"

    #@d7
    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    #@da
    move-result-object v7

    #@db
    .line 1812
    .local v7, "iter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@de
    move-result v18

    #@df
    if-eqz v18, :cond_6

    #@e1
    .line 1813
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e4
    move-result-object v18

    #@e5
    check-cast v18, Ljava/lang/String;

    #@e7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@ea
    move-result-object v17

    #@eb
    .line 1814
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, "Negotiate"

    #@ee
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f1
    move-result v18

    #@f2
    if-nez v18, :cond_5

    #@f4
    .line 1815
    const-string/jumbo v18, "Kerberos"

    #@f7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@fa
    move-result v18

    #@fb
    .line 1814
    if-eqz v18, :cond_4

    #@fd
    .line 1816
    :cond_5
    if-nez v6, :cond_9

    #@ff
    .line 1817
    const/4 v6, 0x1

    #@100
    .line 1827
    .end local v17    # "value":Ljava/lang/String;
    :cond_6
    :goto_0
    new-instance v4, Lsun/net/www/protocol/http/AuthenticationHeader;

    #@102
    .line 1828
    const-string/jumbo v18, "Proxy-Authenticate"

    #@105
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@109
    move-object/from16 v19, v0

    #@10b
    .line 1829
    new-instance v20, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@111
    move-object/from16 v21, v0

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@117
    move-object/from16 v22, v0

    #@119
    invoke-virtual/range {v22 .. v22}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@11c
    move-result-object v22

    #@11d
    .line 1830
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@121
    move-object/from16 v23, v0

    #@123
    invoke-virtual/range {v23 .. v23}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@126
    move-result v23

    #@127
    .line 1829
    invoke-direct/range {v20 .. v23}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    #@12a
    .line 1827
    move-object/from16 v0, v18

    #@12c
    move-object/from16 v1, v19

    #@12e
    move-object/from16 v2, v20

    #@130
    invoke-direct {v4, v0, v1, v2, v5}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    #@133
    .line 1833
    .local v4, "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    move-object/from16 v0, p0

    #@135
    iget-boolean v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@137
    move/from16 v18, v0

    #@139
    if-nez v18, :cond_a

    #@13b
    .line 1835
    move-object/from16 v0, p0

    #@13d
    invoke-direct {v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@140
    move-result-object v8

    #@141
    .line 1836
    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v8, :cond_c

    #@143
    .line 1837
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@147
    move-object/from16 v18, v0

    #@149
    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@14c
    move-result-object v9

    #@14d
    .line 1838
    .local v9, "proxyHost":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@151
    move-object/from16 v18, v0

    #@153
    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@156
    move-result v10

    #@157
    .line 1839
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@15a
    .line 1840
    add-int/lit8 v13, v13, 0x1

    #@15c
    .line 1871
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v9    # "proxyHost":Ljava/lang/String;
    :goto_1
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    #@15e
    move/from16 v0, v18

    #@160
    if-lt v13, v0, :cond_0

    #@162
    .line 1873
    .end local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v5    # "dontUseNegotiate":Z
    .end local v7    # "iter":Ljava/util/Iterator;
    :goto_2
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    #@164
    move/from16 v0, v18

    #@166
    if-ge v13, v0, :cond_7

    #@168
    const/16 v18, 0xc8

    #@16a
    move/from16 v0, v18

    #@16c
    if-eq v12, v0, :cond_f

    #@16e
    .line 1874
    :cond_7
    new-instance v18, Ljava/io/IOException;

    #@170
    new-instance v19, Ljava/lang/StringBuilder;

    #@172
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v20, "Unable to tunnel through proxy. Proxy returns \""

    #@178
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v19

    #@17c
    move-object/from16 v0, v19

    #@17e
    move-object/from16 v1, v16

    #@180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v19

    #@184
    .line 1876
    const-string/jumbo v20, "\""

    #@187
    .line 1874
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v19

    #@18b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v19

    #@18f
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@192
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@193
    .line 1878
    .end local v15    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v18

    #@194
    .line 1879
    :try_start_2
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@198
    move-object/from16 v19, v0

    #@19a
    if-eqz v19, :cond_8

    #@19c
    .line 1880
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@1a0
    move-object/from16 v19, v0

    #@1a2
    invoke-static/range {v19 .. v19}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@1a5
    .line 1878
    :cond_8
    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a6
    .end local v6    # "inNegotiateProxy":Z
    .end local v10    # "proxyPort":I
    .end local v12    # "respCode":I
    .end local v14    # "savedRequests":Lsun/net/www/MessageHeader;
    .end local v16    # "statusLine":Ljava/lang/String;
    :catchall_1
    move-exception v18

    #@1a7
    monitor-exit p0

    #@1a8
    throw v18

    #@1a9
    .line 1819
    .restart local v5    # "dontUseNegotiate":Z
    .restart local v6    # "inNegotiateProxy":Z
    .restart local v7    # "iter":Ljava/util/Iterator;
    .restart local v10    # "proxyPort":I
    .restart local v12    # "respCode":I
    .restart local v14    # "savedRequests":Lsun/net/www/MessageHeader;
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    .restart local v16    # "statusLine":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x1

    #@1aa
    .line 1820
    const/16 v18, 0x0

    #@1ac
    :try_start_3
    move/from16 v0, v18

    #@1ae
    move-object/from16 v1, p0

    #@1b0
    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@1b2
    .line 1821
    const/4 v8, 0x0

    #@1b3
    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_0

    #@1b5
    .line 1844
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_a
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@1b9
    move-object/from16 v18, v0

    #@1bb
    const-string/jumbo v19, "Proxy-Authenticate"

    #@1be
    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@1c1
    move-result-object v11

    #@1c2
    .line 1845
    .local v11, "raw":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    #@1c5
    .line 1847
    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    #@1c8
    move-result-object v18

    #@1c9
    .line 1846
    move-object/from16 v0, p0

    #@1cb
    move-object/from16 v1, v18

    #@1cd
    invoke-virtual {v8, v0, v1, v11}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@1d0
    move-result v18

    #@1d1
    if-nez v18, :cond_b

    #@1d3
    .line 1848
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@1d6
    .line 1849
    new-instance v18, Ljava/io/IOException;

    #@1d8
    const-string/jumbo v19, "Authentication failure"

    #@1db
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1de
    throw v18

    #@1df
    .line 1851
    :cond_b
    const/16 v18, 0x0

    #@1e1
    move-object/from16 v0, v18

    #@1e3
    move-object/from16 v1, p0

    #@1e5
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    #@1e7
    .line 1852
    const/16 v18, 0x0

    #@1e9
    move/from16 v0, v18

    #@1eb
    move-object/from16 v1, p0

    #@1ed
    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@1ef
    goto/16 :goto_1

    #@1f1
    .line 1857
    .end local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v5    # "dontUseNegotiate":Z
    .end local v7    # "iter":Ljava/util/Iterator;
    .end local v11    # "raw":Ljava/lang/String;
    :cond_c
    if-eqz v8, :cond_d

    #@1f3
    .line 1859
    invoke-virtual {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    #@1f6
    .line 1862
    :cond_d
    const/16 v18, 0xc8

    #@1f8
    move/from16 v0, v18

    #@1fa
    if-ne v12, v0, :cond_e

    #@1fc
    .line 1863
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@1fe
    move-object/from16 v0, p0

    #@200
    move-object/from16 v1, v18

    #@202
    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    #@205
    goto/16 :goto_2

    #@207
    .line 1868
    :cond_e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@20a
    .line 1869
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@20c
    move-object/from16 v0, p0

    #@20e
    move-object/from16 v1, v18

    #@210
    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@213
    goto/16 :goto_2

    #@215
    .line 1879
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@219
    move-object/from16 v18, v0

    #@21b
    if-eqz v18, :cond_10

    #@21d
    .line 1880
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@221
    move-object/from16 v18, v0

    #@223
    invoke-static/range {v18 .. v18}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@226
    .line 1885
    :cond_10
    move-object/from16 v0, p0

    #@228
    iput-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@22a
    .line 1888
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@22e
    move-object/from16 v18, v0

    #@230
    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@233
    monitor-exit p0

    #@234
    .line 1760
    return-void
.end method

.method public getConnectTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2872
    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@8
    goto :goto_0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    #@0
    .prologue
    .line 2919
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    #@2
    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1691
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@7
    const/16 v1, 0x190

    #@9
    if-lt v0, v1, :cond_1

    #@b
    .line 1693
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1694
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    #@11
    return-object v0

    #@12
    .line 1695
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1696
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@18
    return-object v0

    #@19
    .line 1699
    :cond_1
    return-object v2
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 2713
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2716
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2717
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@9
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 2718
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@f
    invoke-virtual {v2, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 2717
    invoke-direct {p0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 2714
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@1a
    .line 2720
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@1c
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@22
    invoke-virtual {v2, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {p0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2677
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2680
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2681
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@9
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, p1, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 2678
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@14
    .line 2684
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@16
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, p1, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    .line 2730
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2733
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2734
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@9
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 2731
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@10
    .line 2737
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@12
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
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
    .line 2700
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2703
    :goto_0
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getFilteredHeaderFields()Ljava/util/Map;

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 2701
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1236
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-boolean v5, v0, Ljava/net/URLConnection;->doInput:Z

    #@5
    if-nez v5, :cond_0

    #@7
    .line 1237
    new-instance v5, Ljava/net/ProtocolException;

    #@9
    const-string/jumbo v8, "Cannot read from URLConnection if doInput=false (call setDoInput(true))"

    #@c
    invoke-direct {v5, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@f
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v5

    #@11
    monitor-exit p0

    #@12
    throw v5

    #@13
    .line 1241
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@15
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 1242
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@1d
    instance-of v5, v5, Ljava/lang/RuntimeException;

    #@1f
    if-eqz v5, :cond_1

    #@21
    .line 1243
    new-instance v5, Ljava/lang/RuntimeException;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@27
    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v5

    #@2b
    .line 1245
    :cond_1
    move-object/from16 v0, p0

    #@2d
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@2f
    check-cast v5, Ljava/io/IOException;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->getChainedException(Ljava/io/IOException;)Ljava/io/IOException;

    #@36
    move-result-object v5

    #@37
    throw v5

    #@38
    .line 1249
    :cond_2
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 1250
    move-object/from16 v0, p0

    #@40
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    monitor-exit p0

    #@43
    return-object v5

    #@44
    .line 1253
    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_5

    #@4a
    .line 1254
    move-object/from16 v0, p0

    #@4c
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@4e
    if-nez v5, :cond_4

    #@50
    .line 1255
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@53
    .line 1258
    :cond_4
    move-object/from16 v0, p0

    #@55
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@57
    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->close()V

    #@5a
    .line 1259
    move-object/from16 v0, p0

    #@5c
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@5e
    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->writtenOK()Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_5

    #@64
    .line 1260
    new-instance v5, Ljava/io/IOException;

    #@66
    const-string/jumbo v8, "Incomplete output stream"

    #@69
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v5

    #@6d
    .line 1264
    :cond_5
    const/16 v34, 0x0

    #@6f
    .line 1265
    .local v34, "redirects":I
    const/16 v35, 0x0

    #@71
    .line 1266
    .local v35, "respCode":I
    const-wide/16 v16, -0x1

    #@73
    .line 1267
    .local v16, "cl":J
    const/16 v36, 0x0

    #@75
    .line 1268
    .local v36, "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/16 v32, 0x0

    #@77
    .line 1269
    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/16 v38, 0x0

    #@79
    .line 1291
    .local v38, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    const/16 v24, 0x0

    #@7b
    .line 1292
    .local v24, "inNegotiate":Z
    const/16 v25, 0x0

    #@7d
    .line 1295
    .local v25, "inNegotiateProxy":Z
    move-object/from16 v0, p0

    #@7f
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@81
    const-string/jumbo v8, "Authorization"

    #@84
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@87
    move-result v5

    #@88
    const/4 v8, -0x1

    #@89
    if-eq v5, v8, :cond_9

    #@8b
    const/4 v5, 0x1

    #@8c
    :goto_0
    move-object/from16 v0, p0

    #@8e
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserServerAuth:Z

    #@90
    .line 1296
    move-object/from16 v0, p0

    #@92
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@94
    const-string/jumbo v8, "Proxy-Authorization"

    #@97
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    #@9a
    move-result v5

    #@9b
    const/4 v8, -0x1

    #@9c
    if-eq v5, v8, :cond_a

    #@9e
    const/4 v5, 0x1

    #@9f
    :goto_1
    move-object/from16 v0, p0

    #@a1
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a3
    move-object/from16 v39, v38

    #@a5
    .line 1300
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .local v39, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    #@a8
    move-result v5

    #@a9
    if-nez v5, :cond_6

    #@ab
    .line 1301
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@ae
    .line 1303
    :cond_6
    move-object/from16 v0, p0

    #@b0
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    #@b2
    if-eqz v5, :cond_b

    #@b4
    .line 1304
    move-object/from16 v0, p0

    #@b6
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@b8
    .line 1655
    :try_start_4
    move-object/from16 v0, p0

    #@ba
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@bc
    if-eqz v8, :cond_7

    #@be
    .line 1656
    move-object/from16 v0, p0

    #@c0
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@c2
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@c5
    .line 1658
    :cond_7
    move-object/from16 v0, p0

    #@c7
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@c9
    if-eqz v8, :cond_8

    #@cb
    .line 1659
    move-object/from16 v0, p0

    #@cd
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@cf
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d2
    :cond_8
    monitor-exit p0

    #@d3
    .line 1304
    return-object v5

    #@d4
    .line 1295
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_9
    const/4 v5, 0x0

    #@d5
    goto :goto_0

    #@d6
    .line 1296
    :cond_a
    const/4 v5, 0x0

    #@d7
    goto :goto_1

    #@d8
    .line 1308
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_b
    :try_start_5
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    #@db
    move-result-object v5

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v10, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@e4
    invoke-virtual {v5, v8, v10}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    #@e7
    move-result v27

    #@e8
    .line 1310
    .local v27, "meteredInput":Z
    if-eqz v27, :cond_c

    #@ea
    .line 1311
    new-instance v5, Lsun/net/ProgressSource;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v10, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@f4
    invoke-direct {v5, v8, v10}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@f7
    move-object/from16 v0, p0

    #@f9
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@fb
    .line 1312
    move-object/from16 v0, p0

    #@fd
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@ff
    invoke-virtual {v5}, Lsun/net/ProgressSource;->beginTracking()V

    #@102
    .line 1319
    :cond_c
    move-object/from16 v0, p0

    #@104
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@106
    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    #@109
    move-result-object v5

    #@10a
    check-cast v5, Ljava/io/PrintStream;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@110
    .line 1321
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@113
    move-result v5

    #@114
    if-nez v5, :cond_d

    #@116
    .line 1322
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    #@119
    .line 1324
    :cond_d
    move-object/from16 v0, p0

    #@11b
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@125
    move-object/from16 v0, p0

    #@127
    invoke-virtual {v5, v8, v10, v0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    #@12a
    .line 1325
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@12c
    const/16 v8, 0x1f4

    #@12e
    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@131
    move-result v5

    #@132
    if-eqz v5, :cond_e

    #@134
    .line 1326
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@136
    move-object/from16 v0, p0

    #@138
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@13a
    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@13d
    move-result-object v8

    #@13e
    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@141
    .line 1329
    :cond_e
    move-object/from16 v0, p0

    #@143
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@145
    const-string/jumbo v8, "WWW-Authenticate"

    #@148
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    #@14b
    move-result v13

    #@14c
    .line 1330
    .local v13, "b1":Z
    move-object/from16 v0, p0

    #@14e
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@150
    const-string/jumbo v8, "Proxy-Authenticate"

    #@153
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    #@156
    move-result v14

    #@157
    .line 1331
    .local v14, "b2":Z
    if-nez v13, :cond_f

    #@159
    if-eqz v14, :cond_10

    #@15b
    .line 1332
    :cond_f
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@15d
    const/16 v8, 0x1f4

    #@15f
    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@162
    move-result v5

    #@163
    if-eqz v5, :cond_10

    #@165
    .line 1333
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@167
    const-string/jumbo v8, ">>>> Headers are filtered"

    #@16a
    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@16d
    .line 1334
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@173
    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    #@176
    move-result-object v8

    #@177
    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    #@17a
    .line 1338
    :cond_10
    move-object/from16 v0, p0

    #@17c
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@17e
    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    #@181
    move-result-object v5

    #@182
    move-object/from16 v0, p0

    #@184
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@186
    .line 1340
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@189
    move-result v35

    #@18a
    .line 1341
    const/4 v5, -0x1

    #@18b
    move/from16 v0, v35

    #@18d
    if-ne v0, v5, :cond_13

    #@18f
    .line 1342
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@192
    .line 1343
    new-instance v5, Ljava/io/IOException;

    #@194
    const-string/jumbo v8, "Invalid Http response"

    #@197
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@19b
    .line 1639
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v27    # "meteredInput":Z
    :catch_0
    move-exception v21

    #@19c
    .local v21, "e":Ljava/lang/RuntimeException;
    move-object/from16 v38, v39

    #@19e
    .line 1640
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .local v38, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_3
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@1a1
    .line 1641
    move-object/from16 v0, v21

    #@1a3
    move-object/from16 v1, p0

    #@1a5
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@1a7
    .line 1642
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1a8
    .line 1654
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    #@1a9
    .line 1655
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    #@1ab
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@1ad
    if-eqz v8, :cond_11

    #@1af
    .line 1656
    move-object/from16 v0, p0

    #@1b1
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@1b3
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@1b6
    .line 1658
    :cond_11
    move-object/from16 v0, p0

    #@1b8
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@1ba
    if-eqz v8, :cond_12

    #@1bc
    .line 1659
    move-object/from16 v0, p0

    #@1be
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@1c0
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@1c3
    .line 1654
    :cond_12
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1c4
    .line 1345
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v27    # "meteredInput":Z
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_13
    const/16 v5, 0x197

    #@1c6
    move/from16 v0, v35

    #@1c8
    if-ne v0, v5, :cond_1f

    #@1ca
    .line 1346
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@1cd
    move-result v5

    #@1ce
    if-eqz v5, :cond_16

    #@1d0
    .line 1347
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@1d3
    .line 1348
    new-instance v5, Ljava/net/HttpRetryException;

    #@1d5
    .line 1349
    const-string/jumbo v8, "cannot retry due to proxy authentication, in streaming mode"

    #@1d8
    const/16 v10, 0x197

    #@1da
    .line 1348
    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    #@1dd
    throw v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@1de
    .line 1643
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v27    # "meteredInput":Z
    :catch_1
    move-exception v19

    #@1df
    .local v19, "e":Ljava/io/IOException;
    move-object/from16 v38, v39

    #@1e1
    .line 1644
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_5
    :try_start_9
    move-object/from16 v0, v19

    #@1e3
    move-object/from16 v1, p0

    #@1e5
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    #@1e7
    .line 1648
    move-object/from16 v0, p0

    #@1e9
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@1eb
    const-string/jumbo v8, "Transfer-Encoding"

    #@1ee
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@1f1
    move-result-object v40

    #@1f2
    .line 1649
    .local v40, "te":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f4
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1f6
    if-eqz v5, :cond_15

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1fc
    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    #@1ff
    move-result v5

    #@200
    if-eqz v5, :cond_15

    #@202
    sget-boolean v5, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    #@204
    if-eqz v5, :cond_15

    #@206
    .line 1650
    const-wide/16 v46, 0x0

    #@208
    cmp-long v5, v16, v46

    #@20a
    if-gtz v5, :cond_14

    #@20c
    if-eqz v40, :cond_15

    #@20e
    const-string/jumbo v5, "chunked"

    #@211
    move-object/from16 v0, v40

    #@213
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@216
    move-result v5

    #@217
    .line 1649
    if-eqz v5, :cond_15

    #@219
    .line 1651
    :cond_14
    move-object/from16 v0, p0

    #@21b
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@21d
    move-object/from16 v0, p0

    #@21f
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@221
    move-wide/from16 v0, v16

    #@223
    invoke-static {v5, v0, v1, v8}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->getErrorStream(Ljava/io/InputStream;JLsun/net/www/http/HttpClient;)Ljava/io/InputStream;

    #@226
    move-result-object v5

    #@227
    move-object/from16 v0, p0

    #@229
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    #@22b
    .line 1653
    :cond_15
    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@22c
    .line 1353
    .end local v19    # "e":Ljava/io/IOException;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v40    # "te":Ljava/lang/String;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v27    # "meteredInput":Z
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_16
    const/16 v18, 0x0

    #@22e
    .line 1354
    .local v18, "dontUseNegotiate":Z
    :try_start_a
    move-object/from16 v0, p0

    #@230
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@232
    const-string/jumbo v8, "Proxy-Authenticate"

    #@235
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    #@238
    move-result-object v26

    #@239
    .line 1355
    .local v26, "iter":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@23c
    move-result v5

    #@23d
    if-eqz v5, :cond_19

    #@23f
    .line 1356
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@242
    move-result-object v5

    #@243
    check-cast v5, Ljava/lang/String;

    #@245
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@248
    move-result-object v44

    #@249
    .line 1357
    .local v44, "value":Ljava/lang/String;
    const-string/jumbo v5, "Negotiate"

    #@24c
    move-object/from16 v0, v44

    #@24e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@251
    move-result v5

    #@252
    if-nez v5, :cond_18

    #@254
    .line 1358
    const-string/jumbo v5, "Kerberos"

    #@257
    move-object/from16 v0, v44

    #@259
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25c
    move-result v5

    #@25d
    .line 1357
    if-eqz v5, :cond_17

    #@25f
    .line 1359
    :cond_18
    if-nez v25, :cond_1a

    #@261
    .line 1360
    const/16 v25, 0x1

    #@263
    .line 1376
    .end local v44    # "value":Ljava/lang/String;
    :cond_19
    :goto_6
    new-instance v12, Lsun/net/www/protocol/http/AuthenticationHeader;

    #@265
    .line 1377
    const-string/jumbo v5, "Proxy-Authenticate"

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@26c
    .line 1378
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@26e
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@272
    move-object/from16 v45, v0

    #@274
    move-object/from16 v0, p0

    #@276
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@278
    move-object/from16 v46, v0

    #@27a
    invoke-virtual/range {v46 .. v46}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@27d
    move-result-object v46

    #@27e
    .line 1379
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@282
    move-object/from16 v47, v0

    #@284
    invoke-virtual/range {v47 .. v47}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    #@287
    move-result v47

    #@288
    .line 1378
    move-object/from16 v0, v45

    #@28a
    move-object/from16 v1, v46

    #@28c
    move/from16 v2, v47

    #@28e
    invoke-direct {v10, v0, v1, v2}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    #@291
    .line 1376
    move/from16 v0, v18

    #@293
    invoke-direct {v12, v5, v8, v10, v0}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    #@296
    .line 1383
    .local v12, "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    move-object/from16 v0, p0

    #@298
    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@29a
    if-nez v5, :cond_1b

    #@29c
    .line 1385
    move-object/from16 v0, p0

    #@29e
    move-object/from16 v1, v32

    #@2a0
    invoke-direct {v0, v1, v12}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@2a3
    move-result-object v32

    #@2a4
    .line 1386
    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v32, :cond_20

    #@2a6
    .line 1387
    add-int/lit8 v34, v34, 0x1

    #@2a8
    .line 1388
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@2ab
    move-object/from16 v38, v39

    #@2ad
    .line 1635
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_7
    :try_start_b
    sget v5, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@2af
    move/from16 v0, v34

    #@2b1
    if-ge v0, v5, :cond_45

    #@2b3
    move-object/from16 v39, v38

    #@2b5
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto/16 :goto_2

    #@2b7
    .line 1362
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v44    # "value":Ljava/lang/String;
    :cond_1a
    const/16 v18, 0x1

    #@2b9
    .line 1363
    const/4 v5, 0x0

    #@2ba
    :try_start_c
    move-object/from16 v0, p0

    #@2bc
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@2be
    .line 1364
    const/16 v32, 0x0

    #@2c0
    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_6

    #@2c1
    .line 1393
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v44    # "value":Ljava/lang/String;
    .restart local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1b
    move-object/from16 v0, p0

    #@2c3
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@2c5
    const-string/jumbo v8, "Proxy-Authenticate"

    #@2c8
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@2cb
    move-result-object v33

    #@2cc
    .line 1394
    .local v33, "raw":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    #@2cf
    .line 1396
    invoke-virtual {v12}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    #@2d2
    move-result-object v5

    #@2d3
    .line 1395
    move-object/from16 v0, v32

    #@2d5
    move-object/from16 v1, p0

    #@2d7
    move-object/from16 v2, v33

    #@2d9
    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@2dc
    move-result v5

    #@2dd
    if-nez v5, :cond_1c

    #@2df
    .line 1397
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@2e2
    .line 1398
    new-instance v5, Ljava/io/IOException;

    #@2e4
    const-string/jumbo v8, "Authentication failure"

    #@2e7
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2ea
    throw v5

    #@2eb
    .line 1654
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v27    # "meteredInput":Z
    .end local v33    # "raw":Ljava/lang/String;
    :catchall_2
    move-exception v5

    #@2ec
    move-object/from16 v38, v39

    #@2ee
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto/16 :goto_4

    #@2f0
    .line 1400
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v27    # "meteredInput":Z
    .restart local v33    # "raw":Ljava/lang/String;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1c
    if-eqz v36, :cond_1d

    #@2f2
    if-eqz v39, :cond_1d

    #@2f4
    .line 1402
    invoke-virtual/range {v39 .. v39}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    #@2f7
    move-result-object v5

    #@2f8
    .line 1401
    move-object/from16 v0, v36

    #@2fa
    move-object/from16 v1, p0

    #@2fc
    move-object/from16 v2, v33

    #@2fe
    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@301
    move-result v5

    #@302
    if-eqz v5, :cond_1e

    #@304
    .line 1406
    :cond_1d
    const/4 v5, 0x0

    #@305
    move-object/from16 v0, p0

    #@307
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    #@309
    .line 1407
    const/4 v5, 0x0

    #@30a
    move-object/from16 v0, p0

    #@30c
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@30e
    move-object/from16 v38, v39

    #@310
    .line 1408
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto :goto_7

    #@311
    .line 1403
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@314
    .line 1404
    new-instance v5, Ljava/io/IOException;

    #@316
    const-string/jumbo v8, "Authentication failure"

    #@319
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31c
    throw v5

    #@31d
    .line 1411
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    :cond_1f
    const/16 v25, 0x0

    #@31f
    .line 1412
    const/4 v5, 0x0

    #@320
    move-object/from16 v0, p0

    #@322
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@324
    .line 1413
    move-object/from16 v0, p0

    #@326
    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    #@328
    if-nez v5, :cond_20

    #@32a
    .line 1414
    move-object/from16 v0, p0

    #@32c
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@32e
    const-string/jumbo v8, "Proxy-Authorization"

    #@331
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@334
    .line 1418
    :cond_20
    if-eqz v32, :cond_21

    #@336
    .line 1420
    invoke-virtual/range {v32 .. v32}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    #@339
    .line 1423
    :cond_21
    const/16 v5, 0x191

    #@33b
    move/from16 v0, v35

    #@33d
    if-ne v0, v5, :cond_2b

    #@33f
    .line 1424
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@342
    move-result v5

    #@343
    if-eqz v5, :cond_22

    #@345
    .line 1425
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@348
    .line 1426
    new-instance v5, Ljava/net/HttpRetryException;

    #@34a
    .line 1427
    const-string/jumbo v8, "cannot retry due to server authentication, in streaming mode"

    #@34d
    const/16 v10, 0x191

    #@34f
    .line 1426
    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    #@352
    throw v5

    #@353
    .line 1431
    :cond_22
    const/16 v18, 0x0

    #@355
    .line 1432
    .restart local v18    # "dontUseNegotiate":Z
    move-object/from16 v0, p0

    #@357
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@359
    const-string/jumbo v8, "WWW-Authenticate"

    #@35c
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    #@35f
    move-result-object v26

    #@360
    .line 1433
    .restart local v26    # "iter":Ljava/util/Iterator;
    :cond_23
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@363
    move-result v5

    #@364
    if-eqz v5, :cond_25

    #@366
    .line 1434
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@369
    move-result-object v5

    #@36a
    check-cast v5, Ljava/lang/String;

    #@36c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@36f
    move-result-object v44

    #@370
    .line 1435
    .restart local v44    # "value":Ljava/lang/String;
    const-string/jumbo v5, "Negotiate"

    #@373
    move-object/from16 v0, v44

    #@375
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@378
    move-result v5

    #@379
    if-nez v5, :cond_24

    #@37b
    .line 1436
    const-string/jumbo v5, "Kerberos"

    #@37e
    move-object/from16 v0, v44

    #@380
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@383
    move-result v5

    #@384
    .line 1435
    if-eqz v5, :cond_23

    #@386
    .line 1437
    :cond_24
    if-nez v24, :cond_26

    #@388
    .line 1438
    const/16 v24, 0x1

    #@38a
    .line 1448
    .end local v44    # "value":Ljava/lang/String;
    :cond_25
    :goto_8
    new-instance v38, Lsun/net/www/protocol/http/AuthenticationHeader;

    #@38c
    .line 1449
    const-string/jumbo v5, "WWW-Authenticate"

    #@38f
    move-object/from16 v0, p0

    #@391
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@393
    .line 1450
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@395
    move-object/from16 v0, p0

    #@397
    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@399
    move-object/from16 v45, v0

    #@39b
    move-object/from16 v0, v45

    #@39d
    invoke-direct {v10, v0}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;)V

    #@3a0
    .line 1448
    move-object/from16 v0, v38

    #@3a2
    move/from16 v1, v18

    #@3a4
    invoke-direct {v0, v5, v8, v10, v1}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@3a7
    .line 1454
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :try_start_d
    invoke-virtual/range {v38 .. v38}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    #@3aa
    move-result-object v33

    #@3ab
    .line 1455
    .restart local v33    # "raw":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ad
    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@3af
    if-nez v5, :cond_29

    #@3b1
    .line 1456
    if-eqz v36, :cond_28

    #@3b3
    .line 1457
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    #@3b6
    move-result-object v5

    #@3b7
    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    #@3b9
    if-eq v5, v8, :cond_28

    #@3bb
    .line 1458
    move-object/from16 v0, v36

    #@3bd
    move-object/from16 v1, v33

    #@3bf
    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    #@3c2
    move-result v5

    #@3c3
    if-eqz v5, :cond_27

    #@3c5
    .line 1460
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    #@3c8
    .line 1461
    add-int/lit8 v34, v34, 0x1

    #@3ca
    .line 1462
    move-object/from16 v0, p0

    #@3cc
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@3ce
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@3d1
    move-result-object v8

    #@3d2
    .line 1463
    move-object/from16 v0, p0

    #@3d4
    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3d6
    move-object/from16 v0, p0

    #@3d8
    iget-object v0, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@3da
    move-object/from16 v45, v0

    #@3dc
    move-object/from16 v0, v36

    #@3de
    move-object/from16 v1, v45

    #@3e0
    invoke-virtual {v0, v10, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    #@3e3
    move-result-object v10

    #@3e4
    .line 1462
    invoke-virtual {v5, v8, v10}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3e7
    .line 1464
    move-object/from16 v0, v36

    #@3e9
    move-object/from16 v1, p0

    #@3eb
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@3ed
    .line 1465
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@3f0
    goto/16 :goto_7

    #@3f2
    .line 1639
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    :catch_2
    move-exception v21

    #@3f3
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3

    #@3f5
    .line 1440
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v44    # "value":Ljava/lang/String;
    :cond_26
    const/16 v18, 0x1

    #@3f7
    .line 1441
    const/4 v5, 0x0

    #@3f8
    :try_start_e
    move-object/from16 v0, p0

    #@3fa
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@3fc
    .line 1442
    const/16 v36, 0x0

    #@3fe
    .restart local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_8

    #@3ff
    .line 1468
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v44    # "value":Ljava/lang/String;
    .restart local v33    # "raw":Ljava/lang/String;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_27
    :try_start_f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    #@402
    .line 1471
    :cond_28
    move-object/from16 v0, p0

    #@404
    move-object/from16 v1, v38

    #@406
    invoke-direct {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->getServerAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    #@409
    move-result-object v36

    #@40a
    .line 1472
    .local v36, "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v0, v36

    #@40c
    move-object/from16 v1, p0

    #@40e
    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    #@410
    .line 1474
    if-eqz v36, :cond_2c

    #@412
    .line 1475
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    #@415
    .line 1476
    add-int/lit8 v34, v34, 0x1

    #@417
    .line 1477
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    #@41a
    goto/16 :goto_7

    #@41c
    .line 1643
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_3
    move-exception v19

    #@41d
    .restart local v19    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@41f
    .line 1481
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v33    # "raw":Ljava/lang/String;
    :cond_29
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    #@422
    .line 1483
    const/4 v5, 0x0

    #@423
    move-object/from16 v0, v36

    #@425
    move-object/from16 v1, p0

    #@427
    move-object/from16 v2, v33

    #@429
    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    #@42c
    move-result v5

    #@42d
    if-nez v5, :cond_2a

    #@42f
    .line 1484
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    #@432
    .line 1485
    new-instance v5, Ljava/io/IOException;

    #@434
    const-string/jumbo v8, "Authentication failure"

    #@437
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@43a
    throw v5

    #@43b
    .line 1487
    :cond_2a
    const/4 v5, 0x0

    #@43c
    move-object/from16 v0, p0

    #@43e
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@440
    .line 1488
    const/4 v5, 0x0

    #@441
    move-object/from16 v0, p0

    #@443
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    #@445
    .line 1489
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    #@448
    goto/16 :goto_7

    #@44a
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_2b
    move-object/from16 v38, v39

    #@44c
    .line 1494
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_2c
    if-eqz v36, :cond_31

    #@44e
    .line 1496
    move-object/from16 v0, v36

    #@450
    instance-of v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;

    #@452
    if-eqz v5, :cond_2d

    #@454
    .line 1497
    move-object/from16 v0, p0

    #@456
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    #@458
    if-nez v5, :cond_34

    #@45a
    .line 1498
    :cond_2d
    move-object/from16 v0, v36

    #@45c
    instance-of v5, v0, Lsun/net/www/protocol/http/BasicAuthentication;

    #@45e
    if-eqz v5, :cond_30

    #@460
    .line 1500
    move-object/from16 v0, p0

    #@462
    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@464
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@467
    move-result-object v5

    #@468
    invoke-static {v5}, Lsun/net/www/protocol/http/AuthenticationInfo;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    #@46b
    move-result-object v28

    #@46c
    .line 1501
    .local v28, "npath":Ljava/lang/String;
    move-object/from16 v0, v36

    #@46e
    iget-object v0, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@470
    move-object/from16 v30, v0

    #@472
    .line 1502
    .local v30, "opath":Ljava/lang/String;
    move-object/from16 v0, v30

    #@474
    move-object/from16 v1, v28

    #@476
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@479
    move-result v5

    #@47a
    if-eqz v5, :cond_2e

    #@47c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    #@47f
    move-result v5

    #@480
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@483
    move-result v8

    #@484
    if-lt v5, v8, :cond_2f

    #@486
    .line 1504
    :cond_2e
    move-object/from16 v0, v30

    #@488
    move-object/from16 v1, v28

    #@48a
    invoke-static {v0, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@48d
    move-result-object v28

    #@48e
    .line 1508
    :cond_2f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->clone()Ljava/lang/Object;

    #@491
    move-result-object v11

    #@492
    check-cast v11, Lsun/net/www/protocol/http/BasicAuthentication;

    #@494
    .line 1509
    .local v11, "a":Lsun/net/www/protocol/http/BasicAuthentication;
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    #@497
    .line 1510
    move-object/from16 v0, v28

    #@499
    iput-object v0, v11, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@49b
    .line 1511
    move-object/from16 v36, v11

    #@49d
    .line 1513
    .end local v11    # "a":Lsun/net/www/protocol/http/BasicAuthentication;
    .end local v28    # "npath":Ljava/lang/String;
    .end local v30    # "opath":Ljava/lang/String;
    :cond_30
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    #@4a0
    .line 1538
    :cond_31
    const/16 v24, 0x0

    #@4a2
    .line 1539
    const/16 v25, 0x0

    #@4a4
    .line 1542
    const/4 v5, 0x0

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    #@4a9
    .line 1543
    const/4 v5, 0x0

    #@4aa
    move-object/from16 v0, p0

    #@4ac
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    #@4ae
    .line 1544
    move-object/from16 v0, p0

    #@4b0
    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserServerAuth:Z

    #@4b2
    if-nez v5, :cond_32

    #@4b4
    .line 1545
    move-object/from16 v0, p0

    #@4b6
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@4b8
    const-string/jumbo v8, "Authorization"

    #@4bb
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@4be
    .line 1546
    :cond_32
    move-object/from16 v0, p0

    #@4c0
    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    #@4c2
    if-nez v5, :cond_33

    #@4c4
    .line 1547
    move-object/from16 v0, p0

    #@4c6
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@4c8
    const-string/jumbo v8, "Proxy-Authorization"

    #@4cb
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    #@4ce
    .line 1549
    :cond_33
    const/16 v5, 0xc8

    #@4d0
    move/from16 v0, v35

    #@4d2
    if-ne v0, v5, :cond_35

    #@4d4
    .line 1550
    const/4 v5, 0x0

    #@4d5
    move-object/from16 v0, p0

    #@4d7
    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    #@4da
    .line 1556
    :goto_9
    const/4 v5, 0x1

    #@4db
    move-object/from16 v0, p0

    #@4dd
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    #@4df
    .line 1558
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->followRedirect()Z

    #@4e2
    move-result v5

    #@4e3
    if-eqz v5, :cond_36

    #@4e5
    .line 1563
    add-int/lit8 v34, v34, 0x1

    #@4e7
    .line 1567
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    #@4ea
    goto/16 :goto_7

    #@4ec
    .line 1516
    :cond_34
    move-object/from16 v0, v36

    #@4ee
    nop

    #@4ef
    nop

    #@4f0
    move-object/from16 v37, v0

    #@4f2
    .line 1518
    .local v37, "srv":Lsun/net/www/protocol/http/DigestAuthentication;
    new-instance v41, Ljava/util/StringTokenizer;

    #@4f4
    move-object/from16 v0, p0

    #@4f6
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    #@4f8
    const-string/jumbo v8, " "

    #@4fb
    move-object/from16 v0, v41

    #@4fd
    invoke-direct {v0, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@500
    .line 1519
    .local v41, "tok":Ljava/util/StringTokenizer;
    move-object/from16 v0, v37

    #@502
    iget-object v7, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    #@504
    .line 1520
    .local v7, "realm":Ljava/lang/String;
    move-object/from16 v0, v37

    #@506
    iget-object v9, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    #@508
    .line 1521
    .local v9, "pw":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, v37

    #@50a
    iget-object v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@50c
    move-object/from16 v0, p0

    #@50e
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@510
    .line 1522
    :goto_a
    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@513
    move-result v5

    #@514
    if-eqz v5, :cond_31

    #@516
    .line 1523
    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@519
    move-result-object v31

    #@51a
    .line 1526
    .local v31, "path":Ljava/lang/String;
    :try_start_10
    new-instance v6, Ljava/net/URL;

    #@51c
    move-object/from16 v0, p0

    #@51e
    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@520
    move-object/from16 v0, v31

    #@522
    invoke-direct {v6, v5, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@525
    .line 1527
    .local v6, "u":Ljava/net/URL;
    new-instance v4, Lsun/net/www/protocol/http/DigestAuthentication;

    #@527
    .line 1528
    const-string/jumbo v8, "Digest"

    #@52a
    move-object/from16 v0, p0

    #@52c
    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    #@52e
    const/4 v5, 0x0

    #@52f
    .line 1527
    invoke-direct/range {v4 .. v10}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    #@532
    .line 1529
    .local v4, "d":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@535
    goto :goto_a

    #@536
    .line 1530
    .end local v4    # "d":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v6    # "u":Ljava/net/URL;
    :catch_4
    move-exception v20

    #@537
    .local v20, "e":Ljava/lang/Exception;
    goto :goto_a

    #@538
    .line 1552
    .end local v7    # "realm":Ljava/lang/String;
    .end local v9    # "pw":Ljava/net/PasswordAuthentication;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v31    # "path":Ljava/lang/String;
    .end local v37    # "srv":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v41    # "tok":Ljava/util/StringTokenizer;
    :cond_35
    const/4 v5, 0x0

    #@539
    :try_start_11
    move-object/from16 v0, p0

    #@53b
    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@53d
    goto :goto_9

    #@53e
    .line 1573
    :cond_36
    :try_start_12
    move-object/from16 v0, p0

    #@540
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    #@542
    const-string/jumbo v8, "content-length"

    #@545
    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@548
    move-result-object v5

    #@549
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@54c
    move-result-wide v16

    #@54d
    .line 1576
    :goto_b
    :try_start_13
    move-object/from16 v0, p0

    #@54f
    iget-object v5, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@551
    const-string/jumbo v8, "HEAD"

    #@554
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@557
    move-result v5

    #@558
    if-nez v5, :cond_37

    #@55a
    const-wide/16 v46, 0x0

    #@55c
    cmp-long v5, v16, v46

    #@55e
    if-nez v5, :cond_3f

    #@560
    .line 1580
    :cond_37
    :goto_c
    move-object/from16 v0, p0

    #@562
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@564
    if-eqz v5, :cond_38

    #@566
    .line 1581
    move-object/from16 v0, p0

    #@568
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@56a
    invoke-virtual {v5}, Lsun/net/ProgressSource;->finishTracking()V

    #@56d
    .line 1582
    const/4 v5, 0x0

    #@56e
    move-object/from16 v0, p0

    #@570
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    #@572
    .line 1584
    :cond_38
    move-object/from16 v0, p0

    #@574
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@576
    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->finished()V

    #@579
    .line 1585
    const/4 v5, 0x0

    #@57a
    move-object/from16 v0, p0

    #@57c
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@57e
    .line 1586
    new-instance v5, Lsun/net/www/protocol/http/EmptyInputStream;

    #@580
    invoke-direct {v5}, Lsun/net/www/protocol/http/EmptyInputStream;-><init>()V

    #@583
    move-object/from16 v0, p0

    #@585
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@587
    .line 1587
    const/4 v5, 0x0

    #@588
    move-object/from16 v0, p0

    #@58a
    iput-boolean v5, v0, Ljava/net/URLConnection;->connected:Z

    #@58c
    .line 1590
    :cond_39
    const/16 v5, 0xc8

    #@58e
    move/from16 v0, v35

    #@590
    if-eq v0, v5, :cond_3a

    #@592
    const/16 v5, 0xcb

    #@594
    move/from16 v0, v35

    #@596
    if-ne v0, v5, :cond_40

    #@598
    .line 1592
    :cond_3a
    :goto_d
    move-object/from16 v0, p0

    #@59a
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    #@59c
    if-eqz v5, :cond_3c

    #@59e
    .line 1594
    move-object/from16 v0, p0

    #@5a0
    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@5a2
    invoke-static {v5}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@5a5
    move-result-object v43

    #@5a6
    .line 1595
    .local v43, "uri":Ljava/net/URI;
    if-eqz v43, :cond_3c

    #@5a8
    .line 1596
    move-object/from16 v42, p0

    #@5aa
    .line 1597
    .local v42, "uconn":Ljava/net/URLConnection;
    const-string/jumbo v5, "https"

    #@5ad
    invoke-virtual/range {v43 .. v43}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@5b0
    move-result-object v8

    #@5b1
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@5b4
    move-result v5

    #@5b5
    if-eqz v5, :cond_3b

    #@5b7
    .line 1602
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5ba
    move-result-object v5

    #@5bb
    const-string/jumbo v8, "httpsURLConnection"

    #@5be
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@5c1
    move-result-object v5

    #@5c2
    move-object/from16 v0, p0

    #@5c4
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c7
    move-result-object v5

    #@5c8
    move-object v0, v5

    #@5c9
    check-cast v0, Ljava/net/URLConnection;

    #@5cb
    move-object/from16 v42, v0
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    #@5cd
    .line 1610
    :cond_3b
    :goto_e
    :try_start_15
    move-object/from16 v0, p0

    #@5cf
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    #@5d1
    move-object/from16 v0, v43

    #@5d3
    move-object/from16 v1, v42

    #@5d5
    invoke-virtual {v5, v0, v1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    #@5d8
    move-result-object v15

    #@5d9
    .line 1611
    .local v15, "cacheRequest":Ljava/net/CacheRequest;
    if-eqz v15, :cond_3c

    #@5db
    move-object/from16 v0, p0

    #@5dd
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5df
    if-eqz v5, :cond_3c

    #@5e1
    .line 1612
    move-object/from16 v0, p0

    #@5e3
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5e5
    invoke-virtual {v5, v15}, Lsun/net/www/http/HttpClient;->setCacheRequest(Ljava/net/CacheRequest;)V

    #@5e8
    .line 1613
    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    #@5ea
    move-object/from16 v0, p0

    #@5ec
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@5ee
    move-object/from16 v0, p0

    #@5f0
    invoke-direct {v5, v0, v8, v15}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V

    #@5f3
    move-object/from16 v0, p0

    #@5f5
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@5f7
    .line 1619
    .end local v15    # "cacheRequest":Ljava/net/CacheRequest;
    .end local v42    # "uconn":Ljava/net/URLConnection;
    .end local v43    # "uri":Ljava/net/URI;
    :cond_3c
    move-object/from16 v0, p0

    #@5f9
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@5fb
    instance-of v5, v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    #@5fd
    if-nez v5, :cond_3d

    #@5ff
    .line 1620
    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    #@601
    move-object/from16 v0, p0

    #@603
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@605
    move-object/from16 v0, p0

    #@607
    invoke-direct {v5, v0, v8}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V

    #@60a
    move-object/from16 v0, p0

    #@60c
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@60e
    .line 1623
    :cond_3d
    const/16 v5, 0x190

    #@610
    move/from16 v0, v35

    #@612
    if-lt v0, v5, :cond_42

    #@614
    .line 1624
    const/16 v5, 0x194

    #@616
    move/from16 v0, v35

    #@618
    if-eq v0, v5, :cond_3e

    #@61a
    const/16 v5, 0x19a

    #@61c
    move/from16 v0, v35

    #@61e
    if-ne v0, v5, :cond_41

    #@620
    .line 1625
    :cond_3e
    new-instance v5, Ljava/io/FileNotFoundException;

    #@622
    move-object/from16 v0, p0

    #@624
    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@626
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@629
    move-result-object v8

    #@62a
    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@62d
    throw v5

    #@62e
    .line 1577
    :cond_3f
    const/16 v5, 0x130

    #@630
    move/from16 v0, v35

    #@632
    if-eq v0, v5, :cond_37

    #@634
    .line 1578
    const/16 v5, 0xcc

    #@636
    move/from16 v0, v35

    #@638
    if-ne v0, v5, :cond_39

    #@63a
    goto/16 :goto_c

    #@63c
    .line 1590
    :cond_40
    const/16 v5, 0xce

    #@63e
    move/from16 v0, v35

    #@640
    if-eq v0, v5, :cond_3a

    #@642
    .line 1591
    const/16 v5, 0x12c

    #@644
    move/from16 v0, v35

    #@646
    if-eq v0, v5, :cond_3a

    #@648
    const/16 v5, 0x12d

    #@64a
    move/from16 v0, v35

    #@64c
    if-eq v0, v5, :cond_3a

    #@64e
    const/16 v5, 0x19a

    #@650
    move/from16 v0, v35

    #@652
    if-ne v0, v5, :cond_3c

    #@654
    goto/16 :goto_d

    #@656
    .line 1627
    :cond_41
    new-instance v5, Ljava/io/IOException;

    #@658
    new-instance v8, Ljava/lang/StringBuilder;

    #@65a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65d
    const-string/jumbo v10, "Server returned HTTP response code: "

    #@660
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@663
    move-result-object v8

    #@664
    move/from16 v0, v35

    #@666
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@669
    move-result-object v8

    #@66a
    .line 1628
    const-string/jumbo v10, " for URL: "

    #@66d
    .line 1627
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@670
    move-result-object v8

    #@671
    .line 1629
    move-object/from16 v0, p0

    #@673
    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@675
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@678
    move-result-object v10

    #@679
    .line 1627
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67c
    move-result-object v8

    #@67d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@680
    move-result-object v8

    #@681
    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@684
    throw v5

    #@685
    .line 1632
    :cond_42
    const/4 v5, 0x0

    #@686
    move-object/from16 v0, p0

    #@688
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@68a
    .line 1633
    const/4 v5, 0x0

    #@68b
    move-object/from16 v0, p0

    #@68d
    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@68f
    .line 1634
    move-object/from16 v0, p0

    #@691
    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    #@693
    .line 1655
    :try_start_16
    move-object/from16 v0, p0

    #@695
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@697
    if-eqz v8, :cond_43

    #@699
    .line 1656
    move-object/from16 v0, p0

    #@69b
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    #@69d
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    #@6a0
    .line 1658
    :cond_43
    move-object/from16 v0, p0

    #@6a2
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@6a4
    if-eqz v8, :cond_44

    #@6a6
    .line 1659
    move-object/from16 v0, p0

    #@6a8
    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    #@6aa
    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@6ad
    :cond_44
    monitor-exit p0

    #@6ae
    .line 1634
    return-object v5

    #@6af
    .line 1637
    :cond_45
    :try_start_17
    new-instance v5, Ljava/net/ProtocolException;

    #@6b1
    new-instance v8, Ljava/lang/StringBuilder;

    #@6b3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6b6
    const-string/jumbo v10, "Server redirected too many  times ("

    #@6b9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6bc
    move-result-object v8

    #@6bd
    move/from16 v0, v34

    #@6bf
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c2
    move-result-object v8

    #@6c3
    .line 1638
    const-string/jumbo v10, ")"

    #@6c6
    .line 1637
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c9
    move-result-object v8

    #@6ca
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6cd
    move-result-object v8

    #@6ce
    invoke-direct {v5, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@6d1
    throw v5
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@6d2
    .line 1603
    .restart local v42    # "uconn":Ljava/net/URLConnection;
    .restart local v43    # "uri":Ljava/net/URI;
    :catch_5
    move-exception v23

    #@6d3
    .local v23, "iae":Ljava/lang/IllegalAccessException;
    goto/16 :goto_e

    #@6d5
    .line 1605
    .end local v23    # "iae":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v29

    #@6d6
    .local v29, "nsfe":Ljava/lang/NoSuchFieldException;
    goto/16 :goto_e

    #@6d8
    .line 1574
    .end local v29    # "nsfe":Ljava/lang/NoSuchFieldException;
    .end local v42    # "uconn":Ljava/net/URLConnection;
    .end local v43    # "uri":Ljava/net/URI;
    :catch_7
    move-exception v22

    #@6d9
    .local v22, "exc":Ljava/lang/Exception;
    goto/16 :goto_b
.end method

.method getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2923
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 997
    invoke-static {p1, p2, p3, p0}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    invoke-static {p1, p2, p3, p4, p0}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    const/4 v10, -0x1

    #@3
    monitor-enter p0

    #@4
    .line 1072
    :try_start_0
    iget-boolean v8, p0, Ljava/net/URLConnection;->doOutput:Z

    #@6
    if-nez v8, :cond_0

    #@8
    .line 1073
    new-instance v8, Ljava/net/ProtocolException;

    #@a
    const-string/jumbo v9, "cannot write to a URLConnection if doOutput=false - call setDoOutput(true)"

    #@d
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1131
    :catch_0
    move-exception v1

    #@12
    .line 1132
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@15
    .line 1133
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    #@17
    monitor-exit p0

    #@18
    throw v8

    #@19
    .line 1077
    :cond_0
    :try_start_2
    iget-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@1b
    const-string/jumbo v9, "GET"

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_1

    #@24
    .line 1078
    const-string/jumbo v8, "POST"

    #@27
    iput-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@29
    .line 1080
    :cond_1
    const-string/jumbo v8, "POST"

    #@2c
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v8

    #@32
    if-nez v8, :cond_2

    #@34
    const-string/jumbo v8, "PUT"

    #@37
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v8

    #@3d
    if-eqz v8, :cond_3

    #@3f
    .line 1087
    :cond_2
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    #@41
    if-eqz v8, :cond_4

    #@43
    .line 1088
    new-instance v8, Ljava/net/ProtocolException;

    #@45
    const-string/jumbo v9, "Cannot write output after reading input."

    #@48
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 1134
    :catch_1
    move-exception v2

    #@4d
    .line 1137
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_3
    iget v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@4f
    .line 1138
    .local v5, "i":I
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@52
    .line 1139
    iput v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@54
    .line 1140
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    .line 1081
    .end local v2    # "e":Ljava/net/ProtocolException;
    .end local v5    # "i":I
    :cond_3
    :try_start_4
    const-string/jumbo v8, "http"

    #@58
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@5a
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v8

    #@62
    .line 1080
    if-eqz v8, :cond_2

    #@64
    .line 1082
    new-instance v8, Ljava/net/ProtocolException;

    #@66
    new-instance v9, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v10, "HTTP method "

    #@6e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    iget-object v10, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    .line 1083
    const-string/jumbo v10, " doesn\'t support output"

    #@7b
    .line 1082
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@86
    throw v8
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@87
    .line 1141
    :catch_2
    move-exception v0

    #@88
    .line 1142
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    #@8b
    .line 1143
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8c
    .line 1091
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    #@8f
    move-result v8

    #@90
    if-nez v8, :cond_5

    #@92
    .line 1092
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    #@95
    .line 1094
    :cond_5
    const/4 v3, 0x0

    #@96
    .line 1095
    .local v3, "expectContinue":Z
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@98
    const-string/jumbo v9, "Expect"

    #@9b
    invoke-virtual {v8, v9}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    .line 1096
    .local v4, "expects":Ljava/lang/String;
    const-string/jumbo v8, "100-Continue"

    #@a2
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a5
    move-result v8

    #@a6
    if-eqz v8, :cond_6

    #@a8
    .line 1097
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@aa
    const/4 v9, 0x0

    #@ab
    invoke-virtual {v8, v9}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    #@ae
    .line 1098
    const/4 v3, 0x1

    #@af
    .line 1101
    :cond_6
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_7

    #@b5
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@b7
    if-nez v8, :cond_7

    #@b9
    .line 1102
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    #@bc
    .line 1105
    :cond_7
    if-eqz v3, :cond_8

    #@be
    .line 1106
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->expect100Continue()V

    #@c1
    .line 1108
    :cond_8
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@c3
    invoke-virtual {v8}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    #@c6
    move-result-object v8

    #@c7
    check-cast v8, Ljava/io/PrintStream;

    #@c9
    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@cb
    .line 1109
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@ce
    move-result v8

    #@cf
    if-eqz v8, :cond_d

    #@d1
    .line 1110
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@d3
    if-nez v8, :cond_9

    #@d5
    .line 1111
    iget v8, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@d7
    if-eq v8, v10, :cond_a

    #@d9
    .line 1112
    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@db
    .line 1113
    new-instance v9, Lsun/net/www/http/ChunkedOutputStream;

    #@dd
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@df
    iget v11, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@e1
    invoke-direct {v9, v10, v11}, Lsun/net/www/http/ChunkedOutputStream;-><init>(Ljava/io/PrintStream;I)V

    #@e4
    const-wide/16 v10, -0x1

    #@e6
    .line 1112
    invoke-direct {v8, p0, v9, v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    #@e9
    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@eb
    .line 1124
    :cond_9
    :goto_0
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ed
    monitor-exit p0

    #@ee
    return-object v8

    #@ef
    .line 1115
    :cond_a
    const-wide/16 v6, 0x0

    #@f1
    .line 1116
    .local v6, "length":J
    :try_start_7
    iget-wide v8, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@f3
    cmp-long v8, v8, v12

    #@f5
    if-eqz v8, :cond_c

    #@f7
    .line 1117
    iget-wide v6, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@f9
    .line 1121
    :cond_b
    :goto_1
    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@fb
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    #@fd
    invoke-direct {v8, p0, v9, v6, v7}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    #@100
    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    #@102
    goto :goto_0

    #@103
    .line 1118
    :cond_c
    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@105
    if-eq v8, v10, :cond_b

    #@107
    .line 1119
    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@109
    int-to-long v6, v8

    #@10a
    goto :goto_1

    #@10b
    .line 1126
    .end local v6    # "length":J
    :cond_d
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@10d
    if-nez v8, :cond_e

    #@10f
    .line 1127
    new-instance v8, Lsun/net/www/http/PosterOutputStream;

    #@111
    invoke-direct {v8}, Lsun/net/www/http/PosterOutputStream;-><init>()V

    #@114
    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    #@116
    .line 1129
    :cond_e
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@118
    monitor-exit p0

    #@119
    return-object v8
.end method

.method public getReadTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2915
    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@8
    goto :goto_0
.end method

.method public declared-synchronized getRequestProperties()Ljava/util/Map;
    .locals 3
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
    monitor-enter p0

    #@1
    .line 2826
    :try_start_0
    iget-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2827
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "Already connected"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 2830
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2831
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@17
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    monitor-exit p0

    #@1e
    return-object v1

    #@1f
    .line 2837
    :cond_1
    const/4 v0, 0x0

    #@20
    .line 2838
    .local v0, "userCookiesMap":Ljava/util/Map;
    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@22
    if-nez v1, :cond_2

    #@24
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 2839
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    #@2a
    .end local v0    # "userCookiesMap":Ljava/util/Map;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2d
    .line 2840
    .local v0, "userCookiesMap":Ljava/util/Map;
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 2841
    const-string/jumbo v1, "Cookie"

    #@34
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    #@36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 2843
    :cond_3
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_4

    #@3d
    .line 2844
    const-string/jumbo v1, "Cookie2"

    #@40
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 2847
    .end local v0    # "userCookiesMap":Ljava/util/Map;
    :cond_4
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@47
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS2:[Ljava/lang/String;

    #@49
    invoke-virtual {v1, v2, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    move-result-object v1

    #@4d
    monitor-exit p0

    #@4e
    return-object v1
.end method

.method public declared-synchronized getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 2791
    if-nez p1, :cond_0

    #@4
    monitor-exit p0

    #@5
    .line 2792
    return-object v2

    #@6
    .line 2796
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 2797
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    monitor-exit p0

    #@17
    .line 2798
    return-object v2

    #@18
    .line 2796
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2801
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    #@1d
    if-nez v1, :cond_4

    #@1f
    .line 2802
    const-string/jumbo v1, "Cookie"

    #@22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 2803
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    return-object v1

    #@2c
    .line 2805
    :cond_3
    :try_start_2
    const-string/jumbo v1, "Cookie2"

    #@2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_4

    #@35
    .line 2806
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    monitor-exit p0

    #@38
    return-object v1

    #@39
    .line 2809
    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@3b
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    move-result-object v1

    #@3f
    monitor-exit p0

    #@40
    return-object v1

    #@41
    :catchall_0
    move-exception v1

    #@42
    monitor-exit p0

    #@43
    throw v1
.end method

.method getRequestURI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2298
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2299
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@6
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->getURLFile()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    #@c
    .line 2301
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    #@e
    return-object v0
.end method

.method protected plainConnect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 870
    iget-boolean v6, p0, Ljava/net/URLConnection;->connected:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 871
    return-void

    #@7
    .line 874
    :cond_0
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    #@9
    if-eqz v6, :cond_7

    #@b
    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_7

    #@11
    .line 876
    :try_start_0
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@13
    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@16
    move-result-object v5

    #@17
    .line 877
    .local v5, "uri":Ljava/net/URI;
    if-eqz v5, :cond_3

    #@19
    .line 878
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    #@1b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@21
    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    #@23
    invoke-virtual {v8, v9}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v6, v5, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    #@2a
    move-result-object v6

    #@2b
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@2d
    .line 879
    const-string/jumbo v6, "https"

    #@30
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    .line 880
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@3c
    instance-of v6, v6, Ljava/net/SecureCacheResponse;

    #@3e
    if-eqz v6, :cond_4

    #@40
    .line 883
    :cond_1
    :goto_0
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@42
    const/16 v7, 0x12c

    #@44
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_2

    #@4a
    .line 884
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@4c
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "Cache Request for "

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    const-string/jumbo v8, " / "

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@72
    .line 885
    sget-object v7, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@74
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v8, "From cache: "

    #@7c
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@82
    if-eqz v6, :cond_5

    #@84
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@86
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v7, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@95
    .line 887
    :cond_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@97
    if-eqz v6, :cond_3

    #@99
    .line 888
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@9b
    invoke-virtual {v6}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    #@9e
    move-result-object v6

    #@9f
    invoke-direct {p0, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->mapToMessageHeader(Ljava/util/Map;)Lsun/net/www/MessageHeader;

    #@a2
    move-result-object v6

    #@a3
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@a5
    .line 889
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@a7
    invoke-virtual {v6}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    #@aa
    move-result-object v6

    #@ab
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ad
    .line 895
    .end local v5    # "uri":Ljava/net/URI;
    :cond_3
    :goto_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    #@af
    if-eqz v6, :cond_6

    #@b1
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    #@b3
    if-eqz v6, :cond_6

    #@b5
    .line 896
    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    #@b7
    .line 897
    return-void

    #@b8
    .line 881
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_4
    const/4 v6, 0x0

    #@b9
    :try_start_1
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@bb
    goto :goto_0

    #@bc
    .line 892
    .end local v5    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    #@bd
    .local v1, "ioex":Ljava/io/IOException;
    goto :goto_2

    #@be
    .line 885
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_5
    const-string/jumbo v6, "null"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@c1
    goto :goto_1

    #@c2
    .line 899
    .end local v5    # "uri":Ljava/net/URI;
    :cond_6
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@c4
    .line 911
    :cond_7
    :try_start_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    #@c6
    if-nez v6, :cond_f

    #@c8
    .line 917
    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$5;

    #@ca
    invoke-direct {v6, p0}, Lsun/net/www/protocol/http/HttpURLConnection$5;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    #@cd
    .line 916
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@d0
    move-result-object v4

    #@d1
    check-cast v4, Ljava/net/ProxySelector;

    #@d3
    .line 922
    .local v4, "sel":Ljava/net/ProxySelector;
    if-eqz v4, :cond_d

    #@d5
    .line 923
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@d7
    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@da
    move-result-object v5

    #@db
    .line 924
    .restart local v5    # "uri":Ljava/net/URI;
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@dd
    const/16 v7, 0x12c

    #@df
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@e2
    move-result v6

    #@e3
    if-eqz v6, :cond_8

    #@e5
    .line 925
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@e7
    new-instance v7, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v8, "ProxySelector Request for "

    #@ef
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v7

    #@f3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v7

    #@f7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@fe
    .line 927
    :cond_8
    invoke-virtual {v4, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@101
    move-result-object v6

    #@102
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@105
    move-result-object v2

    #@106
    .line 929
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@109
    move-result v6

    #@10a
    if-eqz v6, :cond_a

    #@10c
    .line 930
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10f
    move-result-object v3

    #@110
    check-cast v3, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@112
    .line 932
    .local v3, "p":Ljava/net/Proxy;
    :try_start_3
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@114
    if-nez v6, :cond_b

    #@116
    .line 933
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@118
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@11a
    invoke-virtual {p0, v6, v3, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    #@11d
    move-result-object v6

    #@11e
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@120
    .line 934
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@122
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@124
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@127
    .line 941
    :goto_3
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@129
    const/16 v7, 0x12c

    #@12b
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@12e
    move-result v6

    #@12f
    if-eqz v6, :cond_a

    #@131
    .line 942
    if-eqz v3, :cond_a

    #@133
    .line 943
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    #@135
    new-instance v7, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v8, "Proxy used: "

    #@13d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v7

    #@141
    invoke-virtual {v3}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    #@144
    move-result-object v8

    #@145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v7

    #@149
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v7

    #@14d
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@150
    .line 986
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v4    # "sel":Ljava/net/ProxySelector;
    .end local v5    # "uri":Ljava/net/URI;
    :cond_a
    :goto_4
    :try_start_4
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@152
    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    #@155
    move-result-object v6

    #@156
    check-cast v6, Ljava/io/PrintStream;

    #@158
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@15a
    .line 991
    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    #@15c
    .line 869
    return-void

    #@15d
    .line 938
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v3    # "p":Ljava/net/Proxy;
    .restart local v4    # "sel":Ljava/net/ProxySelector;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_b
    :try_start_5
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@15f
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@161
    const/4 v8, 0x0

    #@162
    invoke-virtual {p0, v6, v3, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    #@165
    move-result-object v6

    #@166
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@168
    .line 939
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@16a
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@16c
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@16f
    goto :goto_3

    #@170
    .line 947
    :catch_1
    move-exception v1

    #@171
    .line 948
    .restart local v1    # "ioex":Ljava/io/IOException;
    :try_start_6
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@173
    if-eq v3, v6, :cond_c

    #@175
    .line 949
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@178
    move-result-object v6

    #@179
    invoke-virtual {v4, v5, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    #@17c
    .line 950
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17f
    move-result v6

    #@180
    if-nez v6, :cond_9

    #@182
    .line 952
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@184
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@186
    const/4 v8, 0x0

    #@187
    const/4 v9, 0x0

    #@188
    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    #@18b
    move-result-object v6

    #@18c
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@18e
    .line 953
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@190
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@192
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@195
    goto :goto_4

    #@196
    .line 987
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v4    # "sel":Ljava/net/ProxySelector;
    .end local v5    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v0

    #@197
    .line 988
    .local v0, "e":Ljava/io/IOException;
    throw v0

    #@198
    .line 957
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ioex":Ljava/io/IOException;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v3    # "p":Ljava/net/Proxy;
    .restart local v4    # "sel":Ljava/net/ProxySelector;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_c
    :try_start_7
    throw v1

    #@199
    .line 964
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v5    # "uri":Ljava/net/URI;
    :cond_d
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@19b
    if-nez v6, :cond_e

    #@19d
    .line 965
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@19f
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@1a1
    const/4 v8, 0x0

    #@1a2
    invoke-virtual {p0, v6, v8, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    #@1a5
    move-result-object v6

    #@1a6
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1a8
    .line 966
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1aa
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@1ac
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@1af
    goto :goto_4

    #@1b0
    .line 970
    :cond_e
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1b2
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@1b4
    const/4 v8, 0x0

    #@1b5
    const/4 v9, 0x0

    #@1b6
    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    #@1b9
    move-result-object v6

    #@1ba
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1bc
    .line 971
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1be
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@1c0
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@1c3
    goto :goto_4

    #@1c4
    .line 975
    .end local v4    # "sel":Ljava/net/ProxySelector;
    :cond_f
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    #@1c6
    if-nez v6, :cond_10

    #@1c8
    .line 976
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1ca
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    #@1cc
    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@1ce
    invoke-virtual {p0, v6, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    #@1d1
    move-result-object v6

    #@1d2
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1d4
    .line 977
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1d6
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@1d8
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@1db
    goto/16 :goto_4

    #@1dd
    .line 981
    :cond_10
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1df
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    #@1e1
    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@1e3
    const/4 v9, 0x0

    #@1e4
    invoke-virtual {p0, v6, v7, v8, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    #@1e7
    move-result-object v6

    #@1e8
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1ea
    .line 982
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1ec
    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@1ee
    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@1f1
    goto/16 :goto_4
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@2
    move-object v0, p1

    #@3
    move-object v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move-object v5, p0

    #@7
    .line 705
    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@d
    .line 707
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@11
    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@14
    .line 704
    return-void
.end method

.method public setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2785
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 2786
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@5
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 2784
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 2852
    if-gez p1, :cond_0

    #@2
    .line 2853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2854
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@d
    .line 2851
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;Z)V

    #@4
    .line 651
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    move-object v0, p1

    #@5
    move v3, p2

    #@6
    move-object v5, p0

    #@7
    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@d
    .line 665
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@11
    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@14
    .line 663
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@4
    .line 679
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 698
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@3
    .line 697
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 2897
    if-gez p1, :cond_0

    #@2
    .line 2898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2899
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    #@d
    .line 2896
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2747
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2748
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2749
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 2750
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key is null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 2752
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2753
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    #@20
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 2746
    :cond_2
    return-void
.end method

.method public setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    .locals 0
    .param p1, "tunnelState"    # Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@0
    .prologue
    .line 1754
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2
    .line 1753
    return-void
.end method

.method public streaming()Z
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    .line 1148
    iget v1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@4
    if-ne v1, v6, :cond_0

    #@6
    iget-wide v2, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@8
    const-wide/16 v4, -0x1

    #@a
    cmp-long v1, v2, v4

    #@c
    if-eqz v1, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 1149
    :cond_1
    iget v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@11
    if-ne v1, v6, :cond_0

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    #@0
    .prologue
    .line 1745
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@2
    return-object v0
.end method

.method public usingProxy()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2594
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 2595
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@7
    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0

    #@f
    .line 2597
    :cond_1
    return v0
.end method
