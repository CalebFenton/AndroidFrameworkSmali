.class public Lsun/net/www/protocol/jar/URLJarFile;
.super Ljava/util/jar/JarFile;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;,
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
    }
.end annotation


# static fields
.field private static blacklist BUF_SIZE:I


# instance fields
.field private blacklist closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field private blacklist superAttr:Ljava/util/jar/Attributes;

.field private blacklist superEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist superMan:Ljava/util/jar/Manifest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsuperEntries(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSuperMan(Lsun/net/www/protocol/jar/URLJarFile;)Z
    .registers 1

    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const/16 v0, 0x800

    sput v0, Lsun/net/www/protocol/jar/URLJarFile;->BUF_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 90
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 91
    return-void
.end method

.method private constructor blacklist <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 95
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 96
    return-void
.end method

.method static blacklist getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isFileURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-direct {v0, p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    return-object v0

    .line 72
    :cond_c
    invoke-static {p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isFileURL(Ljava/net/URL;)Z
    .registers 3
    .param p0, "url"    # Ljava/net/URL;

    .line 99
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 104
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_2a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 106
    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 107
    :cond_2a
    const/4 v1, 0x1

    return v1

    .line 109
    .end local v0    # "host":Ljava/lang/String;
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized blacklist isSuperMan()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-nez v0, :cond_b

    .line 177
    invoke-super {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    .line 180
    .end local p0    # "this":Lsun/net/www/protocol/jar/URLJarFile;
    :cond_b
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-eqz v0, :cond_22

    .line 181
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    .line 182
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    .line 183
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 185
    :cond_22
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 175
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private static blacklist retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .registers 6
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    .line 218
    .local v0, "result":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_9} :catch_28

    .line 219
    .local v1, "in":Ljava/io/InputStream;
    :try_start_9
    new-instance v2, Lsun/net/www/protocol/jar/URLJarFile$1;

    invoke-direct {v2, v1, p1}, Lsun/net/www/protocol/jar/URLJarFile$1;-><init>(Ljava/io/InputStream;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarFile;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1c

    move-object v0, v2

    .line 238
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/security/PrivilegedActionException; {:try_start_17 .. :try_end_1a} :catch_28

    .line 240
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1a
    nop

    .line 242
    return-object v0

    .line 218
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_27

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/jar/JarFile;
    .end local p0    # "url":Ljava/net/URL;
    .end local p1    # "closeController":Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    :cond_27
    :goto_27
    throw v2
    :try_end_28
    .catch Ljava/security/PrivilegedActionException; {:try_start_24 .. :try_end_28} :catch_28

    .line 238
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "result":Ljava/util/jar/JarFile;
    .restart local p0    # "url":Ljava/net/URL;
    .restart local p1    # "closeController":Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    :catch_28
    move-exception v1

    .line 239
    .local v1, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-interface {v0, p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;->close(Ljava/util/jar/JarFile;)V

    .line 170
    :cond_9
    invoke-super {p0}, Ljava/util/jar/JarFile;->close()V

    .line 171
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile;->close()V

    .line 119
    return-void
.end method

.method public whitelist test-api getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 131
    invoke-super {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 132
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_38

    .line 133
    instance-of v1, v0, Ljava/util/jar/JarEntry;

    if-eqz v1, :cond_13

    .line 134
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;

    move-object v2, v0

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-direct {v1, p0, v2}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;-><init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V

    return-object v1

    .line 136
    :cond_13
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned unexpected entry type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getManifest()Ljava/util/jar/Manifest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v0

    if-nez v0, :cond_8

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_8
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    .line 150
    .local v0, "man":Ljava/util/jar/Manifest;
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 151
    .local v1, "attr":Ljava/util/jar/Attributes;
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    invoke-virtual {v2}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 154
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    if-eqz v2, :cond_4c

    .line 155
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    .line 156
    .local v2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    iget-object v3, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes;

    .line 158
    .local v5, "at":Ljava/util/jar/Attributes;
    invoke-virtual {v5}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "at":Ljava/util/jar/Attributes;
    goto :goto_2e

    .line 162
    .end local v2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :cond_4c
    return-object v0
.end method
