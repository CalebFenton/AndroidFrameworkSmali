.class public Lorg/apache/http/impl/auth/BasicScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    #@3
    .line 77
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    #@6
    .line 75
    return-void
.end method

.method public static authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;
    .locals 5
    .param p0, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "proxy"    # Z

    #@0
    .prologue
    .line 163
    if-nez p0, :cond_0

    #@2
    .line 164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Credentials may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 166
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 167
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "charset may not be null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 170
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    .line 171
    .local v2, "tmp":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 172
    const-string/jumbo v3, ":"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 173
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_2

    #@32
    const-string/jumbo v3, "null"

    #@35
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v3, p1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    #@3f
    move-result-object v3

    #@40
    .line 175
    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    #@43
    move-result-object v0

    #@44
    .line 178
    .local v0, "base64password":[B
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@46
    const/16 v3, 0x20

    #@48
    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@4b
    .line 179
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-eqz p2, :cond_3

    #@4d
    .line 180
    const-string/jumbo v3, "Proxy-Authorization"

    #@50
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@53
    .line 184
    :goto_1
    const-string/jumbo v3, ": Basic "

    #@56
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@59
    .line 185
    array-length v3, v0

    #@5a
    const/4 v4, 0x0

    #@5b
    invoke-virtual {v1, v0, v4, v3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    #@5e
    .line 187
    new-instance v3, Lorg/apache/http/message/BufferedHeader;

    #@60
    invoke-direct {v3, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@63
    return-object v3

    #@64
    .line 173
    .end local v0    # "base64password":[B
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    goto :goto_0

    #@69
    .line 182
    .restart local v0    # "base64password":[B
    .restart local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_3
    const-string/jumbo v3, "Authorization"

    #@6c
    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@6f
    goto :goto_1
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    if-nez p1, :cond_0

    #@2
    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Credentials may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 142
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "HTTP request may not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 146
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 147
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/BasicScheme;->isProxy()Z

    #@21
    move-result v1

    #@22
    invoke-static {p1, v0, v1}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "basic"

    #@3
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    #@2
    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    #@3
    .line 101
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    #@6
    .line 99
    return-void
.end method
