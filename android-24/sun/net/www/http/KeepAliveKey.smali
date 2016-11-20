.class Lsun/net/www/http/KeepAliveKey;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"


# instance fields
.field private host:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private port:I

.field private protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 296
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    #@6
    .line 297
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    #@8
    .line 298
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    #@b
    .line 299
    iput-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@d
    .line 307
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    #@13
    .line 308
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    #@19
    .line 309
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    #@1f
    .line 310
    iput-object p2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@21
    .line 306
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    instance-of v2, p1, Lsun/net/www/http/KeepAliveKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 319
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 320
    nop

    #@8
    nop

    #@9
    .line 321
    .local v0, "kae":Lsun/net/www/http/KeepAliveKey;
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 322
    iget v2, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    #@15
    iget v3, v0, Lsun/net/www/http/KeepAliveKey;->port:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 323
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 321
    if-eqz v2, :cond_1

    #@23
    .line 324
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@25
    iget-object v3, v0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@27
    if-ne v2, v3, :cond_1

    #@29
    const/4 v1, 0x1

    #@2a
    .line 321
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->protocol:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->host:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Lsun/net/www/http/KeepAliveKey;->port:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 334
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@1d
    if-nez v1, :cond_0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@22
    move-result v1

    #@23
    :goto_0
    return v1

    #@24
    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@27
    move-result v1

    #@28
    iget-object v2, p0, Lsun/net/www/http/KeepAliveKey;->obj:Ljava/lang/Object;

    #@2a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@2d
    move-result v2

    #@2e
    add-int/2addr v1, v2

    #@2f
    goto :goto_0
.end method
