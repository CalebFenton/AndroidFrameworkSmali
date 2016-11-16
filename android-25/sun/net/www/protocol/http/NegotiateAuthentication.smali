.class Lsun/net/www/protocol/http/NegotiateAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "NegotiateAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;
    }
.end annotation


# static fields
.field static cache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/protocol/http/Negotiator;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64L

.field static supported:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hci:Lsun/net/www/protocol/http/HttpCallerInfo;

.field private negotiator:Lsun/net/www/protocol/http/Negotiator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    sput-object v0, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@3
    .line 57
    sput-object v0, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@5
    .line 45
    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V
    .locals 4
    .param p1, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;

    #@0
    .prologue
    .line 67
    sget-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    #@2
    iget-object v1, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/16 v0, 0x70

    #@8
    .line 68
    :goto_0
    iget-object v1, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "Negotiate"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    #@15
    .line 69
    :goto_1
    iget-object v2, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    #@17
    .line 70
    const-string/jumbo v3, ""

    #@1a
    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    #@1d
    .line 60
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@20
    .line 71
    iput-object p1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@22
    .line 66
    return-void

    #@23
    .line 67
    :cond_0
    const/16 v0, 0x73

    #@25
    goto :goto_0

    #@26
    .line 68
    :cond_1
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    #@28
    goto :goto_1
.end method

.method private firstToken()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@3
    .line 174
    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 175
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@9
    monitor-enter v2

    #@a
    .line 176
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@c
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHost()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lsun/net/www/protocol/http/Negotiator;

    #@16
    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@18
    .line 177
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 178
    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@1e
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHost()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v2

    #@26
    .line 182
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@28
    if-nez v1, :cond_2

    #@2a
    .line 183
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@2c
    invoke-static {v1}, Lsun/net/www/protocol/http/Negotiator;->getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@32
    .line 184
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@34
    if-nez v1, :cond_2

    #@36
    .line 185
    new-instance v0, Ljava/io/IOException;

    #@38
    const-string/jumbo v1, "Cannot initialize Negotiator"

    #@3b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3e
    .line 186
    .local v0, "ioe":Ljava/io/IOException;
    throw v0

    #@3f
    .line 175
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 190
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@44
    invoke-virtual {v1}, Lsun/net/www/protocol/http/Negotiator;->firstToken()[B

    #@47
    move-result-object v1

    #@48
    return-object v1
.end method

.method public static declared-synchronized isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z
    .locals 7
    .param p0, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const-class v3, Lsun/net/www/protocol/http/NegotiateAuthentication;

    #@4
    monitor-enter v3

    #@5
    .line 94
    :try_start_0
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@7
    if-nez v2, :cond_0

    #@9
    .line 95
    new-instance v2, Ljava/util/HashMap;

    #@b
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@10
    .line 96
    new-instance v2, Ljava/util/HashMap;

    #@12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@17
    .line 98
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    #@19
    .line 99
    .local v0, "hostname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 100
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 101
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/Boolean;

    #@2d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v2

    #@31
    monitor-exit v3

    #@32
    return v2

    #@33
    .line 104
    :cond_1
    :try_start_1
    invoke-static {p0}, Lsun/net/www/protocol/http/Negotiator;->getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;

    #@36
    move-result-object v1

    #@37
    .line 105
    .local v1, "neg":Lsun/net/www/protocol/http/Negotiator;
    if-eqz v1, :cond_2

    #@39
    .line 106
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 109
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    #@45
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    monitor-exit v3

    #@49
    .line 110
    return v6

    #@4a
    .line 112
    :cond_2
    :try_start_2
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    monitor-exit v3

    #@55
    .line 113
    return v5

    #@56
    .end local v0    # "hostname":Ljava/lang/String;
    .end local v1    # "neg":Lsun/net/www/protocol/http/Negotiator;
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method private nextToken([B)[B
    .locals 1
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/Negotiator;->nextToken([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "getHeaderValue not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public declared-synchronized setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 8
    .param p1, "conn"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .param p2, "p"    # Lsun/net/www/HeaderParser;
    .param p3, "raw"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 151
    const/4 v1, 0x0

    #@3
    .line 152
    .local v1, "incoming":[B
    :try_start_0
    const-string/jumbo v4, "\\s+"

    #@6
    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 153
    .local v2, "parts":[Ljava/lang/String;
    array-length v4, v2

    #@b
    if-le v4, v7, :cond_0

    #@d
    .line 154
    new-instance v4, Lsun/misc/BASE64Decoder;

    #@f
    invoke-direct {v4}, Lsun/misc/BASE64Decoder;-><init>()V

    #@12
    const/4 v5, 0x1

    #@13
    aget-object v5, v2, v5

    #@15
    invoke-virtual {v4, v5}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    #@18
    move-result-object v1

    #@19
    .line 156
    .end local v1    # "incoming":[B
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    iget-object v5, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@20
    iget-object v5, v5, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    new-instance v6, Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;

    #@2f
    invoke-direct {v6, p0}, Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;-><init>(Lsun/net/www/protocol/http/NegotiateAuthentication;)V

    #@32
    .line 157
    if-nez v1, :cond_1

    #@34
    invoke-direct {p0}, Lsun/net/www/protocol/http/NegotiateAuthentication;->firstToken()[B

    #@37
    move-result-object v4

    #@38
    .line 156
    :goto_0
    invoke-virtual {v6, v4}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 159
    .local v3, "response":Ljava/lang/String;
    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {p1, v4, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 160
    return v7

    #@4d
    .line 157
    .end local v3    # "response":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lsun/net/www/protocol/http/NegotiateAuthentication;->nextToken([B)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v4

    #@51
    goto :goto_0

    #@52
    .line 161
    .end local v2    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@53
    .line 162
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    #@54
    monitor-exit p0

    #@55
    return v4

    #@56
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@57
    monitor-exit p0

    #@58
    throw v4
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method
