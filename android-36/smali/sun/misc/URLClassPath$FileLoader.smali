.class Lsun/misc/URLClassPath$FileLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoader"
.end annotation


# instance fields
.field private greylist-max-o dir:Ljava/io/File;


# direct methods
.method constructor greylist-max-o <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 1221
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1224
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    .line 1227
    return-void

    .line 1222
    .end local v0    # "path":Ljava/lang/String;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist-max-o findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1233
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$FileLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 1234
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_b

    .line 1235
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1237
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1243
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v2

    const-string v3, "."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1244
    .local v1, "normalizedBase":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1246
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1248
    return-object v0

    .line 1251
    :cond_29
    if-eqz p2, :cond_2e

    .line 1252
    invoke-static {v2}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 1255
    :cond_2e
    const-string v3, ".."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x2f

    if-eq v3, v4, :cond_5b

    .line 1256
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 1258
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1260
    return-object v0

    .line 1263
    .end local v3    # "file":Ljava/io/File;
    :cond_5b
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1266
    .restart local v3    # "file":Ljava/io/File;
    :cond_68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1267
    new-instance v4, Lsun/misc/URLClassPath$FileLoader$1;

    invoke-direct {v4, p0, p1, v2, v3}, Lsun/misc/URLClassPath$FileLoader$1;-><init>(Lsun/misc/URLClassPath$FileLoader;Ljava/lang/String;Ljava/net/URL;Ljava/io/File;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_73} :catch_76

    return-object v4

    .line 1279
    .end local v1    # "normalizedBase":Ljava/net/URL;
    .end local v3    # "file":Ljava/io/File;
    :cond_74
    nop

    .line 1280
    return-object v0

    .line 1277
    .end local v2    # "url":Ljava/net/URL;
    :catch_76
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method
