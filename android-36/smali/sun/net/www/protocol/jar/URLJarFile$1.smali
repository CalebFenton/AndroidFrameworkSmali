.class Lsun/net/www/protocol/jar/URLJarFile$1;
.super Ljava/lang/Object;
.source "URLJarFile.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/util/jar/JarFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field final synthetic blacklist val$in:Ljava/io/InputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$in:Ljava/io/InputStream;

    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile$1;->run()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/jar/JarFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    const-string v2, "jar_cache"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    .line 224
    .local v1, "tmpFile":Ljava/nio/file/Path;
    :try_start_a
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$in:Ljava/io/InputStream;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v0

    invoke-static {v2, v1, v3}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 225
    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/URLJarFile$1;->val$closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-direct {v0, v2, v3}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    .line 226
    .local v0, "jarFile":Ljava/util/jar/JarFile;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_29

    .line 227
    return-object v0

    .line 228
    .end local v0    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_29
    move-exception v0

    .line 230
    .local v0, "thr":Ljava/lang/Throwable;
    :try_start_2a
    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 233
    goto :goto_32

    .line 231
    :catch_2e
    move-exception v2

    .line 232
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 234
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_32
    throw v0
.end method
