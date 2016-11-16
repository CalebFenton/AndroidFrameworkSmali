.class public final Lorg/apache/http/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final host:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    if-nez p1, :cond_0

    #@5
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 59
    const-string/jumbo v1, "Host of origin may not be null"

    #@a
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 63
    const-string/jumbo v1, "Host of origin may not be blank"

    #@1d
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 65
    :cond_1
    if-gez p2, :cond_2

    #@23
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Invalid port: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 68
    :cond_2
    if-nez p3, :cond_3

    #@3f
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@41
    .line 70
    const-string/jumbo v1, "Path of origin may not be null."

    #@44
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    .line 72
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Lorg/apache/http/cookie/CookieOrigin;->host:Ljava/lang/String;

    #@50
    .line 73
    iput p2, p0, Lorg/apache/http/cookie/CookieOrigin;->port:I

    #@52
    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 75
    iput-object p3, p0, Lorg/apache/http/cookie/CookieOrigin;->path:Ljava/lang/String;

    #@5e
    .line 79
    :goto_0
    iput-boolean p4, p0, Lorg/apache/http/cookie/CookieOrigin;->secure:Z

    #@60
    .line 55
    return-void

    #@61
    .line 77
    :cond_4
    const-string/jumbo v0, "/"

    #@64
    iput-object v0, p0, Lorg/apache/http/cookie/CookieOrigin;->path:Ljava/lang/String;

    #@66
    goto :goto_0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/cookie/CookieOrigin;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/cookie/CookieOrigin;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Lorg/apache/http/cookie/CookieOrigin;->port:I

    #@2
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/http/cookie/CookieOrigin;->secure:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 101
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 102
    iget-boolean v1, p0, Lorg/apache/http/cookie/CookieOrigin;->secure:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 103
    const-string/jumbo v1, "(secure)"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 105
    :cond_0
    iget-object v1, p0, Lorg/apache/http/cookie/CookieOrigin;->host:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 106
    const/16 v1, 0x3a

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 107
    iget v1, p0, Lorg/apache/http/cookie/CookieOrigin;->port:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 108
    iget-object v1, p0, Lorg/apache/http/cookie/CookieOrigin;->path:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 109
    const/16 v1, 0x5d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method
