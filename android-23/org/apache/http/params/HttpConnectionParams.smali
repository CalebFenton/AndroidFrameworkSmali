.class public final Lorg/apache/http/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"

# interfaces
.implements Lorg/apache/http/params/CoreConnectionPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    return-void
.end method

.method public static getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 174
    if-nez p0, :cond_0

    #@2
    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 178
    :cond_0
    const-string/jumbo v0, "http.connection.timeout"

    #@e
    const/4 v1, 0x0

    #@f
    .line 177
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static getLinger(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 144
    if-nez p0, :cond_0

    #@2
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 147
    :cond_0
    const-string/jumbo v0, "http.socket.linger"

    #@e
    const/4 v1, -0x1

    #@f
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static getSoTimeout(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 69
    if-nez p0, :cond_0

    #@2
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 72
    :cond_0
    const-string/jumbo v0, "http.socket.timeout"

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 123
    if-nez p0, :cond_0

    #@2
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 127
    :cond_0
    const-string/jumbo v0, "http.socket.buffer-size"

    #@e
    const/4 v1, -0x1

    #@f
    .line 126
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 98
    if-nez p0, :cond_0

    #@2
    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 102
    :cond_0
    const-string/jumbo v0, "http.tcp.nodelay"

    #@e
    const/4 v1, 0x1

    #@f
    .line 101
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 205
    if-nez p0, :cond_0

    #@2
    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 209
    :cond_0
    const-string/jumbo v0, "http.connection.stalecheck"

    #@e
    const/4 v1, 0x1

    #@f
    .line 208
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public static setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 188
    if-nez p0, :cond_0

    #@2
    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 192
    :cond_0
    const-string/jumbo v0, "http.connection.timeout"

    #@e
    .line 191
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@11
    .line 187
    return-void
.end method

.method public static setLinger(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "value"    # I

    #@0
    .prologue
    .line 161
    if-nez p0, :cond_0

    #@2
    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 164
    :cond_0
    const-string/jumbo v0, "http.socket.linger"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@11
    .line 160
    return-void
.end method

.method public static setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 84
    if-nez p0, :cond_0

    #@2
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 87
    :cond_0
    const-string/jumbo v0, "http.socket.timeout"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@11
    .line 83
    return-void
.end method

.method public static setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "size"    # I

    #@0
    .prologue
    .line 131
    if-nez p0, :cond_0

    #@2
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 134
    :cond_0
    const-string/jumbo v0, "http.socket.buffer-size"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@11
    .line 130
    return-void
.end method

.method public static setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 222
    if-nez p0, :cond_0

    #@2
    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 226
    :cond_0
    const-string/jumbo v0, "http.connection.stalecheck"

    #@e
    .line 225
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@11
    .line 221
    return-void
.end method

.method public static setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 116
    if-nez p0, :cond_0

    #@2
    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 119
    :cond_0
    const-string/jumbo v0, "http.tcp.nodelay"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@11
    .line 115
    return-void
.end method
