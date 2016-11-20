.class public abstract Lsun/net/www/URLConnection;
.super Ljava/net/URLConnection;
.source "URLConnection.java"


# static fields
.field private static proxiedHosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field protected properties:Lsun/net/www/MessageHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 242
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 47
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lsun/net/www/URLConnection;->contentLength:I

    #@6
    .line 58
    new-instance v0, Lsun/net/www/MessageHeader;

    #@8
    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    #@b
    iput-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@d
    .line 56
    return-void
.end method

.method public static declared-synchronized isProxiedHost(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v1, Lsun/net/www/URLConnection;

    #@2
    monitor-enter v1

    #@3
    .line 249
    :try_start_0
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public static declared-synchronized setProxiedHost(Ljava/lang/String;)V
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v1, Lsun/net/www/URLConnection;

    #@2
    monitor-enter v1

    #@3
    .line 245
    :try_start_0
    sget-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 244
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 89
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key is null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 86
    :cond_1
    return-void
.end method

.method public canCache()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 230
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const/16 v2, 0x3f

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v1

    #@d
    if-gez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@3
    .line 238
    return-void
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 207
    iget v1, p0, Lsun/net/www/URLConnection;->contentLength:I

    #@5
    .line 208
    .local v1, "l":I
    if-gez v1, :cond_0

    #@7
    .line 210
    :try_start_1
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@9
    const-string/jumbo v3, "content-length"

    #@c
    invoke-virtual {v2, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    .line 211
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    .line 215
    :cond_0
    :goto_0
    return v1

    #@18
    .line 204
    .end local v1    # "l":I
    :catch_0
    move-exception v0

    #@19
    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    #@1a
    return v2

    #@1b
    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "l":I
    :catch_1
    move-exception v0

    #@1c
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 148
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 149
    const-string/jumbo v3, "content-type"

    #@7
    invoke-virtual {p0, v3}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    #@d
    .line 150
    :cond_0
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    #@f
    if-nez v3, :cond_3

    #@11
    .line 151
    const/4 v1, 0x0

    #@12
    .line 153
    .local v1, "ct":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v1

    #@1a
    .line 156
    .end local v1    # "ct":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@1c
    const-string/jumbo v4, "content-encoding"

    #@1f
    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 157
    .local v0, "ce":Ljava/lang/String;
    if-nez v1, :cond_1

    #@25
    .line 158
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@27
    const-string/jumbo v4, "content-type"

    #@2a
    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 160
    .local v1, "ct":Ljava/lang/String;
    if-nez v1, :cond_1

    #@30
    .line 161
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@32
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, "/"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 162
    const-string/jumbo v1, "text/html"

    #@42
    .line 176
    .end local v1    # "ct":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 177
    const-string/jumbo v3, "7bit"

    #@49
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v3

    #@4d
    if-nez v3, :cond_2

    #@4f
    .line 178
    const-string/jumbo v3, "8bit"

    #@52
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@55
    move-result v3

    #@56
    .line 177
    if-nez v3, :cond_2

    #@58
    .line 179
    const-string/jumbo v3, "binary"

    #@5b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v3

    #@5f
    .line 177
    if-eqz v3, :cond_5

    #@61
    .line 181
    :cond_2
    :goto_2
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->setContentType(Ljava/lang/String;)V

    #@64
    .line 183
    .end local v0    # "ce":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    #@66
    return-object v3

    #@67
    .line 164
    .restart local v0    # "ce":Ljava/lang/String;
    .restart local v1    # "ct":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@69
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v3}, Lsun/net/www/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    goto :goto_1

    #@72
    .line 180
    .end local v1    # "ct":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "content/unknown"

    #@75
    .restart local v1    # "ct":Ljava/lang/String;
    goto :goto_2

    #@76
    .line 154
    .end local v0    # "ce":Ljava/lang/String;
    .local v1, "ct":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@77
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 140
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@6
    .line 141
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_0

    #@8
    :goto_0
    return-object v2

    #@9
    .line 137
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_0
    move-exception v0

    #@a
    .line 138
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    #@b
    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "props":Lsun/net/www/MessageHeader;
    :cond_0
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 111
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@6
    if-nez v2, :cond_0

    #@8
    :goto_0
    return-object v1

    #@9
    .line 108
    :catch_0
    move-exception v0

    #@a
    .line 109
    .local v0, "e":Ljava/lang/Exception;
    return-object v1

    #@b
    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@d
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 125
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@6
    .line 126
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_0

    #@8
    :goto_0
    return-object v2

    #@9
    .line 122
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_0
    move-exception v0

    #@a
    .line 123
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    #@b
    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "props":Lsun/net/www/MessageHeader;
    :cond_0
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    goto :goto_0
.end method

.method public getProperties()Lsun/net/www/MessageHeader;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@2
    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
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
    .line 100
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 102
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@f
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 96
    :cond_0
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method protected setContentLength(I)V
    .locals 3
    .param p1, "length"    # I

    #@0
    .prologue
    .line 222
    iput p1, p0, Lsun/net/www/URLConnection;->contentLength:I

    #@2
    .line 223
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@4
    const-string/jumbo v1, "content-length"

    #@7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 221
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    #@2
    .line 195
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@4
    const-string/jumbo v1, "content-type"

    #@7
    invoke-virtual {v0, v1, p1}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 193
    return-void
.end method

.method public setProperties(Lsun/net/www/MessageHeader;)V
    .locals 0
    .param p1, "properties"    # Lsun/net/www/MessageHeader;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@2
    .line 69
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 75
    new-instance v0, Ljava/lang/IllegalAccessError;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 76
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key cannot be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 78
    :cond_1
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    #@1a
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 73
    return-void
.end method
