.class public abstract Lsun/net/www/URLConnection;
.super Ljava/net/URLConnection;
.source "URLConnection.java"


# static fields
.field private static blacklist proxiedHosts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist contentLength:I

.field private blacklist contentType:Ljava/lang/String;

.field protected blacklist properties:Lsun/net/www/MessageHeader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "u"    # Ljava/net/URL;

    .line 52
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 53
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 54
    return-void
.end method

.method public static declared-synchronized blacklist isProxiedHost(Ljava/lang/String;)Z
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    const-class v0, Lsun/net/www/URLConnection;

    monitor-enter v0

    .line 244
    :try_start_3
    sget-object v1, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return v1

    .line 244
    .end local p0    # "host":Ljava/lang/String;
    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static declared-synchronized blacklist setProxiedHost(Ljava/lang/String;)V
    .registers 5
    .param p0, "host"    # Ljava/lang/String;

    const-class v0, Lsun/net/www/URLConnection;

    monitor-enter v0

    .line 240
    :try_start_3
    sget-object v1, Lsun/net/www/URLConnection;->proxiedHosts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 241
    monitor-exit v0

    return-void

    .line 239
    .end local p0    # "host":Ljava/lang/String;
    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method


# virtual methods
.method public whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 82
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-nez v0, :cond_f

    .line 84
    if-eqz p1, :cond_7

    .line 86
    return-void

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist canCache()Z
    .registers 3

    .line 225
    iget-object v0, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist close()V
    .registers 2

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    .line 235
    return-void
.end method

.method public whitelist test-api getContentLength()I
    .registers 4

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1b

    .line 201
    nop

    .line 202
    iget v0, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 203
    .local v0, "l":I
    if-gez v0, :cond_1a

    .line 205
    :try_start_8
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string v2, "content-length"

    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 206
    invoke-virtual {p0, v0}, Lsun/net/www/URLConnection;->setContentLength(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    .line 208
    goto :goto_1a

    .line 207
    :catch_19
    move-exception v1

    .line 210
    :cond_1a
    :goto_1a
    return v0

    .line 199
    .end local v0    # "l":I
    :catch_1b
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getContentType()Ljava/lang/String;
    .registers 5

    .line 143
    iget-object v0, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    const-string v1, "content-type"

    if-nez v0, :cond_c

    .line 144
    invoke-virtual {p0, v1}, Lsun/net/www/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    .line 145
    :cond_c
    iget-object v0, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_6a

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "ct":Ljava/lang/String;
    :try_start_11
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1b

    move-object v0, v2

    .line 150
    goto :goto_1c

    .line 149
    :catch_1b
    move-exception v2

    .line 151
    :goto_1c
    iget-object v2, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string v3, "content-encoding"

    invoke-virtual {v2, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "ce":Ljava/lang/String;
    if-nez v0, :cond_49

    .line 153
    iget-object v3, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v3, v1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-nez v0, :cond_49

    .line 156
    iget-object v1, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 157
    const-string v0, "text/html"

    goto :goto_49

    .line 159
    :cond_3f
    iget-object v1, p0, Lsun/net/www/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/net/www/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_49
    :goto_49
    if-eqz v0, :cond_65

    if-eqz v2, :cond_67

    .line 172
    const-string v1, "7bit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 173
    const-string v1, "8bit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 174
    const-string v1, "binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 175
    :cond_65
    const-string v0, "content/unknown"

    .line 176
    :cond_67
    invoke-virtual {p0, v0}, Lsun/net/www/URLConnection;->setContentType(Ljava/lang/String;)V

    .line 178
    .end local v0    # "ct":Ljava/lang/String;
    .end local v2    # "ce":Ljava/lang/String;
    :cond_6a
    iget-object v0, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 4
    .param p1, "n"    # I

    .line 131
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f

    .line 134
    nop

    .line 135
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 136
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    .line 132
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_f
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_11

    .line 105
    nop

    .line 106
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    if-nez v1, :cond_a

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    .line 103
    :catch_11
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "n"    # I

    .line 116
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f

    .line 119
    nop

    .line 120
    iget-object v1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 121
    .local v1, "props":Lsun/net/www/MessageHeader;
    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    .line 117
    .end local v1    # "props":Lsun/net/www/MessageHeader;
    :catch_f
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public blacklist getProperties()Lsun/net/www/MessageHeader;
    .registers 2

    .line 60
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    return-object v0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-nez v0, :cond_9

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 96
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 89
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setContentLength(I)V
    .registers 5
    .param p1, "length"    # I

    .line 217
    iput p1, p0, Lsun/net/www/URLConnection;->contentLength:I

    .line 218
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string v1, "content-length"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public blacklist setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lsun/net/www/URLConnection;->contentType:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    const-string v1, "content-type"

    invoke-virtual {v0, v1, p1}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public greylist-max-r setProperties(Lsun/net/www/MessageHeader;)V
    .registers 2
    .param p1, "properties"    # Lsun/net/www/MessageHeader;

    .line 65
    iput-object p1, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    .line 66
    return-void
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 69
    iget-boolean v0, p0, Lsun/net/www/URLConnection;->connected:Z

    if-nez v0, :cond_14

    .line 71
    if-eqz p1, :cond_c

    .line 73
    iget-object v0, p0, Lsun/net/www/URLConnection;->properties:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 72
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_14
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
