.class Ljava/net/URLClassLoader$URLHandler;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLHandler"
.end annotation


# instance fields
.field codeSourceUrl:Ljava/net/URL;

.field final synthetic this$0:Ljava/net/URLClassLoader;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 150
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    #@7
    .line 151
    iput-object p2, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    #@9
    .line 149
    return-void
.end method


# virtual methods
.method createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 175
    if-nez p1, :cond_0

    #@3
    .line 176
    return-object v2

    #@4
    .line 180
    :cond_0
    :try_start_0
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v9

    #@8
    .line 184
    .local v9, "clBuf":[B
    if-eqz p2, :cond_1

    #@a
    .line 185
    const/16 v0, 0x2f

    #@c
    const/16 v3, 0x2e

    #@e
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 186
    .local v1, "packageDotName":Ljava/lang/String;
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #@14
    invoke-static {v0, v1}, Ljava/net/URLClassLoader;->-wrap3(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    #@17
    move-result-object v11

    #@18
    .line 187
    .local v11, "packageObj":Ljava/lang/Package;
    if-nez v11, :cond_2

    #@1a
    .line 188
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #@1c
    move-object v3, v2

    #@1d
    move-object v4, v2

    #@1e
    move-object v5, v2

    #@1f
    move-object v6, v2

    #@20
    move-object v7, v2

    #@21
    move-object v8, v2

    #@22
    invoke-static/range {v0 .. v8}, Ljava/net/URLClassLoader;->-wrap2(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    #@25
    .line 196
    .end local v1    # "packageDotName":Ljava/lang/String;
    .end local v11    # "packageObj":Ljava/lang/Package;
    :cond_1
    iget-object v0, p0, Ljava/net/URLClassLoader$URLHandler;->this$0:Ljava/net/URLClassLoader;

    #@27
    array-length v6, v9

    #@28
    new-instance v7, Ljava/security/CodeSource;

    #@2a
    iget-object v3, p0, Ljava/net/URLClassLoader$URLHandler;->codeSourceUrl:Ljava/net/URL;

    #@2c
    check-cast v2, [Ljava/security/cert/Certificate;

    #@2e
    invoke-direct {v7, v3, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    #@31
    const/4 v5, 0x0

    #@32
    move-object v2, v0

    #@33
    move-object v3, p3

    #@34
    move-object v4, v9

    #@35
    invoke-static/range {v2 .. v7}, Ljava/net/URLClassLoader;->-wrap1(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 181
    .end local v9    # "clBuf":[B
    :catch_0
    move-exception v10

    #@3b
    .line 182
    .local v10, "e":Ljava/io/IOException;
    return-object v2

    #@3c
    .line 191
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v1    # "packageDotName":Ljava/lang/String;
    .restart local v9    # "clBuf":[B
    .restart local v11    # "packageObj":Ljava/lang/Package;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Package;->isSealed()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_1

    #@42
    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    #@44
    const-string/jumbo v2, "Package is sealed"

    #@47
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 162
    iget-object v3, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    #@3
    invoke-virtual {p0, v3, p2}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    #@6
    move-result-object v2

    #@7
    .line 163
    .local v2, "resURL":Ljava/net/URL;
    if-eqz v2, :cond_0

    #@9
    .line 165
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@c
    move-result-object v1

    #@d
    .line 166
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v1, p1, p3}, Ljava/net/URLClassLoader$URLHandler;->createClass(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 167
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@13
    .line 170
    :cond_0
    return-object v4
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 200
    iget-object v5, p0, Ljava/net/URLClassLoader$URLHandler;->url:Ljava/net/URL;

    #@3
    invoke-virtual {p0, v5, p1}, Ljava/net/URLClassLoader$URLHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    #@6
    move-result-object v3

    #@7
    .line 201
    .local v3, "resURL":Ljava/net/URL;
    if-eqz v3, :cond_1

    #@9
    .line 203
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@c
    move-result-object v4

    #@d
    .line 204
    .local v4, "uc":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    #@14
    .line 207
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v6, "http"

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_0

    #@21
    .line 208
    return-object v3

    #@22
    .line 211
    :cond_0
    check-cast v4, Ljava/net/HttpURLConnection;

    #@24
    .end local v4    # "uc":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result v0

    #@28
    .local v0, "code":I
    const/16 v5, 0xc8

    #@2a
    if-lt v0, v5, :cond_1

    #@2c
    .line 212
    const/16 v5, 0x12c

    #@2e
    if-ge v0, v5, :cond_1

    #@30
    .line 213
    return-object v3

    #@31
    .line 217
    .end local v0    # "code":I
    :catch_0
    move-exception v1

    #@32
    .line 218
    .local v1, "e":Ljava/io/IOException;
    return-object v7

    #@33
    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@34
    .line 216
    .local v2, "e":Ljava/lang/SecurityException;
    return-object v7

    #@35
    .line 221
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_1
    return-object v7
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p2, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "res":Ljava/net/URL;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 154
    :cond_0
    :goto_0
    return-void

    #@d
    .line 157
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    goto :goto_0
.end method

.method targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 9
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 226
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 227
    .local v7, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 228
    sget-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    #@f
    invoke-virtual {v0, v7, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@12
    .line 229
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 231
    .local v4, "file":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    #@18
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@23
    move-result v3

    #@24
    const/4 v5, 0x0

    #@25
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    return-object v0

    #@29
    .line 232
    .end local v4    # "file":Ljava/lang/String;
    .end local v7    # "fileBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    #@2a
    .line 233
    .local v6, "e":Ljava/net/MalformedURLException;
    return-object v8
.end method
